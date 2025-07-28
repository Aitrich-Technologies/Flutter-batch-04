import 'package:exe3/exe3.dart' as exe3;

void main(List<String> arguments) {
  var List = [1,2,3,4,5,6,7,8,9,10];
  print('List : $List');
  var sum = [1,2,3,4,5,6,7,8,9,10].reduce((a,b)=> a+b);
  print('Sum of elements is : $sum');
}
