// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, must_be_immutable, use_build_context_synchronously, avoid_print, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:task1/view/screens/task1/home/home_page.dart';

import '../../../../core/constance/colors/colors.dart';
import '../../../../core/constance/images/images_assets.dart';
import '../../../../core/functions/invalid.dart';
import '../../../components/componenets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formState = GlobalKey();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    login() async {
      if (formState.currentState!.validate()) {
        navigatTo(context, const HomePage());
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text(
                'Hi Ahmed !',
                style: TextStyle(color: blue),
              ),
              content: Text('Welcome in your account'),
            );
          },
        );
      }
    }

    return Scaffold(
        // appBar: AppBar(),
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(signPhoto),
          fit: BoxFit.cover,
        ),
      ),
      child: isloading == false
          ? Padding(
              padding:
                  const EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
              child: Container(
                child: SingleChildScrollView(
                  child: Form(
                    key: formState,
                    child: isloading == true
                        ? showLoadingIndicator()
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 40,
                              ),
                              const Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 27, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Don\'t have an account?',
                                    style: TextStyle(
                                      color: grey,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: const Text("Sign Up!",
                                        style: TextStyle(
                                            color: blue,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600)),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              lable(
                                  label: 'Email', fontWeight: FontWeight.w600),
                              const SizedBox(
                                height: 10.0,
                              ),
                              defaultFormFieldAuth(
                                controller: email,
                                type: TextInputType.emailAddress,
                                validate: (val) {
                                  return validInput(val!, 8, 22);
                                },
                                text: 'Email Address',
                                // ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              lable(
                                  label: 'Password',
                                  fontWeight: FontWeight.w600),
                              const SizedBox(
                                height: 10.0,
                              ),
                              defaultFormFieldAuth(
                                controller: password,
                                type: TextInputType.visiblePassword,
                                isPassword: true,
                                validate: (val) {
                                  return validInput(val!, 8, 16);
                                },
                                text: 'Password',
                              ),
                              // ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              defaultButton(
                                onpressed: () async {
                                  await login();
                                },
                                text: 'Login',
                                radius: 18.0,
                                // isUpperCase: true,
                              ),
                            ],
                          ),
                  ),
                ),
              ),
            )
          : showLoadingIndicator(),
    ));
  }
}
