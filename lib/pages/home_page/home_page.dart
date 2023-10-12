import 'package:flutter/material.dart';
import 'package:multlearn_course/pages/home_page/components/header.dart';
import 'package:multlearn_course/pages/home_page/components/list_courses.dart';
import 'package:multlearn_course/pages/home_page/components/owned_courses.dart';
import 'package:multlearn_course/pages/home_page/components/promo_course.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          Header(),
          SizedBox(height: 10,),
          PromoCourse(),
          SizedBox(height: 10,),
          OwnedCouses(),
          SizedBox(height: 10,),
          ListCourses(),
        ],
      ),
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: body(context));
  }
}
