import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../Constants/ImagePath.dart';
import '../../../Route/Routes.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    List listData = ["Simple List","Bouncy List","Slidable List","Swappable List","Reorderable List","Expandable List","Selection List"];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,),),
        title: Text('List',style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 14.sp,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).primaryColor,
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
                  itemCount: listData.length,shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:  EdgeInsets.all(2.w),
                        child: InkWell(
                          onTap: () {
                            switch(index){
                              case 0:
                                Get.toNamed(Routes.simpleListScreen);
                                break;
                              case 1:
                                Get.toNamed(Routes.bouncyListScreen);
                                break;
                              case 2:
                                Get.toNamed(Routes.slidableListScreen);
                                break;
                              case 3:
                                Get.toNamed(Routes.swappableListScreen);
                                break;
                              case 4:
                                Get.toNamed(Routes.reorderableListScreen);
                                break;
                              case 5:
                                Get.toNamed(Routes.expandableListScreen);
                                break;
                              case 6:
                                Get.toNamed(Routes.selectionListScreen);
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
                                listData[index],
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