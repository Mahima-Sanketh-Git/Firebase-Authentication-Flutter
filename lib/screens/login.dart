import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/widgets/textinput.dart';
import 'package:myapp/screens/register.dart';
import 'package:myapp/services/authentication.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController emailcontroler = TextEditingController();
TextEditingController passwordcontroler = TextEditingController();

class _LoginState extends State<Login> {
  @override
  void dispose() {
    // TODO: implement dispose
    emailcontroler.dispose();
    passwordcontroler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 80,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/ic_instagram.svg",
                  color: Colors.white,
                  height: 64,
                ),
              ),
              const SizedBox(
                height: 98,
              ),
              Textinput(
                textEditingController: emailcontroler,
                iscorect: false,
                hinttext: 'Email',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 38,
              ),
              Textinput(
                textEditingController: passwordcontroler,
                iscorect: true,
                hinttext: 'Password',
                textInputType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 58,
              ),
              GestureDetector(
                onTap: () {
                  signinwithemailpassword();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text(
                      "I don't have account ? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()));
                    },
                    child: Container(
                      child: const Text(
                        "SignIn",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
