import 'package:exe2/exe2.dart' as exe2;

void main(List<String> arguments) {
  var bValue = B();
  bValue.Value= 'Value from B';
  bValue.bValue();

  var cValue = C();
  cValue.Value= 'Value from C';
  cValue.cValue();

  var dValue = D();
  dValue.Value= 'Value from D';
  dValue.dValue();
  
  var fValue = F();
  fValue.Value= 'Value from F';
  fValue.fValue();
}

class A {
 late String Value;
}

class B extends A{
  void bValue(){
    print('Value from class B : $Value');
  }
}

class C extends A{
  void cValue(){
    print('Value from class C : $Value');
  }
}

class D extends A{
  void dValue(){
    print('Value from class D : $Value');
  }
}

class F extends A{
  void fValue(){
    print('Value from class F : $Value');
  }
}