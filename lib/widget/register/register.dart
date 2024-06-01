import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
