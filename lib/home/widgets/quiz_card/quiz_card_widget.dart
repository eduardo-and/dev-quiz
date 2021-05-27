import 'package:DevQuiz/shared/core.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset(AppImages.blocks),
            ),
            SizedBox(
              height:20,
            ),
            Text("Gerenciamento de Estado", style:AppTextStyles.heading),
              SizedBox(
              height:20,
            ),
            Row(
              children: [
                Expanded(
                  flex:1,
                  child: Text("3/10", style: AppTextStyles.body11)),
                Expanded(
                    flex: 3,
                    child: LinearProgressIndicator(
                    value:0.3,
                    backgroundColor: AppColors.chartSecondary,
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                  ),
                )

            ],)



          ],
          
          ),
      )
    );
  }
}