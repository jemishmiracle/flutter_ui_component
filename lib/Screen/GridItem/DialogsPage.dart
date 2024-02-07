import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_components/Constants/ImagePath.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DialogsPage extends StatefulWidget {
   String title;
   DialogsPage({super.key,this.title = 'Dialog Gallery'});

  @override
  State<DialogsPage> createState() => _DialogsPageState();
}

class _DialogsPageState extends State<DialogsPage> {
  @override
  Widget build(BuildContext context) {
    List dialogList = [
      "Alert","Alert with Title","Alert with Buttons","Alert Buttons Only","Action Sheet","Material Alert Dialog","Material Alert with Title Dialog",
      "Material time Picker Dialog","Date Picker Dialog","Custom  Dialog"];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        onPressed: () => Get.back(),
        icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,),),
        title: Text(widget.title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 14.sp,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(5.w),
          child: Stack(
            children: [
              Image.asset(ImagePath.bgimg,fit: BoxFit.cover,height: double.infinity,),
              Container(
                child: ListView.builder(
                    itemCount: dialogList.length,shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(2.w),
                        child: InkWell(
                          onTap: () {
                            switch(index){
                              case 0:
                                showAlertDialog(context);
                                break;
                              case 1:
                                showAlert(context);
                                break;
                              case 2:
                                showAlertButton(context);
                                break;
                              case 3:
                                showAlertButtonOnly(context);
                                break;
                              case 4:
                                showActionSheets(context);
                                break;
                              case 5:
                                showMaterialAlert(context);
                                break;
                              case 6:
                                showAlert(context);
                                break;
                              case 7:
                                showTimePickers(context);
                                break;
                              case 8:
                                showDatePickers(context);
                                break;
                              case 9:
                                showCustomDialogs(context);
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
                                dialogList[index],
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

  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Discard draft?'),
          actions: <Widget>[
            TextButton(
                onPressed: () => Get.back(),
                child: Text('Discard',style: TextStyle(color: Theme.of(context).dividerColor),)),
            TextButton(
              onPressed: () => Get.back(),
              child: Text('Cancel',style: TextStyle(color: Theme.of(context).disabledColor,fontWeight: FontWeight.w600),),
            )
          ],
        );
        },
    );
  }

  showAlert(BuildContext context) {
    String content =
        "Let Google help apps determine location. This means sending anonymous location data to Google, even when no apps are running.";
    AlertDialog alert = AlertDialog(
      title: Text("Use Google's location service?"),
      content:  Text(content,maxLines: 4,),
      actions: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).secondaryHeaderColor),
            onPressed: () => Get.back(),
            child:  Text('DISAGREE',style: TextStyle(color: Theme.of(context).primaryColorDark),)),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).secondaryHeaderColor),
            onPressed: () => Get.back(),
            child:  Text('AGREE',style: TextStyle(color: Theme.of(context).primaryColorDark),)),
      ],
      actionsAlignment:MainAxisAlignment.center,
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {return alert;},
    );
  }

  showAlertButton(BuildContext context) {
    String content =
        "Please select your favorite Fruit from the list below. Your selection will be used to customize the suggested list of eateries in your area.";
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("Select Favorite Fruit"),
            actions: [
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("Apple",style: TextStyle(color: Theme.of(context).disabledColor),)),
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("Banana",style: TextStyle(color: Theme.of(context).disabledColor),)),
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("Cherry",style: TextStyle(color: Theme.of(context).disabledColor),)),
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("Mango",style: TextStyle(color: Theme.of(context).disabledColor),)),
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("Grapes",style: TextStyle(color: Theme.of(context).disabledColor),)),
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("Orange",style: TextStyle(color: Theme.of(context).disabledColor),)),
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("PineApple",style: TextStyle(color: Theme.of(context).disabledColor),)),
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("Cancel",style: TextStyle(color: Theme.of(context).dividerColor),)),
            ],
            content: Text(content,),
          );
        },
    );
  }

  showAlertButtonOnly(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            actions: [
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("Apple",style: TextStyle(color: Theme.of(context).disabledColor),)),
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("Banana",style: TextStyle(color: Theme.of(context).disabledColor),)),
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("Cherry",style: TextStyle(color: Theme.of(context).disabledColor),)),
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("Mango",style: TextStyle(color: Theme.of(context).disabledColor),)),
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("Grapes",style: TextStyle(color: Theme.of(context).disabledColor),)),
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("Orange",style: TextStyle(color: Theme.of(context).disabledColor),)),
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("PineApple",style: TextStyle(color: Theme.of(context).disabledColor),)),
              CupertinoDialogAction(onPressed: () => Get.back(), child: Text("Cancel",style: TextStyle(color: Theme.of(context).dividerColor),)),
            ],
          );
        },
    );
  }

  showActionSheets(BuildContext context){
    showCupertinoModalPopup(
       context: context,
       builder: (context) {
         return CupertinoActionSheet(
           title: Text('Favorite Fruit'),
           message: Text('Please select the favorite fruit you want to buy.'),
           cancelButton: CupertinoActionSheetAction(
             child: Text("Cancel",style: TextStyle(color: Theme.of(context).disabledColor,fontWeight: FontWeight.w600),),
             onPressed: () => Get.back(),
           ),
           actions: <Widget>[
             CupertinoActionSheetAction(
               child:  Text('Apple',style: TextStyle(color: Theme.of(context).disabledColor),),
               onPressed: () => Get.back(),
             ),
             CupertinoActionSheetAction(
               child:  Text('Banana',style: TextStyle(color: Theme.of(context).disabledColor),),
               onPressed: () => Get.back(),
             ),
             CupertinoActionSheetAction(
               child:  Text('Mango',style: TextStyle(color: Theme.of(context).disabledColor),),
               onPressed: () => Get.back(),
             ),
           ],
         );
       },
   );
  }

  showMaterialAlert(BuildContext context){
    AlertDialog alert = AlertDialog(
      title: Text("Discard draft?"),
      actions: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).secondaryHeaderColor),
            onPressed: () => Get.back(),
            child:  Text('CANCEL',style: TextStyle(color: Theme.of(context).primaryColorDark),)),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).secondaryHeaderColor),
            onPressed: () => Get.back(),
            child:  Text('DISCARD',style: TextStyle(color: Theme.of(context).primaryColorDark),)),
      ],
      actionsAlignment:MainAxisAlignment.center,
    );
    showDialog(
      context: context,
      builder: (context) {return alert;},
    );

  }

  showTimePickers(BuildContext context){
    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
    );
  }

  showDatePickers(BuildContext context){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(2030)
    );
  }

  showCustomDialogs(BuildContext context) {

  }
   showAlertinfo(BuildContext context) {
    AwesomeDialog(
        context: context,
        animType: AnimType.scale,
        dialogType: DialogType.info,
        dismissOnBackKeyPress: false,
        dismissOnTouchOutside: false,
        btnOkOnPress: () {},
        title: 'This is INFO',
        desc: 'this is your description text',
        // titleTextStyle: GoogleFonts.nunitoSans(
        //     fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        // descTextStyle: GoogleFonts.nunitoSans(
        //     fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black)
    )
      ..show();
  }
}
