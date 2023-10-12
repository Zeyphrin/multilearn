import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.width * 0.15,
              child: Image.asset('images/waguri.jpg'),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello,",style: TextStyle(
                    fontFamily: 'Poppins-SemiBold' ,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff515151),
                    fontSize: 15
                  ),),
                  Text("Zeyphrine!", style: TextStyle(
                    fontFamily:'Poppins-SemiBold',
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  ),),
                ],
              ),
          
            ),
          ),
          Icon(Icons.search),
          Icon(Icons.menu),
  
        ],
      ),
    );
  }
}
