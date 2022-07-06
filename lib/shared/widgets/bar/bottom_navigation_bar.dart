import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/config.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  late final IconData icon_left ;
  late final IconData icon_right ;
  
  


  @override
  Widget build(BuildContext context) {
    return CustomLineIndicatorBottomNavbar(
      selectedColor: AppColors.hippieBlue,
      // unSelectedColor: Colors.black54,
      backgroundColor: Colors.white,
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      enableLineIndicator: true,
      lineIndicatorWidth: 3,
      indicatorType: IndicatorType.Top,
      // gradient: LinearGradient(
      //   colors: kGradients,
      // ),

      customBottomBarItems: [
        CustomBottomBarItems(
          label: '',
          icon: Icons.restore_from_trash_sharp,
        ),
        CustomBottomBarItems(
          icon: Icons.add_circle,
          // activeIcon: Icon(Icons.favorite),
          label: '',
        ),
        CustomBottomBarItems(
          icon: Icons.edit,
          // activeIcon: Icon(Icons.person),
          label: '',
        ),
      ],
    );
  }
}
