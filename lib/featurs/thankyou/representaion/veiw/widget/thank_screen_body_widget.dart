import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/featurs/thankyou/data/thank_you_model.dart';
import 'package:ecommerca_app/featurs/thankyou/representaion/veiw/widget/_container.dart';
import 'package:ecommerca_app/featurs/thankyou/representaion/veiw/widget/_custom_right_circle.dart';
import 'package:ecommerca_app/featurs/thankyou/representaion/veiw/widget/custom_circle_left.dart';
import 'package:ecommerca_app/featurs/thankyou/representaion/veiw/widget/custom_image_circle.dart';
import 'package:ecommerca_app/featurs/thankyou/representaion/veiw/widget/custom_line_ginerate.dart';
import 'package:ecommerca_app/functions/data_time.dart';
import 'package:ecommerca_app/utlis/cusom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThanScreenkBody extends StatelessWidget {
  const ThanScreenkBody({super.key, required this.total});
  final String total;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomIconButton(
            ontap: () {
              context.pushReplacement(AppRouter.homee);
            },
            icon: const Icon(Icons.arrow_back_ios_outlined),
            size: 20,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Stack(clipBehavior: Clip.none, children: [
            CustomContainer(
                thankmodel: ThankYouModel(
                    cardtype: 'MasterCard******',
                    total: total,
                    dataTime: datatime())),
            custom_position_circle(
                left: -20, bottom: MediaQuery.of(context).size.height / 2),
            const CustomRightCircle(),
            const CustomImageCircle(),
            const CustomGeneratLine()
          ]),
        ),
      ],
    );
  }
}
