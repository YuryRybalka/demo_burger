import 'package:flutter/material.dart';

class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({Key? key}) : super(key: key);

  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
} // class NavigationDrawerScreen

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messengerKey,
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                child: Container(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0))
                        ),
                        child: Image.network('https://www.chery.ru/360/exterior/tiggo4/images/blue/13.jpg'),
                      ),
                      const Text('Навигация Flutter'),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.one_k),
                title: const Text('Каталог'),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                    const SnackBar(content: Text('Переход в каталог'))
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.two_k),
                title: const Text('Корзина'),
                onTap: () {},
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.only(left:10.0),
                child: Text('Профиль'),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Настройки'),
                onTap: () {},
              ),
            ],
          )
        ),
        body: Center(child: Text('Содержимое экрана'))
      ),
    );
  } // build
} // class _NavigationDrawerScreenState

void main() {
  runApp(const NavigationDrawerScreen());
}
