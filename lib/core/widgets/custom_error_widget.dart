import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomErrorMessage extends StatelessWidget {
  final String errMessage;

  const CustomErrorMessage({super.key, required this.errMessage});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      errMessage,
      textAlign: TextAlign.center,
      style: Styles.textStyle18,
    ));
  }
}
