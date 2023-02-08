import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  const MyTab({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 2,
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: TabBar(
                        indicator: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(5)),
                        unselectedLabelColor: Colors.black,
                        tabs: const [
                          Tab(
                            text: 'All Recipes',
                          ),
                          Tab(
                            text: 'New Recipes',
                          )
                        ]),
                  ),
                  Expanded(
                    child: const TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Center(child: Text("Sign Up")),
                        Center(child: Text("Sign In"))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('Chronology'),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
