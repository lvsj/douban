
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'MePage.dart';
import 'TopPage.dart';
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainWidget(),);
  }
}

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  final _pages=List<Widget>();
  final _titles=List<String>();
  final _bottomBarItems=List<BottomNavigationBarItem>();
  var _selectedIndex=0;


  @override
  void initState() {
    super.initState();
    _pages
      ..add(HomePage())
      ..add(TopPage())
      ..add(MePage());
    _titles
    ..add('Home')
    ..add('Top')
    ..add('Me');
    _bottomBarItems
    ..add(BottomNavigationBarItem(title: Text('Home'),icon: Icon(Icons.home),))
    ..add(BottomNavigationBarItem(title: Text('Top'),icon: Icon(Icons.movie),))
    ..add(BottomNavigationBarItem(title: Text('Me'),icon: Icon(Icons.person),));


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Text(_titles[_selectedIndex]),
        centerTitle: true,
      ),
      body:_pages[_selectedIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items:_bottomBarItems,
        onTap: _onItemTapped,
      ),
    );
  }
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

}

