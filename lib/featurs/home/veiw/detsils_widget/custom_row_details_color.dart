import 'package:ecommerca_app/classes/conver_string_tohexa.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:flutter/material.dart';

class custom_row_details_color extends StatelessWidget {
  const custom_row_details_color({super.key, required this.productdetailse});
  final String productdetailse;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17),
      height: 58,
      width: MediaQuery.of(context).size.width / 2.4,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          custom_text(
            text: "Color",
            style: text_style.textstyle16,
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
                color: HexColor.fromHex(productdetailse),
                borderRadius: BorderRadius.circular(3)),
            width: 24,
            height: 20,
          )
        ],
      ),
    );
  }
}
