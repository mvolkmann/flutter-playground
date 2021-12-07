import 'package:flutter/material.dart';

// This defines the starting point of all Dart apps.
void main() {
  // When creating instances of immutable classes,
  // constructor calls should be preceded by "const".
  // This enables sharing references to instances create with
  // the same arguments which optimizes memory.
  // These instances are created at compile-time.
  // All fields of immutable classes must be
  // declared with the "final" keyword.
  runApp(const MyApp());
}

// This class is also used by tests.
// See the supplied test/widget_test.dart file.
class MyApp extends StatelessWidget {
  // All widget constructors must take a parameter of type "Key".
  // They can also take additional parameters.
  const MyApp({Key? key}) : super(key: key);

  // Widget build methods describe what a widget renders.
  // It stateless widgets is is only called once (true?).
  // In stateful widgets it is called initially
  // and again every time the state chanages.
  @override
  Widget build(BuildContext context) {
    print('MyApp.build entered');
    return MaterialApp(
        // This is a one-line description used by devices
        // to identify the app for users.
        // On Android titles appear above task manager app snapshots
        // displayed when users press the "recent apps" button.
        // On iOS this value is not used.
        title: 'My Title',
        theme: ThemeData(primarySwatch: Colors.amber),
        home: const MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: const Text('Hello, World!'));
  }
}

/*
class MyPage extends StatefulWidget {
  const MyPage({Key? key, required this.title}) : super(key: key);

  // Fields in a Widget subclass are always marked "final".
  final String title;

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/