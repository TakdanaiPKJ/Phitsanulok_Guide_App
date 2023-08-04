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
                    ans: 'Phra Phuttha Chinnarat', value: '1'),
  MatchingListModel(name: 'https://upload.wikimedia.org/wikipedia/commons/f/f6/2013_Wat_Phra_Si_Rattana_Mahathat_Prang.jpg',
                    ans: "The gilded top of the temple's prang", value: '2'),
  MatchingListModel(name: 'https://upload.wikimedia.org/wikipedia/commons/9/97/Wat_Phra_Si_Rattana_Mahathat_-_Phitsanulok.jpg',
                    ans: 'Phra Attharot', value: '3'),
  MatchingListModel(name: 'https://scontent.fphs3-1.fna.fbcdn.net/v/t1.6435-9/106107603_2571794722921043_7557309328118344842_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFV1U2MH1ZxnYR_Nyvetrcdq8pcnQFbPUurylydAVs9S671vhLKGAU2qM__xtV757DIYnkH17GOAX3Q6TwnArwa&_nc_ohc=YRvkbWAZKI4AX9ZbQE4&_nc_ht=scontent.fphs3-1.fna&oh=00_AfBv30Mk3ASppmZ7ec8APPW6WCURyl-6x7T0Mb12RKJqsQ&oe=64F3D31F',
                    ans: 'Nan River', value: '4'),
];

List<MatchingListModel> _place2 = [
  MatchingListModel(name: 'https://picsum.photos/200/300', ans: '1', value: '1'),
  MatchingListModel(name: 'https://picsum.photos/200/300', ans: '2', value: '2'),
  MatchingListModel(name: 'https://picsum.photos/200/300', ans: '3', value: '3'),
  MatchingListModel(name: 'https://picsum.photos/200/300', ans: '4', value: '4'),
];

List<List<MatchingListModel>> matchingAllList = [
  _place1,
  _place2,
];
