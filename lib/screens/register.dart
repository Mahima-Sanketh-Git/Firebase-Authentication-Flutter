import 'package:flutter/material.dart';
import 'package:myapp/screens/login.dart';
import 'package:myapp/widgets/textinput.dart';
import 'package:myapp/services/authentication.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

TextEditingController emailcontroler1 = TextEditingController();
TextEditingController passwordcontroler2 = TextEditingController();

class _RegisterState extends State<Register> {
  @override
  void dispose() {
    // TODO: implement dispose
    emailcontroler1.dispose();
    passwordcontroler2.dispose();
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
            vertical: 130,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "Creat Account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 68,
              ),
              Textinput(
                textEditingController: emailcontroler1,
                iscorect: false,
                hinttext: 'Email',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 38,
              ),
              Textinput(
                textEditingController: passwordcontroler2,
                iscorect: true,
                hinttext: 'Password',
                textInputType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 68,
              ),
              GestureDetector(
                onTap: () {
                  createuseraccout();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
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
                        "Register",
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
            ],
          ),
        ),
      ),
    );
  }
}
