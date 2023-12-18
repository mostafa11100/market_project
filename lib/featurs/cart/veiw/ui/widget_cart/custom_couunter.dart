import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_text_buttton.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/cubit/updata_cubit.dart';
import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/total_cubit.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCounter extends StatefulWidget {
  const CustomCounter({super.key, required this.cart});
  final model_product cart;
  @override
  State<CustomCounter> createState() => CustomCounterState();
}

class CustomCounterState extends State<CustomCounter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: gray,
        border: Border.all(
          color: gray,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      width: 160,
      height: 40,
      child: Row(
        children: [
          custom_text_button(
            ontap: () {
              _increamint(1, widget.cart.count);
            },
            text: "+",
            style: text_style.textstyle17,
          ),
          Center(
            child: custom_text(
                text: widget.cart.count.toString(),
                style: text_style.textstyle17),
          ),
          custom_text_button(
            ontap: () {
              _increamint(-1, widget.cart.count);
            },
            text: "-",
            style: text_style.textstyle17,
          ),
        ],
      ),
    );
  }

  void _increamint(int x, count) {
    setState(() {
      if (x == 1) {
        widget.cart.count += x;
      } else if (x == -1 && widget.cart.count > 0)
      // ignore: curly_braces_in_flow_control_structures
      {
        widget.cart.count += x;
      }
      BlocProvider.of<UpdataCubit>(context).updata_data(widget.cart);
      BlocProvider.of<TotalCubit>(context).gettotal();
    });
  }
}
