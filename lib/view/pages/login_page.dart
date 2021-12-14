part of 'pages.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Color btnColor = greyFormColor;
  bool checker = false;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        children: [
          GestureDetector(
            onTap: () {
              context.read<PageBloc>().add(GoToWelcomePage());
            },
            child: Container(
              width: 24,
              height: 24,
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                Icons.arrow_back_ios,
                size: 24,
                color: whiteColor,
              ),
            ),
          ),
          Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.symmetric(horizontal: 16),
          ),
          Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.symmetric(horizontal: 16),
          ),
        ],
      );
    }

    Widget loginForm() {
      return Form(
          key: _formkey,
          onChanged: () {
            bool checkUser = emailController.value.text.isNotEmpty;
            bool checkPass = passController.value.text.isNotEmpty;
            if (checkUser && checkPass)
              checker = true;
            else
              checker = false;
          },
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email or username",
                  style: boldWhiteRaleway.copyWith(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: TextFormField(
                    cursorColor: Colors.white,
                    controller: emailController,
                    enableSuggestions: false,
                    style: boldWhiteRaleway.copyWith(
                      fontSize: 18,
                    ),
                    validator: (value) => value!.isEmpty
                        ? "Email or username cannot be empty!"
                        : null,
                    onChanged: (value) {
                      if (value.length > 0) {
                        checker = true;
                        email = value;
                        btnColor = greyColor; //update active colour
                      } else {
                        checker = false;
                        btnColor = greyFormColor; //update active colour
                      }
                    },
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: whiteColor),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 8,
                      ),
                      fillColor: Colors.white24,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorStyle:
                          TextStyle(height: 0.1, fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Password",
                  style: boldWhiteRaleway.copyWith(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: TextFormField(
                    controller: passController,
                    cursorColor: Colors.white,
                    enableSuggestions: true,
                    obscureText: _obscureText,
                    style: boldWhiteRaleway.copyWith(
                      fontSize: 18,
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Password cannot be empty!' : null,
                    onChanged: (value) {
                      setState(() {
                        if (value.length > 0) {
                          checker = true;
                          password = value;
                          btnColor = greyColor; //update active colour
                        } else {
                          checker = false;
                          btnColor = greyFormColor; //update active colour
                        }
                      });
                    },
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: whiteColor),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 8,
                      ),
                      fillColor: Colors.white24,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorStyle:
                          TextStyle(height: 0.1, fontStyle: FontStyle.italic),
                      suffixIcon: InkWell(
                        onTap: _toggle,
                        child: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 22.0,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ));
    }

    Widget buttonLogin() {
      return GestureDetector(
        onTap: checker
            ? () {
                print("Validated");
                if (_formkey.currentState!.validate()) {
                  context.read<PageBloc>().add(GoToMainPage(0));
                } else {
                  print("Not Validated");
                }
              }
            : () {
                print("Not Validated");
              },
        child: Container(
          height: 45,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: btnColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 5,
              ),
              Container(
                child: Text(
                  "Log in",
                  style: boldBlackRaleway.copyWith(fontSize: 14),
                ),
              ),
              Container(
                width: 5,
              )
            ],
          ),
        ),
      );
    }

    Widget buttonLoginWithoutPassword() {
      return GestureDetector(
        onTap: () {},
        child: Container(
          height: 30,
          margin: EdgeInsets.symmetric(horizontal: 130),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: blackColor,
              border: Border.all(color: whiteColor)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 5,
                height: 5,
              ),
              Container(
                child: Text(
                  "Log in without password",
                  style: boldWhiteRaleway.copyWith(fontSize: 10),
                ),
              ),
              Container(
                width: 5,
                height: 5,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            header(),
            SizedBox(
              height: 230,
            ),
            loginForm(),
            SizedBox(
              height: 25,
            ),
            buttonLogin(),
            SizedBox(
              height: 25,
            ),
            buttonLoginWithoutPassword(),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
