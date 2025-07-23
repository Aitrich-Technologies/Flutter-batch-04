void main(List<String> arguments) {

  var a=A();
  a.bvalue();
  a.cvalue();
  a.dvalue();
  a.fvalue();
 }
 class A with B,C,D,F{

 }

mixin B {
  void bvalue(){
print("Value from class b : Value from b");
  }
  

}
mixin C {
  void cvalue(){
print("Value form class C : Value from c");
  }
  

}
mixin D {
  void dvalue(){
print("Value form class d : Value from d");
  }
  

}
mixin F {
  void fvalue(){
print("Value form class f : Value from f");
  }
  

}
