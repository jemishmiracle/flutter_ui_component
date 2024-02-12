import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_components/Constants/ImagePath.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class PageviewwithButtonControls extends StatefulWidget {
   String title;
   PageviewwithButtonControls({super.key,this.title = 'PageView with Button Controls'});

  @override
  State<PageviewwithButtonControls> createState() => _PageviewwithButtonControlsState();
}

class _PageviewwithButtonControlsState extends State<PageviewwithButtonControls> {
  // PageController pageController = PageController();
  CarouselController carouselController = CarouselController();
  List pageList = [ImagePath.pageViewImg1, ImagePath.pageViewImg2, ImagePath.pageViewImg3, ImagePath.pageViewImg4, ImagePath.pageViewImg5, ImagePath.pageViewImg6,];

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
      body: Center(
        child: CarouselSlider.builder(
          itemCount: pageList.length,
          carouselController: carouselController,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          // Container(
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(pageList[itemIndex]), fit: BoxFit.cover,
          //     ),
          //     borderRadius: BorderRadius.circular(2.w),
          //   ),
          //   child: button(),
          // ),
          Stack(
            children: [
              Image.asset(pageList[itemIndex],fit: BoxFit.cover,width: double.infinity,),
              button()
            ],
          ),
          options:  CarouselOptions(
            height: 55.h,enableInfiniteScroll: true,
            pageSnapping: true,
            initialPage: 0,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget button(){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () => carouselController.previousPage(duration: Duration(milliseconds: 500)),
            icon: Icon(Icons.arrow_back_ios,color: Theme.of(context).bottomAppBarColor,size: 5.w,)),
        IconButton(
            onPressed: () => carouselController.nextPage(duration: Duration(milliseconds: 500)),
            icon: Icon(Icons.arrow_forward_ios,color: Theme.of(context).bottomAppBarColor,size: 5.w,)),
      ],
    );
  }
}
