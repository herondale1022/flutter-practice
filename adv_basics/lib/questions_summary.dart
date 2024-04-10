import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  CircleAvatar(
                    backgroundColor:
                        data['user_answer'] == data['correct_answer']
                            ? Colors.blueAccent
                            : Colors.purpleAccent,
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            data['user_answer'] as String,
                            style: const TextStyle(color: Colors.purpleAccent),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: const TextStyle(color: Colors.blueAccent),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
