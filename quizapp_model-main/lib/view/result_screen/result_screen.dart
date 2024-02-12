import 'package:flutter/material.dart';
import 'package:quizapp_model/utils/color_constant.dart';
import 'package:quizapp_model/utils/sample_questions/sample_questions.dart';
import 'package:quizapp_model/view/home_page/hpme_page.dart';
import 'package:quizapp_model/view/question_screen/question_screen.dart';

class ResultScreen extends StatelessWidget {
  // const ResultScreen({super.key});

// changed
  int count;
  // int? wrongAnswers;
  int? skippedQuestions;

  ResultScreen({required this.count});

  @override
  Widget build(BuildContext context) {
    int totalQn = Questiondb.literaturequestion.length;
     int skippedQuestions = totalQn - count;
    int wrongAnswers = totalQn - skippedQuestions;

    

    double percentage = (count / totalQn) * 100;

    return Scaffold(
      backgroundColor: Colorconstant.mycustomblue,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colorconstant.mycustomblue,
                child: Column(
                  children: [
                    Text(
                      "congrats!",
                      style: TextStyle(color: Colors.yellow, fontSize: 30),
                    ),
                    Text(
                      // ch
                      "${percentage}%score",
                      // .toStringAsFixed(0)
                      style: TextStyle(
                          color: Colorconstant.mycustomwhite, fontSize: 30),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(100, 100),
                      topRight: Radius.elliptical(100, 100),
                    ),
                    color: Colorconstant.mycustomblack),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Correct Answers: $count",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Wrong Answers: $wrongAnswers",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Skipped Questions: $skippedQuestions",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colorconstant.mycustomorange),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                child: Text(
                  "Restart",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
