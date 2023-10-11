import 'package:flutter/material.dart';

class PromoCourse extends StatelessWidget {
  const PromoCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
