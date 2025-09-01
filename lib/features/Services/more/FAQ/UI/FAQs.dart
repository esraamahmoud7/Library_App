import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/features/welcome/UI/widgets/customAppBar.dart';

import '../../../../../core/widgets/backarrowPage.dart';
import '../../../borrowBooks/UI/widgets/RequestBox.dart';
import 'Widgets/question box.dart';

class FAQs extends StatelessWidget {
  const FAQs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      bottomNavigationBar: SizedBox(
        height: 40, // footer height
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: ListView(
          children: [
            backPage(onBack: (){GoRouter.of(context).pop();},title: "FAQs"),
            SizedBox(height: 24,),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 15,
                itemBuilder: (context,index)
                    {
                      return QuestionBox(
                        question: "How to request books ?",
                        answer: "You can request books by filling the online form or visiting the library desk.",
                      );
                    }
            ),
          ],
        ),
      ),
    );
  }
}
