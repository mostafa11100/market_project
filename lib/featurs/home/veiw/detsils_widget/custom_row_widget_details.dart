import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:flutter/material.dart';

class custom_row_details extends StatelessWidget {
  const custom_row_details({super.key, required this.productdetailse});
  final String productdetailse;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17),
      height: 56,
      width: MediaQuery.of(context).size.width / 2.4,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          custom_text(
            text: "Size",
            style: text_style.textstyle16,
          ),
          Spacer(),
          custom_text(
            text: productdetailse.toString(),
            style: text_style.textstyle16,
          ),
        ],
      ),
    );
  }
}
