part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnSplashPage)
            ? SplashScreenPage()
            : (pageState is OnWelcomePage)
                ? WelcomePage()
                : (pageState is OnLoginPage)
                    ? LoginPage()
                    : (pageState is OnMainPage)
                        ? MainPage(
                            initialPage: 0,
                          )
                        : SizedBox());
  }
}
