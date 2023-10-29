mixin M1 on Employee{
  void hello(){
    print('hello');
  }
}

mixin M2{
  void bye(){
    print('bye');
  }
}

abstract class Employee{
  String? name;
  String? id;
  String? dOB;
  static int number = 0;

  Employee(this.name, this.id, this.dOB){
    number++;
  }

  void display();
  void congrate(){
    print("Congratulation");
  }

}

class Manager extends Employee with M1{
  int? salary;
  Manager(super.name, super.id, super.dOB, this.salary);
  
  @override
  void display() {
    print("Manager");
  }

  @override
  void congrate(){

  }
}

class Supervisor extends Employee{
  Supervisor(super.name, super.id, super.dOB);

  @override
  void display(){
    print("Supervisor");
  }
  
}


Future<void> display() async{
  print("task 4");
  await Future.delayed(Duration(seconds: 2), (){
    print("task 5");
  });
  print("task 6");
}

void main() async{
  print("task 1");
  print("task 2");
  await display();
  print("task 3");
  
}