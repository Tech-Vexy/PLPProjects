class Student {
  String name;
  int age;
  String gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printInfo() {
    print('Student Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printInfo() {
    print('Teacher Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

class School {
  var student = Student('Alice', 12, '7th');
  var teacher = Teacher('Mr. Bob', 35, 'Mathematics');

  void printSchoolInfo() {
    student.printInfo();
    teacher.printInfo();
  }
}

void main() {
  var school = School();
  school.printSchoolInfo();
}
