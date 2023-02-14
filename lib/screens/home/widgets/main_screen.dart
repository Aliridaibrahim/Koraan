
part of '../home_screen.dart';



class _MainScreen extends StatelessWidget {
  const _MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final appProvider = Provider.of<AppProvider>(context);

    return Container(
      width: MediaQuery.of(context).size.width,
      color: appProvider.isDark ? Colors.grey[850] : Colors.white,
      child: SafeArea(

        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            const AppName(),
            const Calligraphy(),
            const QuranRail(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Space.y1!,
                  AppButton(

                    title: 'Surah ',
                    onPressed: () =>
                        Navigator.pushNamed(context, AppRoutes.surah), icon: MainscreenIcon.book,
                  ),
                  Space.y1!,
                  AppButton(
                    title: 'juz Index',
                    onPressed: () =>
                        Navigator.pushNamed(context, AppRoutes.juz),icon:MainscreenIcon.juz,
                  ),
                  Space.y1!,
                  AppButton(
                    title: 'Bookmarks',
                    onPressed: () =>
                        Navigator.pushNamed(context, AppRoutes.bookmarks),icon: MainscreenIcon.bookmark
                  ),
                  Space.y1!,
                  AppButton(title: 'Qiblah direction',
                  onPressed: () => Navigator.pushNamed(context, AppRoutes.qiblah),icon: MainscreenIcon.qiblah
                  )
                ],
              ),
            ),
            const _AyahBottom(),
          ],
        ),
      ),
    );
  }
}
