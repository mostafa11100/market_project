import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_feild.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:flutter/material.dart';
import '../../../../../../consts/style_const/textstyle.dart';

class column_customfeild extends StatelessWidget {
  column_customfeild({
    super.key,
    this.text,
    this.obs = false,
    this.width = double.infinity,
    required this.controlle,
    required this.validator,
  });
  final text;
  final obs;
  final width;
  final String? Function(String? s) validator;
  final TextEditingController? controlle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          custom_text(
            text: text,
            style: text_style.textstyle14,
          ),
          const SizedBox(
            height: 5,
          ),
          custom_feild(
            st: true,
            validator: validator,
            controlle: controlle!,
            obs: obs,
          ),
        ],
      ),
    );
  }
}
