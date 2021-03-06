import 'package:flutter/material.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class DataLoading extends StatelessWidget {
  final String message;

  DataLoading({this.message = "Loading..."});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 14,
            height: 14,
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
              valueColor: new AlwaysStoppedAnimation<Color>(AppColors.yellow),
            ),
          ),
          SizedBox(width: 10),
          Text(
            this.message,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
