import 'package:flutter/material.dart';
import '../models/exam.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;

  ExamCard({required this.exam});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final isPast = exam.dateTime.isBefore(now);

    return Card(
      color: isPast ? Colors.redAccent.shade100 : Colors.lightBlue.shade50,
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: Icon(Icons.book),
        title: Text(exam.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.calendar_today, size: 16),
                SizedBox(width: 4),
                Text('${exam.dateTime.day}/${exam.dateTime.month}/${exam.dateTime.year}'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.access_time, size: 16),
                SizedBox(width: 4),
                Text('${exam.dateTime.hour}:${exam.dateTime.minute.toString().padLeft(2, '0')}'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.room, size: 16),
                SizedBox(width: 4),
                Text(exam.rooms.join(', ')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
