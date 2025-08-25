import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        CircleAvatar(
        backgroundImage: AssetImage('assets/images/user.jpg'), // ضيفي الصورة دي في فولدر images
    radius: 50,
    ),
    SizedBox(height: 10),
    Text('Your Name', style: TextStyle(fontSize: 25, color: Colors.white)),
    Text('Software Engineer', style: TextStyle(color: Colors.white70)),
    SizedBox(height:20),
          Card(child: ListTile(leading: Icon(Icons.phone), title: Text("0123456789"))),
          Card(child: ListTile(leading: Icon(Icons.email), title: Text("your@mail.com"))),
          Card(child: ListTile(leading: Icon(Icons.web), title: Text("linkedin.com/you"))),
          Card(child: ListTile(leading: Icon(Icons.location_city), title: Text("Your City"))),
        ],
        ),
        ),
    );
  }
}
