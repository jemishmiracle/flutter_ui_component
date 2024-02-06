import 'package:flutter/material.dart';
import 'package:flutter_ui_components/Constants/ImagePath.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class StandardImageList extends StatelessWidget {
   String title;
   StandardImageList({super.key,this.title = 'Standard Image Liat'});

  @override
  Widget build(BuildContext context) {
    List imageData = [
      ImagePath.bgimge1, ImagePath.bgimge2,ImagePath.bgimge3, ImagePath.bgimge4, ImagePath.bgimge5, ImagePath.bgimge6, ImagePath.bgimge7, ImagePath.bgimge8, ImagePath.bgimge9, ImagePath.bgimge10,
      ImagePath.bgimge11, ImagePath.bgimge12, ImagePath.bgimge13, ImagePath.bgimge14, ImagePath.bgimge15, ImagePath.bgimge16, ImagePath.bgimge17, ImagePath.bgimge18, ImagePath.bgimge19, ImagePath.bgimge20,];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,),),
        title: Text(title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 14.sp,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: SafeArea(
        child:Stack(
          children:[
            Image.asset(ImagePath.bgimg,fit: BoxFit.cover,height: double.infinity,),
            Container(
            child: GridView.builder(
              shrinkWrap: true,itemCount: imageData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(2.w),
                  child: ClipRRect(borderRadius: BorderRadius.circular(2.w),
                      child: Image.asset(imageData[index],fit: BoxFit.cover,height: 60.w,width: 60.w,)),
                );
              },
            ),
          ),],
        ),
      ),
    );
  }
}
