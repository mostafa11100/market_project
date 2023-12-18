import 'package:flutter/material.dart';

class custom_image extends StatelessWidget {
  const custom_image({super.key, this.lnkimage});
  final lnkimage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.8,
      child: AspectRatio(
        aspectRatio: 0.9,
        child: Container(
          decoration: BoxDecoration(
              // border: Border.all(),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(lnkimage),
              )),
        ),
      ),
    );
  }
}
