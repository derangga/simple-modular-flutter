import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatefulWidget {
  @override
  _OrderHistoryScreenState createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order History')),
      body: Container(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (ctx, index) => Card(
            child: ListTile(
              leading: FlutterLogo(size: 72.0),
              title: Text('Order $index'),
              subtitle: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
              trailing: Icon(Icons.more_vert),
              isThreeLine: true,
            ),
          ),
        ),
      ),
    );
  }
}
