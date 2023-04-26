import 'package:flutter/material.dart';

class QuizWelcome extends StatelessWidget {
  const QuizWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 16, 109),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text(
                    "Let's play Quiz",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "ARE YOU READY!!",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      debugPrint('asduh');
                    },
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Text(
                        "Let's Start Quiz!!",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
