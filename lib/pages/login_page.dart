import "package:flutter/material.dart";

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login.png", fit: BoxFit.cover),

            Text(
              "Welcome",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
                height: 20.0
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter UserName",
                        labelText: "Username"
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password"
                    ),
                  ),
                  SizedBox(
                      height: 20.0
                  ),
                  ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                    onPressed: (){
                      print("Hello Asim");
                    },
                  )
                ],
              ),
            )

          ],
        ));
  }
}
