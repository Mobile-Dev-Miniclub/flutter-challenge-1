part of '../pages.dart';

class WelcomePageViews extends StatefulWidget {
  const WelcomePageViews({Key? key}) : super(key: key);

  @override
  _WelcomePageViewsState createState() => _WelcomePageViewsState();
}

class _WelcomePageViewsState extends State<WelcomePageViews> {
  @override
  Widget build(BuildContext context) {
    print('/Welcome');

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
                  Themes.darkColor.withOpacity(0.95),
                  Themes.darkColor.withOpacity(0.2),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: buildAuthenticationButtons(context),
          ),
        ],
      ),
    );
  }

  ElevatedButton buildSignupButton() => ElevatedButton(
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
          primary: Themes.spotifyLightGreen,
          fixedSize: Size(
            MediaQuery.of(context).size.width,
            50,
          ),
        ),
      );

  ElevatedButton buildPhoneLoginButton() => ElevatedButton(
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
            side: BorderSide(color: Themes.darkColor2, width: 1),
          ),
          primary: Colors.transparent,
          fixedSize: Size(
            MediaQuery.of(context).size.width,
            50,
          ),
        ),
      );

  ElevatedButton buildGoogleLoginButton() => ElevatedButton(
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
              side: BorderSide(color: Themes.darkColor2, width: 1)),
          primary: Colors.transparent,
          fixedSize: Size(
            MediaQuery.of(context).size.width,
            50,
          ),
        ),
      );

  ElevatedButton buildFacebookLoginButton() => ElevatedButton(
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
              color: Themes.darkColor2,
              width: 1,
            ),
          ),
          primary: Colors.transparent,
          fixedSize: Size(
            MediaQuery.of(context).size.width,
            50,
          ),
        ),
      );

  GestureDetector buildAccountLogin() => GestureDetector(
        onTap: () => Navigator.push(
          context,
          createRouteToLogin(),
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
      );

  Widget buildAuthenticationButtons(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 36),
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
            buildSignupButton(),
            SizedBox(height: 12),
            buildPhoneLoginButton(),
            SizedBox(height: 12),
            buildGoogleLoginButton(),
            SizedBox(height: 12),
            buildFacebookLoginButton(),
            SizedBox(height: 24),
            buildAccountLogin(),
            SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
