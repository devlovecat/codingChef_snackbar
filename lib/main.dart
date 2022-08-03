import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SnackBar',
        theme: ThemeData(primarySwatch: Colors.red),
        debugShowCheckedModeBanner: false,
        home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snack Bar'),
          centerTitle: true,
        ),
        body: Builder(builder: (BuildContext ctx) {
          return Center(
            child: FlatButton(
              color: Colors.red,
              onPressed: () {
                Scaffold.of(ctx).showSnackBar(
                    SnackBar(content: Text('Hello'))
                );
              },
              child: Text(
                'Show me',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }));
  }
}
