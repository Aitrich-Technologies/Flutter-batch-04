import 'package:exe3/exe3.dart' as exe3;

void main(List<String> arguments) {
 List li=[1,2,3,4,5,6,7,8,9,10];
 print('List:${li}');
 var sum=[1,2,3,4,5,6,7,8,9,10].reduce((value, element) => value +element);
 print('Sum of elements : $sum');
 
}
