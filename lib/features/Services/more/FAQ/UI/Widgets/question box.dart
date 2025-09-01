import 'package:flutter/material.dart';
import 'package:library_app/core/theme/appTheme.dart';


class QuestionBox extends StatefulWidget {
  final String question;
  final String answer;

  const QuestionBox({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  State<QuestionBox> createState() => _RequestBoxState();
}

class _RequestBoxState extends State<QuestionBox> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.black, width: 1), // bottom line
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.question,
                  style : AppStyles.textStyle16.copyWith(
                    fontWeight: _isExpanded ? FontWeight.bold : FontWeight.w400
                  )
                ),
                Icon(
                  _isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
              ],
            ),
            if (_isExpanded) ...[
              const SizedBox(height: 10),
              Text(
                widget.answer,
                style: AppStyles.textStyle16,
              ),
            ]
          ],
        ),
      ),
    );
  }
}

