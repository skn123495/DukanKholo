import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<MainDrawer> {
  int myIndex;
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  //The Logic where you change the pages
  _onChangePage(int index) {
    if (index != 0)
      setState(() => myIndex =
          index); //change myIndex if you're Selecting between Settings and Explore
    _controller.animateToPage(index.clamp(0, 1),
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: PageView.builder(
      controller: _controller,
      physics:
          NeverScrollableScrollPhysics(), //so the user can not move between pages
      itemCount: 2,
      itemBuilder: (context, index) {
        // Original Drawer
        if (index == 0)
          return MyWidget(
            explore: () => _onChangePage(1),
            settings: () => _onChangePage(2),
          );
        //Second Drawer form the PageView
        switch (myIndex) {
          case 1:
            return MyExploreAll(goBack: () => _onChangePage(0));
          case 2:
          default:
            return MySettings(goBack: () => _onChangePage(0));
        }
      },
    ));
  }
}

class MyWidget extends StatelessWidget {
  final VoidCallback explore;
  final VoidCallback settings;

  MyWidget({this.explore, this.settings});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            height: 92.0,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/profile");
              },
              child: DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('assets/images/user.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Hello, User',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Muli-Bold')),
                    ],
                  ),
                  decoration:
                      BoxDecoration(color: Theme.of(context).primaryColor),
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(15.0)),
            ),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => print('Home'),
          ),
          ListTile(
            leading: Icon(Icons.grid_on),
            title: Text('Shop by Category'),
            onTap: () => Navigator.pushNamed(context, "/categories"),
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text("Today's Deals"),
            onTap: () => Navigator.pushNamed(context, "/deals"),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Your Orders'),
            onTap: () => Navigator.pushNamed(context, "/orders"),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Your Wishlist'),
            onTap: () => Navigator.pushNamed(context, "/yourwishlist"),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () => Navigator.pushNamed(context, "/notifications"),
          ),

          // ListTile(
          //   leading: Icon(Icons.explore),
          //   title: Text('Explore All Programs'),
          //   trailing: const Icon(Icons.arrow_forward_ios),
          //   onTap: explore,
          // ),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          ListTile(
            leading: Icon(Icons.games),
            title: Text('Fun Zone'),
            onTap: () => print('Fun Zone'),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          //More Stuff
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: settings,
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => print('Account'),
          ),
        ]))
      ],
    );
  }
}

// The settings Drawer(second image)
class MySettings extends StatelessWidget {
  final VoidCallback goBack;

  MySettings({this.goBack});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: const Icon(Icons.arrow_back_ios),
            title: Text(
              'Settings'.toUpperCase(),
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black54),
            ),
            onTap: goBack,
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.flag),
            title: Text('Change Country'),
            onTap: () => print('Change Country'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: () => print('Notification'),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Legal & About'),
            onTap: () => print('Legal & About'),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('Switch Account'),
            onTap: () => print('Switch Account'),
          ),
        ]))
      ],
    );
  }
}

class MyExploreAll extends StatelessWidget {
  final VoidCallback goBack;

  MyExploreAll({this.goBack});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: const Icon(Icons.arrow_back_ios),
            title: Text(
              'All Programs'.toUpperCase(),
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black54),
            ),
            onTap: goBack,
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Submenu 1'),
            onTap: () => print('Submenu 1'),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Submenu 2'),
            onTap: () => print('Submenu 2'),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Submenu 3'),
            onTap: () => print('Submenu 3'),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Submenu 4'),
            onTap: () => print('Submenu 4'),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Submenu 5'),
            onTap: () => print('Submenu 5'),
          ),
        ]))
      ],
    );
  }
}

class MyInnerDrawer extends StatelessWidget {
  final String name;
  final PageController _controller;

  MyInnerDrawer(this._controller, this.name);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        title: Text(name),
        trailing: const Icon(Icons.arrow_back_ios),
        onTap: () => _controller.animateToPage(0,
            duration: const Duration(milliseconds: 500), curve: Curves.linear),
      )
    ]);
  }
}
