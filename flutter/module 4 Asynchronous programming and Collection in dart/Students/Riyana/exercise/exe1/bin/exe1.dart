import 'package:exe1/exe1.dart' as exe1;

void main(List<String> arguments) {
 Map petprices={'Bella':1.5,'Lucy':0.8,'Loki':1.2,'Leo':2.0,'oggy':3.5};
 print(petprices);
 var pet=petprices.values;
 var totalprice=pet.reduce((value, element) => value +element);
 print('The total price is: \$ ${totalprice.toStringAsFixed(2)}');
}
