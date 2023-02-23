import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_learning/Login_WhereToMove/home_screen.dart';
import 'package:getx_learning/components/cstm_txtfrmfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login Screen",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          CustomTextFormField(
            flag: false,
            controller: email,
            txt: "Email",
          ),
          CustomTextFormField(
            flag: false,
            controller: password,
            txt: "Password",
          ),
          ElevatedButton(
            onPressed: () {
              final box = GetStorage();
              box.write("email", email.text);
              box.write("password", password.text);
              setState(() {
                
              });
              Get.to(()=>HomeScreen(email: email.text));
            },
            child: const Text(
              "Login",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
