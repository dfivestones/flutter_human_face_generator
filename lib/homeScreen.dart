import 'package:flutter/material.dart';
import 'package:human_face_generator_app/setDrawingArea.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<setDrawingArea> allPoints = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpeg"),
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(9.0),
                    child: Container(
                      width: 256,
                      height: 256,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 6.0,
                              spreadRadius: 1)
                        ],
                      ),
                      child: GestureDetector(
                        onPanDown: (details) {
                          this.setState(
                            () {
                              allPoints.add(setDrawingArea(
                                  points: details.localPosition,
                                  paintArea: Paint()
                                    ..strokeCap = StrokeCap.round
                                    ..isAntiAlias = true
                                    ..color = Colors.white
                                    ..strokeWidth = 2.0));
                            },
                          );
                        },
                        onPanUpdate: (details) {
                          this.setState(
                            () {
                              allPoints.add(setDrawingArea(
                                  points: details.localPosition,
                                  paintArea: Paint()
                                    ..strokeCap = StrokeCap.round
                                    ..isAntiAlias = true
                                    ..color = Colors.white
                                    ..strokeWidth = 2.0));
                            },
                          );
                        },
                        onPanEnd: (details) {
                          this.setState(
                            () {},
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
