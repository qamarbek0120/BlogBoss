import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static const String id = 'NotificationScreen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white, // White app bar background color
          elevation: 0,
          toolbarTextStyle: TextTheme(
            headline6: TextStyle(
              color: Colors.black, // Black text color for app bar title
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ).bodyText2,
          titleTextStyle: TextTheme(
            headline6: TextStyle(
              color: Colors.black, // Black text color for app bar title
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ).headline6,
        ),
      ),
      home: NotificationPage(),
    );
  }
}

class NotificationPage extends StatefulWidget {


  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: NotificationList(),
    );
  }
}

class NotificationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20, // Replace with your actual notification count
      itemBuilder: (BuildContext context, int index) {
        return NotificationItem(); // Custom notification item widget
      },
    );
  }
}

class NotificationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.black, // Black circle background
        radius: 20,
        // Replace with the user's profile image
        // You can use NetworkImage or AssetImage here
        child: Image.asset('assets/blog_images/joxa.jpg'),
      ),
      title: Text(
        'Username liked your photo',
        style: TextStyle(color: Colors.black), // Black text color
      ),
      subtitle: Text(
        '2 hours ago',
        style: TextStyle(color: Colors.black45), // Gray text color
      ),
      onTap: () {
        // Handle tap action (e.g., navigate to the liked photo)
      },
    );
  }
}
