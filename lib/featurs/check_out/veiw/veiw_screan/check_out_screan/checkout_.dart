// ignore_for_file: constant_identifier_names, camel_case_types, prefer_const_constructors_in_immutables

import 'package:ecommerca_app/classes/refrance.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:flutter/material.dart';

enum Days { StandardDelivery, NextDayDelivery, NominatedDelivary }

class check_timedelivery extends StatefulWidget {
  check_timedelivery({
    super.key,
    required this.ref,
  });
  final refrance<String> ref;

  @override
  State<check_timedelivery> createState() => _check_timedeliveryState();
}

class _check_timedeliveryState extends State<check_timedelivery> {
  Days d = Days.StandardDelivery;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace

    return Container(
      height: MediaQuery.of(context).size.height - 200,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          radio_ltile(
            value: Days.StandardDelivery,
            x: d,
            onChanged: (val) {
              setState(() {
                d = val! as Days;

                widget.ref.value = d.name;
              });
            },
            textt: "Standard Delivery",
            textsub: "Order Will be delivered betwen 3-5 bussens days",
          ),
          const SizedBox(
            height: 20,
          ),
          radio_ltile(
            value: Days.NextDayDelivery,
            x: d,
            onChanged: (val) {
              setState(() {
                d = val as Days;
                widget.ref.value = d.name;
              });
            },
            textt: "Next Day Delivery",
            textsub:
                "Place your order before 6pm and your item will be deliverd the next day",
          ),
          const SizedBox(
            height: 20,
          ),
          radio_ltile(
              value: Days.NominatedDelivary,
              x: d,
              onChanged: (val) {
                setState(() {
                  d = val as Days;
                  widget.ref.value = d.name;
                });
              },
              textt: "Nominated Delivary",
              textsub:
                  "Pick aparticular data from the calendar and order will be deliverd on selected date")
        ],
      ),
    );
  }
}

class radio_ltile extends StatelessWidget {
  const radio_ltile(
      {super.key,
      this.x,
      this.onChanged,
      required this.textt,
      required this.textsub,
      required this.value});

  final void Function(Object?)? onChanged;
  final Days? x;
  final String textt;
  final String textsub;
  final Days value;
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: custom_text(
              text: textt,
              style: text_style.textstyle18.copyWith(fontFamily: "comfortaa"),
            ),
          ),
        ),
        subtitle: custom_text(
          text: textsub,
          style: text_style.textstyle16.copyWith(fontFamily: "comfortaa"),
        ),
        value: value,
        groupValue: x,
        onChanged: onChanged);
  }
}
