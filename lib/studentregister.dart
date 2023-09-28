import 'dart:io';

class Students {
  var studentId = [];
  var studentFirstName = [];
  var studentLastName = [];
  var studentAge = [];
  var studentCourse = [];
  int studentCount = 0;

  void addStudent() {
    while(true){
      stdout.write('\nDo you want to add a new student details? (y/n): ');
      String decision = stdin.readLineSync()!.toLowerCase();
      if (decision == 'y') {
        stdout.write('Enter Student Firstname: ');
        String getFirstName = stdin.readLineSync()!;
        stdout.write('Enter Student Lastname: ');
        String getLastName = stdin.readLineSync()!;
        stdout.write('Enter Student Age: ');
        int getage = int.parse(stdin.readLineSync()!);
        stdout.write('Enter Student Course: ');
        String getCourse = stdin.readLineSync()!.toUpperCase();

        studentCount++;

        studentFirstName.add(getFirstName);
        studentLastName.add(getLastName);
        studentAge.add(getage);
        studentCourse.add(getCourse);
        studentId.add(studentCount);
        
        print('New Student Succesfully Added!\n');
        continue;
      } else if (decision == 'n') {
        break;
      } else {
        print('Invalid Input! please try again...');
        continue;
      }
    }
  }
  void removeStudent() {
    if (studentCount != 0) {
      while (true) {
        stdout.write('\nEnter Student Id: ');
        int toBeRemovedId = int.parse(stdin.readLineSync()!);

        if (toBeRemovedId > studentCount) {
          print('Id Not Found! Please enter a diferent id...\n');
          continue;
        }

        studentFirstName.remove(studentFirstName[toBeRemovedId - 1]);
        studentLastName.remove(studentLastName[toBeRemovedId - 1]);
        studentAge.remove(studentAge[toBeRemovedId - 1]);
        studentCourse.remove(studentCourse[toBeRemovedId - 1]);
        studentId.remove(studentId[studentCount-toBeRemovedId]);
        print('\nStudent Succesfully Removed\n');

        studentCount--;
        break;
      }
    } else if (studentCount == 0) {
      print('\nYou have no student, please try adding a student first.');
    }
  }

  void showAllStudents() {
    int adjustCount = studentCount - 1;
    print('\nStudent List ( ID - Name - Age - Course )\n');
    for (int i = 0; i <= adjustCount; i++) {
      print('${studentId[i]} - ${studentFirstName[i]} ${studentLastName[i]} - ${studentAge[i]} - ${studentCourse[i]}\n');
    }
  }

  void showStudent() {
        if (studentCount != 0) {
      while (true) {
        stdout.write('\nEnter Student Id: \n');
        int specificId = int.parse(stdin.readLineSync()!);

        if (specificId > studentCount) {
          print('Id Not Found! Please enter a diferent id...\n');
          continue;
        }
         print('${studentId[specificId]} - ${studentFirstName[specificId]} ${studentLastName[specificId]} - ${studentAge[specificId]} - ${studentCourse[specificId]}\n');
        break;
      }
    } else if (studentCount == 0) {
      print('\nYou have no student, please try adding a student first.');
    }
  }
  void numOfStudents() {
    print('\nTotal Number Of Students: $studentCount');
  }
}




