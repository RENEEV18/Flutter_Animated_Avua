import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors/colors.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: AppColors.kBlue,
          )),
      child: Text(
        text,
      ),
    );
  }
}
