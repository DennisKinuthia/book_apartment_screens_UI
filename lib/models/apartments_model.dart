class Apartment {
  const Apartment({
    required this.name,
    required this.price,
    required this.sizeDesc,
    required this.review,
    required this.reviewCount,
    required this.desc,
    required this.sizeLivingRoom,
    required this.sizeBedRoom,
    required this.sizeBathRoom,
    required this.features,
    required this.personImages,
    required this.images,
  });
  final String name;
  final double price;
  final String sizeDesc;
  final double review;
  final double reviewCount;
  final String desc;
  final int sizeLivingRoom;
  final int sizeBedRoom;
  final int sizeBathRoom;
  final List<String> features;
  final List<String> personImages;
  final List<String> images;
}
