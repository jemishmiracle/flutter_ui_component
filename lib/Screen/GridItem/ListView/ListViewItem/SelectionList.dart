import 'package:flutter/material.dart';
import 'package:flutter_ui_components/Constants/ImagePath.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SelectionList extends StatefulWidget {
  const SelectionList({super.key});

  @override
  State<SelectionList> createState() => _SelectionListState();
}

class _SelectionListState extends State<SelectionList> {
  bool onClick = false;


  @override
  Widget build(BuildContext context) {
    List<SelectData> selectList = [
      SelectData(img: ImagePath.catImg31, title: "Item 1", subject: "This is description of item 1",),
      SelectData(img: ImagePath.catImg32, title: "Item 2", subject: "This is description of item 2",),
      SelectData(img: ImagePath.catImg33, title: "Item 3", subject: "This is description of item 3",),
      SelectData(img: ImagePath.catImg34, title: "Item 4", subject: "This is description of item 4",),
      SelectData(img: ImagePath.catImg35, title: "Item 5", subject: "This is description of item 5",),
      SelectData(img: ImagePath.catImg36, title: "Item 6", subject: "This is description of item 6",),
      SelectData(img: ImagePath.catImg37, title: "Item 7", subject: "This is description of item 7",),
      SelectData(img: ImagePath.catImg38, title: "Item 8", subject: "This is description of item 8",),
      SelectData(img: ImagePath.catImg39, title: "Item 9", subject: "This is description of item 9",),
      SelectData(img: ImagePath.catImg40, title: "Item 10", subject: "This is description of item 10",),
      SelectData(img: ImagePath.catImg41, title: "Item 11", subject: "This is description of item 11",),
      SelectData(img: ImagePath.catImg42, title: "Item 12", subject: "This is description of item 12",),
      SelectData(img: ImagePath.catImg43, title: "Item 13", subject: "This is description of item 13",),
      SelectData(img: ImagePath.catImg44, title: "Item 14", subject: "This is description of item 14",),
      SelectData(img: ImagePath.catImg45, title: "Item 15", subject: "This is description of item 15",),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,),),
        title: Text('Selection List',style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 14.sp,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SafeArea(
        child: Container(padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.w),
          child: ListView.builder(
            itemCount: selectList.length,shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 1.w),
                  child: Container(
                     decoration: BoxDecoration(
                        color:Theme.of(context).primaryColorDark,
                        boxShadow: [BoxShadow(color: Theme.of(context).shadowColor,blurRadius: 3.0,blurStyle: BlurStyle.outer)],
                        borderRadius: BorderRadius.circular(1.w)),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        child: ClipOval(
                          child: Image.asset(
                            selectList[index].img,fit: BoxFit.cover,height: 15.w,width: 15.w,),
                        ),
                      ),
                      title:Text(selectList[index].title,style: TextStyle(color:Theme.of(context).secondaryHeaderColor,),),
                      subtitle: Text(selectList[index].subject,style: TextStyle(color: Theme.of(context).shadowColor),),
                      trailing: Checkbox(
                        value: onClick,
                        onChanged: (value) {
                          setState(() {
                            onClick = !onClick;
                          });
                        },
                      ),
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