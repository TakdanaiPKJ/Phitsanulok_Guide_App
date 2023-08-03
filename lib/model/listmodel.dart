class ListPlace {
  final String name;
  final String type;
  final String detail;
  final String pic;
  final String otherpic;
  final double latt;
  final double lngg;

  const ListPlace(
      {required this.name,
      required this.type,
      required this.detail,
      required this.pic,
      required this.otherpic,
      required this.latt,
      required this.lngg});
}

List<ListPlace> listplace = [
  const ListPlace(
    name: 'Wat Phra Si Rattana Mahathat',
    type: 'Temple',
    detail:
        """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).""",
    pic:
        'https://picsum.photos/id/1/5000/3333',
    otherpic: 'https://picsum.photos/id/1/5000/3333',
    latt: 16.823696,
    lngg: 100.261878,
  ),
  const ListPlace(
    name: 'Phu Hin Rong Kla',
    type: 'National Park',
    detail:
        """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).""",
    pic:
        'https://picsum.photos/id/1/5000/3333',
    otherpic: 'https://picsum.photos/id/1/5000/3333',
    latt: 17.0039,
    lngg: 100.9942,
  ),
];
