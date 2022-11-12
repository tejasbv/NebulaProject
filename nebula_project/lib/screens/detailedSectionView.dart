// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nebula_project/screens/Homepage.dart';
import 'package:nebula_project/widgets/customButton.dart';
import 'package:nebula_project/widgets/app_bar_Login.dart';
import 'package:http/http.dart' as http;
import 'package:nebula_project/widgets/proffStats.dart';
import 'package:nebula_project/widgets/sectionInfo.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/gender.dart';
import '../widgets/input_field.dart';
import 'landing_screen.dart';

class DetailedSectionView extends StatefulWidget {
  var info;
  DetailedSectionView({required this.info});
  @override
  State<DetailedSectionView> createState() =>
      _DetailedSectionViewState(info: info);
}

class _DetailedSectionViewState extends State<DetailedSectionView> {
  var info;
  _DetailedSectionViewState({required this.info}) {
    
  }
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 60.0, bottom: 60.0, left: 60.0, right: 60.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              elevation: 5.0,
              child: Stack(
                children: [
                  Container(
                    child: Row(
                      children: <Widget>[
                        SingleChildScrollView(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.yellow[600],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0)),
                            ),
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.height,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 00.0, right: 20.0, left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black87,
                                      backgroundImage: AssetImage(
                                          "einstein.jpeg"),
                                      radius:
                                          MediaQuery.of(context).size.width /
                                              40,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60.0,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 5.0, bottom: 15.0),
                                    child: Text(
                                      info["professors"][0],
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.w900,
                                          overflow: TextOverflow.clip),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 5.0, bottom: 5.0),
                                    child: ProffStats(name: info["professors"][0])
                                  ),
                                  SizedBox(
                                    height: 50.0,
                                  ),
                                  Container(
                                    child: CircleAvatar(
                                      radius: 40,
                                      backgroundColor: Colors.black87,
                                      child: Text(
                                        "📖",
                                        style: TextStyle(
                                            fontSize: 50, color: Colors.yellow),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // SingleChildScrollView(
                        //   child: Container(
                        //     padding: EdgeInsets.all(20),
                        //     child: Column(
                        //       children: sectionsinfo == null
                        //           ? []
                        //           : [
                        //               Container(padding: EdgeInsets.only(bottom: 50),width: MediaQuery.of(context).size.width -MediaQuery.of(context).size.width / 3-200 ,child: Text("choose a section to view more details", style: TextStyle(fontSize: 36, ),softWrap: true,textAlign: TextAlign.center,)),
                        //               for (var val in sectionsinfo) ...[
                        //                 Container(
                        //                     padding:
                        //                         EdgeInsets.only(bottom: 25),
                        //                     child: SectionInfo(info: val))
                        //               ]
                        //             ],
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // getvalue(String s) {
  //   print(courseInfo[s]);
  //   return courseInfo[s];
  // }
}
