void main() {
  // Basic variable declarations
  String name = "Dart Learner";
  int age = 25;
  double progress = 75.5;
  bool isExcited = true;

  print("Hello, $name!");
  print("Age: $age, Progress: $progress%, Excited: $isExcited");

  // List and Map usage
  List<String> topics = ["Variables", "Functions", "Classes"];
  Map<String, String> details = {"language": "Dart", "framework": "Flutter"};

  print("Learning topics: $topics");
  print("Framework: ${details['framework']}");

  // Function call
  int result = calculateSum(10, 20);
  print("Sum result: $result");

  // Class instantiation
  var student = Student("Junha", 100);
  student.displayInfo();
}

// A simple function
int calculateSum(int a, int b) => a + b;

// A simple class
class Student {
  String name;
  int score;

  Student(this.name, this.score);

  void displayInfo() {
    print("Student: $name, Score: $score");
  }
}
