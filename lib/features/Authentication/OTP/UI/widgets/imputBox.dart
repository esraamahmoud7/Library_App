import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/theme/appTheme.dart';


class InputBox extends StatelessWidget {
  const InputBox({
    super.key, this.controller,
  });

  final TextEditingController? controller;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15,left: 5), // spacing between boxes
      child: SizedBox(
        width: 64,
        height: 80,
        child: TextFormField(
          controller: controller,
          onChanged: (value)
          {
            if(value.length == 1)
            {
              FocusScope.of(context).nextFocus();
            }
          },
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          style: AppStyles.textStyle26, // adjust style to your theme
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            isDense: false,
            contentPadding: EdgeInsets.symmetric(vertical: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.black, width: 2),
            ),
          ),
        ),
      ),
    );
  }
}
