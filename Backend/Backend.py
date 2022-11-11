from flask import Flask, jsonify
import RateMyProfessor
import requests
import json
import re
import pickle

app = Flask(__name__)
RateMyProfURL = "https://www.ratemyprofessors.com/search/teachers?query="
users = {}


@app.route('/getProfessordetails/<name>', methods=['GET'])
def getproff(name):
    r = requests.get(RateMyProfURL+name+"&sid=U2Nob29sLTEyNzM=")
    value = r.text.split("<script>\n          window.__RELAY_STORE__ = ")
    value = value[1].split("window.process = ")
    value = value[0][:-12]
    keyVal = value.split("\"node\":{\"__ref\":\"")[1].split("\"")[0]
    
    print(value.split("\"node\":{\"__ref\":\"")[1].split("\"")[0])
    
    jsonObj = json.loads(value)
    print(jsonObj[keyVal]["avgRating"])
    
    return jsonObj[keyVal]

@app.route('/login/email=<email>/password=<password>', methods=['GET'])
def login(email, password):
    if email in users.keys() :
        print(users[email]["password"])
        if users[email]["password"]==password:
            return jsonify({"auth":True})
    
    return jsonify({"auth":False})

@app.route('/register/name=<name>/year=<year>/email=<email>/password=<password>', methods=['GET'])
def register(name, year, email, password):
    if email in users.keys() :
        return jsonify({"auth":False})
    users[email] = {"name":name, "year":year,"email":email,"password":password}
    pickle.dump(users, open('users.p', 'wb'))
    return jsonify(users)

if __name__ == "__main__":
    
    users = pickle.load(open('users.p', 'rb'))
    app.run(debug=True)