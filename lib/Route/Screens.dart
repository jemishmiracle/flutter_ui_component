import 'package:flutter_ui_components/Screen/GridItem/Bottom%20AppBar/BottomAppBarPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/Bottom%20Menu/BottomMenuItem/AnimatedBottomNavigation.dart';
import 'package:flutter_ui_components/Screen/GridItem/Bottom%20Menu/BottomMenuItem/MaterialBottomNavigation.dart';
import 'package:flutter_ui_components/Screen/GridItem/Bottom%20Menu/BottomMenuItem/SimpleBottomNavigation.dart';
import 'package:flutter_ui_components/Screen/GridItem/Bottom%20Menu/BottomMenuPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/Button/ButtonsPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/ChipsGalleryPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/Dailog/DialogsPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/GoogleMapPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/GridView/GridViewItem/QuiltedImageList.dart';
import 'package:flutter_ui_components/Screen/GridItem/GridView/GridViewItem/Standard%20Image%20List.dart';
import 'package:flutter_ui_components/Screen/GridItem/GridView/GridViewItem/WovenImageList.dart';
import 'package:flutter_ui_components/Screen/GridItem/GridView/GridViewPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewItem/BouncyList.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewItem/ExpandableList.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewItem/ReorderableList.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewItem/SelectionList.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewItem/SimpleList.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewItem/SlidableList.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewItem/SwappableList.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/Profile/ProfilePage.dart';
import 'package:flutter_ui_components/Screen/GridItem/ProgressBarsPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/Search%20Bar/SearchBarPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/Side%20Menu/SideMenuItem/CollapsibleNavigationDrawer.dart';
import 'package:flutter_ui_components/Screen/GridItem/Side%20Menu/SideMenuItem/CustomNavigationDrawer.dart';
import 'package:flutter_ui_components/Screen/GridItem/Side%20Menu/SideMenuItem/SimpleNavigationDrawer.dart';
import 'package:flutter_ui_components/Screen/GridItem/Side%20Menu/SideMenuPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/SliverAppbar/SliverAppbarItem/AnimatedSliverAppBar.dart';
import 'package:flutter_ui_components/Screen/GridItem/SliverAppbar/SliverAppbarItem/SimpleSliverAppBar.dart';
import 'package:flutter_ui_components/Screen/GridItem/SliverAppbar/SliverAppbarPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/Social%20Login/SocialLoginPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/Splash%20Screen/SplashItem/AnimatedSplashScreen.dart';
import 'package:flutter_ui_components/Screen/GridItem/Splash%20Screen/SplashItem/GradiantSplashScreen.dart';
import 'package:flutter_ui_components/Screen/GridItem/Splash%20Screen/SplashItem/SimpleSplashScreen.dart';
import 'package:flutter_ui_components/Screen/GridItem/Splash%20Screen/SplashScreenPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/Tabs/TabItem/CustomTabBar.dart';
import 'package:flutter_ui_components/Screen/GridItem/Tabs/TabItem/IconTabBar.dart';
import 'package:flutter_ui_components/Screen/GridItem/Tabs/TabItem/IconWithTextTabBar.dart';
import 'package:flutter_ui_components/Screen/GridItem/Tabs/TabItem/ScrollableTabBar.dart';
import 'package:flutter_ui_components/Screen/GridItem/Tabs/TabItem/SimpleTabBar.dart';
import 'package:flutter_ui_components/Screen/GridItem/Tabs/TabsPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/TextField%20Gallery/TextFieldsPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/TextPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/Wizard/WizardItem/AnimatedPageview.dart';
import 'package:flutter_ui_components/Screen/GridItem/Wizard/WizardItem/PageviewwithButtonControls.dart';
import 'package:flutter_ui_components/Screen/GridItem/Wizard/WizardItem/PageviewwithDotIndicator.dart';
import 'package:flutter_ui_components/Screen/GridItem/Wizard/WizardItem/SimplePageview.dart';
import 'package:flutter_ui_components/Screen/GridItem/Wizard/WizardItem/VerticalPageview.dart';
import 'package:flutter_ui_components/Screen/GridItem/Wizard/WizardPage.dart';
import 'package:flutter_ui_components/Screen/Home.dart';
import 'package:get/get.dart';
import 'Routes.dart';

