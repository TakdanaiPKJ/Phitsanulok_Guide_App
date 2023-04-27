import 'package:flutter/material.dart';
import 'package:test_app/model/matchingmodel.dart';

class MatchingGame extends StatefulWidget {
  const MatchingGame({Key? key}) : super(key: key);

  @override
  State<MatchingGame> createState() => _MatchingGameState();
}

class _MatchingGameState extends State<MatchingGame> {
  late List<MatchingListModel> items;
  late List<MatchingListModel> items2;

  late int score;
  late bool gameOver;

  @override
  void initState() {
    super.initState();
    initGame();
  }

  initGame() {
    gameOver = false;
    score = 0;
    items = List<MatchingListModel>.from(matchingAllList[0]);
    items2 = List<MatchingListModel>.from(matchingAllList[0]);
    items.shuffle();
    items2.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      gameOver = true;
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TEST'),
        backgroundColor: const Color.fromRGBO(16, 37, 66, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(text: "Score: "),
                  TextSpan(
                    text: "$score",
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            if (!gameOver)
              Row(
                children: <Widget>[
                  Column(
                    children: items.map(
                      (item) {
                        return Container(
                          margin: const EdgeInsets.all(8.0),
                          child: Draggable<MatchingListModel>(
                            data: item,
                            childWhenDragging: Container(
                              color: Colors.grey,
                              child: Text(item.name),
                            ),
                            feedback: Container(
                              color: Colors.grey,
                              child: Text(item.name),
                            ),
                            child: Container(
                              height: 50,
                              width: 100,
                              color: Colors.grey,
                              child: Text(item.name),
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                  const Spacer(),
                  Column(
                    children: items2.map(
                      (item) {
                        return DragTarget<MatchingListModel>(
                          onAccept: (recieveItem) {
                            if (item.value == recieveItem.value) {
                              setState(() {
                                items.remove(recieveItem);
                                items2.remove(recieveItem);
                                score += 10;
                                item.accepting = false;
                              });
                            } else {
                              setState(() {
                                score -= 5;
                                item.accepting = false;
                              });
                            }
                          },
                          onLeave: (recieveItem) {
                            setState(() {
                              item.accepting = false;
                            });
                          },
                          onWillAccept: (recieveItem) {
                            setState(() {
                              item.accepting = true;
                            });
                            return true;
                          },
                          builder: (context, acceptedItems, rejectedItem) =>
                              Container(
                            color: item.accepting ? Colors.red : Colors.teal,
                            height: 50,
                            width: 100,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(8.0),
                            child: Text(
                              item.ans,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  )
                ],
              ),
            if (gameOver)
              Container(
                color: Colors.amber,
                child: const Text(
                  "GameOver",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            if (gameOver)
              Center(
                child: ElevatedButton(
                  child: const Text("NEW GAME ?"),
                  onPressed: () {
                    initGame();
                    setState(() {});
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
