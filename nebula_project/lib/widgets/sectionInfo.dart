import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nebula_project/widgets/DateViewer.dart';
import 'package:nebula_project/widgets/TimeViewer.dart';
import 'package:nebula_project/widgets/showProfessorinfo_sectioninfo.dart';

import 'ShowSectionDetails.dart';

class SectionInfo extends StatelessWidget {
  var info;
  SectionInfo({required this.info});
  
  @override
  Widget build(BuildContext context) {
    print(info.runtimeType);
    var size = MediaQuery.of(context).size;
    var width = size.width / 1.7-40;
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
      child: Container(
        
        width: width,
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              ProfessorinfoSection(info: info["professors"][0],),
              ShowSectionDetails(meeting_room: info["meetings"][0]["location"], type: info["instruction_mode"],)
            ]),
            Column(
              children: [
                DateViewer(days: info["meetings"][0]["meeting_days"]),
                TimeViewer(starttime: info["meetings"][0]["start_time"], endtime: info["meetings"][0]["end_time"])
              ],
            )
          ],
        ),
      ),
    );
  }
}
