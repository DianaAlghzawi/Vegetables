class VegetableItem {
  const VegetableItem({
    required this.price,
    required this.quantity,
    required this.vegetableName,
    required this.title,
    required this.decription,
    required this.images,
    required this.measurementType,
  });

  final String vegetableName;
  final String price;
  final String quantity;
  final String measurementType;
  final String title;
  final String decription;
  final List<String> images;
}