class Screens{
  static final routes = [
    GetPage(name: Routes.homeScreen, page: () => Home()),
    GetPage(name: Routes.listviewScreen, page: () => ListViewPage()),
    GetPage(name: Routes.gridviewScreen, page: () => GridViewPage()),
    GetPage(name: Routes.sliverAppbarScreen, page: () => SliverAppbarPage()),
    GetPage(name: Routes.sideMenuScreen, page: () => SideMenuPage()),
    GetPage(name: Routes.bottomMenuScreen, page: () => BottomMenuPage()),
    GetPage(name: Routes.tabsScreen, page: () => TabsPage()),
    GetPage(name: Routes.wizardScreen, page: () => WizardPage()),
    GetPage(name: Routes.splashScreen, page: () => SplashScreenPage()),
    GetPage(name: Routes.progressBarsScreen, page: () => ProgressBarsPage()),
    GetPage(name: Routes.textScreen, page: () => TextPage()),
    GetPage(name: Routes.textFieldsScreen, page: () => TextFieldsPage()),
    GetPage(name: Routes.buttonScreen, page: () => ButtonsPage()),
    GetPage(name: Routes.chipsGalleryScreen, page: () => ChipsGalleryPage()),
    GetPage(name: Routes.bottomAppbarScreen, page: () => BottomAppBarPage()),
    GetPage(name: Routes.dialogsScreen, page: () => DialogsPage()),
    GetPage(name: Routes.socialLoginScreen, page: () => SocialLoginPage()),
    GetPage(name: Routes.profileScreen, page: () => ProfilePage()),
    GetPage(name: Routes.searchBarScreen, page: () => SearchBarPage()),
    GetPage(name: Routes.googleMapScreen, page: () => GoogleMapPage()),
    GetPage(name: Routes.simpleListScreen, page: () => SimpleList()),
    GetPage(name: Routes.bouncyListScreen, page: () => BouncyList()),
    GetPage(name: Routes.slidableListScreen, page: () => SlidableList()),
    GetPage(name: Routes.swappableListScreen, page: () => SwappableList()),
    GetPage(name: Routes.reorderableListScreen, page: () => ReorderableList()),
    GetPage(name: Routes.expandableListScreen, page: () => ExpandableList()),
    GetPage(name: Routes.selectionListScreen, page: () => SelectionList()),
    GetPage(name: Routes.standardImageListScreen, page: () => StandardImageList()),
    GetPage(name: Routes.wovenImageListScreen, page: () => WovenImageList()),
    GetPage(name: Routes.quiltedImageListScreen, page: () => QuiltedImageList()),
    GetPage(name: Routes.simpleSliverAppBarScreen, page: () => SimpleSliverAppBar()),
    GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    GetPage(name: Routes.simpleNavigationDrawerScreen, page: () => SimpleNavigationDrawer()),
    GetPage(name: Routes.customNavigationDrawerScreen, page: () => CustomNavigationDrawer()),
    GetPage(name: Routes.collapsibleNavigationDrawerScreen, page: () => CollapsibleNavigationDrawer()),
    GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    GetPage(name: Routes.customTabBarScreen, page: () => CustomTabBar()),
    GetPage(name: Routes.iconTabBarScreen, page: () => IconTabBar()),
    GetPage(name: Routes.iconWithTextTabBarScreen, page: () => IconWithTextTabBar()),
    GetPage(name: Routes.scrollableTabBarScreen, page: () => ScrollableTabBar()),
    GetPage(name: Routes.simpleTabBarScreen, page: () => SimpleTabBar()),
    GetPage(name: Routes.simpleBottomNavigationScreen, page: () => SimpleBottomNavigation()),
    GetPage(name: Routes.animatedBottomNavigationScreen, page: () => AnimatedBottomNavigation()),
    GetPage(name: Routes.materialBottomNavigationScreen, page: () => MaterialBottomNavigation()),
    GetPage(name: Routes.pageviewwithDotIndicatorScreen, page: () => PageviewwithDotIndicator()),
    GetPage(name: Routes.pageviewwithButtonControlsScreen, page: () => PageviewwithButtonControls()),
    GetPage(name: Routes.verticalPageviewScreen, page: () => VerticalPageview()),
    GetPage(name: Routes.animatedPageviewScreen, page: () => AnimatedPageview()),
    GetPage(name: Routes.simplePageviewScreen, page: () => SimplePageview()),
    GetPage(name: Routes.gradiantSplashScreen, page: () => GradiantSplashScreen()),
    GetPage(name: Routes.animatedSplashScreen, page: () => AnimatedSplashScreen()),
    GetPage(name: Routes.simpleSplashScreen, page: () => SimpleSplashScreen()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
    // GetPage(name: Routes.animatedSliverAppBarScreen, page: () => AnimatedSliverAppBar()),
  ];
}