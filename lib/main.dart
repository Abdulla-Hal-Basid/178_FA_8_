import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital ID Card',
      home: IDCardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IDCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Digital ID Card'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(20),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/Images/IMG.jpeg',
                  ), // Add your image here
                ),
                SizedBox(height: 10),
                Text(
                  'Abdulla Hal Basid',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Batch: 61 D , Department of CSE',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                Divider(height: 30, thickness: 1),
                ListTile(
                  leading: Icon(Icons.badge),
                  title: Text('ID: 0182310012101178'),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('abdullahalbasid864@gmail.com'),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+8801952540864'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
