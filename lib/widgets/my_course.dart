import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyCourse extends StatelessWidget {
  final String imageUrl;
  final String courseName;
  final String courseDeadline;
  final double progressPercent;
  final Color progressColor;
  final Color progressBackgroundColor;
  final LinearGradient backgroundColor;
  MyCourse(
      {super.key,
      this.imageUrl = 'images/premiere2.png',
      this.courseName = 'Adobe Premiere Pro',
      this.courseDeadline = '4hr 35 min left - 15 lessons',
      this.progressPercent = 0.75,
      this.progressColor = const Color(0xffA59CFF),
      this.progressBackgroundColor = const Color(0xff3B2CE2),
      this.backgroundColor = const LinearGradient(
        begin: Alignment(-1.00, 0.10),
        end: Alignment(1, -0.1),
        colors: [Color(0xFF6C60ED), Color(0xFF897EFF)],
      )});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.width * 0.15,
                          child: Image.asset(imageUrl)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(courseName),
                          LinearPercentIndicator(
                            lineHeight: 5,
                            percent: progressPercent,
                            progressColor: progressColor,
                            backgroundColor: progressBackgroundColor,
                            animation: true,
                          ),
                          Text(courseDeadline)
                        ],
                      ))
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    gradient: backgroundColor,
                    borderRadius: BorderRadius.circular(10)),
              );
  }
}
