import 'package:flutter/material.dart';
import 'package:library_app/features/Services/borrowBooks/UI/widgets/PDFsListView.dart';
import 'package:library_app/features/Services/borrowBooks/UI/widgets/RequestBox.dart';
import 'package:library_app/features/Services/borrowBooks/UI/widgets/linksListView.dart';
import '../../../../core/AppData/Info.dart';
import '../../../../core/theme/appTheme.dart';
import '../../../../core/widgets/ServiceInfo.dart';
import '../../../../core/widgets/backarrowPage.dart';

class BorrowBooksView extends StatelessWidget {
  const BorrowBooksView({super.key, required this.onBack});

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: ListView(
        children: [
          backPage(onBack: onBack,title: "Borrowing Books"),
          SizedBox(height: 24,),
          ServiceInfo(info: AppInfo.bookServiceInfo,),
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


