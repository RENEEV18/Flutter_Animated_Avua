import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors/colors.dart';

class SplashController extends ChangeNotifier {
  var boxColor = AppColors.kBlue;
  var scaffoldColor = AppColors.kWhite;
  var textColor = AppColors.kBlack;
  var decorationColor = AppColors.kWhite;
  var btnColor = AppColors.kBlue;
  var btnTxtColor = AppColors.kWhite;

  void changeColor() {
    boxColor = AppColors.baseColor;
    scaffoldColor = AppColors.baseColor;
    textColor = AppColors.kWhite;
    decorationColor = AppColors.baseColor;
    btnColor = AppColors.kWhite;
    btnTxtColor = AppColors.kBlack;
    notifyListeners();
  }
}
