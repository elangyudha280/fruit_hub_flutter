import 'package:flutter/material.dart';
import 'package:fruit_hub/widget/login/login.dart';

class ContainerRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateRegister();
  }
}

// state widget
class StateRegister extends StatefulWidget {
  const StateRegister({super.key});

  @override
  State<StateRegister> createState() => PageRegister();
}

class PageRegister extends State<StateRegister> {
  double opacity = 0.0;
  String? firstname;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 1), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          //! container top
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(2),
            height: 350,
            color: Color.fromRGBO(255, 164, 81, 1),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    opacity: opacity,
                    curve: Curves.easeIn,
                    duration: const Duration(milliseconds: 500),
                    child: Container(
                      height: 300,
                      margin: const EdgeInsets.only(top: 30),
                      child: Image.asset(
                        'images/fruit_bucket2.png',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        Positioned(
                            top: -10,
                            height: 20,
                            left: 0,
                            right: 0,
                            child: AnimatedOpacity(
                              opacity: opacity,
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeIn,
                              child: Image.asset(
                                'images/ellipse1.png',
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // !container bottom
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.ltr,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'What is your firstname?',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TextField(
                      cursorOpacityAnimates: true,
                      decoration: InputDecoration(
                          hintText: 'Your firstname',
                          errorText: (firstname == '')
                              ? 'Firstname cannot empty'
                              : null),
                      onChanged: (value) {
                        setState(() {
                          firstname = value;
                        });
                      },
                    ),
                    Center(
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        margin: EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            child: Text(
                              'Start Ordering',
                            ),
                            onPressed: () {
                              //  check jika firtsname kosong
                              if (firstname == null || firstname == '') {
                                setState(() {
                                  firstname = '';
                                });
                                return;
                              }
                              // arahkan ke home dashboard
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ContainerLogin()));
                            },
                            style: ButtonStyle(
                                alignment: Alignment.center,
                                foregroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromRGBO(255, 255, 255, 1)),
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromRGBO(255, 164, 81, 1)))),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
