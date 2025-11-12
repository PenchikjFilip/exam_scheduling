import 'package:flutter/material.dart';
import '../models/exam.dart';

class ExamDetailScreen extends StatelessWidget {
  final Exam exam;

  ExamDetailScreen({required this.exam});

  String timeUntilExam() {
    final now = DateTime.now();
    final difference = exam.dateTime.difference(now);

    final days = difference.inDays;
    final hours = difference.inHours % 24;

    return '$days дена, $hours часа';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(exam.name)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Датум: ${exam.dateTime.day}/${exam.dateTime.month}/${exam.dateTime.year}'),
            SizedBox(height: 8),
            Text('Време: ${exam.dateTime.hour}:${exam.dateTime.minute.toString().padLeft(2, '0')}'),
            SizedBox(height: 8),
            Text('Простории: ${exam.rooms.join(', ')}'),
            SizedBox(height: 16),
            Text('Време до испитот: ${timeUntilExam()}'),
          ],
        ),
      ),
    );
  }
}
