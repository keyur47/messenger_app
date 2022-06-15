// ignore_for_file: library_private_types_in_public_api
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:messenger_app/modules/bottomnavigationbar/homepage/stories.dart';
import 'package:messenger_app/utils/app_color.dart';

import 'homepage/messenger.dart';
import 'homepage/people.dart';
import 'homepage/profile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  Widget currentScreen = Messenger();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: AppColors.darkBlue,title: const Text("Bottom Nav Bar")),
        body: SizedBox.expand(
          child: PageStorage(
            bucket: bucket,
            child: currentScreen,
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {},
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              activeColor: AppColors.darkBlue,
              inactiveColor: AppColors.darkBlue,
              title: const Text('Item One'),
              icon: GestureDetector(
                onTap: () {
                  setState(
                    () {
                      _currentIndex = 0;
                      currentScreen = Messenger();
                    },
                  );
                },
                child: const Icon(Icons.home),
              ),
            ),
            BottomNavyBarItem(
              activeColor: AppColors.darkBlue,
              inactiveColor: AppColors.darkBlue,
              title: const Text('Item Two'),
              icon: GestureDetector(
                onTap: () {
                  setState(
                    () {
                      _currentIndex = 1;
                      currentScreen =  People();
                    },
                  );
                },
                child: const Icon(Icons.apps),
              ),
            ),
            BottomNavyBarItem(
                activeColor: AppColors.darkBlue,
                inactiveColor: AppColors.darkBlue,
                title: const Text('Item Three'),
                icon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = 2;
                        currentScreen =  Profile();
                      });
                    },
                    child: const Icon(Icons.chat_bubble))),
            BottomNavyBarItem(
              activeColor: AppColors.darkBlue,
              inactiveColor: AppColors.darkBlue,
              title: const Text('Item Four'),
              icon: GestureDetector(
                onTap: () {
                  setState(
                    () {
                      _currentIndex = 3;
                      currentScreen =  SimpleEcommerce();
                    },
                  );
                },
                child: const Icon(Icons.settings),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



























































//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:messenger_app/modules/bottomnavigationbar/homepage/people.dart';
// import 'package:messenger_app/utils/app_color.dart';
// import 'package:sizer/sizer.dart';
//
// import 'homepage/messenger.dart';
//
// class TabBarApp extends StatefulWidget {
//
//   @override
//   _TabBarAppState createState() => _TabBarAppState();
// }
//
// class _TabBarAppState extends State<TabBarApp> {
//   int currentTab = 0;
//
//   final List<Widget> screens = [Messenger(),People()];
//
//   final PageStorageBucket bucket = PageStorageBucket();
//   Widget currentScreen = Messenger();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: PageStorage(
//           bucket: bucket,
//           child: currentScreen,
//         ),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: AppColors.darkBlue,
//           child: Icon(Icons.home),
//           onPressed: () {
//             // Get.offAllNamed(HomePage.routeName);
//           },
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         bottomNavigationBar: BottomAppBar(
//           color: AppColors.backgroundColor,
//           shape: const CircularNotchedRectangle(),
//           notchMargin: 10,
//           child: Container(
//             height: 60,
//             color: AppColors.backgroundColor,
//             child: Padding(
//               padding: EdgeInsets.only(left: 6.w,right: 6.w),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       MaterialButton(
//                         onPressed: () {
//                           setState(() {
//                             currentScreen = Messenger();
//                             currentTab = 0;
//                           });
//                         },
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(
//                               Icons.people_alt_rounded,
//                               color: currentTab == 0 ? AppColors.red : AppColors.darkBlue,
//                             ),
//                             Text(
//                               "contacts",
//                               style: TextStyle(
//                                 color: currentTab == 0 ?AppColors.red : AppColors.darkBlue,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       MaterialButton(
//                         onPressed: () {
//                           setState(() {
//                             currentScreen = People();
//                             currentTab = 1;
//                           });
//                         },
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(
//                               Icons.supervised_user_circle_sharp,
//                               color: currentTab == 1 ? AppColors.red : AppColors.darkBlue,
//                             ),
//                             Text(
//                               "userName",
//                               style: TextStyle(
//                                 color: currentTab == 1 ?AppColors.red : AppColors.darkBlue,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:messenger_app/utils/app_color.dart';
// import 'homepage/messenger.dart';
// import 'homepage/people.dart';
// import 'homepage/profile.dart';
// import 'homepage/stories.dart';
//
// class BottomNavigationBar extends StatefulWidget {
//
//   const BottomNavigationBar({Key? key}) : super(key: key);
//
//   @override
//   State<BottomNavigationBar> createState() => _BottomNavigationBarState();
// }
//
// class _BottomNavigationBarState extends State<BottomNavigationBar> {
//   int currentTab = 0;
//   GlobalKey bottomNavigationKey = GlobalKey();
//   final PageStorageBucket bucket = PageStorageBucket();
//   Widget currentScreen =  Messenger();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child:  Scaffold(
//         bottomNavigationBar: CurvedNavigationBar(
//           key: bottomNavigationKey,
//           index: currentTab,
//           height: 50.0,
//           color: AppColors.darkBlue,
//           buttonBackgroundColor: AppColors.darkBlue,
//           backgroundColor: AppColors.backgroundColor,
//           animationCurve: Curves.easeInOut,
//           animationDuration: const Duration(milliseconds: 400),
//           items: <Widget>[
//             GestureDetector(
//               onTap: (){
//                 setState(() {
//                   currentScreen =  Messenger();
//                   currentTab = 0;
//                 });
//               },
//               child: Icon(
//                 Icons.message,
//                 // color: currentTab == 0 ? AppColors.white : AppColors.green,
//                 color: AppColors.backgroundColor,
//               ),
//             ),
//             GestureDetector(
//               onTap: (){
//                 setState(() {
//                   currentScreen = const People();
//                   currentTab = 1;
//                 });
//               },
//               child: Icon(
//                 Icons.people,
//                 // color: currentTab == 1 ? AppColors.white : AppColors.green,
//                 color: AppColors.backgroundColor,
//
//               ),
//             ),
//             GestureDetector(
//               onTap: (){
//                  setState(() {
//                   currentScreen = const Stories();
//                   currentTab = 2;
//                 });
//               },
//               child: Icon(
//                 Icons.amp_stories_rounded,
//                // color: currentTab == 2 ? AppColors.white : AppColors.green,
//                 color: AppColors.backgroundColor,
//
//               ),
//             ),
//             GestureDetector(
//               onTap: (){
//                 setState(() {
//                   currentScreen = const Profile();
//                   currentTab = 3;
//                 });
//               },
//               child: Icon(
//                 Icons.person_pin_rounded,
//                 // color: currentTab == 3 ? AppColors.white : AppColors.green,
//                 color: AppColors.backgroundColor,
//
//               ),
//             ),
//           ],
//         ),
//         body: PageStorage(
//           bucket: bucket,
//           child: currentScreen,
//         ),
//       ),
//     );
//   }
// }
///dgdhdhdfhfdd
