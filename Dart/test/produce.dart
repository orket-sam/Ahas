class Produce {
  final String units;
  final num quantity;
  final String category, subcategory;
  Produce(
      {required this.category,
      required this.quantity,
      required this.subcategory,
      required this.units});
}

List<Produce> _data = [
  Produce(
      category: 'category',
      quantity: 10,
      subcategory: 'subcategory',
      units: 'units')
];
