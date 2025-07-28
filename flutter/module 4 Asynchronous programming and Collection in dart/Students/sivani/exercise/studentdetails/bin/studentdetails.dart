import 'dart:io';

// No need for this if you're not using anything from it.
// import 'package:studentdetails/studentdetails.dart' as studentdetails; 

void main(List<String> arguments) {
  print('');
  print('');
  print('');
  print('');

  print('Enter the Number of students to register');
  int n = int.parse(stdin.readLineSync()!);

  List<Student> students = [];
  for (int i = 1; i <= n; i++) {
    print('\nEnter student $i details: ');
    var s = Student();

    print('Enter the id:');
    String? input0 = stdin.readLineSync();

    print('Enter the Name:');
    String? input1 = stdin.readLineSync();

    print('Enter the Address:');
    String? input2 = stdin.readLineSync();

    print('Enter the Phone Number:');
    String? input3 = stdin.readLineSync();

    print("Enter the Father's Name");
    String? input4 = stdin.readLineSync();

    print("Enter the Mother's Name");
    String? input5 = stdin.readLineSync();

    if (input0 != null && input0.isNotEmpty) {
      s.id = input0;
    }
    if (input1 != null && input1.isNotEmpty) {
      s.name = input1;
    }
    if (input2 != null && input2.isNotEmpty) {
      s.address = input2;
    }
    if (input3 != null && input3.isNotEmpty) {
      s.phone = input3;
    }
    if (input4 != null && input4.isNotEmpty) {
      s.father = input4;
    }
    if (input5 != null && input5.isNotEmpty) {
      s.mother = input5;
    }
    students.add(s);
  }

  print('\nRegistered students:');
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
      print('---------------------------------');
    }
  }

  // --- Start of the main menu loop ---
  int op;
  do {
    print('\nOptions :');
    print('1. View all students');
    print('2. View Student by ID');
    print('3. Delete Student by ID');
    print('4. Exit');
    stdout.write('Choose an Option : '); // Use stdout.write to keep input on the same line

    String? choiceInput = stdin.readLineSync();
    op = int.tryParse(choiceInput ?? '') ?? 0; // Safely parse integer, default to 0 if invalid

    switch (op) {
      case 1:
        {
          print('\n--- All Registered Students ---');
          if (students.isEmpty) {
            print('No students to display.');
          } else {
            for (int i = 0; i < students.length; i++) {
              var student = students[i];
              print('Id: ${student.id}');
              print('Name: ${student.name}');
              print('Address: ${student.address}');
              print('Phone Number: ${student.phone}');
              print('Father name: ${student.father}');
              print('Mother name: ${student.mother}');
              print('---------------------------------');
            }
          }
        }
        break; 

      case 2:
        {
          stdout.write('Enter the ID of the student: ');
          String? searchId = stdin.readLineSync();
          
          bool found = false;

          if (searchId != null && searchId.isNotEmpty) {
            for (var student in students) {
              if (student.id == searchId) {
                print('\n--- Student Details for ID: $searchId ---');
                print('Id: ${student.id}');
                print('Name: ${student.name}');
                print('Address: ${student.address}');
                print('Phone Number: ${student.phone}');
                print('Father name: ${student.father}');
                print('Mother name: ${student.mother}');
                print('---------------------------------');
                found = true;
                break;
              }
            }
          }
        }
        break;

      case 3:
        {
          stdout.write('Enter the ID of the student: ');
          String? sid = stdin.readLineSync();
          students.removeWhere((item) => item.id=='$sid');

          print(' Student Deleted Successfully.');
        }
        break;

      case 4:
        {
          print('Exiting!');
        }
        break;

      default:
        {
          print('Invalid Option.');
        }
    }
  } while (op != 4); 
}

class Student {
  String id = '';
  String name = '';
  String address = '';
  String phone = '';
  String father = '';
  String mother = '';

  
  String get stid => id;
  set stid(String value) => id = value;

  String get stname => name;
  set stname(String value) => name = value;

  String get stadd => address;
  set stdadd(String value) => address = value; 

  String get stphone => phone;
  set stphone(String value) => phone = value;

  String get stfather => father;
  set stfather(String value) => father = value;

  String get stmother => mother;
  set stmother(String value) => mother = value;
}