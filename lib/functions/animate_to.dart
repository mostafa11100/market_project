import 'package:flutter/material.dart';

void animatto2(index, controlle, context) {
  if (controlle.position.pixels != 0) {
    print(controlle.position.pixels);
    index--;
    double val = MediaQuery.of(context).size.width - controlle.position.pixels;
    controlle.animateTo(val.abs(),
        duration: const Duration(milliseconds: 100), curve: Curves.easeIn);
  }
}

void animatto(controlle, index, context, kay) {
  if (controlle.position.pixels < 3 * MediaQuery.of(context).size.width) {
    index++;
    controlle.animateTo(
        MediaQuery.of(context).size.width + controlle.position.pixels,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeIn);
  }
}
