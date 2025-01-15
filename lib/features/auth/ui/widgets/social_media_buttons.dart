import 'package:flutter/material.dart';
import 'package:pal_report/core/helpers/app_logger.dart';
import 'package:pal_report/core/theme/assets_manager.dart';
import 'package:pal_report/core/widgets/app_Icon_button_outlined.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AppIconButtonOutlined(
          iconPath: AppAssetsSVGs.icFacebook,
          onPressed: () {
            // * Facebook
            appConsoleLog.info('Facebook');
          },
        ),
        AppIconButtonOutlined(
          iconPath: AppAssetsSVGs.icTwitter,
          onPressed: () {
            // * Twitter
            appConsoleLog.info('Twitter');
          },
        ),
        AppIconButtonOutlined(
          iconPath: AppAssetsSVGs.icGoogle,
          onPressed: () {
            // * Google
            appConsoleLog.info('Google');
          },
        ),
      ],
    );
  }
}
