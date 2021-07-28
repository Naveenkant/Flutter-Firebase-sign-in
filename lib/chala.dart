import 'package:authentification/screens/quiz/quiz_screen.dart';
import 'package:authentification/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import '../../constants.dart';
import 'Science/quiz/science_quizscreen.dart';

class Everybody extends StatefulWidget {
  @override
  _EverybodyState createState() => _EverybodyState();
}

class _EverybodyState extends State<Everybody> {
  movetoWelcome() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

  movetoquizscreen() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => QuizScreen()));
  }

  movetosciencequiz() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ScienceQuizScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: TextSpan(style: TextStyle(fontSize: 22), children: <TextSpan>[
            TextSpan(
              text: 'Quiz',
              style: TextStyle(
                fontWeight: FontWeight.w100,
                color: Colors.white,
              ),
            ),
            TextSpan(
                text: 'Maker',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue))
          ]),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.2,
        brightness: Brightness.light,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              // height: 200,
              child: ListView(
                padding: const EdgeInsets.all(5),
                children: [
                  // 1
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 10,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 7), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("images/gkq.png"),
                              fit: BoxFit.fill)),
                      margin: EdgeInsets.all(5.0),
                      child: Center(
                        child: Text(
                          'Gk quiz',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                    ),
                    onTap: movetoquizscreen,
                  ),
                  // 2
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 10,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 7), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("images/sci.jpg"),
                              fit: BoxFit.fill)),
                      margin: EdgeInsets.all(5.0),
                      // color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Science Quiz",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                    ),
                    onTap: movetosciencequiz,
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 10,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 7), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("images/english.jpg"),
                              fit: BoxFit.fill)),
                      margin: EdgeInsets.all(5.0),
                      // color: Colors.blue,
                      child: Center(
                        child: Text(
                          "English Quiz",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                    ),
                    onTap: movetoWelcome,
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 10,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 7), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("images/gkq.png"),
                              fit: BoxFit.fill)),
                      margin: EdgeInsets.all(5.0),
                      // color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Flutter Quiz",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                    ),
                    onTap: movetoWelcome,
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 10,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 7), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("images/gkq.png"),
                              fit: BoxFit.fill)),
                      margin: EdgeInsets.all(5.0),
                      // color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Competition Level",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                    ),
                    onTap: movetoWelcome,
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 10,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 7), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("images/gkq.png"),
                              fit: BoxFit.fill)),
                      margin: EdgeInsets.all(5.0),
                      // color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Physics",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                    ),
                    onTap: movetoWelcome,
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 10,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 7), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("images/gkq.png"),
                              fit: BoxFit.fill)),
                      margin: EdgeInsets.all(5.0),
                      // color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Maths Quiz",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                    ),
                    onTap: movetoWelcome,
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 10,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 7), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("images/gkq.png"),
                              fit: BoxFit.fill)),
                      margin: EdgeInsets.all(5.0),
                      // color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Chemistry Quiz",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                    ),
                    onTap: movetoWelcome,
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 10,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 7), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("images/gkq.png"),
                              fit: BoxFit.fill)),
                      margin: EdgeInsets.all(5.0),
                      // color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Biology Quiz",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                    ),
                    onTap: movetoWelcome,
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 10,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 7), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("images/gkq.png"),
                              fit: BoxFit.fill)),
                      margin: EdgeInsets.all(5.0),
                      // color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Computer quiz",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                    ),
                    onTap: movetoWelcome,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
