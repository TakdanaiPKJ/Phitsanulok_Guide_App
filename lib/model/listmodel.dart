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
        """Wat Phra Sri Rattana Mahathat \nThai: วัดพระศรีรัตนมหาธาตุ\n"Temple of the Great Jewelled Reliquary",\ncolloquially referred to as Wat-Phra-Sri (Thai: วัดพระศรี) \n or Wat Yai (Thai: วัดใหญ่; "Big Temple"), \n is a Buddhist temple (wat) in Phitsanulok Province, Thailand, where it is located on east bank of Nan River,\n near Naresuan Bridge and opposite Phitsanulok Provincial Hall. It is about 337 km from Bangkok.""",
    pic: 'assets/images/0001.jpg',
    otherpic: 'assets/images/0002.jpg',
    latt: 16.823696,
    lngg: 100.261878,
  ),
  const ListPlace(
    name: 'Phu Hin Rong Kla',
    type: 'National Park',
    detail:
        """Phu Hin Rong Kla National Park Thai: อุทยานแห่งชาติภูหินร่องกล้า is a national park located in the Loei and Phitsanulok Provinces of Thailand. The protected area is located in the forested mountains of the Luang Prabang Range close to the border with Laos and is part of the Luang Prabang montane rain forests ecoregion. The park was the base of operations of the long fight of Thai combatant in communist war of Thailand.""",
    pic: 'assets/images/0101.jpg',
    otherpic: 'assets/images/0102.jpg',
    latt: 16.9751339,
    lngg: 100.9985451,
  ),
  const ListPlace(
    name: 'Wat Nang Phaya',
    type: 'Temple',
    detail:
        """Wat Nang Phaya is located in the same area as Wat Ratchaburana, next to the east. It is an important temple that are well known among amulets experts; because there is a super amulet as one of the Benjapakee set known as "Phra Nang Phaya", the amulet was first found in the year 2444 and in the year 1954.
Phra Nang Phaya is known for its holiness and famous for its great mercy; especially for ladies who are leaders and supervisors who have to take care of many subordinates.
However, it is believed that if anyone has a queen in their possession will make that subordinate feel fearful like a queen, and it is now classified as a very rare amulet.
As for the architecture of Wat Nang Phaya, it is probably the same period as Wat Ratchaburana. But, the difference is that Wat Nang Phaya does not have an ordination hall, only the monastery""",
    pic: 'assets/images/0201.jpg',
    otherpic: 'assets/images/0202.jpg',
    latt: 16.8225625,
    lngg: 100.2593626,
  ),
  const ListPlace(
    name: 'Namtok Kaeng Song',
    type: 'Waterfall',
    detail:
        """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).""",
    pic: 'assets/images/0001.jpg',
    otherpic: 'assets/images/0001.jpg',
    latt: 17.0039,
    lngg: 100.9942,
  ),
  const ListPlace(
    name: 'Kaeng Sopha Waterfall',
    type: 'Waterfall',
    detail:
        """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).""",
    pic: 'assets/images/0001.jpg',
    otherpic: 'assets/images/0001.jpg',
    latt: 17.0039,
    lngg: 100.9942,
  ),
];
