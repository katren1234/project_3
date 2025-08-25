
import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("Login Screen")),
      body: Container(
        margin: EdgeInsets.only(left: 10 , right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start ,

          children: [
            Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 10) ,
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon:Icon(Icons.email) ,
                 labelText: "Email" ,
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  prefixIcon:Icon(Icons.lock) ,
                  suffix: Icon(Icons.visibility),
                  labelText: "Password" ,
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),

            Container(
              width: double.infinity,
              color: Colors.blue,
                child: MaterialButton(onPressed: () {
                  print("MaterialButton clicked");
                }, child: Text("Login") ),
            ),
            SizedBox(height:10 ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ?"),
                SizedBox(width: 15,),
                TextButton(onPressed: () {
                  print("Hello");
                }, child: Text("Create account"),),
              ],
            )
          ],
        ),
      ),
     
    );
  }
}
