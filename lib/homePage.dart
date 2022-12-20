import 'package:flutter/material.dart';
import 'package:omarsbank/transactions.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 100,
        title: Text(
          'omars Bank',
        ),

      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(32),
        child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(280, 80),
        ),
          child: Text('view transactions'),
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(
                builder:(context) => transactions(),
              ),
            );
          },
        )
      ),
    );
  }
}
