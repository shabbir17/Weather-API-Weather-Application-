import 'dart:io';

void main(){
  performance();

}


void performance()async{
  task1();
  String data= await task2();
  task3(data);
}
void task1(){
  print(" Task 1 complete");
}
Future<String> task2()async{
String task2Data= "no data";
  Duration duration=Duration(seconds: 5);
  await Future.delayed(duration,() {
    task2Data="Task 2 completed";
    print("Task 2 completed");
  });
return task2Data;

}
void task3(String data){
  print(" Task 3 complete with $data");
}