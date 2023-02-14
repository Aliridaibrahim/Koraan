
part of '../home_screen.dart';
class DRawer extends StatelessWidget {
  const DRawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      child: Material(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                ...DrawerUtils.items.map(
                      (e) => Card(
                    child: ListTile(
                      title: Text(e['title']),
                      leading: Icon(e['icon']),
                      onTap: () => Navigator.pushNamed(
                        context,
                        '${e['route']}',
                        arguments: {
                          'route': 'drawer',
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
