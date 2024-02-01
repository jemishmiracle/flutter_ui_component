import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/Image/bgImg2.png',fit: BoxFit.cover,height: double.infinity,),
              Padding(
                padding: EdgeInsets.only(top: 2.w),
                child: Container(
                  height: 70.h,width: 70.w,
                  child:ListView.builder(
                    itemCount: 7,shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:  EdgeInsets.all(2.w),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.w),
                            child: Image.asset('assets/Image/conImg.png',fit: BoxFit.cover,width: 20.w,height: 4.h,),
                          ),
                        );
                      },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
