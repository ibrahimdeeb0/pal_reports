import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/app_colors.dart';

class AppIconButtonOutlined extends StatelessWidget {
  final String iconPath;
  final VoidCallback onPressed;
  const AppIconButtonOutlined({
    super.key,
    required this.iconPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(8.r),
        fixedSize: Size.fromRadius(24.r),
        side: const BorderSide(
          color: AppColors.borderGray,
          width: 2,
        ),
      ),
      icon: SvgPicture.asset(
        iconPath,
      ),
    );
  }
}
