import 'package:flutter/material.dart';
import 'package:flutterapp2/utils/helper.dart';


class CustomBottomNavigationBar extends StatefulWidget {

  BottomToggelInherited bottomChangeState;

  @override
  CustomBottomNavigationBarState createState() =>
      CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  @override
  Widget build(BuildContext context) {

    widget.bottomChangeState = BottomToggelInherited.of(context);
    return makeBottomBar();
  }

  makeBottomBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: iconHelper(
              "icon-24-Locatoin",
              widget.bottomChangeState.currentIndex == 0
                  ? Colors.green
                  : Colors.grey),
          title: textHelper("close to you"),
        ),
        BottomNavigationBarItem(
          icon: iconHelper(
              "icon-24-Product",
              widget.bottomChangeState.currentIndex == 1
                  ? Colors.green
                  : Colors.grey),
          title: textHelper("product"),
        ),
        BottomNavigationBarItem(
          icon: iconHelper(
              "icon-24-Scan",
              widget.bottomChangeState.currentIndex == 2
                  ? Colors.green
                  : Colors.grey),
          title: textHelper("scan"),
        ),
        BottomNavigationBarItem(
          icon: iconHelper(
              "icon-24-Vendor",
              widget.bottomChangeState.currentIndex == 3
                  ? Colors.green
                  : Colors.grey),
          title: textHelper("store"),
        ),
        BottomNavigationBarItem(
          icon: iconHelper(
              "icon-24-Profile",
              widget.bottomChangeState.currentIndex == 4
                  ? Colors.green
                  : Colors.grey),
          title: textHelper("profile"),
        ),
      ],
      currentIndex: widget.bottomChangeState.currentIndex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      onTap: _onBottomBarItemTapped,
      type: BottomNavigationBarType.fixed,
    );
  }

  void _onBottomBarItemTapped(int index) {
    setState(() {
      widget.bottomChangeState.changeIndexFunction(index);

    });
  }


}
