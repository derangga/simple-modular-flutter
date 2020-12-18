import 'package:flutter/material.dart';

class MarketScreen extends StatefulWidget {
  @override
  _MarketScreenState createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Market')),
      body: Container(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (ctx, index) => Card(
            child: ListTile(
              leading: FlutterLogo(size: 72.0),
              title: Text('Item on position $index'),
              subtitle:
                  Text('A sufficiently long subtitle warrants three lines.'),
              trailing: Icon(Icons.more_vert),
              isThreeLine: true,
            ),
          ),
        ),
      ),
    );
  }
}
