import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      builder: (context, child) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: MyText()),
          backgroundColor: Colors.white,
          body: Container(
            child: Level1(),
          ),
        ),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(),
    );
  }
}

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextField(),
        Level3(),
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(context.watch<Data>().data)),
    );
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(context.watch<Data>().data);
  }
}

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      onChanged: (value) {
        context.read<Data>().changeData(value);
      },
    );
  }
}

class Data extends ChangeNotifier {
  String data = 'some data';

  void changeData(String textData) {
    data = textData;
    notifyListeners();
  }
}
