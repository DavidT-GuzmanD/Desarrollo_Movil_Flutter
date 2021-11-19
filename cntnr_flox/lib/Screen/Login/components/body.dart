import 'package:cntnr_flox/Screen/Login/components/background.dart';
import 'package:cntnr_flox/Screen/Signup/signup_screen.dart';
import 'package:cntnr_flox/components/rounded_input_field.dart';
import 'package:cntnr_flox/components/rounded_password_fiel.dart';
import 'package:cntnr_flox/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SvgPicture.asset(
            "assets/icons/LogoFlox.svg",
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoudedPasswordField(
            onChanged: (value) {},
          ),
          Login(
            text: "LOGIN",
          ),
          AlreadyHaveAnAccoutCheck(),
              ],
            ),
        ));
  }
}




// BUTTOM SIGN UP
class AlreadyHaveAnAccoutCheck extends StatelessWidget {
  const AlreadyHaveAnAccoutCheck({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Don't have an Account ? ",
          style: TextStyle(color: kPrimaryColor,),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignUpScreen()));
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}

// BUTTOM LOGIN
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
  void enviar() {
                               //------------------------------> Falta por poner el Navigator
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
      onPressed: enviar,
      style: ElevatedButton.styleFrom(
          primary: widget.color,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          textStyle: TextStyle(
              color: widget.textColor,
              fontSize: 14,
              fontWeight: FontWeight.w500)),
    );
  }
}







// class AlreadyHaveAnAccoutCheck extends StatelessWidget {
//   final bool login;
//   final Function press;
//   const AlreadyHaveAnAccoutCheck({
//     Key? key, 
//     this.login = true, 
//     required this.press,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           login ? "Don't have an Account ? " : "Already have an Account ? ",
//           style: TextStyle(color: kPrimaryColor,),
//         ),
//         GestureDetector(
//           onTap: (){},
//           child: Text(
//             login ? "Sign Up" : "Sign In",
//             style: TextStyle(
//               color: kPrimaryColor,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }