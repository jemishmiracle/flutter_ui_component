import 'package:flutter/material.dart';
import 'package:flutter_ui_components/Constants/IconPath.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../Constants/ImagePath.dart';

class ProfilewithTabs extends StatefulWidget {

  @override
  State<ProfilewithTabs> createState() => _ProfilewithTabsState();
}

class _ProfilewithTabsState extends State<ProfilewithTabs> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    List profileData = [
      SizedBox(height: 9.h,
        child: Column(children: [Text("Photos",style: TextStyle(color: Theme.of(context).bottomAppBarColor),), Text("160",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.bold),)],),),
      SizedBox(height: 9.h,
        child: Column(children: [Text("Followers",style: TextStyle(color: Theme.of(context).bottomAppBarColor),), Text("1543",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.bold),)],),),
      SizedBox(height: 9.h,
        child: Column(children: [Text("Following",style: TextStyle(color: Theme.of(context).bottomAppBarColor),), Text("250",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.bold),)],),),
    ];

    List<ProfileTabData> profileTabList = [
      ProfileTabData(img: IconPath.profileIconImg4, title: "Mobile", text: "+91 6584839202"),
      ProfileTabData(img: IconPath.profileIconImg6, title: "Work", text: "+91 9984659240"),
      ProfileTabData(img: IconPath.profileIconImg3, title: "Email", text: "meganAllison@gmail.com"),
    ];
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,scrollDirection: Axis.vertical,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
        [ SliverAppBar(
          expandedHeight: 60.h,
          backgroundColor: Theme.of(context).secondaryHeaderColor,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,),),
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              children: [
                Container(height: 38.h, color: Theme.of(context).secondaryHeaderColor,),
                Padding(
                  padding: EdgeInsets.only(top: 20.w),
                  child: Align(alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 6.h,
                      backgroundImage: AssetImage(ImagePath.perImg5,),
                    ),
                  ),
                ),
                Padding(
                  padding:EdgeInsets.only(top: 42.w),
                  child: Align(alignment: Alignment.topCenter,
                      child: Text("Megan Allison",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 14.sp),)),
                ),
                Padding(
                  padding:EdgeInsets.only(top: 50.w),
                  child: Align(alignment: Alignment.topCenter,
                      child: Text("Traveller, Dreamer, Photographer",
                        style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 10.sp),)),),
                Padding(padding: EdgeInsets.only(top: 58.w,left: 2.w,right: 2.w),
                  child: Container(
                    height: 10.h,
                    width: double.infinity,padding: EdgeInsets.all(2.w),
                    child: Row(
                      children: List.generate(profileData.length, (index) =>
                          Padding(padding: EdgeInsets.only(left: 12.w,top: 2.w,),
                            child: Container(child: profileData[index],),)
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding:EdgeInsets.only(top: 65.w),
                    child: TabBar(
                      tabs: [Tab(text: "ABOUT",),Tab(text: "POSTS",)],
                    ),
                ),
              ],),
          ),
          snap: true,pinned: true,floating: true,
        ),],
        body:TabBarView(
          children: [

          ],
        )
      ),
    );
  }
  Widget about(){
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 30.h,
            child: ListView.builder(
                itemBuilder: (context, index) {

                },),
          ),
        ],
      ),
    );
  }
}

class ProfileTabData{
  String img;
  String title;
  String text;

  ProfileTabData({
    required this.img,
    required this.title,
    required this.text,
  });
}
