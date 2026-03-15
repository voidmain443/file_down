// 1. Entry Point: Dart는 main() 함수가 필수이지만, Python은 스크립트 최상단부터 실행됩니다.
void main() {
  print("--- 1. Variable Declaration & Type System ---");
  // Python: 동적 타이핑 (age = 25)
  // Dart: 정적 타이핑 지원. var(추론), 명시적 타입, final/const 구분이 엄격합니다.
  var name = "Dart"; // 타입 추론
  String language = "Flutter Ecosystem"; // 명시적 타입
  final String constantValue = "Immutable"; // 런타임 상수 (Python의 상수 관례보다 엄격)
  
  print("Name: $name, Language: $language, Status: $constantValue");

  print("\n--- 2. Null Safety ---");
  // Dart의 핵심 특징: Sound Null Safety. 
  // 변수에 null이 들어갈 수 있는지 여부를 컴파일 타임에 체크합니다.
  String? nullableString; // '?'를 붙여야 null 허용
  nullableString = null;
  
  // null 전파 연산자 (?.) 및 null 병합 연산자 (??)
  print(nullableString?.length ?? "Value is null");

  print("\n--- 3. Functions & Parameters ---");
  // Dart는 Named Parameter를 중괄호 {}로 정의하며, 'required' 키워드를 사용할 수 있습니다.
  describeUser(name: "Junha", age: 30);

  print("\n--- 4. Collection Literals & Control Flow ---");
  // Dart는 리스트나 맵 내부에서 if문이나 for문을 사용할 수 있는 'Collection If/For'를 지원합니다.
  bool addExtra = true;
  var features = [
    "Hot Reload",
    "AOT Compilation",
    if (addExtra) "Multi-platform" 
  ];
  print("Features: $features");

  print("\n--- 5. Classes & Constructors ---");
  // Dart는 Python의 __init__ 대신 생성자 설탕 구문(this.field)을 사용합니다.
  var dev = Developer("Junha", "Dart");
  dev.introduce();
}

print("\n--- 6. Excel vs Dart: Data Structures ---");
  // 엑셀의 '열(Column)'은 List와 유사하고, '행(Row)'은 Map이나 Class와 유사합니다.
  
  // 1. List (Excel Column): 동일한 성격의 데이터 나열
  List<int> scores = [85, 92, 78, 95];
  
  // 2. Map (Excel Row): Key(헤더)와 Value(값)의 쌍
  Map<String, dynamic> excelRow = {
    "A": "Junha", // Name
    "B": 95,      // Score
    "C": true     // Pass
  };

  print("Excel Row Data: $excelRow");

  // 3. Spreadsheet Logic (Functions): 엑셀 함수(SUM, AVERAGE) 구현
  double calculateAverage(List<int> values) {
    int sum = values.reduce((a, b) => a + b);
    return sum / values.length;
  }

  print("Average Score (SUM/COUNT): ${calculateAverage(scores)}");

  // 4. VLOOKUP Logic: Map을 이용한 데이터 조회
  String findValue(String key) => excelRow[key]?.toString() ?? "Not Found";
  print("VLOOKUP(Column A): ${findValue("A")}");
}

// Named Parameters Example for Section 3
void describeUser({required String name, int? age}) {
  print("User: $name, Age: ${age ?? 'Unknown'}");
}

// Developer Class for Section 5
class Developer {
  String name;
  String language;

  // 생성자 설탕 구문: 엑셀의 틀(Template)을 만드는 것과 같습니다.
  Developer(this.name, this.language);

  void introduce() {
    print("I am $name, coding in $language.");
  }
}
