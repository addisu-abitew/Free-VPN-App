import 'package:flutter/material.dart';
import 'package:free_vpn/shared/preferences.dart';
import 'package:free_vpn/widgets/CircleInfoWidget.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Free VPN'),
        leading: const Icon(Icons.info),
        actions: [
          IconButton(
              onPressed: () {
                Get.changeThemeMode(
                    Preferences.isModeDark ? ThemeMode.dark : ThemeMode.light);
                Preferences.isModeDark = !Preferences.isModeDark;
              },
              icon:
                  Icon(Preferences.isModeDark ? Icons.sunny : Icons.dark_mode))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleInfoWidget(
                  title: 'Location',
                  subTitle: 'FREE',
                  radius: screenWidth * 0.1,
                  color: Colors.amber,
                  child: Icon(Icons.flag_circle, size: screenWidth * 0.1)),
              CircleInfoWidget(
                  title: 'Location',
                  subTitle: 'FREE',
                  radius: screenWidth * 0.1,
                  color: Colors.amber,
                  child: Icon(Icons.flag_circle, size: screenWidth * 0.1))
            ],
          ),
          CircleInfoWidget(
            radius: screenWidth * 0.15,
            color: Colors.green,
            child: CircleInfoWidget(
              radius: screenWidth * 0.1,
              color: Colors.yellow,
              child: CircleInfoWidget(
                radius: screenWidth * 0.05,
                color: Colors.red,
                child: const Icon(Icons.power_settings_new),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleInfoWidget(
                  title: 'Location',
                  subTitle: 'FREE',
                  radius: screenWidth * 0.1,
                  color: Colors.amber,
                  child: Icon(Icons.flag_circle, size: screenWidth * 0.1)),
              CircleInfoWidget(
                  title: 'Location',
                  subTitle: 'FREE',
                  radius: screenWidth * 0.1,
                  color: Colors.amber,
                  child: Icon(Icons.flag_circle, size: screenWidth * 0.1))
            ],
          )
        ],
      ),
      // bottomNavigationBar:
    );
  }
}
