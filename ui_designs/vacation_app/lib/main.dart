import 'package:flutter/material.dart';
import 'package:vacation_app/travel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController controlla;
  double viewPortFraction = 0.8;
  late double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    controlla = PageController(viewportFraction: viewPortFraction
        // initialPage: 3,
        )
      ..addListener(() {
        setState(() {
          pageOffset = controlla.page!;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    final List<Travel> destinations = Travel.destinations();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Find your \nnext vacation',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.3),
              ),
            ),
            Expanded(
                child: PageView.builder(
                    itemCount: destinations.length,
                    itemBuilder: ((context, index) {
                      double scale =
                          (1 - ((pageOffset - index).abs() + viewPortFraction));

                      double angle = (pageOffset - 0.2).abs();
                      // if (angle > 0.5) {
                      //   angle = 1 - angle;
                      // }

                      return Padding(
                        padding: EdgeInsets.only(
                            left: 20,
                            right: 10,
                            top: (100 - scale * 25),
                            bottom: 100),
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.001)
                            ..rotateY(angle),
                          child: Material(
                            elevation: 2,
                            child: Image.asset(
                              destinations[index].url,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    })))
          ],
        ),
        bottomNavigationBar:
            BottomNavigationBar(selectedItemColor: Colors.black, items: const [
          BottomNavigationBarItem(icon: Icon(Icons.navigation), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), label: '')
        ]),
      ),
    );
  }
}
