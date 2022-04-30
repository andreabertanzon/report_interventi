import 'customer.dart';
import 'material.dart';
import 'operator.dart';
import 'site.dart';

class Intervention {
  final Map<Operator, double> workersHours;
  final String? notes;

  final Site site;
  final Customer customer;
  final Map<Material, double>? usedMaterial;

  const Intervention(
      {required this.workersHours,
      required this.site,
      required this.customer,
      this.notes,
      this.usedMaterial});
}

extension TotalPrice on Intervention {
  double totalPrice() {
    // price of worker = price * hours
    var totalWorkerPrice = 0.0;
    for (var kvp in workersHours.entries) {
      totalWorkerPrice = totalWorkerPrice + (kvp.key.price * kvp.value);
    }

    // totalMaterial = price * qty
    var totalMaterial = 0.0;
    if (usedMaterial != null) {
      for (var material in usedMaterial!.entries) {
        totalMaterial = totalMaterial + (material.key.price * material.value);
      }
    }else{
      totalMaterial = 0.0;
    }

    return totalWorkerPrice + totalMaterial;
  }
}

extension TotalHours on Intervention {
  double totalHours(){
    return workersHours.values.reduce((value, element) => value+element);
  }
}
