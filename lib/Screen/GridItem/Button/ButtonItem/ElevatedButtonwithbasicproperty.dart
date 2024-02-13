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
            Image.asset(ImagePath.bgimg,fit: BoxFit.cover,height: double.infinity,),
            Container(
              child: Center(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 2.w),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          allButton(
                              context: context,
                              conWidth: 37.w,
                              borderRadius: 1.w,
                              text:"FLAT BUTTON",
                              buttonColor: Theme.of(context).secondaryHeaderColor),
                          SizedBox(width: 2.w,),
                          allButton(
                              context: context,
                              conWidth:38.w,
                              text: "FLAT BUTTON",
                              borderRadius:1.w,
                              icon:Icons.account_balance,iconColor: Theme.of(context).primaryColorDark,
                              buttonColor:Theme.of(context).secondaryHeaderColor),
                        ],
                      ),
                    ),
                    // Padding(padding: EdgeInsets.only(top: 2.w),
                    //   child: Container(
                    //     height: 5.h,width: 40.w,
                    //     color: Colors.transparent,
                    //     child: TextButton(
                    //       onPressed: buttonenabled ? (){} :null,
                    //       child: Text("DISABLE BUTTON",),
                    //     ),
                    //   ),
                    // ),
                    Padding(
                        padding:EdgeInsets.only(top: 2.w),
                        child: allButton(
                            context: context,
                            conWidth: 48.w,
                            text: "DISABLE BUTTON",
                            borderRadius: 1.w,
                            buttonColor: Theme.of(context).selectedRowColor,
                        ),
                    ),
                    Padding(
                        padding:EdgeInsets.only(top: 2.w),
                        child: allButton(
                            context: context,
                            conWidth: 46.w,
                            text: "DISABLE BUTTON",
                            borderRadius: 1.w, icon:Icons.account_balance,iconColor: Theme.of(context).primaryColorDark,
                            buttonColor: Theme.of(context).selectedRowColor,
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
  Widget allButton({
    required BuildContext context,
    required double conWidth,
    required String text,
    IconData? icon,
    Color? iconColor,
    Color? buttonColor,
    double? borderRadius,}) {
    return Container(
        height: 5.h,width:conWidth,
        child: TextButton(
            onPressed: (){},
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(buttonColor),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 0),
              )),
            ),
            child: Row(
              children: [
                Icon(icon,color:iconColor,size: 4.w,),SizedBox(width: 1.w,),
                Text(text, style: TextStyle(color: Theme.of(context).primaryColorDark),),
              ],
            ))
    );
  }
}
