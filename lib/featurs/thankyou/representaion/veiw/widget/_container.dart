import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/thankyou/data/thank_you_model.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/total_info.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.thankmodel});

  final ThankYouModel thankmodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height - 130,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 237, 237, 237),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            custom_text(text: "Thank you", style: text_style.textstyle20),
            const SizedBox(
              height: 5,
            ),
            custom_text(
              text: "Your transaction was successful",
              style: text_style.textstyle17,
              opacity: 0.5,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomDetailsDate(
              thankmodel: thankmodel,
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 25,
              thickness: 3,
              indent: 10,
              endIndent: 10,
              color: Color.fromARGB(221, 199, 199, 199),
            ),
            custom_row_info(text1: "Total", text2: "\$${thankmodel.total}"),
            const SizedBox(
              height: 20,
            ),
            CustomCreditcardDetails(
              thankmodel: thankmodel,
            ),
            const SizedBox(
              height: 75,
            ),
            const RowQrcode(),
          ],
        ),
      ),
    );
  }
}

class RowQrcode extends StatelessWidget {
  const RowQrcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 50,
        child: Row(
          children: [
            Image.asset("assets/qrcode.PNG"),
            const Spacer(),
            InkWell(
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: check_color)),
                child: Center(
                    child: custom_text(
                  text: 'Paid',
                  style: text_style.textstyle20.copyWith(color: check_color),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomCreditcardDetails extends StatelessWidget {
  const CustomCreditcardDetails({super.key, required this.thankmodel});
  final ThankYouModel thankmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        height: 60,
        width: double.infinity,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset("assets/Group 8.png"),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                custom_text(text: "Credit Card", style: text_style.textstyle18),
                custom_text(
                    opacity: 0.5,
                    text: thankmodel.cardtype,
                    style: text_style.textstyle14),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDetailsDate extends StatelessWidget {
  const CustomDetailsDate({super.key, required this.thankmodel});
  final ThankYouModel thankmodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: custom_row_info(
            op: .6,
            style1: text_style.textstyle17,
            style2: text_style.textstyle18,
            text1: 'Data',
            text2: thankmodel.date!,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: custom_row_info(
            op: .6,
            style1: text_style.textstyle17,
            style2: text_style.textstyle18,
            text1: 'Time',
            text2: thankmodel.Time!,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: custom_row_info(
            op: .6,
            style1: text_style.textstyle17,
            style2: text_style.textstyle18,
            text1: 'To',
            text2: 'Market',
          ),
        ),
      ],
    );
  }
}
