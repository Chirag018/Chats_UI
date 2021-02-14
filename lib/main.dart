import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chats ',
      home: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  @override
  int currentIndex;
  void _onTapped(int index) {
    currentIndex = index;
  }

  List<String> _tlist = [
    'Taarak',
    'PPP',
    'Jetha',
    'Sodhi',
    'Bhide',
    'Hathi',
    'Iyer',
  ];
  List<String> _list = [
    'Thanks bro , Have a nice day!',
    'Sure ,no problem',
    'See you soon',
    'Hello ,whatsapp buddy',
    'Fine . Wbu?',
    'Cool!!',
    'Khush raho jee bhar ka.',
  ];
  List<String> _time = [
    '3m',
    '6h',
    '1d',
    '2d',
    '3d',
    '5d',
    '10m',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // toolbarHeight: 200,
          backgroundColor: Colors.white,
          title: Text(
            'Chats',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size(60, 60),
            child: Container(
              // width: 200,
              child: TabBar(
                unselectedLabelColor: Colors.black45,
                // indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.indigo,
                ),
                // labelStyle: TextStyle(backgroundColor: Colors.red[200]),
                tabs: [
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.indigo,
                          // width: 1,
                        ),
                      ),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Recent Messages',
                            style: TextStyle(
                              fontSize: 10,
                              // color: Colors.white60
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.indigo,
                          // width: 1,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Active',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Text(
                  //   'Recent Messages',
                  //   style: TextStyle(color: Colors.purple),
                  // ),
                  // Text(
                  //   'Active',
                  //   style: TextStyle(color: Colors.brown),
                  // ),
                ],
              ),
              padding: EdgeInsets.all(15),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Row(
              children: [
                Icon(
                  Icons.circle,
                  size: 70,
                  color: Colors.purple[300],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 180,
                      children: [
                        Text(
                          _tlist[index],
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // Spacer(),
                        Text(
                          _time[index],
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Title(
                      color: Colors.red,
                      child: Text(_list[index]),
                    )
                  ],
                )
                // DateTime
              ],
            );
          },
          itemCount: 7,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.indigo,
          child: Icon(Icons.person_add_alt),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onTapped,
          selectedItemColor: Colors.indigo,
          unselectedItemColor: Colors.black12,
          // currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_sharp),
              title: Text('Chats'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('People'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call_sharp),
              title: Text('Calls'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              title: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
