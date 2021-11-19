import 'package:cntnr_flox/Screen/Login/login_screen.dart';
import 'package:cntnr_flox/Screen/Signup/components/background.dart';
import 'package:cntnr_flox/Screen/Signup/components/or_divider.dart';
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
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SvgPicture.asset(
              "assets/icons/LogoFlox.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email", 
              onChanged: (value) {}
            ),
            RoudedPasswordField(
              onChanged: (value) {},
            ),
            SignUp(
              text: "SINGUP",
            ),
            AlreadyHaveAnAccoutCheck(),
      
            OrDivider(),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  IconSrc: "assets/icons/facebook.svg",
                ),
                SocialIcon(
                  IconSrc: "assets/icons/google-plus.svg",
                ),
              ],
            )
      
          ],
        ),
      ),
    );
  }
}





//Facebook
class SocialIcon extends StatelessWidget {
  final String IconSrc;
  
  const SocialIcon({
    Key? key, 
    required this.IconSrc, 
    
  }) : super(key: key);

  void enviar_login_facebook(){
    // ----------------------------------------->Agregar el login
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enviar_login_facebook,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          IconSrc,
          height: 20,
          width:20,
        ),
      ),
    );
  }
}







// BUTTOM SIGN UP
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







// BUTTOM SIGN IN
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
          "Already have an Account ? ",
          style: TextStyle(color: kPrimaryColor,),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const LoginScreen()));
          },
          child: Text(
            "Sign In",
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






