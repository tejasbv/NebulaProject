// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/gender.dart';
import '../widgets/input_field.dart';

class Register extends StatelessWidget {
  String name=""; String email=""; String password="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding:
            EdgeInsets.only(top: 60.0, bottom: 60.0, left: 120.0, right: 120.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          elevation: 5.0,
          child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow[600],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0)),
                  ),
                  width: MediaQuery.of(context).size.width / 3.3,
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 70.0, right: 50.0, left: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.black87,
                            backgroundImage: AssetImage("user.jpg"),
                            radius: 100.0,
                          ),
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: Text(
                            "Let's get you set up",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: Text(
                            "It should only take a couple of minutes to get started",
                            style: TextStyle(
                              fontSize: 22.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.black87,
                            child: Text(
                              ">",
                              style: TextStyle(color: Colors.yellow),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: 40.0, right: 70.0, left: 250.0, bottom: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //InputField Widget from the widgets folder
                      InputField(label: "Name", content: "Name", method: (value)=>{name=value}),

                      SizedBox(height: 20.0),

                      //Gender Widget from the widgets folder
                      
                      InputField(label: "Email", content: "yo@seethat.com",method: (value)=>{email=value}),

                      SizedBox(height: 20.0),
                      //InputField Widget from the widgets folder
                      InputField(label: "password", content: "22223311111", method: (value)=>{password=value}),

                      SizedBox(
                        height: 100.0,
                      ),

                      //Membership Widget from the widgets folder

                      Row(
                        children: <Widget>[
                          SizedBox(width: MediaQuery.of(context).size.width / 2.5-400,),
                          TextButton(
                            // color: Colors.grey[200],
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        (Colors.grey[200])!)),
                            onPressed: () {
                              
                            },
                            child: Container(
                                width: 150,
                                height: 55,
                                child: Center(
                                  child: Text("Cancel",
                                      style: TextStyle(fontSize: 36)),
                                )),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          TextButton(
                            // color: Colors.greenAccent,
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        (Colors.greenAccent)!)),
                            onPressed: () {
                              
                            },
                            child: Container(
                              width: 150,
                              height: 55,
                              child: Center(
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 36),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
