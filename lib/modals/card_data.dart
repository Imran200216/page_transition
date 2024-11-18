import 'package:flutter/material.dart';

class CardData {
  final String title;
  final String subTitle;
  final String lottieAssetIconName;
  final Color titleColor;
  final Color subTitleColor;
  final Color backgroundColor;

  CardData({
    required this.title,
    required this.subTitle,
    required this.lottieAssetIconName,
    required this.titleColor,
    required this.subTitleColor,
    required this.backgroundColor,
  });
}
