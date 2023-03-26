class LampModel {
  String image;
  bool isFavorite;
  String price;
  LampModel({
    required this.image,
    required this.isFavorite,
    required this.price,
  });
}

List<LampModel> list = [
  LampModel(image: 'assets/lamp2.png', isFavorite: false, price: '30'),
  LampModel(image: 'assets/lamp2.png', isFavorite: false, price: '40'),
  LampModel(image: 'assets/lamp2.png', isFavorite: false, price: '50'),
  LampModel(image: 'assets/lamp2.png', isFavorite: false, price: '60'),
];
