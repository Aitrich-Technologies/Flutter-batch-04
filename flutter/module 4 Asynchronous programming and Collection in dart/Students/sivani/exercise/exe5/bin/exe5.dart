import 'dart:collection';

import 'package:exe5/exe5.dart' as exe5;

void main(List<String> arguments) {
 Queue<int> myqueue =Queue();

 myqueue.addAll([10, 20, 30, 40,50]);
 print('Initial Queue : $myqueue');

 print('First Element of the Queue : ${myqueue.first}'); 
 print('Last Element of the Queue : ${myqueue.last}');

     var re=myqueue.removeFirst();
    print('Removed Element : $re');

    var rem =myqueue.removeFirst();
    print('Removed Element : $rem');

    var remo = myqueue.removeFirst();
    print('Removed Element : $remo');

     var remov=myqueue.removeFirst();
    print('Removed Element : $remov');

     var remove=myqueue.removeFirst();
    print('Removed Element : $remove');

    print('Queue After Removal : ${myqueue}');
}
