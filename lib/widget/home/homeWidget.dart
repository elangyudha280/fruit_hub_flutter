import 'package:flutter/material.dart';

// COMPONENT HOME
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              width: 300,
              height: 300,
            ),
            ElevatedButton(
              child: const Text(
                'Fruits Hub',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                    (_) => Color.fromRGBO(255, 164, 81, 1)),
                shape: MaterialStateProperty.resolveWith((_) =>
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
              onPressed: () {},
            ),
          ],
        )),
        color: Colors.orange[100],
      ),
    );
  }
}
