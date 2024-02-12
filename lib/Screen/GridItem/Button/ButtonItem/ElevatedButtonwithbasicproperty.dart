import 'package:flutter/material.dart';
import 'package:flutter_ui_components/Constants/ImagePath.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ElevatedButtonwithbasicproperty extends StatelessWidget {
   String title;
   ElevatedButtonwithbasicproperty({super.key,this.title ='Flat Button'});

  @override
  Widget build(BuildContext context) {
    bool buttonenabled = false;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,),),
        title: Text(title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 14.sp,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Padding(
        padding:  EdgeInsets.all(2.w),
        child: Stack(
          children: [
            Image.asset(ImagePath.bgimg,fit: BoxFit.cover,width: double.infinity,),
            Container(
              child: Center(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 2.w),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 5.h,width: 35.w,
                              child: TextButton(
                                  onPressed: () => {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(Theme.of(context).secondaryHeaderColor),
                                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1.w),
                                    )),
                                  ),
                                  child: Text(
                                    "FLAT BUTTON",
                                    style: TextStyle(color: Theme.of(context).primaryColorDark),))),
                          SizedBox(width: 2.w,),
                          Container(
                              height: 5.h,width: 38.w,
                              child: TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(Theme.of(context).secondaryHeaderColor),
                                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1.w),
                                    )),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.account_balance,color: Theme.of(context).primaryColorDark,size: 4.w,),SizedBox(width: 1.w,),
                                      Text("FLAT BUTTON",style: TextStyle(color: Theme.of(context).primaryColorDark),),
                                    ],
                                  ))),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 2.w),
                      child: Container(
                        height: 5.h,width: 40.w,
                        color: Colors.transparent,
                        child: TextButton(
                          onPressed: buttonenabled ? (){} :null,
                          child: Text("DISABLE BUTTON",),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
