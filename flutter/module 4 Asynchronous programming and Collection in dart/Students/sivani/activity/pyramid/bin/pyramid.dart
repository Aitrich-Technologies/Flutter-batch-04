import 'dart:io';

import 'package:pyramid/pyramid.dart' as pyramid;

void main(List<String> arguments) {
  var x;
  for (int i=0;i<6;i++){
    for(int j=1;j<=i;j++){
      stdout.write('$j ');
    }
    print('');
  }
  
}
