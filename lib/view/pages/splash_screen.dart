part of 'pages.dart';

class SplashScreenViews extends StatefulWidget {
  const SplashScreenViews({Key? key}) : super(key: key);

  @override
  _SplashScreenViewsState createState() => _SplashScreenViewsState();
}

class _SplashScreenViewsState extends State<SplashScreenViews> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, a1, a2) => const WelcomePageViews(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(84),
      child: Image(
        image: AssetImage('assets/images/logo.png'),
      ),
    );
  }
}
