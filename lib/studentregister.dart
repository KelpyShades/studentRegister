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
      try {
      stdout.write('\nDo you want to add a new student details? (y/n): ');
      String decision = stdin.readLineSync()!.toLowerCase();
      if (decision == 'y') {
        stdout.write('\nEnter Student Firstname: ');
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
        
        print('New Student With Id: $studentCount Succesfully Added!');
        continue;
      } else if (decision == 'n') {
        break;
      } else {
        print('Invalid Input! please try again...');
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
  void removeStudent() {
    if (studentCount != 0) {
      while (true) {
        try {
          stdout.write('\nEnter Student Id: ');
          int toBeRemovedId = int.parse(stdin.readLineSync()!);

          if (toBeRemovedId > 0 && toBeRemovedId <= studentCount) {
            studentFirstName.remove(studentFirstName[toBeRemovedId - 1]);
            studentLastName.remove(studentLastName[toBeRemovedId - 1]);
            studentAge.remove(studentAge[toBeRemovedId - 1]);
            studentCourse.remove(studentCourse[toBeRemovedId - 1]);
            studentId.remove(studentId[studentCount-toBeRemovedId]);
            print('\nStudent Succesfully Removed\n');

            studentCount--;
            break;
          }else{
            print('Id Not Found! Please enter a diferent id...\n');
            continue;
          }
        } catch (e) {
          print('Error: $e');
          continue;
        }finally{
          print('Enter A Valid Input!');
        }
      }
      return;
    } else if (studentCount == 0) {
      print('\nYou have no students, please try adding a student first.');
      return;
    }
  }

  void showAllStudents() {
    int adjustCount = studentCount - 1;
    if (studentCount != 0) {
      print('\nStudent List ( ID - Name - Age - Course )\n');
      for (int i = 0; i <= adjustCount; i++) {
        print('${studentId[i]} - ${studentFirstName[i]} ${studentLastName[i]} - ${studentAge[i]} - ${studentCourse[i]}\n');
      }
      return;
    } else if (studentCount == 0) {
      print('\nYou have no students, please try adding a student first.');
      return;
    }
  }

  void showStudent() {
      if (studentCount != 0) {
      while (true) {
        try {
        stdout.write('\nEnter Student Id: ');
        int specificId = int.parse(stdin.readLineSync()!);
        int removeId = specificId-1;
        if (specificId > 0 && specificId <= studentCount) {
          print('${studentId[removeId]} - ${studentFirstName[removeId]} ${studentLastName[removeId]} - ${studentAge[removeId]} - ${studentCourse[removeId]}\n');
          break;
        }else {
          print('Id Not Found! Please enter a diferent id...\n');
          continue;
        }
        } catch (e) {
        print('Error: $e');
          continue;
        }finally{
          print('Enter A Valid Input!');
        }
      }
      return;
    } else if (studentCount == 0) {
      print('\nYou have no students, please try adding a student first.');
      return;
    }
  }
  void numOfStudents() {
    print('\nTotal Number Of Students: $studentCount');
  }
}




