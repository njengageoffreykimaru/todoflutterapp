import 'package:flutter/material.dart';
import 'package:todoflutterapp/Login.dart';
import 'package:todoflutterapp/Register.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[600],
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Text("Task Management App" ,style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 23,color: Colors.white),)),
            SizedBox(height: 16),
            Container(
              width: 420,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Register()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.red[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  )// Set the background color to white
                ),
                
                child: Text('Register',style: TextStyle(fontWeight: FontWeight.bold,fontSize:18,color: Colors.white),),
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 420,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => Login()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  )// Set the background color to white
                ),
                child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize:18,color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
