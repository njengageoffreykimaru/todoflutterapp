import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formSignKey = GlobalKey<FormState>();

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
      body: Column(
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
              child: Form(
                key: _formSignKey,
                child: ListView(
                  padding: EdgeInsets.all(16),
                  children: [
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter a valid name";
                        }
                        return null;
                      },
                      controller: _nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person, color: Colors.red),
                        labelText: "Name",
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter a valid phone number";
                        }
                        return null;
                      },
                      controller: _mobileController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.call, color: Colors.red),
                        labelText: "Phone",
                      ),
                    ),
                    SizedBox(height: 20),
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
                        prefixIcon: Icon(Icons.email, color: Colors.red),
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
                        prefixIcon: Icon(Icons.password, color: Colors.red),
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          // Background color
                        ),
                        onPressed: () {
                          if (_formSignKey.currentState!.validate()) {
                            // Perform registration here
                            // Access user inputs with _nameController.text, _mobileController.text, _emailController.text, _passwordController.text
                          }
                        },
                        child: Text('Register'),
                      ),
                    ),

                  ],

                ),
              ),

            ),

          ),

        ],
      ),
    );
  }
}
