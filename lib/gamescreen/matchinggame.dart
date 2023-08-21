import 'package:flutter/material.dart';
import 'package:test_app/model/matchingmodel.dart';

class MatchingGame extends StatefulWidget {
  final int placeindex;
  final String placename;

  //@override
  const MatchingGame(
      {Key? key, required this.placeindex, required this.placename})
      : super(key: key);

  @override
  State<MatchingGame> createState() => _MatchingGameState();
}

class _MatchingGameState extends State<MatchingGame> {
  late List<MatchingListModel> items;
  late List<MatchingListModel> items2;

  late int score;
  late bool gameOver;
  late double pass;

  @override
  void initState() {
    super.initState();
    initGame();
  }

  initGame() {
    gameOver = false;
    score = 0;
    items = List<MatchingListModel>.from(matchingAllList[widget.placeindex]);
    items2 = List<MatchingListModel>.from(matchingAllList[widget.placeindex]);
    items.shuffle();
    items2.shuffle();
    pass = (items.length / 2) * 10;
  }

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      gameOver = true;
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text("${widget.placename}'s Matching Game"),
        backgroundColor: const Color.fromRGBO(16, 37, 66, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: "Score: ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: '$score',
                    style: TextStyle(
                      color: score > 0 ? Colors.green : Colors.red,
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
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 8,
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            child: Draggable<MatchingListModel>(
                                data: item,
                                childWhenDragging: Container(
                                  alignment: Alignment.center,
                                  color: const Color.fromRGBO(218, 65, 103, 1),
                                  //child: Text(item.name),
                                ),
                                feedback: Padding(
                                  //feedback when drag
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      height: 100,
                                      width: 175,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(item.name),
                                        fit: BoxFit.cover,
                                      )),
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 15, 0, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      //normal stage
                                      height: 100,
                                      width: 175,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(item.name),
                                        fit: BoxFit.cover,
                                      )),
                                    ),
                                  ),
                                )),
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
                              Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                              child: Container(
                                color: item.accepting
                                    ? const Color.fromRGBO(244, 211, 94, 1)
                                    : const Color.fromRGBO(247, 135, 100, 1),
                                height: 100,
                                width: 175,
                                alignment: Alignment.center,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  item.ans,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(235, 235, 211, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
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
                color: Colors.transparent,
                child: Text(
                  score >= pass
                      ? "Congrats you get more than half"
                      : "Nt,You get below half,Let's Try again",
                  style: TextStyle(
                    color: score >= pass ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            if (gameOver)
              Center(
                child: ElevatedButton(
                  child: Text(score >= pass ? "Play again!" : "Try again!!"),
                  onPressed: () {
                    initGame();
                    setState(() {});
                  },
                ),
              ),
            Center(
              child: ElevatedButton(
                child: const Text("Exit Game"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
