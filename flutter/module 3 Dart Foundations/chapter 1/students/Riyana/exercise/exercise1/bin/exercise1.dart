import 'package:exercise1/exercise1.dart' as exercise1;

void main(List<String> arguments) {
     for(int i = 0 ; i< 6; i++){
      var y='';
        for(int j = (6-i); j > 1 ;j--) {
           y += ' ';
        }
      for(int j = 1; j <= i ;j++){
           y += '* ';
    }
      print(y);
}
}
 
