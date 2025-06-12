import 'package:all_cards_dashboard/helpers/size_extensions.dart';
import 'package:flutter/material.dart';

Widget sizedBoxWithHeight(int? height) {
  return SizedBox(
    height: height!.h,
  );
}

Widget sizedBoxWithWidth(int? width) {
  return SizedBox(
    width: width!.w,
  );
}
