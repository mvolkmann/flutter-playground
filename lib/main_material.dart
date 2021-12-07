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
  // All widget constructors must take an optional parameter of type "Key".
  // This uniquely identifies a widget instance and is
  // important when widgets will be added, removed, or reordered.
  // Often no key value is provided.
  // One way to specify a key value is `key: UniqueKey()`.
  // Widget constructors can also take additional parameters.
  const MyApp({Key? key}) : super(key: key);

  // Widget build methods describe what a widget renders.
  // In stateless widgets it is only called once (true?).
  // In stateful widgets it is called initially
  // and again every time the state changes.
  @override
  Widget build(BuildContext context) {
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
        body: const Center(
            child: Text('Hello, World!',
                style: TextStyle(
                    backgroundColor: Colors.yellow,
                    color: Colors.red,
                    fontFamily: 'Corinthia',
                    fontSize: 64,
                    fontWeight: FontWeight.bold))));
  }
}
