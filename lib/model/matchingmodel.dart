class MatchingListModel {
  final String name;
  final String value;
  final String ans;
  bool accepting;

  MatchingListModel({
    required this.name,
    required this.ans,
    required this.value,
    this.accepting = false,
  });

  //void remove(MatchingListModel recieveItem) {}
}

List<MatchingListModel> _place1 = [
  MatchingListModel(name: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Phra_Phuttha_Chinnarat_%28II%29.jpg/250px-Phra_Phuttha_Chinnarat_%28II%29.jpg', 
                    ans: 'พระพุทธชินราช', value: '1'),
  MatchingListModel(name: '2+2',
                    ans: '4', value: '2'),
  MatchingListModel(name: '3+3',
                    ans: '6', value: '3'),
  MatchingListModel(name: '4+4',
                    ans: '8', value: '4'),
];

List<MatchingListModel> _place2 = [
  MatchingListModel(name: 'A', ans: '1', value: '1'),
  MatchingListModel(name: 'B', ans: '2', value: '2'),
  MatchingListModel(name: 'C', ans: '3', value: '3'),
  MatchingListModel(name: 'C', ans: '4', value: '4'),
];

List<List<MatchingListModel>> matchingAllList = [
  _place1,
  _place2,
];
