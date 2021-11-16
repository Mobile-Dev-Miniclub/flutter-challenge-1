part of '../pages.dart';

class LoginPageViews extends StatefulWidget {
  const LoginPageViews({Key? key}) : super(key: key);

  @override
  _LoginPageViewsState createState() => _LoginPageViewsState();
}

class _LoginPageViewsState extends State<LoginPageViews> {
  final _loginFormKey = GlobalKey<FormState>(debugLabel: 'login');
  final AuthController _loginController = Get.find();

  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    print('/Login');

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context, createRouteBackToWelcome()),
          child: Icon(CupertinoIcons.arrow_left),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Themes.darkColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _loginFormKey,
            onChanged: () {
              bool checkUser = _loginController
                  .usernameEmailController.value.text.isNotEmpty;
              bool checkPass =
                  _loginController.passwordController.value.text.isNotEmpty;

              if (checkUser && checkPass)
                _loginController.isEnabled.value = true;
              else
                _loginController.isEnabled.value = false;

              print('isEnabled ${_loginController.isEnabled.value}');
            },
            child: Obx(() => buildComponentLogin()),
          ),
        ),
      ),
    );
  }

  Column buildComponentLogin() => Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      buildColumnUsernameEmail(),
      SizedBox(height: 48),
      buildColumnPassword(),
      SizedBox(height: 52),
      buildContainerLoginButton(),
      SizedBox(height: 32),
      buildContainerLoginWithoutPassButton(),
    ],
  );

  Column buildColumnUsernameEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email or username',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        TextFormField(
          controller: _loginController.usernameEmailController,
          textAlign: TextAlign.start,
          cursorColor: Colors.white,
          validator: (val) =>
              val!.isEmpty ? 'Username tidak boleh kosong' : null,
          cursorHeight: 24,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          decoration: InputDecoration(
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
          ),
          onChanged: (user) {
            username = user;
          },
        ),
      ],
    );
  }

  Column buildColumnPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        TextFormField(
          obscureText: _loginController.isHidden.value,
          controller: _loginController.passwordController,
          cursorColor: Colors.white,
          validator: (val) =>
              val!.isEmpty ? 'Password tidak boleh kosong' : null,
          cursorHeight: 24,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white24,
            contentPadding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 8,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            suffixIcon: Obx(
              () => GestureDetector(
                onTap: () {
                  _loginController.togglePasswordView();
                },
                child: _loginController.isHidden.value
                    ? Icon(
                        Icons.visibility,
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.visibility_off,
                        color: Colors.white,
                      ),
              ),
            ),
          ),
          onChanged: (pass) {
            password = pass;
          },
        ),
      ],
    );
  }

  Widget buildContainerLoginButton() {
    return Container(
      height: 56,
      width: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: _loginController.isEnabled.value
            ? Colors.transparent
            : Colors.white24,
      ),
      child: _loginController.isEnabled.value
          ? ElevatedButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                createRouteToHomeNoAnim(),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 22),
              child: Center(
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
    );
  }

  ElevatedButton buildContainerLoginWithoutPassButton() => ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Log in without password',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: Themes.darkColor2, width: 1),
          ),
        ),
      );
}
