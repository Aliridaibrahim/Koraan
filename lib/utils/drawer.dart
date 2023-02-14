
import 'package:flutter/material.dart';

import '../app_routes.dart';

class DrawerUtils {
  static const List items = [
    {
      'title': 'Surah Index',
      'icon': Icons.format_list_numbered_outlined,
      'route': AppRoutes.surah,
    },
    {
      'title': 'Juz Index',
      'icon': Icons.list,
      'route': AppRoutes.juz,
    },
    {
      'title': 'Bookmarks',
      'icon': Icons.bookmark_outline,
      'route': AppRoutes.bookmarks,
    },

    {
      'title': 'Introduction',
      'icon': Icons.info_outline,
      'route': AppRoutes.onboarding,
    },
    {
      'title': 'Share App',
      'icon': Icons.share_outlined,
      'route': AppRoutes.shareApp,
    },
    {
      'title': 'Qiblah direction',
      'icon': Icons.hd,
      'route': AppRoutes.qiblah,
    }

];

}
