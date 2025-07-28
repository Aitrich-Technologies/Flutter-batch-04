import 'package:exec2/exec2.dart' as exec2;

void main(List<String> arguments) {
  for(int i=0;i<6;i++){
    var y='';
    for(int v=(6-i);v>1;v--){
      y+=' ';
    }
    for(int v=1;v<=i;v++){
      y+='* ';
    }
    print(y);
  }
}
