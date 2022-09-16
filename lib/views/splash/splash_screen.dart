import 'package:flutter/material.dart';
import 'package:stone_age/data/constants/constants.dart';
import 'package:stone_age/routes/routes.dart';
import 'package:stone_age/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  bool visible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((_) {
      AppEnvironment.navigator.pushReplacementNamed(HomeRoute.homeScreen);
    });

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      print('called');
      if (!visible) {
        setState(() {
          visible = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);

    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: visible ? 1.0 : 0.0,
          duration: const Duration(
            seconds: 1,
          ),
          onEnd: () {
            print('object');
          },
          child: Container(
            width: 100.r,
            height: 100.r,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    AppAssets.stoneAge,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
