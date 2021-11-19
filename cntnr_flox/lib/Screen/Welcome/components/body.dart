import 'package:cntnr_flox/Screen/Login/login_screen.dart';
import 'package:cntnr_flox/Screen/Signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:cntnr_flox/Screen/Welcome/components/background.dart';

import 'package:cntnr_flox/constants.dart';
import 'package:flutter_svg/svg.dart';

// class Body extends StatefulWidget {
//   const Body({Key? key}) : super(key: key);

//   @override
//   State<Body> createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     // This size provide us total height and width of our screen
//     return Background(
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               "WELCOME",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//             ),

//             SvgPicture.asset(
//               "assets/icons/LogoFlox.svg",
//               height: size.height * 0.45,
//             ),

//             RoundButton(
//               text: "LOGIN",
//               press: () {
//                 // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const LoginScreen()));
//               },
//             ),

//             RoundButton(
//               text: "SIGN UP",
//               color: kPrimaryLightColor,
//               textColor: Colors.black,
//               press: () {
//                 // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignUpScreen()));
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
      
            SvgPicture.asset(
              "assets/icons/LogoFlox.svg",
              height: size.height * 0.45,
            ),

            const Login(
              text: "LOGIN",
            ),
            
           const SignUp(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
           ),
      
          ],
        ),
      ),
    );
  }
}





// BUTTON SIGN UP
class SignUp extends StatefulWidget {
  final String text;
  final Color color, textColor;
  const SignUp({
    Key? key,
    required this.text,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  void enviar_signup() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignUpScreen()));
  }
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  ElevatedButton newElevatedButton() {
    return ElevatedButton(
      child: Text(
        widget.text,
        style: TextStyle(color: widget.textColor),
      ),
      onPressed: enviar_signup,
      style: ElevatedButton.styleFrom(
          primary: widget.color,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          textStyle: TextStyle(
              color: widget.textColor, fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}










// BUTTON LOGIN  
class Login extends StatefulWidget {
  final String text;
  final Color color, textColor;

  const Login({
    Key? key,
    required this.text,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void enviar_login() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  ElevatedButton newElevatedButton() {
    return ElevatedButton(
      child: Text(
        widget.text,
        style: TextStyle(color: widget.textColor),
      ),
      onPressed: enviar_login,
      style: ElevatedButton.styleFrom(
          primary: widget.color,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          textStyle: TextStyle(
              color: widget.textColor, fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}




