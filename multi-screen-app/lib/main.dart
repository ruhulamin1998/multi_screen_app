import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
      '/fourth': (context) => const FourthRoute(),
    },
  ));
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor:
            Color.fromARGB(255, 238, 241, 46), // Change app bar color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20), // Increased margin for more spacing
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // Change button color
                ),
                child: const Text('Click Here!'),
                onPressed: () async {
                  final result = await Navigator.pushNamed(context, '/second');
                  if (result != null) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Received result: $result'),
                    ));
                  }
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(20), // Increased margin for more spacing
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange, // Change button color
                ),
                child: const Text('Second Page!'),
                onPressed: () {
                  Navigator.pushNamed(context, '/third');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(20), // Increased margin for more spacing
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple, // Change button color
                ),
                child: const Text('Go to Third Page'),
                onPressed: () {
                  Navigator.pushNamed(context, '/fourth');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Click Me Page"),
        backgroundColor: Colors.teal, // Change app bar color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20), // Increased margin for more spacing
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // Change button color
                ),
                onPressed: () {
                  Navigator.pop(context, 'Hello from Second Route');
                },
                child: const Text('Back with Data!'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20), // Increased margin for more spacing
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange, // Change button color
                ),
                onPressed: () {
                  Navigator.pop(context, 'Goodbye from Second Route');
                },
                child: const Text('Goodbye with Data!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tap Me Page"),
        backgroundColor: Colors.deepOrange, // Change app bar color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20), // Increased margin for more spacing
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange, // Change button color
                ),
                onPressed: () {
                  Navigator.pop(context, 'Hello from Third Route');
                },
                child: const Text('Back with Data!'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20), // Increased margin for more spacing
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // Change button color
                ),
                onPressed: () {
                  Navigator.pop(context, 'Goodbye from Third Route');
                },
                child: const Text('Goodbye with Data!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fourth Page"),
        backgroundColor: Colors.purple, // Change app bar color
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.purple, // Change button color
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Dialog Title'),
                  content: Text('See You Again Bye.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Close'),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Show Dialog'),
        ),
      ),
    );
  }
}
