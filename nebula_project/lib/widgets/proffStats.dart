import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:percent_indicator/percent_indicator.dart';


class ProffStats extends StatefulWidget {
  var name;
  ProffStats({required this.name});

  @override
  State<ProffStats> createState() => _ProffStatsState(name: name);
}

class _ProffStatsState extends State<ProffStats> {
  var name;
  var stats;
  _ProffStatsState({required this.name}) {
    http
        .get(Uri.parse("http://127.0.0.1:5000/getProfessordetails/" + name))
        .then((value) => {
              setState(() {
                stats = (json.decode(value.body) as Map<String, dynamic>);
              })
            });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(stats==null?"loadinf":stats["avgDifficulty"].toString());
    return Container(
      width: size.width / 3 - 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                width: (size.width/3)/2-100,
                  height: (size.width/3)/2-100,
                child: Card(
                  //color: Color.lerp(Colors.red, Colors.green, .5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "AVG. Difficulty",
                        style: TextStyle(fontSize: 26),
                      ),
                      
                      Text(
                        stats==null?"loading...":stats["avgDifficulty"].toString()+"/5",
                        style: TextStyle(fontSize: 75),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: (size.width/3)/2-100,
                  height: (size.width/3)/2-100,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "AVG. Rating",
                        style: TextStyle(fontSize: 26),
                      ),
                      
                      Text(
                        stats==null?"loading...":stats["avgRating"].toString()+"/5",
                        style: TextStyle(fontSize: 75),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: (size.width/3)/2-100,
                  height: (size.width/3)/2-100,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "num Ratings",
                        style: TextStyle(fontSize: 26),
                      ),
                      
                      Text(
                        stats==null?"loading...":stats["numRatings"].toString(),
                        style: TextStyle(fontSize: 75),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: (size.width/3)/2-100,
                  height: (size.width/3)/2-100,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Take Again",
                        style: TextStyle(fontSize: 26),
                      ),
                      
                      Text(
                        stats==null?"loading...":stats["wouldTakeAgainPercent"].truncate().toString()+"%",
                        style: TextStyle(fontSize: 75),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
