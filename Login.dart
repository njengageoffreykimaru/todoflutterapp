import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formSignKey = GlobalKey<FormState>();
  bool rememberPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Management'),
        actions: [
          IconButton(
            onPressed: () {
              // Handle notifications button press
            },
            icon: Icon(Icons.notification_add),
          ),
          IconButton(
            onPressed: () {
              // Handle calendar button press
            },
            icon: Icon(Icons.calendar_month_sharp),
          ),
        ],
      ),
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Center(
                  child: Form(
                    key: _formSignKey,
                    child: ListView(
                      padding: EdgeInsets.all(16),
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter your email";
                            } else if (!RegExp(
                                r"^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}")
                                .hasMatch(value)) {
                              return "Enter a valid email address";
                            }
                            return null;
                          },
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email, color: Colors.red), // Corrected icon
                            labelText: 'Email',
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password is required";
                            } else if (value.length < 8) {
                              return "Password must be at least 8 characters";
                            }
                            return null;
                          },
                          controller: _passwordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock, color: Colors.red), // Corrected icon
                            labelText: 'Password',
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: rememberPassword,
                              onChanged: (bool? value) {
                                setState(() {
                                  rememberPassword = value ?? false;
                                });
                              },
                            ),
                            Text('Remember Password'),
                            Gap(150),
                            GestureDetector(
                              onTap: () {
                                // Handle "Forgot Password" action
                              },
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                            ),
                            onPressed: () {
                              if (_formSignKey.currentState!.validate()) {
                                // Perform login here
                                // Access user inputs with _emailController.text and _passwordController.text
                              }
                            },
                            child: Text('Login'),
                          ),
                        ),
                        SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Divider(
                              thickness: 0.7,
                              color: Colors.green,
                            )),
                            Padding(padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 10,
                            ),
                              child: Text("Sign up with",style: TextStyle(color: Colors.black),),
                            ),
                            Expanded(child: Divider(
                              thickness: 0.7,
                              color: Colors.green,
                            )),
                          ],
                        ),
                        SizedBox(height: 10,),

                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 50,
                                  child: Image.asset("download.png"),
                                ),
                               // Optional text below the image
                              ],
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            Gap(60),
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  child: Image.asset("Gmail_Logo_512px.png"),
                                ),

                              ],
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            Gap(60),
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  child: Image.asset("google.png"),
                                ),

                              ],
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            Gap(60),
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  child: Image.asset("apple.png"),
                                ),

                              ],
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
