part of 'pages.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backGroundWidget() {
      return Container(
        width: double.infinity,
        child: Image.asset('assets/landing.png'),
      );
    }

    Widget backGroundOpacityWidget() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xFF121212).withOpacity(0.1),
                    Color(0xFF121212).withOpacity(1)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.6])),
        ),
      );
    }

    Widget chooseLoginMethodWidget() {
      return Container(
        margin: EdgeInsets.only(top: 370, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 35,
                width: 35,
                child: Image.asset("assets/spotify.png")),
            Container(
              child: Text("Millions of songs.",
                  style: boldWhiteRaleway.copyWith(fontSize: 28)),
            ),
            Container(
              child: Text("Free on Spotify.",
                  style: boldWhiteRaleway.copyWith(fontSize: 28)),
            ),
            SizedBox(
              height: 50,
            ),
            CustomButtonGreen(title: "Sign up free"),
            SizedBox(
              height: 8,
            ),
            CustomButtonWhiteBorder(
              title: "Continue with phone number",
              asset1: "assets/phone.png",
            ),
            SizedBox(
              height: 8,
            ),
            CustomButtonWhiteBorder(
              title: "Continue with Google",
              asset1: "assets/google.png",
            ),
            SizedBox(
              height: 8,
            ),
            CustomButtonWhiteBorder(
              title: "Continue with Facebook",
              asset1: "assets/fb.png",
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                context.read<PageBloc>().add(GoToLoginPage());
              },
              child: Container(
                height: 35,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text("Log in",
                    style: boldWhiteRaleway.copyWith(fontSize: 14)),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Stack(
          children: [
            backGroundWidget(),
            backGroundOpacityWidget(),
            chooseLoginMethodWidget()
          ],
        ),
      ),
    );
  }
}
