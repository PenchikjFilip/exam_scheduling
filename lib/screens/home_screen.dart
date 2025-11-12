import '../models/exam.dart';
import 'package:flutter/material.dart';
import '../widgets/exam_card.dart';
import 'exam_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime)); // хронолошки

    return Scaffold(
      appBar: AppBar(
        title: Text('Распоред за испити - 211260'),
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          final exam = exams[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExamDetailScreen(exam: exam),
                ),
              );
            },
            child: ExamCard(exam: exam),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(32),
        color: Colors.grey.shade200,
        child: Text(
          'Вкупно испити: ${exams.length}',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

final List<Exam> exams = [
  Exam(
    name: "Mathematics",
    dateTime: DateTime(2025, 11, 30, 9, 0),
    rooms: ["101", "102"],
  ),
  Exam(
    name: "Physics",
    dateTime: DateTime(2025, 12, 1, 14, 0),
    rooms: ["201"],
  ),
  Exam(
    name: "Programming 1",
    dateTime: DateTime(2025, 12, 3, 10, 0),
    rooms: ["Lab 3"],
  ),
  Exam(
    name: "Databases",
    dateTime: DateTime(2025, 12, 5, 9, 30),
    rooms: ["301", "302"],
  ),
  Exam(
    name: "Operating Systems",
    dateTime: DateTime(2025, 12, 10, 13, 0),
    rooms: ["204"],
  ),
  Exam(
    name: "Computer Networks",
    dateTime: DateTime(2025, 12, 14, 9, 0),
    rooms: ["103"],
  ),
  Exam(
    name: "Artificial Intelligence",
    dateTime: DateTime(2025, 12, 20, 10, 0),
    rooms: ["502"],
  ),
  Exam(
    name: "Software Engineering",
    dateTime: DateTime(2025, 12, 22, 11, 0),
    rooms: ["405"],
  ),
  Exam(
    name: "Mobile App Development",
    dateTime: DateTime(2026, 1, 5, 9, 0),
    rooms: ["Lab 1"],
  ),
  Exam(
    name: "Web Programming",
    dateTime: DateTime(2026, 1, 10, 12, 30),
    rooms: ["202"],
  ),

  // some past exams
  Exam(
    name: "Linear Algebra",
    dateTime: DateTime(2025, 6, 10, 9, 0),
    rooms: ["105"],
  ),
  Exam(
    name: "Statistics",
    dateTime: DateTime(2025, 6, 15, 11, 0),
    rooms: ["201"],
  ),
  Exam(
    name: "Discrete Mathematics",
    dateTime: DateTime(2025, 6, 20, 9, 30),
    rooms: ["301"],
  ),
  Exam(
    name: "Computer Architecture",
    dateTime: DateTime(2025, 7, 1, 10, 0),
    rooms: ["401"],
  ),
  Exam(
    name: "Human-Computer Interaction",
    dateTime: DateTime(2025, 9, 10, 13, 0),
    rooms: ["103", "104"],
  ),
];