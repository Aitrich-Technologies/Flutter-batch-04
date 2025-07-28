import 'package:exe1/exe1.dart' as exe1;

void main(List<String> arguments) {
  Map<String,double> petprices = {
    'Bella' : 1.5,
    'Lucy' : 0.8,
    'Loki' : 1.2,
    'Leo' : 2.0,
    'Oggy' : 3.5
  };
  print(petprices);
  var cost =petprices.values;
  var TotalCost =cost.reduce((value, element) => value +element);
  print('Total Cost :\$ ${TotalCost.toStringAsFixed(2)}');
}
