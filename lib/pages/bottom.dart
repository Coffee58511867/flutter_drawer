import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class FancyBottomNavBarRun extends StatefulWidget {
  const FancyBottomNavBarRun({Key? key}) : super(key: key);

  @override
  _FancyBottomNavBarState createState() => _FancyBottomNavBarState();
}

class _FancyBottomNavBarState extends State<FancyBottomNavBarRun> {
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Fancy Bottom Navigation"),
        ),
        body: IndexedStack(
          index: currentPage,
          children: const [
            AddPage(),
            ListPage(),
            SearchPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: FancyBottomNavigation(
          initialSelection: 0,
          key: bottomNavigationKey,
          circleColor: Colors.teal,
          inactiveIconColor: Colors.white,
          barBackgroundColor: Colors.lightBlueAccent,
          tabs: [
            TabData(
              iconData: Icons.add,
              title: "Add",
              onclick: () {},
            ),
            TabData(
              iconData: Icons.list,
              title: "List",
              onclick: () {},
            ),
            TabData(
              iconData: Icons.search,
              title: "Search",
              onclick: () {},
            ),
            TabData(
              iconData: Icons.person,
              title: "Profile",
              onclick: () {},
            ),
          ],
          onTabChangedListener: (indexPage) {
            setState(() {
              currentPage = indexPage;
            });
          },
        ),
      ),
    );
  }
}

class AddPage extends StatelessWidget {

  const AddPage();


  @override
  Widget build(BuildContext context) {
    return const  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.add, size: 30),
        Text("Add Page", style: TextStyle(fontSize: 24)),
      ],
    );
  }
}

class ListPage extends StatelessWidget {
  const ListPage();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.list, size: 30),
        Text("List Page", style: TextStyle(fontSize: 24)),
      ],
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.search, size: 30),
        Text("Search Page", style: TextStyle(fontSize: 24)),
      ],
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage();

  @override
  Widget build(BuildContext context) {
    return const  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.person, size: 30),
        Text("Profile Page", style: TextStyle(fontSize: 24)),
      ],
    );
  }
}
