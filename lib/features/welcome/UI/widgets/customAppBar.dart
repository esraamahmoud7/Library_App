import 'package:flutter/material.dart';

import '../../../../core/colors/AppColors.dart';

class customAppBar extends StatelessWidget implements PreferredSizeWidget {
  const customAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Image.asset("assets/images/icon.png",color: AppColors.primaryColor,),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            children: [
              Image.asset("assets/images/alert.png")
            ],
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0), // height of the line
        child: Container(
          color: AppColors.grey, // line color
          height: 2,        // thickness of the line
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 2);
}
