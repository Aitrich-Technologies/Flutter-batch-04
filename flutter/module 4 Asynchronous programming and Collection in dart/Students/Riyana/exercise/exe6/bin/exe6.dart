import 'dart:io';

void main() {
  print('Enter the Number of students to register:');
  int n = int.parse(stdin.readLineSync()!);

  List<Student> students = [];
  for (int i = 1; i <= n; i++) {
    print('Enter student $i details: ');

    print('Enter the ID: ');
    String id = stdin.readLineSync()!;

    print('Enter the Name: ');
    String name = stdin.readLineSync()!;

    print('Enter the Address: ');
    String address = stdin.readLineSync()!;

    print('Enter the Phone Number: ');
    String phone = stdin.readLineSync()!;

    print("Enter the Father's Name: ");
    String father = stdin.readLineSync()!;

    print("Enter the Mother's Name: ");
    String mother = stdin.readLineSync()!;

    students.add(
      Student(
        id: id,
        name: name,
        address: address,
        phone: phone,
        father: father,
        mother: mother,
      ),
    );
  }
  print('Registered students');

  if (students.isEmpty) {
    print('No students registered.');
  } else {
    for (int i = 0; i < students.length; i++) {
      var student = students[i];

      print('Id: ${student.id}');
      print('Name: ${student.name}');
      print('Address: ${student.address}');
      print('Phone Number: ${student.phone}');
      print('Father name: ${student.father}');
      print('Mother name: ${student.mother}');
      print('------------------------------');
    }
  }
  while(true){
  print('Options');

  print('1.View all students');

  print('2.View students by id');
  print('3.Delete student by id');

  print('4.Exit');
          
  print('Choose an Option:');


  int r = int.parse(stdin.readLineSync()!);

  switch (r) {
    case 1:
      {

        for (int i = 0; i < students.length; i++) {
          var student = students[i];

          print('Id: ${student.id}');
          print('Name: ${student.name}');

          print('Address: ${student.address}');

          print('Phone Number: ${student.phone}');

          print('Father name: ${student.father}');

          print('Mother name: ${student.mother}');
          print('------------------------------');
        }
      }

    case 2:
      stdout.write('Enter student ID : ');
      String studentId = stdin.readLineSync()!;

      var fStudent = students.firstWhere((student) => student.id == studentId);

      if (fStudent != null) {
        print('------------------------------');
        print('Student Details:');
        print('Id: ${fStudent.id}');
        print('Name: ${fStudent.name}');
        print('Address: ${fStudent.address}');
        print('Phone Number: ${fStudent.phone}');
        print('Father name: ${fStudent.father}');
        print('Mother name: ${fStudent.mother}');
        print('------------------------------');
      } else {
        print('Error: No student found with ID $studentId');
      }
      break;

    case 3:
     print('Enter student ID : ');
      String stuId = stdin.readLineSync()!;

      students.removeWhere((item) => item.id == '$stuId');
      print('Student deleted sucessfully');

      break;

    case 4:
      print('Exiting ');
      return;

    default:
      print('Invalid option. .');
      break;
  }
  }
}

class Student {
  String id;
  String name;
  String address;
  String phone;
  String father;
  String mother;

  Student({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.father,
    required this.mother,
  });
}
