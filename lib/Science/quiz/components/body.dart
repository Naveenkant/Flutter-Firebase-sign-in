import 'package:authentification/constants.dart';
import 'package:authentification/controllers/question_controller.dart';
import 'package:authentification/screens/quiz/components/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ProgressBar(),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            )
          ],
        ))
      ],
    );
  }
}
