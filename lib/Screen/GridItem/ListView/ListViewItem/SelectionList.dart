import 'package:flutter/material.dart';
import 'package:flutter_ui_components/Constants/ImagePath.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SelectionList extends StatelessWidget {
  const SelectionList({super.key});

  @override
  Widget build(BuildContext context) {

    List<SelectData> selectList = [
      SelectData(img: ImagePath.catImg1, title: "Item 1", subject: "This is description of item 1"),
      SelectData(img: ImagePath.catImg1, title: "Item 2", subject: "This is description of item 2"),
      SelectData(img: ImagePath.catImg1, title: "Item 3", subject: "This is description of item 3"),
      SelectData(img: ImagePath.catImg1, title: "Item 4", subject: "This is description of item 4"),
      SelectData(img: ImagePath.catImg1, title: "Item 5", subject: "This is description of item 5"),
      SelectData(img: ImagePath.catImg1, title: "Item 6", subject: "This is description of item 6"),
      SelectData(img: ImagePath.catImg1, title: "Item 7", subject: "This is description of item 7"),
      SelectData(img: ImagePath.catImg1, title: "Item 8", subject: "This is description of item 8"),
      SelectData(img: ImagePath.catImg1, title: "Item 9", subject: "This is description of item 9"),
      SelectData(img: ImagePath.catImg1, title: "Item 10", subject: "This is description of item 10"),
      SelectData(img: ImagePath.catImg1, title: "Item 11", subject: "This is description of item 11"),
      SelectData(img: ImagePath.catImg1, title: "Item 12", subject: "This is description of item 12"),
      SelectData(img: ImagePath.catImg1, title: "Item 13", subject: "This is description of item 13"),
      SelectData(img: ImagePath.catImg1, title: "Item 14", subject: "This is description of item 14"),
      SelectData(img: ImagePath.catImg1, title: "Item 15", subject: "This is description of item 15"),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,),),
        title: Text('Simple List',style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 14.sp,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

class SelectData{
  String img;
  String title;
  String subject;

  SelectData({
    required this.img,
    required this.title,
    required this.subject,
});
}