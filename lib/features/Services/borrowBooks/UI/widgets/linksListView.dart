import 'package:flutter/material.dart';

import 'linkCard.dart';

class LinksListView extends StatelessWidget {
  const LinksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context,index)
        {
          return LinkCard();

        }
    );
  }
}