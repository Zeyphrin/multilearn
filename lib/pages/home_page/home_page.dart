import 'package:flutter/material.dart';
import 'package:multlearn_course/widgets/my_course.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  PreferredSizeWidget appBar() {
    return AppBar(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset('images/waguri.jpg'),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello,"),
          Text("Zeyphrine"),
        ],
      ),
      actions: [
        Icon(Icons.search),
        Icon(Icons.menu),
      ],
    );
  }

  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Blender 3D\nClass'),
                    Row(
                      children: [
                        Text('35%'),
                        Text('OFF!'),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                  child: Image.asset("images/roket3.png"),
                )
              ],
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.98, -0.22),
                  end: Alignment(-0.98, 0.22),
                  colors: [Color(0xFF347BE8), Color(0xFF1E61C8)],
                ),
                borderRadius: BorderRadius.circular(10)),
          ),
          Column(
            children: [
              Text('My Courses'),
              MyCourse(),
              SizedBox(height: 5,),
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
          ),
          Container(width: double.infinity,
          child: Column(
            children: [Text('All Courses'),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1/1),children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('images/illustrator2.png'),
                          Icon(Icons.bookmark)
                        ],
                      )
                    ],
                  ),
                )
              ],),
            )],
          ),),
          Text('MASYAALLAH'),
          Text('MASYAALLAH'),
          Text('MASYAALLAH'),
          Text('MASYAALLAH'),
          Text('MASYAALLAH'),
          Text('MASYAALLAH'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(), body: body(context));
  }
}
