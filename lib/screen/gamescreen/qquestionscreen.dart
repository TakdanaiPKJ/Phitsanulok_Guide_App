import 'package:flutter/material.dart';

class QQuestionScreen extends StatefulWidget {
  const QQuestionScreen({Key? key}) : super(key: key);

  @override
  State<QQuestionScreen> createState() => _QQuestionScreenState();
}

class _QQuestionScreenState extends State<QQuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            SizedBox(
              height: 32,
            ),
            Text('Question')
          ],
        ),
      ),
    );
  }
}
