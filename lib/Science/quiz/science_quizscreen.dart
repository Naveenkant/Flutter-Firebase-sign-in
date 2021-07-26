import 'package:authentification/Science/controllers/question_controller.dart';
import 'package:authentification/screens/quiz/components/body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScienceQuizScreen extends StatelessWidget {
  QuestionController _controller = Get.put(QuestionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(onPressed: _controller.nextQuestion, child: Text("Skip"))
        ],
      ),
      body: Body(),
    );
  }
}
