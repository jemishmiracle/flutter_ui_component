import 'package:flutter/material.dart';
import 'package:flutter_ui_components/Route/Routes.dart';
import 'package:flutter_ui_components/Screen/GridItem/BottomAppBarPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/BottomMenuPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/ButtonsPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/ChipsGalleryPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/DialogsPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/FirebaseAdmobPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/GoogleMapPage.dart';
import 'package:flutter_ui_components/Screen/GridItem/GridViewPage.dart';
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
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'GridItem/ListViewPage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<gridViewData> data = [
      gridViewData(img: 'assets/Image/bgImage1.png', title: 'ListView', icon: 'assets/icon/list.png'),
      gridViewData(img: 'assets/Image/bgImage2.png', title: 'GridView', icon: 'assets/icon/grid.png'),
      gridViewData(img: 'assets/Image/bgImage3.png', title: 'SliverAppbar', icon: 'assets/icon/app bar.png'),
      gridViewData(img: 'assets/Image/bgImage4.png', title: 'Side Menu', icon: 'assets/icon/side menu.png'),
      gridViewData(img: 'assets/Image/bgImage24.png', title: 'Bottom Menu', icon: 'assets/icon/bottom.png'),
      gridViewData(img: 'assets/Image/bgImage6.png', title: 'Tabs', icon: 'assets/icon/tab.png'),
      gridViewData(img: 'assets/Image/bgImage25.png', title: 'Wizard', icon: 'assets/icon/wizar.png'),
      gridViewData(img: 'assets/Image/bgImage8.png', title: 'SplashScreen', icon: 'assets/icon/splash screen.png'),
      gridViewData(img: 'assets/Image/bgImage26.png', title: 'Progress Bars', icon: 'assets/icon/proces bar.png'),
      gridViewData(img: 'assets/Image/bgImage10.png', title: 'Text', icon: 'assets/icon/text.png'),
      gridViewData(img: 'assets/Image/bgImage11.png', title: 'Text Fields', icon: 'assets/icon/text-filed.png'),
      gridViewData(img: 'assets/Image/bgImage12.png', title: 'Buttons', icon: 'assets/icon/button.png'),
      gridViewData(img: 'assets/Image/bgImage28.png', title: 'Chips Gallery', icon: 'assets/icon/gallery.png'),
      gridViewData(img: 'assets/Image/bgImage14.png', title: 'Bottom AppBar', icon: 'assets/icon/bottom appbar.png'),
      gridViewData(img: 'assets/Image/bgImage29.png', title: 'Dialogs', icon: 'assets/icon/dialogs.png'),
      gridViewData(img: 'assets/Image/bgImage16.png', title: 'Social Login', icon: 'assets/icon/social login.png'),
      gridViewData(img: 'assets/Image/bgImage17.png', title: 'Profile', icon: 'assets/icon/profile.png'),
      gridViewData(img: 'assets/Image/bgImage18.png', title: 'SearchBar', icon: 'assets/icon/search.png'),
      gridViewData(img: 'assets/Image/bgImage27.png', title: 'GoogleMap', icon: 'assets/icon/google-maps.png'),
      gridViewData(img: 'assets/Image/bgImage20.png', title: 'Firebase Admob', icon: 'assets/icon/firebase.png'),
    ];

    // List<Widget> gridData = [
    //   ListViewPage(),GridViewPage(),SliverAppbarPage(),SideMenuPage(),BottomMenuPage(),TabsPage(),WizardPage(),SplashScreenPage(),ProgressBarsPage(), TextPage(),
    //   TextFieldsPage(),ButtonsPage(),ChipsGalleryPage(),BottomAppBarPage(),DialogsPage(),SocialLoginPage(),ProfilePage(),SearchBarPage(),GoogleMapPage(),FirebaseAdmobPage()
    // ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SafeArea(
        child: Container(
          child: GridView.builder(
              shrinkWrap: true,itemCount: data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(2.w),
                  child: InkWell(
                    onTap:() {
                      switch(index){
                        case 0:
                          Get.toNamed(Routes.listviewScreen);
                          break;
                        case 1:
                          Get.toNamed(Routes.gridviewScreen);
                          break;
                        case 2:
                          Get.toNamed(Routes.sliverAppbarScreen);
                          break;
                        case 3:
                          Get.toNamed(Routes.sideMenuScreen);
                          break;
                        case 4:
                          Get.toNamed(Routes.bottomMenuScreen);
                          break;
                        case 5:
                          Get.toNamed(Routes.tabsScreen);
                          break;
                        case 6:
                          Get.toNamed(Routes.wizardScreen);
                          break;
                        case 7:
                          Get.toNamed(Routes.splashScreen);
                          break;
                        case 8:
                          Get.toNamed(Routes.progressBarsScreen);
                          break;
                        case 9:
                          Get.toNamed(Routes.textScreen);
                          break;
                        case 10:
                          Get.toNamed(Routes.textFieldsScreen);
                          break;
                        case 11:
                          Get.toNamed(Routes.buttonScreen);
                          break;
                        case 12:
                          Get.toNamed(Routes.chipsGalleryScreen);
                          break;
                        case 13:
                          Get.toNamed(Routes.bottomAppbarScreen);
                          break;
                        case 14:
                          Get.toNamed(Routes.dialogsScreen);
                          break;
                        case 15:
                          Get.toNamed(Routes.socialLoginScreen);
                          break;
                        case 16:
                          Get.toNamed(Routes.profileScreen);
                          break;
                        case 17:
                          Get.toNamed(Routes.searchBarScreen);
                          break;
                        case 15:
                          Get.toNamed(Routes.googleMapScreen);
                          break;
                        case 16:
                          Get.toNamed(Routes.firebaseAdmobScreen);
                          break;
                        }
                      },
                    child: Container(
                      child: Stack(
                          children: [
                            Container(
                                height: 60.w,width: 60.w,
                                decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(2.w),
                              image: DecorationImage(
                                image: AssetImage(data[index].img),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken)
                              )
                              ),
                              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(data[index].icon,fit: BoxFit.cover,height: 6.w,),
                                  Text(data[index].title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                );
              },
          ),
        ),
      ),
    );
  }
}

class gridViewData{
  String img;
  String title;
  String icon;

  gridViewData({
    required this.img,
    required this.title,
    required this.icon,
  });

}