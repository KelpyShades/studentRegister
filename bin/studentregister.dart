import 'dart:io';
import 'package:studentregister/studentregister.dart';

void main() {
  String actions = '''\n
      1. Add New Student.
      2. Remove Student.
      3. Show All Students.
      4. Check A Particular Student Details.
      5. Check Number Of Students.
      6. Exit Console App.
      \n''';
  Students obj = Students();

  print('\nWelcome To My Register Console App');
  while (true) {
    print(actions);
  try {
    stdout.write('Choose An Action: ');
    int option = int.parse(stdin.readLineSync()!);
    switch (option) {
      case 1:
        obj.addStudent();
        continue;
      case 2:
        obj.removeStudent();
        continue;
      case 3:
        obj.showAllStudents();
        continue;
      case 4:
        obj.showStudent();
        continue;
      case 5:
        obj.numOfStudents();
        continue;
      case 6:
        exit(0);
      default:
        print('Invalid Input, Try Once More...\n');
        continue;
    }
  } catch (e) {
  print('Error: $e');
    continue;
  }finally{
    print('Enter A Valid Input!');
  }  
  
  }
}
