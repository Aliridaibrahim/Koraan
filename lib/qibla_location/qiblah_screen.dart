import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:koraan/providers/app_provider.dart';
import 'package:koraan/qibla_location/widgets/qiblah_compass.dart';
import 'package:koraan/widgets/app/title.dart';
import 'package:koraan/widgets/button/app_back.dart';
import 'package:provider/provider.dart';

class QiblahScreen extends StatefulWidget {
  const QiblahScreen({Key? key}) : super(key: key);

  @override
  State<QiblahScreen> createState() => _QiblahScreenState();
}

class _QiblahScreenState extends State<QiblahScreen> {
  @override

  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();
    return Scaffold(
      backgroundColor: appProvider.isDark ? Colors.grey[850] : Colors.blue,
      body: SafeArea(

        child: Stack(

          children:[
            const AppBackButton(),
            const CustomTitle(
              title: 'Direction of qiblah',
            ),
            FutureBuilder(
            future: _deviceSupport,
            builder: (_, AsyncSnapshot<bool?> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error.toString()}"),
                );
              }
              if (snapshot.data!) {
                return QiblahCompass();
              } else {
                return const Center(
                  child: Text("Your device is not supported"),
                );
              }
            },
          ),
          ]
        ),
      ),
    );
  }
}
