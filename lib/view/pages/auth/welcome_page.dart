part of '../pages.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/welcome_banner.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Color.fromRGBO(18, 18, 18, 0.95),
                  Color.fromRGBO(18, 18, 18, 0.2),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/logo_white.png',
                  color: Colors.white,
                  width: 50,
                ),
                SizedBox(height: 22),
                Text(
                  'Millions of songs.\nFree on Spotify.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 78),
                buildAuthenticationButtons(context),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAuthenticationButtons(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Sign up free',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              primary: Color.fromRGBO(30, 215, 96, 1),
              fixedSize: Size(
                MediaQuery.of(context).size.width,
                50,
              ),
            ),
          ),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.smartphone),
                Text(
                  'Continue with phone\nnumber',
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 16, height: 16),
              ],
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side:
                    BorderSide(color: Color.fromRGBO(46, 46, 46, 1), width: 1),
              ),
              primary: Colors.transparent,
              fixedSize: Size(
                MediaQuery.of(context).size.width,
                50,
              ),
            ),
          ),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage('assets/images/icon_google.png'),
                  width: 24,
                  height: 24,
                ),
                Text(
                  'Continue with Google',
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 16, height: 16),
              ],
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                      color: Color.fromRGBO(46, 46, 46, 1), width: 1)),
              primary: Colors.transparent,
              fixedSize: Size(
                MediaQuery.of(context).size.width,
                50,
              ),
            ),
          ),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage('assets/images/icon_facebook.png'),
                  width: 24,
                  height: 24,
                ),
                Text(
                  'Continue with Facebook',
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 16, height: 16),
              ],
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                      color: Color.fromRGBO(46, 46, 46, 1), width: 1)),
              primary: Colors.transparent,
              fixedSize: Size(
                MediaQuery.of(context).size.width,
                50,
              ),
            ),
          ),
          SizedBox(height: 24),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, a, b) => LoginPageViews(),
              ),
            ),
            child: Text(
              'Log in',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
