import 'package:flutter/cupertino.dart';

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  final _themeDark = const CupertinoThemeData.raw(
      Brightness.dark, null, null, null, null, null);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: _themeDark,
      home: const HomePageCupertino(),
    );
  }
}

class HomePageCupertino extends StatelessWidget {
  const HomePageCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Cupertino Apps')),
      child: Center(
        child: Text('This is cupertino App'),
      ),
    );
  }
}
