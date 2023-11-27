import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:flutter/material.dart';

class list_tile extends StatelessWidget {
  const list_tile(
      {super.key, required this.icon1, required this.icon2, this.text});
  final Icon icon1;
  final Icon icon2;
  final text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Container(
            height: 31,
            width: 31,
            color: Color.fromARGB(255, 242, 255, 243),
            child: icon1),
        //  isThreeLine: true,
        title: custom_text(text: text, style: text_style.textstyle16),
        trailing: icon2);
  }
}
