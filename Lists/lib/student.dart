// ignore_for_file: camel_case_types

class student{
  int id;
  String name;
  String surname;
  student(this.id,this.name,this.surname);
  @override
  String toString() {
    return "Name of student:$name,Surname:$surname,id:$id";
  }
}