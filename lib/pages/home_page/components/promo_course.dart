import 'package:flutter/material.dart';

class PromoCourse extends StatelessWidget {
  const PromoCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left:6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Blender 3D\nClass',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 1,
                  ),
                ),
                SizedBox(height: 30,),
                SizedBox(
                  height: 60,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('35%',style: TextStyle(
                      fontSize: 47,
                      fontFamily: 'Poppins-SemiBold',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ), ),
                      Text('OFF!', style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins-SemiBold',
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),),
                    ],
                  ),
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
