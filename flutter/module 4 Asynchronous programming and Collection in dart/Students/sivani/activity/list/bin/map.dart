void main(){
  Map<String,String> car = {
    'Brand' : 'BMW',
    'Model' : 'X5',
    'Color' : 'Black',
  };
  print('Keys : ');
  car.forEach((key, value) {
    print(key);
  });
  print('Values');
  car.forEach((key, value) {
    print(value);
  });
  print('Key and Value together : ');
  car.forEach((key, value) {
    print('$key : $value');
  });
}