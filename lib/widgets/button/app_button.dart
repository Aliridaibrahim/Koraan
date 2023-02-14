
import 'package:flutter/material.dart';

import '../../animations/bottom_animations.dart';
import '../../configs/app_dimensions.dart';

class AppButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  const AppButton({Key? key, required this.title, this.onPressed ,required this.icon,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.normalize(150),
      height: AppDimensions.normalize(18),
      child: MaterialButton(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: onPressed,
        color: Colors.cyan,
        child: WidgetAnimator(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon,color: Colors.black,),
              const SizedBox(width: 10),
              Text(title,),
            ],
          ),

        ),
      ),
    );
  }
}
