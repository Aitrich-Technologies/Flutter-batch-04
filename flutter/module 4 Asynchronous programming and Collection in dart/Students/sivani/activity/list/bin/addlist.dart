void main(){
  var ac = [
    12,
    'Hisham',
    20.1,
  ];
  List<String> car = ['BMW', 'Audi', 'Toyota', 'Zen'];
  List<String> car2 = ['BMW1', 'Audi1', 'Toyota1'];
  print(car.length);

  if(car .contains('Zen')){
    print('Available');
  }
  else{
    print('Not Available');
  }
  car.add('Ford');
  print(car);
  car.removeAt(0);
  print(car);
  car.addAll(car2);
  print(car);
  print(car.join('--'));
  List<List<int>> nelist = [
    [1,2,3],
    [4,5,6],
  ];
  print(nelist[0]);
  print(nelist[0][1]);
}