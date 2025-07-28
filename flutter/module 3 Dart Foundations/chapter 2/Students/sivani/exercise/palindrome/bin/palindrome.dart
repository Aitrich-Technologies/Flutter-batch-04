import 'package:palindrome/palindrome.dart' as palindrome;

void main(List<String> arguments) {
String n="2332";
String rev="";
String v =n;

for(int j=n.length-1;j>=0;j--){
  rev=rev+n[j];
}
  if(v==rev){
    print("It is a Palindrome Number");
  }
  else{
    print("It is not a Palindrome Number");
  }
}
