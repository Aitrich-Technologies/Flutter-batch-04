void main()
{
  function1();
  print(function2());
  function3('This is from main function');
  }

  void function1()
  {
    print('Its just a function');
  }

  String function2()
  {
    return 'This is returned string';
  }

  void function3(String str)
  {
    print(str);
  }