import 'package:exe2/exe2.dart' as exe2;

void main(List<String> arguments) {
  var Numbers = [1,2,3,2,3,7,4,5,6,7,8,9,10];
  print('Original List : ${Numbers}');
  Set UniqueNumbers = Set.from({1,2,3,2,3,7,4,5,6,7,8,9,10});
  print('Unique Elements : $UniqueNumbers');
}
