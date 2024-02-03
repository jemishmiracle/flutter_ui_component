import 'package:flutter/material.dart';
import 'package:flutter_ui_components/Constants/IconPath.dart';
import 'package:flutter_ui_components/Constants/ImagePath.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ExpandableList extends StatefulWidget {
  const ExpandableList({super.key});

  @override
  State<ExpandableList> createState() => _ExpandableListState();
}

class _ExpandableListState extends State<ExpandableList> {
  // List<SubData> sublist  = [
  //   SubData(title: "Map", img: IconPath.mapIconImg),
  //   SubData(title: "Album", img: IconPath.albumIconImg21),
  //   SubData(title: "Phone", img: IconPath.phoneIconImg),
  //   SubData(title: "DeskTop MAC", img: IconPath.deskTopIconImg),
  //   SubData(title: "Device Hub", img: IconPath.deviceHubIconImg),
  // ];
  List iconlist = [
    IconPath.mapIconImg,IconPath.albumIconImg21,IconPath.phoneIconImg,IconPath.deskTopIconImg,IconPath.deviceHubIconImg
  ];
  List sublist = ["Map", "Album", "Phone", "DeskTop MAC", "Device Hub"];
  String dropValue = 'Map';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,),),
        title: Text('Expandable Demo',style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 14.sp,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(3.w),
          child: Column(
            children: [
              Container(height: 25.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  borderRadius: BorderRadius.circular(1.w),
                  boxShadow: [BoxShadow(color: Theme.of(context).shadowColor,blurRadius: 1.0,blurStyle: BlurStyle.outer)],
                ),
                child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(ImagePath.lakeImg1,fit: BoxFit.cover,width: double.infinity,height: 20.h,),
                    Text("Lake Pichola",style: TextStyle(color: Theme.of(context).primaryColorLight,fontSize: 15.sp),),
                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  borderRadius: BorderRadius.circular(1.w),
                  boxShadow: [BoxShadow(color: Theme.of(context).shadowColor,blurRadius: 1.0,blurStyle: BlurStyle.outer)],
                ),
                child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lake Pichola",style: TextStyle(color: Theme.of(context).primaryColorLight,fontSize: 15.sp),),
                    Image.asset(ImagePath.lakeImg2,fit: BoxFit.cover,width: double.infinity,height: 9.h,),
                    Text("EXPAND",style: TextStyle(fontWeight: FontWeight.w600),)
                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              // Container(width: double.infinity,
              //   child: DropdownButtonHideUnderline(
              //     child: DropdownButton(
              //         value: dropValue,
              //         icon: Icon(iconlist as IconData,size: 5.w,),
              //         onChanged:(value) {
              //           setState(() {
              //
              //           });
              //         },
              //         items: sublist.map<>((SubData data) =>
              //             DropdownMenuItem(
              //                 child:Text()
              //             )
              //         ).toList(),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
//
// class SubData{
//   String title;
//   String img;
//   SubData({
//     required this.title,
//     required this.img,
//   });
// }