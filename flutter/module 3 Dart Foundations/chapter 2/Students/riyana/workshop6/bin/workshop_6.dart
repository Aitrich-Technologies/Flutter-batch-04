void main(List<String> args) {
  var obj = Cs();
  print(obj.cs_String);
  print(obj.str);
  print(obj.str1);
  }


  class Cs extends Cs1 {
    var cs_String="This is from derived class";

  }

  class Cs1 extends Cs2 {
    var str="This is from class one";
   
  }
  class Cs2{
    var str1="This is from class two";

  }

