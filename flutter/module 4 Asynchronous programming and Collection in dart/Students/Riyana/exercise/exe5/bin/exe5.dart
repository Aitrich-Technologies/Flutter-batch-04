import 'dart:collection';

import 'package:exe5/exe5.dart' as exe5;

void main(List<String> arguments) {
 final queue=Queue<int>();
 queue.addAll({10,20,30,40,50});
 print('Initial Queue:$queue');
 print('first element of the queue:${queue.first}');
  print('Last element of the queue:${queue.last}');
var remove=
  queue.removeFirst();
  print('Removed element:${remove}');

  var v=
  queue.removeFirst();
  print('Removed element:$v');
  var r=queue.removeFirst();
  print('Removed element:$r');
  var p=queue.removeFirst();
  print('Removed element:$p');
  var t=queue.removeFirst();
  print('Removed element:$t');
  print('Queue After removal:${queue}');
}
