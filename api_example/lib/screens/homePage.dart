import 'package:api_example/components/feedItem.dart';
import 'package:api_example/dataProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DataProvider postData;
  @override
  void didChangeDependencies() {
    postData = Provider.of<DataProvider>(context);
    postData.getResponse();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Drawer(
        child: Text('Nothing'),
      ),
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 10),
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
              child: Row(
                children: [
                  Icon(
                    Icons.short_text,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    'Feed',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    child: Image.asset(
                      'assets/back2.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  ListView.builder(
                    itemCount: postData.postList.length,
                    itemBuilder: (ctx, index) {
                      return FeedItem(postData.postList[index]['title']);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
