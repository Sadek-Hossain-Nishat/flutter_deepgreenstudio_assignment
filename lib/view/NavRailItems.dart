import 'package:flutter/material.dart';

class NavRail extends StatelessWidget {
  const NavRail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.70,
      //width: MediaQuery.of(context).size.width * 0.06,
      width: 100,
      height: 700,

      child: Row(
        children: <Widget>[
          LayoutBuilder(
            builder: (context, constraint) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: NavigationRail(
                      selectedIconTheme: IconThemeData(color: Colors.orange),
                      selectedIndex: 1,
                      labelType: NavigationRailLabelType.selected,
                      destinations: [
                        NavigationRailDestination(
                          icon: Icon(Icons.home_outlined),
                          label: Text(''),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.qr_code),
                          label: Text(''),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.notifications_outlined),
                          label: Text(''),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.badge_outlined),
                          label: Text(''),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.shopping_cart_outlined),
                          label: Text(''),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.person_outline),
                          label: Text(''),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.kitesurfing_outlined),
                          label: Text(''),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.money_outlined),
                          label: Text(''),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.book_outlined),
                          label: Text(''),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.menu_outlined),
                          label: Text(''),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.settings_outlined),
                          label: Text(''),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
