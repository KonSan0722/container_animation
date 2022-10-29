import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: container_animation());
  }
}

class container_animation extends StatefulWidget {
  const container_animation({super.key});

  @override
  State<container_animation> createState() => _container_animationState();
}

bool changeSize = true;

class _container_animationState extends State<container_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300),
            AnimatedContainer(
              width: changeSize ? 50 : 200,
              height: changeSize ? 50 : 200,
              color: Colors.amber,
              curve: Curves.linear,
              duration: Duration(milliseconds: 200),
              child: changeSize ? container_text() : container_text2(),
            ),
            ElevatedButton(
                onPressed: () {
                  changeSize = !changeSize;
                  setState(() {});
                },
                child: Text('大きくしまーす'))
          ],
        ),
      ),
    );
  }
}

class container_text extends StatefulWidget {
  const container_text({super.key});

  @override
  State<container_text> createState() => _container_textState();
}

class _container_textState extends State<container_text> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [Text('aaa'), Text('bbb')],
    ));
  }
}

class container_text2 extends StatefulWidget {
  const container_text2({super.key});

  @override
  State<container_text2> createState() => _container_text2State();
}

class _container_text2State extends State<container_text2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [Text('ccc'), Text('ddd')],
    ));
  }
}
