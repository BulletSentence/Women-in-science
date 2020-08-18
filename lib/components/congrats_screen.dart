import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:httprequestapp/main.dart';
import 'package:httprequestapp/pages/game_page.dart';


class FinishDialog {
  static Future show(
    BuildContext context, {
    @required int hitNumber,
    @required int questionNumber,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          title: CircleAvatar(
            backgroundColor: hitNumber < (questionNumber/2) ? Colors.red : Colors.green,
            maxRadius: 35.0,
            child: Icon(
              hitNumber < (questionNumber/2) ? Icons.warning : Icons.favorite,
              color: hitNumber < (questionNumber/2) ? Colors.grey.shade900 : Colors.white,
            ),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Congratulations!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Your Grade: $hitNumber',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,

                ),
              ),
              Text(
                'Wanna try again?',
                style: TextStyle(

                ),
              ),
            ],
          ),
          actions: [
            FlatButton(
              child: const Text('Play Again'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizPage()),
                );
              },
            ),
            FlatButton(
              child: const Text('QUIT'),
              onPressed: () {
                SystemNavigator.pop();
              },
            )
          ],
        );
      },
    );
  }
}

