import 'package:flutter/material.dart';
import 'package:multlearn_course/widgets/my_course.dart';

class OwnedCouses extends StatelessWidget {
  const OwnedCouses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('My Courses'),
        MyCourse(),
        SizedBox(
          height: 5,
        ),
        MyCourse(
          imageUrl: "images/xd2.png",
          courseName: 'Adobe Xd',
          courseDeadline: '5hr 45 min left - 20 lessons',
          progressPercent: 0.6,
          progressColor: Color(0xffFFB7FB),
          progressBackgroundColor: Color(0XFF670150),
          backgroundColor: LinearGradient(
            begin: Alignment(-1.00, 0.10),
            end: Alignment(1, -0.1),
            colors: [Color(0xFFD661FF), Color(0xFFD661FF)],
          ),
        ),
      ],
    );
  }
}
