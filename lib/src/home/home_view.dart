import 'package:ecommerce_mobile_app/theme/app_palette.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Builder(
              builder: (context) {
                double screenHeight = MediaQuery.of(context).size.height;
                double containerHeight = screenHeight * 0.77;
                return Container(
                  height: containerHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/main.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 35, 20, 35),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Test",
                              style: TextStyle(color: Colors.white),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                debugPrint('test');
                              },
                              child: Text('test'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.transparent,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SliverList.builder(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Theme.of(context).colorScheme.onPrimary,
                child: const Placeholder(),
              );
            },
            itemCount: 20,
          )
        ],
      ),
    );
  }
}
