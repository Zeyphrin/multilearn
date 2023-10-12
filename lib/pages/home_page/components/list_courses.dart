import 'package:flutter/material.dart';
import 'package:multlearn_course/data/couses.dart';
import 'package:multlearn_course/widgets/card_course.dart';

class ListCourses extends StatelessWidget {
  const ListCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('All Courses', style: TextStyle(
              fontSize: 17,
              fontFamily: 'Poppins-Medium',
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )),
            SizedBox(height: 5,),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6,
                    childAspectRatio: 1 /1
                  ),
                  itemBuilder: (context, index) {
                    return cardCourse(courseList[index]);
                  }
                )
              ],
            ),
          );
  }
}