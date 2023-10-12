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
                Icon(
                  Icons.bookmark,
                  color: Colors.white,
                )
              ],
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(course["name"],
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins-SemiBold',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  )),
              Row(
                children: [
                  Icon(
                    Icons.star_rounded,
                    color: Colors.white,
                  ),
                  Text(course["rating"].toString(),
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Poppins-SemiBold',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
                ],
              ),
            ])
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: course["backgroundColor"],
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
