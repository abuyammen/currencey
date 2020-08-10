import 'package:flutter/material.dart';
import 'package:currency_converter/currency_converter_screen.dart';

void main() => runApp(currency_converter());

class currency_converter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _currency_converter();
  }
}

class _currency_converter extends State<currency_converter>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int indexBottom = 0;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      setState(() {
        indexBottom = tabController.index;
      });
    });
  }

  List<String> tabsNames = ['Home', 'Length', 'Mass','Time'];
  List<Widget> screen = [home(),lengthScreen(), massScreen(), timeScreen()];


  var _myScaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'currency_App',
      home: Scaffold(
        key: _myScaffold,
        bottomNavigationBar:
         BottomNavigationBar(
           backgroundColor: Colors.red,
           fixedColor: Colors.red, 
           unselectedItemColor: Colors.blue,
               currentIndex: indexBottom,
               onTap: (value) {
                 setState(() {
                   indexBottom = value;
                   print(value);
                 });
                 tabController.animateTo(value);
               },
               items: [
                 BottomNavigationBarItem(
         icon: Icon(Icons.home), title: Text('Home')),
                 BottomNavigationBarItem(
         icon: Icon(Icons.format_line_spacing ), title: Text('Length')),//star_border
                 BottomNavigationBarItem(
         icon: Icon(Icons.fitness_center), title: Text('Mass')),
                 BottomNavigationBarItem(
         icon: Icon(Icons.access_time), title: Text('Time')),
               ]),
        appBar: AppBar(
          title: Text('currency_converter_App'),
          bottom: TabBar(
            controller: tabController,
              tabs:[
                Tab(text: 'Home',icon: Icon(Icons.home),),
                Tab(text: 'Length',icon: Icon(Icons.format_line_spacing),),
                Tab(text: 'Mass',icon: Icon(Icons.fitness_center),),
                Tab(text: 'Time',icon: Icon(Icons.access_time),),
              ],
          ),
        ),

        body: Directionality(
          textDirection: TextDirection.ltr,
          child: TabBarView(controller: tabController, children: screen),
        ),
        drawer: ConstrainedBox(
          constraints: BoxConstraints.expand(width: 200),
          child: Drawer(
            child: Expanded(
                          child: Column(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text('Abu Yammen'),
                    accountEmail: Text('t.a.m.0598682190@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.amber,
                      backgroundImage: AssetImage('images/Snap.jpg'),
                    ),
                  ),

                  Card(
                    color: Colors.teal.shade100,
                    child: ListTile(
                      title: Text('Home'),
                      leading: Icon(Icons.home),
                      onTap: () {
                        setState(() {
                          indexBottom = 0;
                          tabController.animateTo(0);
                          Navigator.pop(_myScaffold.currentContext);
                        });
                      },
                    ),
                  ),
                  Card(
                    color: Colors.teal.shade100,
                    child: ListTile(
                      title: Text('Length'),
                      leading: Icon(Icons.format_line_spacing),
                      onTap: () {
                        setState(() {
                          indexBottom = 1;
                          tabController.animateTo(1);
                          Navigator.pop(_myScaffold.currentContext);
                        });
                      },
                    ),
                  ),
                  Card(
                    color: Colors.teal.shade100,
                    child: ListTile(
                      title: Text('Mass'),
                      leading: Icon(Icons.fitness_center),
                      onTap: () {
                        setState(() {
                          indexBottom = 2;
                          tabController.animateTo(2);
                          Navigator.pop(_myScaffold.currentContext);
                        });
                      },
                    ),
                  ),
                  Card(
                    color: Colors.teal.shade100,
                    child: ListTile(
                      title: Text('Time'),
                      leading: Icon(Icons.access_time),
                      onTap: () {
                        setState(() {
                          indexBottom = 3;
                          tabController.animateTo(3);
                          Navigator.pop(_myScaffold.currentContext);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          ),
        ),
      );
  }
    }
    
