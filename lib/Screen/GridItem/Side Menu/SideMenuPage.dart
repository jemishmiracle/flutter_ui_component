import 'package:flutter/material.dart';
import 'package:flutter_ui_components/Constants/ImagePath.dart';
import 'package:flutter_ui_components/Route/Routes.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SideMenuPage extends StatelessWidget {
   String title;
   SideMenuPage({super.key,this.title = 'Navigation Drawer'});

  @override
  Widget build(BuildContext context) {

    List drawerList = ["Simple Navigation Drawer","Custom Navigation Drawer","Collapsible Navigation Drawer"];

    return Scaffold(
      appBar:AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,),),
        title: Text(title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 14.sp,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(5.w),
          child: Stack(
            children: [
              Image.asset(ImagePath.bgimg,fit: BoxFit.cover,height: double.infinity,),
              Container(
                height: 72.h,
                child:ListView.builder(
                  itemCount: drawerList.length,shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.all(2.w),
                      child: InkWell(
                        onTap: () {
                          switch(index){
                            case 0:
                              Get.toNamed(Routes.simpleNavigationDrawerScreen);
                              break;
                            case 1:
                              Get.toNamed(Routes.customNavigationDrawerScreen);
                              break;
                            case 2:
                              Get.toNamed(Routes.collapsibleNavigationDrawerScreen);
                              break;
                          }
                        },
                        child: Container(width: 80.w,height: 8.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.w),
                            image: DecorationImage(
                              image: AssetImage(ImagePath.conImg,),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              drawerList[index],
                              style: TextStyle(color: Theme.of(context).secondaryHeaderColor,fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}