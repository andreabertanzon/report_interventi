
import 'unit.dart';

class Material {
  final String name;
  final double price;
  final String? brand;
  final Unit unit;

  const Material({
    required this.name,
    required this.price,
    this.brand,
    required this.unit,
  });
}
