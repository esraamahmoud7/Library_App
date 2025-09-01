import 'package:flutter/material.dart';
import 'package:library_app/features/Services/Rooms/UI/widgets/roomData.dart';

import '../../../../../core/theme/appTheme.dart';


class RoomBox extends StatelessWidget {
  const RoomBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        height: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(12),
          ),
          // borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: ClipRRect(
                // borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(
                  "assets/images/room.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            RoomData(),
          ],
        ),
      ),
    );
  }
}


