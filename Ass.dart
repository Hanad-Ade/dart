class ExamResult {
  String studentName;
  String subject;
  int score;
  int totalMarks;
  ExamResult(this.studentName, this.subject, this.score, this.totalMarks);
  double calculatePercentage() => (score / totalMarks) * 100;
  String getResult() => calculatePercentage() >= 50 ? "Pass" : "Fail";
  void displayResult() {
    final percentage = calculatePercentage().toStringAsFixed(1);
    final result = getResult();

    print('$studentName scored $score out of $totalMarks in $subject.');
    print('Percentage: $percentage%');
    print('Result: $result');
  }
}

void main() {
  
  ExamResult ahmedResult = ExamResult("Ahmed", "Math", 75, 100);
  ExamResult mohamedResult = ExamResult("Mohamed", "English", 30, 50);

  ahmedResult.displayResult();
  print('\n');
  mohamedResult.displayResult();
}