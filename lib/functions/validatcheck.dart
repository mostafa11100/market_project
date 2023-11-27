import 'package:flutter/material.dart';

bool keyform_state(GlobalKey<FormState>? keform) {
  if (keform!.currentState != null) {
    var kfs = keform.currentState!.validate();

    if (kfs) return true;
  }
  print("enter3");
  return false;
}
