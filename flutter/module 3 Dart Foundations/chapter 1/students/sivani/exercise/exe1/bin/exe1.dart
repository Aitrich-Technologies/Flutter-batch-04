import 'package:exe1/exe1.dart' as exe1;

void main(List<String> arguments) {
   for(int i = 0 ; i< 6; i++){
      var x='';
        for(int j = (6-i); j > 1 ;j--) {
           x += ' ';
        }
      for(int j = 1; j <= i ;j++){
           x += '* ';
      }
       print(x);
    }
}



