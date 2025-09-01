import 'package:flutter/material.dart';

import '../theme/appTheme.dart';


class backPage extends StatelessWidget {
  const backPage({
    super.key,
    this.onBack, required this.title,
  });

  final VoidCallback? onBack;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios_new,),
          onPressed: onBack, // go back to home
        ),
        Text(title,
          style: AppStyles.textStyle24.copyWith(
              fontWeight: FontWeight.w800
          ),
        ),
      ],
    );
  }
}
