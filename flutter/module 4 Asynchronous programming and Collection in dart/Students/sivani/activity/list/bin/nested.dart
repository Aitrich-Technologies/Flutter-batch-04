void main(){
  List<List<int>> nestedList = [
    [1,2,3],
    [4,5,6],
    [7,8,9],
  ];
  print('Complete Nested List : ');
  print(nestedList);

  print('First Inner List');
  print(nestedList[0]);

  print('Second Element of the Second inner List');
  print(nestedList[1][1]);

  print('Elements in each inner List : ');
  for (var innerList in  nestedList){
       print(innerList);
  }
 
 print('Individual Elements : ');
 for(var innerList in nestedList){
  for(var element in innerList){
    print(element);
  }
 }
}