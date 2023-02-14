part of '../home_screen.dart';

class _AyahBottom extends StatelessWidget {
  const _AyahBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const Text(
            "\"THE THe QURAN\"",
            textAlign: TextAlign.center,
          ),
          Space.y!,
          const Text(
            "Surah \n",

          ),
        ],
      ),
    );
  }
}