import 'package:first_app_flutter/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {


  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey=GlobalKey<FormState>();

  bool isPassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Screen'
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                      controller: emailController,
                      prefixIcon: Icons.email,
                      label: 'Email address',
                      textInputType: TextInputType.emailAddress,
                      validator: (value){
                          if(value!.isEmpty){
                            return 'Invalid email address';
                          }
                          return null;
                      }
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                      controller: passwordController,
                      prefixIcon: Icons.lock,
                      textInputType: TextInputType.visiblePassword,
                      label: 'Password',
                      suffixIcon: isPassword?Icons.visibility:Icons.visibility_off,
                      obscureType: isPassword,
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Invalid password';
                        }
                        return null;
                      },
                    onSuffixIconTap: ()=>
                        setState(() {
                          isPassword=!isPassword;
                        })
                  ),

                  const SizedBox(
                    height: 40.0,
                  ),
                  defaultButton(
                      function: (){
                        if(formKey.currentState!.validate()){
                          print(emailController.text);
                          print(passwordController.text);
                        }
                      },
                      text: "Login"
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account'
                      ),
                      TextButton(
                          onPressed: (){

                          },
                          child: const Text(
                            'Sign Up'
                          )
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


