import 'package:exer2/exer2.dart' as exer2;

void main(List<String> arguments) {
 var b=B();
 b.value="Value from b";
 b.bvalue();

  var c=C();
 c.value="Value from c";
 c.cvalue();

 var d=D();
 d.value="Value from d";
 d.dvalue();

var f=F();
 f.value="Value from f";
 f.fvalue();






}

class A {
   late String value;
  
}

class B extends A{
  void bvalue(){
print("Value from class b : $value");
  }
  

}
class C extends A{
  void cvalue(){
print("Value form class C : $value");
  }
  

}
class D extends A{
  void dvalue(){
print("Value form class d : $value");
  }
  

}
class F extends A{
  void fvalue(){
print("Value form class f : $value");
  }
  

}