void main(List<String> arguments) {
  var a =A();
  a.bValue();
  a.cValue();
  a.dValue();
  a.fValue();
}

class A with B,C,D,F
{
  
}

mixin B{
  void bValue(){
    print('Value from class B : Value from B');
  }
}

mixin C {
  void cValue(){
    print('Value from class C : Value from C');
  }
}

mixin D {
  void dValue(){
    print('Value from class D : Value from D');
  }
}

mixin F {
  void fValue(){
    print('Value from class F : Value from F');
  }
}