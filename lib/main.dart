import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Column(
            children: [
              Container(
                width: 341,
                height: 57,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 57,
                      height: 57,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/waguri.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Hello,',
                            style: TextStyle(
                              color: Color(0xFF505050),
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.09,
                              letterSpacing: -0.40,
                            ),
                          ),
                        ),
                        Text(
                          'Zeyphrine.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0.07,
                            letterSpacing: -0.51,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13, bottom: 15),
                child: Container(
                  width: 340,
                  height: 160,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.98, 0.20),
                      end: Alignment(0.98, -0.2),
                      colors: [Color(0xFF1E61C8), Color(0xFF3F87F7)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 30, bottom: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Blender 3D',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0.06,
                                        letterSpacing: -0.60,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Class',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 0.06,
                                          letterSpacing: -0.60,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 70),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '35%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 47.23,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0.02,
                                    letterSpacing: -1.42,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Text(
                                    'OFF!',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0.06,
                                      letterSpacing: -0.60,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Transform(
                        transform: Matrix4.identity()
                          ..translate(0.0, 0.0)
                          ..rotateZ(-0.13),
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 190,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/roket2.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230, bottom: 5),
                child: Text(
                  'My Courses',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.34,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: -0.52,
                  ),
                ),
              ),
              Container(
                width: 340,
                height: 70,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-1.00, 0.03),
                    end: Alignment(1, -0.03),
                    colors: [Color(0xFF6D61EC), Color(0xFF6A5CFA)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: SizedBox(
                  width: 49.85,
                  height: 48,
                  child: Image.asset(
                    'images/premiere.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: 340,
                height: 70,
                color: Colors.green,
                child: Center(
                  child: Text('Container 3'),
                ),
              ),
              SizedBox(
                height: 159,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 170,
                      color: index % 2 == 0 ? Colors.orange : Colors.purple,
                      child: Center(
                        child: Text('Container ${index + 4}'),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 159,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 170,
                      color: index % 2 == 0 ? Colors.yellow : Colors.teal,
                      child: Center(
                        child: Text('Container ${index + 6}'),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
