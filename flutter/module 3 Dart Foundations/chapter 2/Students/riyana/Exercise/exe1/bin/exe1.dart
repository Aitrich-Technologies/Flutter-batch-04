import 'package:exe1/exe1.dart' as exe1;

void main(List<String> arguments) {
  String n="1221";
  String r="";
  String v= n;
  for(int j=n.length-1;j>=0;j--){
    r=r+n[j];
      }
      if(v==r){
        print("it is palindrome number");
      }
      else{
        print("it is not palindrome number");
      }

  
}

