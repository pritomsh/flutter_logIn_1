import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Sign In'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _rememberMe = false;
  Widget _buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Email",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            )),
        const SizedBox(height: 20.0),
        Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5.0,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            height: 60.0,
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 15.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                hintText: "Enter Email",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                ),
              ),
            )),
      ],
    );
  }

  _buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Password",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            )),
        const SizedBox(height: 20.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60.0,
          child: const TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: "Enter Password",
              hintStyle: TextStyle(
                color: Colors.white,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _forgetPassword() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          // ignore: avoid_print
          print("Forget Button Click");
        },
        child: const Text(
          'Forget Password',
          style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _login() {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          // ignore: avoid_print
          print("Log In Click");
        },
        child: const Text(
          'Log In',
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.black26,
            onPrimary: Colors.green,
            elevation: 1,
            shadowColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
      ),
    );
  }

  Widget _remember() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.black38,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value!;
                  // ignore: avoid_print
                  print("Remember me ");
                });
              },
            ),
          ),
          const Text(
            'Remember Me',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }

  Widget _createAccount() {
    return Container(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Don't have account yet ? ",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Create an Account',
              style: TextStyle(
                color: Colors.lightGreen,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  Color(0xFF2D2F50),
                  Color(0xFF2D2F47),
                  Color(0xFF2D2F43),
                  Color(0xFF2D2F41),
                ],
                stops: [0.0, 0.3, 0.7, 0.8],
              ),
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  _buildEmail(),
                  const SizedBox(height: 20.0),

                  _buildPassword(),
                  const SizedBox(
                    height: 15.0,
                  ),
                  //FOrget password field

                  // ignore: avoid_unnecessary_containers
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _remember(),
                        _forgetPassword(),
                      ],
                    ),
                  ),
                  _login(),

                  const SizedBox(
                    height: 10.0,
                  ),
                  _createAccount(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
