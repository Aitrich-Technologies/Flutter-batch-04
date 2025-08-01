import 'package:exe4/exe4.dart' as exe4;

void main(List<String> arguments) async{
  print('Program started');
  await Future.delayed(Duration(seconds: 3),(){
    
    print('Fetching data........');
     print('Program ended');
     print('Data Received:Some data from the server');
  
  });
  
}
