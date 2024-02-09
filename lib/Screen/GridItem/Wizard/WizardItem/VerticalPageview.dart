import 'package:flutter/material.dart';
import 'package:flutter_ui_components/Constants/ImagePath.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class VerticalPageview extends StatefulWidget {
   String title;
   VerticalPageview({super.key,this.title = 'Simple Pageview'});

  @override
  State<VerticalPageview> createState() => _VerticalPageviewState();
}

class _VerticalPageviewState extends State<VerticalPageview> {
  PageController pageController = PageController();
  List<Widget> pageList = <Widget>[
    Center(child: ClipRRect(borderRadius: BorderRadius.circular(1.w),child: Image.asset(ImagePath.cityImg1,fit: BoxFit.cover,height: 50.h,width: 70.w,))),
    Center(child: ClipRRect(borderRadius: BorderRadius.circular(1.w),child: Image.asset(ImagePath.cityImg2,fit: BoxFit.cover,height: 50.h,width: 70.w,))),
    Center(child: ClipRRect(borderRadius: BorderRadius.circular(1.w),child: Image.asset(ImagePath.cityImg3,fit: BoxFit.cover,height: 50.h,width: 70.w,))),
    Center(child: ClipRRect(borderRadius: BorderRadius.circular(1.w),child: Image.asset(ImagePath.cityImg4,fit: BoxFit.cover,height: 50.h,width: 70.w,))),
    Center(child: ClipRRect(borderRadius: BorderRadius.circular(1.w),child: Image.asset(ImagePath.cityImg5,fit: BoxFit.cover,height: 50.h,width: 70.w,))),
    Center(child: ClipRRect(borderRadius: BorderRadius.circular(1.w),child: Image.asset(ImagePath.cityImg6,fit: BoxFit.cover,height: 50.h,width: 70.w,))),
    Center(child: ClipRRect(borderRadius: BorderRadius.circular(1.w),child: Image.asset(ImagePath.cityImg7,fit: BoxFit.cover,height: 50.h,width: 70.w,))),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,),),
        title: Text(widget.title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 14.sp,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: PageView(
        children: pageList,physics: BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics()
      ),
        controller: pageController, allowImplicitScrolling: true,
        scrollDirection: Axis.vertical,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
