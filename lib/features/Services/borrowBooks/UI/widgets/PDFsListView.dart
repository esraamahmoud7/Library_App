import 'package:flutter/material.dart';

import '../../../GradProjects/UI/widgets/materialCard.dart';
import 'PDFCard.dart';


class PDFsListView extends StatelessWidget {
  const PDFsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context,index)
          {
            return PDFCard();

          }
      ),
    );
  }
}
