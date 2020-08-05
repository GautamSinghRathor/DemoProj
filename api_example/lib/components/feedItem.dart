import 'package:flutter/material.dart';

class FeedItem extends StatelessWidget {
  final String bodyText;
  FeedItem(this.bodyText);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: size.height * 0.6,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepOrange.withOpacity(0.7),
            Colors.pink[400].withOpacity(0.9),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CircleAvatar(
                child: Image.asset('assets/pro.jpg'),
              ),
            ),
            title: Text(
              'Jordan Robinsan',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              DateTime.now().toIso8601String(),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Icon(Icons.more_vert),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: size.height * 0.25,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/back1.jpg'),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$bodyText $bodyText \n $bodyText',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
