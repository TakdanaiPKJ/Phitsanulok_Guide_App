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
  MatchingListModel(
      name: 'assets/images/0001.jpg',
      ans: 'Phra Phuttha Chinnarat',
      value: '1'),
  MatchingListModel(
      name: 'assets/images/0003.jpg',
      ans: "The gilded top of the temple's prang",
      value: '2'),
  MatchingListModel(
      name: 'assets/images/0002.jpg', ans: 'Phra Attharot', value: '3'),
  MatchingListModel(
      name: 'assets/images/0004.jpg', ans: 'Nan River', value: '4'),
];

List<MatchingListModel> _place2 = [
  MatchingListModel(
      name: 'assets/images/0103.jpg', ans: 'Lan Hin Pum Rock', value: '1'),
  MatchingListModel(
      name: 'assets/images/0104.jpg',
      ans: 'Khasya pine woods (Pinus kesiya)',
      value: '2'),
  MatchingListModel(
      name: 'assets/images/0105.jpg', ans: 'Lan Hin Taek', value: '3'),
  MatchingListModel(
      name: 'assets/images/0106.jpg', ans: 'Pha Choo Thong', value: '4'),
];

List<List<MatchingListModel>> matchingAllList = [
  _place1,
  _place2,
];
