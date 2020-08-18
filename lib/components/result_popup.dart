import 'package:flutter/material.dart';
import 'package:httprequestapp/models/getQuestion_module.dart';

class ResultDialog {
  static Future show(
    BuildContext context, {
    @required Question question,
    @required bool correct,
    @required Function onNext,
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
            backgroundColor: correct ? Colors.green : Colors.red,
            child: Icon(
              correct ? Icons.check : Icons.close,
              color: Colors.white,
            ),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                question.question,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  correct ? 'You got!' : 'No way dude, the Correct is:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: correct ? Colors.green : Colors.red,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  correct ? " " : question.answer1,
                  style: TextStyle(
                  ),
                ),
              ),
            ],
          ),
          actions: [
            FlatButton(
              child: const Text('Next'),
              onPressed: () {
                Navigator.of(context).pop();
                onNext();
              },
            )
          ],
        );
      },
    );
  }
}
