import 'package:flutter_ui_components/Screen/GridItem/BottomAppBarPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/BottomMenuPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/ButtonsPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/ChipsGalleryPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/DialogsPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/GoogleMapPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/GridViewPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewItem/BouncyList.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewItem/ExpandableList.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewItem/ReorderableList.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewItem/SelectionList.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewItem/SimpleList.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewItem/SlidableList.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewItem/SwappableList.dart';
import 'package:flutter_ui_components/Screen/GridItem/ListView/ListViewPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/ProfilePage.dart';
import 'package:flutter_ui_components/Screen/GridItem/ProgressBarsPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/SearchBarPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/SideMenuPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/SliverAppbarPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/SocialLoginPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/SplashScreenPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/TabsPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/TextFieldsPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/TextPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/WizardPage.dart';
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
    // GetPage(name: Routes.firebaseAdmobScreen, page: () => FirebaseAdmobPage()),
    // GetPage(name: Routes.firebaseAdmobScreen, page: () => FirebaseAdmobPage()),
    // GetPage(name: Routes.firebaseAdmobScreen, page: () => FirebaseAdmobPage()),
    // GetPage(name: Routes.firebaseAdmobScreen, page: () => FirebaseAdmobPage()),
    // GetPage(name: Routes.firebaseAdmobScreen, page: () => FirebaseAdmobPage()),
  ];
}