import 'package:flutter/material.dart';
import 'package:library_app/core/widgets/backarrowPage.dart';
import 'package:library_app/features/Services/Rooms/UI/widgets/room%20box.dart';

import '../../../../core/theme/appTheme.dart';

class AvailableRooms extends StatelessWidget {
  const AvailableRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: ListView(
        children: [
          Text("Available Rooms",
            style: AppStyles.textStyle24.copyWith(
                fontWeight: FontWeight.w800
            ),
          ),
          SizedBox(height: 15,),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context,index)
                  {
                    return RoomBox();
                  }
          )
        ],
      ),
    );
  }
}
