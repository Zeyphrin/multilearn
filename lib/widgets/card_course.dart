import 'package:flutter/material.dart';

class cardCourse extends StatelessWidget {
  final Map course;
  
  const cardCourse(this.course, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.width * 0.15,
                  child: Image.asset(course["imageUrl"]),
                ),
                Icon(Icons.bookmark)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(course["name"]),
                Row(
                  children: [
                    Icon(Icons.star_rounded),
                    Text(course["rating"].toString()),
                  ],
                ),
              ]
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
       gradient: course["backgroundColor"],
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}