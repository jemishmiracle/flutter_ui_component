import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_ui_components/Constants/ImagePath.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class QuiltedImageList extends StatelessWidget {
   String title;
   QuiltedImageList({super.key,this.title = 'Quilted Image List'});

  @override
  Widget build(BuildContext context) {

    List imageData = [
      ImagePath.bgimge1, ImagePath.bgimge2,ImagePath.bgimge3, ImagePath.bgimge4, ImagePath.bgimge5, ImagePath.bgimge6, ImagePath.bgimge7, ImagePath.bgimge8, ImagePath.bgimge9, ImagePath.bgimge10,
      ImagePath.bgimge11, ImagePath.bgimge12, ImagePath.bgimge13, ImagePath.bgimge14, ImagePath.bgimge15, ImagePath.bgimge16, ImagePath.bgimge17, ImagePath.bgimge18, ImagePath.bgimge19, ImagePath.bgimge20,];

    // List<StaggeredGridTile> cardTile = [
    //   StaggeredGridTile.count(crossAxisCellCount: , mainAxisCellCount: mainAxisCellCount, child: child)
    // ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,),),
        title: Text(title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 14.sp,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(ImagePath.bgimg,fit: BoxFit.cover,height: double.infinity,),
            Container(
              child: ListView.builder(
                  itemCount: imageData.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return StaggeredGrid.count(
                      crossAxisCount: 4,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 5,
                      children: [
                        StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  imageData[index]
                                ),
                                fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(2.w)
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      imageData[index]
                                  ),
                                  fit: BoxFit.cover
                              ),
                                borderRadius: BorderRadius.circular(2.w)
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      imageData[index]
                                  ),
                                  fit: BoxFit.cover
                              ),
                                borderRadius: BorderRadius.circular(2.w)
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      imageData[index]
                                  ),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
              ),
            ),
          ],
        )
      ),
    );
  }
  Widget quilted(String image){
    return StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: tile(0,image),
          ),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: tile(1,image),
          ),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: tile(2,image),
          ),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: tile(3,image),
          ),
        ],
    );
  }

  Widget tile(int index,String image){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )
        ),
        child: Text(index.toString()));
  }
}


