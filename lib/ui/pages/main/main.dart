import 'package:flutter/material.dart';
import 'initialize_items.dart';
import '../home/home_drawer.dart';
class DGLMainScreen extends StatefulWidget {
  static const String routeName = "/";
  @override
  _DGLMainScreenState createState() => _DGLMainScreenState();
}

class _DGLMainScreenState extends State<DGLMainScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:DGLHomeDrawer() ,
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: items,
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
    );
  }
}
