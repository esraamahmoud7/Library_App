import 'package:flutter/material.dart';
import 'package:library_app/features/Services/borrowBooks/UI/widgets/PDFsListView.dart';
import 'package:library_app/features/Services/borrowBooks/UI/widgets/RequestBox.dart';
import 'package:library_app/features/Services/borrowBooks/UI/widgets/customBookServiceInfo.dart';
import 'package:library_app/features/Services/borrowBooks/UI/widgets/linksListView.dart';
import '../../../../core/theme/appTheme.dart';

class BorrowBooksView extends StatelessWidget {
  const BorrowBooksView({super.key, required this.onBack});

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: ListView(
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new,),
                onPressed: onBack, // go back to home
              ),
              Text("Borrowing books",
                style: AppStyles.textStyle24.copyWith(
                    fontWeight: FontWeight.w800
                ),
              ),
            ],
          ),
          SizedBox(height: 24,),
          bookBorrowInfo(),
          SizedBox(height: 32,),
          RequestBox(
            question: "How to request books ?",
            answer: "You can request books by filling the online form or visiting the library desk.",
          ),
          SizedBox(height: 32,),
          Text("PDFs",
            style: AppStyles.textStyle22.copyWith(
              fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: 20,),
          PDFsListView(),
          SizedBox(height: 32,),
          Text("Links",
            style: AppStyles.textStyle22.copyWith(
                fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: 15,),
          LinksListView(),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}


