import 'dart:async';
import 'package:flutter/material.dart';
import 'package:paystore/Screen2.dart';
import 'package:provider/provider.dart';
List<Map<String,dynamic>> list=[
  {"ima":"assets/Meesho_logo-removebg-preview.png", "name":"Meesho:Online Shopping App", "sub":"Shooping • Online marketplace", "sub2":"4.5", "sub3":"25MB",},
  {"ima":"assets/photo-editor-photofilter-photocollage-android-removebg-preview.png", "name":"Picsart AI Photo Editor", "sub":"PicsArt,Inc.", "sub2":"4.2", "sub3":"25MB",},
  {"ima":"assets/Snapchat-removebg-preview.png", "name":"SnapChat", "sub":"Social • Networking • Communication ", "sub2":"4.5", "sub3":"25MB",},
  {"ima":"assets/Meesho_logo-removebg-preview.png", "name":"Meesho:Online Shopping App", "sub":"Shooping • Online marketplace", "sub2":"4.5", "sub3":"25MB",},
  {"ima":"assets/photo-editor-photofilter-photocollage-android-removebg-preview.png", "name":"Picsart AI Photo Editor", "sub":"PicsArt,Inc.", "sub2":"4.2", "sub3":"25MB",},
  {"ima":"assets/Snapchat-removebg-preview.png", "name":"SnapChat", "sub":"Social • Networking • Communication ", "sub2":"4.5", "sub3":"25MB",},
  {"ima":"assets/Meesho_logo-removebg-preview.png", "name":"Meesho:Online Shopping App", "sub":"Shooping • Online marketplace", "sub2":"4.5", "sub3":"25MB",},
  {"ima":"assets/photo-editor-photofilter-photocollage-android-removebg-preview.png", "name":"Picsart AI Photo Editor", "sub":"PicsArt,Inc.", "sub2":"4.2", "sub3":"25MB",},
  {"ima":"assets/Snapchat-removebg-preview.png", "name":"SnapChat", "sub":"Social • Networking • Communication ", "sub2":"4.5", "sub3":"25MB",},
  {"ima":"assets/Meesho_logo-removebg-preview.png", "name":"Meesho:Online Shopping App", "sub":"Shooping • Online marketplace", "sub2":"4.5", "sub3":"25MB",},
  {"ima":"assets/photo-editor-photofilter-photocollage-android-removebg-preview.png", "name":"Picsart AI Photo Editor", "sub":"PicsArt,Inc.", "sub2":"4.2", "sub3":"25MB",},
  {"ima":"assets/Snapchat-removebg-preview.png", "name":"SnapChat", "sub":"Social • Networking • Communication ", "sub2":"4.5", "sub3":"25MB",},
  {"ima":"assets/Meesho_logo-removebg-preview.png", "name":"Meesho:Online Shopping App", "sub":"Shooping • Online marketplace", "sub2":"4.5", "sub3":"25MB",},
  {"ima":"assets/photo-editor-photofilter-photocollage-android-removebg-preview.png", "name":"Picsart AI Photo Editor", "sub":"PicsArt,Inc.", "sub2":"4.2", "sub3":"25MB",},
  {"ima":"assets/Snapchat-removebg-preview.png", "name":"SnapChat", "sub":"Social • Networking • Communication ", "sub2":"4.5", "sub3":"25MB",},
];
List<Map<String,dynamic>> com=[
  {'Ima':"assets/watch.png", "name":"Watch apps",},
  {'Ima':"assets/time.png", "name":"Eatch faces",},
  {'Ima':"assets/fine-arts.png", "name":"Art & Design",},
  {'Ima':"assets/car.png", "name":"Auto & Vehicles",},
  {'Ima':"assets/brush.png", "name":"Beuty",},
  {'Ima':"assets/book (1).png", "name":"Books & Reference",},
  {'Ima':"assets/growth.png", "name":"Business",},
  {'Ima':"assets/comic.png", "name":"Comics",},
  {'Ima':"assets/chat (1).png", "name":"Communication",},
  {'Ima':"assets/like.png", "name":"Dating",},
  {'Ima':"assets/mortarboard.png", "name":"Education",},
  {'Ima':"assets/popcorn.png", "name":"Entertainment",},
  {'Ima':"assets/calendar.png", "name":"Events",},
  {'Ima':"assets/stock-exchange-app.png", "name":"Finance",},
  {'Ima':"assets/food.png", "name":"Food & Drink",},
  {'Ima':"assets/game-controller.png", "name":"Games",},
  {'Ima':"assets/cast.png", "name":"Google Cast",},
  {'Ima':"assets/cardiology.png", "name":"Health & Fitness",},
  {'Ima':"assets/home.png", "name":"House & Home",},
  {'Ima':"assets/toys.png", "name":"Kids",},
  {'Ima':"assets/books.png", "name":"Libraries & Demo",},
  {'Ima':"assets/health.png", "name":"Lifestyle",},
  {'Ima':"assets/placeholder.png", "name":"Maps & Navigation",},
  {'Ima':"assets/medical-symbol.png", "name":"Medical",},
  {'Ima':"assets/sound-waves.png", "name":"Music & Audio",},
  {'Ima':"assets/marketing.png", "name":"News & Magazines",},
  {'Ima':"assets/family.png", "name":"Parenting",},
  {'Ima':"assets/adjustments.png", "name":"Personalization",},
  {'Ima':"assets/photo-camera.png", "name":"Photography",},
  {'Ima':"assets/productivity.png", "name":"Productivity",},
  {'Ima':"assets/processing.png", "name":"Shopping",},
  {'Ima':"assets/social-media.png", "name":"Social",},
  {'Ima':"assets/balls.png", "name":"Sports",},
  {'Ima':"assets/tools.png", "name":"Tools",},
  {'Ima':"assets/travel-and-tourism.png", "name":"Travel & Local",},
  {'Ima':"assets/play.png", "name":"Video Players & Editors",},
  {'Ima':"assets/weather-app.png", "name":"Weather",},
];

class Screen1 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Screen1State();
  }

}
int currentInd=0;
class Screen1State extends State<Screen1> with SingleTickerProviderStateMixin
{
  late TabController _controller;
  PageController _pageController=PageController(initialPage: 0,keepPage: true);
  PageController _pageController1=PageController(initialPage: 0,keepPage: true);
  int currentIndex=1;
  int currentpage=0;
  Timer? _timer;
  @override
  void initState() {
    // TODO: implement initState
_controller=TabController(length: 4, vsync: this,initialIndex: 0);
_timer=Timer.periodic(Duration(seconds: 3), (Timer timer) {
  if(currentpage<5)
    {
      currentpage++;
    }
  else
    {
      currentpage=0;
    }
  _pageController1.animateToPage(currentpage, duration: Duration(milliseconds: 350), curve: Curves.easeIn);
});
    super.initState();
  }
  @override
  void dispose()
  {
    super.dispose();
    _timer?.cancel();
  }
Widget build(BuildContext context) {

    // TODO: implement build

    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              title: Container(
                decoration: BoxDecoration(
                  color: Color(0xffE7EBF5),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Shearch app & ...",
                    hintStyle: TextStyle(
                        color: Colors.grey),
                    icon: IconButton(onPressed:() {

                    }, icon: Icon(Icons.search)),
                    suffixIcon: IconButton(onPressed:() {

                    }, icon: Icon(Icons.mic)),


                  ),
                ),
              ),
              actions: [

              IconButton(onPressed: () {

              }, icon: Icon(Icons.notifications,color: Colors.black,size: 20,)),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: GestureDetector(onTap: () {
Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen2(),));
                  },
                    child: CircleAvatar(
                      child: Text("T",style: TextStyle(color: Colors.white,fontSize: 20)),
                      backgroundColor: Colors.brown ,
                      radius: 20,
                    ),
                  ),
                )
              ]
            )];},
          body:  Column(
            children: [
              Container(color: Colors.white,height: 40,width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: TabBar(
                      onTap: (value) {

                         currentIndex=value;

                      },
                      controller:_controller,
                      indicatorColor: Colors.blue,
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.black,
                      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
                      isScrollable: true,
                      labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                      tabs: [

                        Tab(text: "For you",),
                        Tab(text: "Top charts",),
                        Tab(text: 'Kids',),
                        Tab(text: 'Categories',),
                      ]),
                ),
              ),
              Expanded(
                child: SizedBox(width: 420,
                  child: TabBarView(
                      controller: _controller,
                      children: [
                           app(),
                          topcharts(),
                          kids(),
                          community(),
                      ]),
                ),)],),
      ),
      bottomNavigationBar: Consumer<cilck>(
        builder: (context, provider, child) {
          return BottomNavigationBar(
            backgroundColor: Color(0xffEEF1F7),
            iconSize: 20,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.black,
            currentIndex: currentInd,
            onTap: (value) {
            provider.button(value);
            },

            items: [
              BottomNavigationBarItem(
                icon: currentInd==0?Image(image: AssetImage("assets/games.png"),height: 30,width: 30,fit: BoxFit.cover,):Image(image: AssetImage("assets/console.png"),height: 30,width: 30,fit: BoxFit.cover,),
                label: "Games",
              ),
              BottomNavigationBarItem(
                icon: currentInd==1?Image(image: AssetImage("assets/option.png"),height: 25,width: 25,fit: BoxFit.cover,):Image(image: AssetImage("assets/application.png"),height: 30,width: 30,fit: BoxFit.cover,),
                label: "Apps",
              ),
              BottomNavigationBarItem(
                icon: currentInd==2?Icon(Icons.local_offer):Icon(Icons.local_offer_outlined),
                label: "Offers",
              ),
              BottomNavigationBarItem(
                icon: currentInd==3?Icon(Icons.book):Icon(Icons.book_outlined),
                label: "Books",
              ),
            ],
          );
        },
      ),
    );
  }
Widget app() {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Container(height: 310,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _pageController1,
              children: [
             banner(),
             banner(),
             banner(),
             banner(),
             sportlight(),

              ],

            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              RichText(text: TextSpan(
                text: "Ads  • ",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,color: Colors.black
                ),
                children: [
                  TextSpan(
                    text: " Suggested for you",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,color: Colors.black
                    ),
                  )
                ]
              ),

              ),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.more_vert,color: Colors.black,size: 20,))
            ],
          ),
          Container(height: 230,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              children: [
                Column(
                  children: [
                    fun( "Messho: Online Shopping App","Shooping • Online marketplace" ,"4.3 ", "25MB " ,"assets/Meesho_logo-removebg-preview.png",true),
                    fun("Snapchat", "Social • Networking • Communication ","4.3 ", "25MB ", "assets/Snapchat-removebg-preview.png",true),
                    fun("Whatsapp","Social • Networking • Communication ", "", "☑ Installed ", "assets/logo2.png",false),

                  ],
                ),
                Column(
                  children: [
                    fun( "Messho: Online Shopping App","Shooping • Online marketplace" ,"4.3 ", "25MB " ,"assets/Meesho_logo-removebg-preview.png",true),
                    fun("Snapchat", "Social • Networking • Communication ","4.3 ", "25MB ", "assets/Snapchat-removebg-preview.png",true),
                    fun("Whatsapp","Social • Networking • Communication ", "", "☑ Installed ", "assets/logo2.png",false),

                  ],
                ),
                Column(
                  children: [
                    fun( "Messho: Online Shopping App","Shooping • Online marketplace" ,"4.3 ", "25MB " ,"assets/Meesho_logo-removebg-preview.png",true),
                    fun("Snapchat", "Social • Networking • Communication ","4.3 ", "25MB ", "assets/Snapchat-removebg-preview.png",true),
                    fun("Whatsapp","Social • Networking • Communication ", "", "☑ Installed ", "assets/logo2.png",false),

                  ],
                ),
                Column(
                  children: [
                    fun( "Messho: Online Shopping App","Shooping • Online marketplace" ,"4.3 ", "25MB " ,"assets/Meesho_logo-removebg-preview.png",true),
                    fun("Snapchat", "Social • Networking • Communication ","4.3 ", "25MB ", "assets/Snapchat-removebg-preview.png",true),
                    fun("Whatsapp","Social • Networking • Communication ", "", "☑ Installed ", "assets/logo2.png",false),

                  ],
                ),
              ],

            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recommended for you", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.black),),
              IconButton(onPressed: () {},
                  icon: Icon(Icons.arrow_forward,color: Colors.black,size: 20,))
            ],
          ),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                fun2("assets/Meesho_logo-removebg-preview.png", "Messho: Online Shopping App", "4.3 ",true),
                fun2("assets/Snapchat-removebg-preview.png", "Snapchat", "4.3 ",true),
                fun2("assets/logo2.png", "Whatsapp", "☑ Installed ",false),
                fun2("assets/Meesho_logo-removebg-preview.png", "Messho: Online Shopping App", "4.3 ",true),
                fun2("assets/Snapchat-removebg-preview.png", "Snapchat", "4.3 ",true),
                fun2("assets/logo2.png", "Whatsapp", "☑ Installed ",false),
                fun2("assets/Meesho_logo-removebg-preview.png", "Messho: Online Shopping App", "4.3 ",true),
                fun2("assets/Snapchat-removebg-preview.png", "Snapchat", "4.3 ",true),
                fun2("assets/logo2.png", "Whatsapp", "☑ Installed ",false),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Event happening Now", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.black),),

            ],
          ),
          Container(height: 310,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              children: [
                banner(),
                banner(),
                banner(),
                banner(),
                sportlight(),

              ],

            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Row(
                children: [ Icon(Icons.verified,color: Colors.black,size: 20,),
                  Text("Editors' Choice apps", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.black),),
                ],
              ),
              IconButton(onPressed: () {},
                  icon: Icon(Icons.arrow_forward,color: Colors.black,size: 20,))
            ],
          ),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                fun2("assets/Meesho_logo-removebg-preview.png", "Messho: Online Shopping App", "4.3 ",true),
                fun2("assets/Snapchat-removebg-preview.png", "Snapchat", "4.3 ",true),
                fun2("assets/logo2.png", "Whatsapp", "☑ Installed ",false),
                fun2("assets/Meesho_logo-removebg-preview.png", "Messho: Online Shopping App", "4.3 ",true),
                fun2("assets/Snapchat-removebg-preview.png", "Snapchat", "4.3 ",true),
                fun2("assets/logo2.png", "Whatsapp", "☑ Installed ",false),
                fun2("assets/Meesho_logo-removebg-preview.png", "Messho: Online Shopping App", "4.3 ",true),
                fun2("assets/Snapchat-removebg-preview.png", "Snapchat", "4.3 ",true),
                fun2("assets/logo2.png", "Whatsapp", "☑ Installed ",false),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Educational apps", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.black),),
              IconButton(onPressed: () {},
                  icon: Icon(Icons.arrow_forward,color: Colors.black,size: 20,))
            ],
          ),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                fun2("assets/Meesho_logo-removebg-preview.png", "Messho: Online Shopping App", "4.3 ",true),
                fun2("assets/Snapchat-removebg-preview.png", "Snapchat", "4.3 ",true),
                fun2("assets/logo2.png", "Whatsapp", "☑ Installed ",false),
                fun2("assets/Meesho_logo-removebg-preview.png", "Messho: Online Shopping App", "4.3 ",true),
                fun2("assets/Snapchat-removebg-preview.png", "Snapchat", "4.3 ",true),
                fun2("assets/logo2.png", "Whatsapp", "☑ Installed ",false),
                fun2("assets/Meesho_logo-removebg-preview.png", "Messho: Online Shopping App", "4.3 ",true),
                fun2("assets/Snapchat-removebg-preview.png", "Snapchat", "4.3 ",true),
                fun2("assets/logo2.png", "Whatsapp", "☑ Installed ",false),
              ],
            ),
          ),

        ],
      ),
    ),
  );
}
Widget fun(String s1,String s2,String s3,String s4,String s5,bool a){
    return            Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(s5),height: 50,width: 50,fit: BoxFit.cover,),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(s1,style: TextStyle(color: Colors.black,fontSize: 18),),
                Text(s2,style: TextStyle(color: Colors.black,fontSize: 13),),
                Row(
                  children: [
                    Text(s3,style: TextStyle(color: Colors.black,fontSize: 13),),
                    a?Icon(Icons.star,size: 10,color: Colors.black,):Container(),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(s4,style: TextStyle(color: Colors.black,fontSize: 12),),
                    ),

                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
}
Widget fun2(String s1,String s2,String s3,bool a){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(width: 90,height: 130,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: AssetImage(s1),height: 70,width: 70,fit: BoxFit.cover,),
            Text(s2,style: TextStyle(color: Colors.black,fontSize: 11,),textAlign: TextAlign.start,),
            Row(
              children: [
                Text(s3,style: TextStyle(color: Colors.black,fontSize: 11),),
                a?Icon(Icons.star,size: 10,color: Colors.black38,):Container(),
                ]
                ),


          ],
        ),
      ),
    );
}
Widget banner() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Container(
      height: 330,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),

      ),
      child:Stack(
        children: [
          Column(
            children: [
              Center(child: Image(image: AssetImage("assets/phone_photograpy.jpg"),height: 150,width: 200,fit: BoxFit.cover,)),
              Text("Unblur your photos With a Single tap",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
              Text("Don't let those out of focus photos go to wast...",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("assets/picsart.png"),height: 60,width: 60,fit: BoxFit.cover,),

                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Picsart  AI Photo Edito..",style: TextStyle(color: Colors.white,fontSize: 16),),
                          Text("PicsArt, Inc.",style: TextStyle(color: Colors.white,fontSize: 13),),
                          Row(
                            children: [
                              Text("4.3 ",style: TextStyle(color: Colors.white,fontSize: 13),),
                              Icon(Icons.star,size: 10,color: Colors.black38,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("12+ Reted for 12+ ",style: TextStyle(color: Colors.white,fontSize: 12),),
                              ),

                            ],
                          ),
                          Text("Contanis add",style: TextStyle(color: Colors.white,fontSize: 13),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(onTap: () {},
                          child: Container(width: 70,height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                               borderRadius: BorderRadius.all(Radius.circular(18)),
                              color: Colors.white60,
                            ),
                              child: Center(child: Text("Install",style: TextStyle(fontSize: 15,color: Colors.white),)))),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topLeft:Radius.circular(20) ),

            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text("Update available",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
            ),
          ))
        ],
      ),
    ),
  );
}
Widget sportlight() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Stack(
      children: [
    ClipRRect(borderRadius: BorderRadius.circular(20),
    child: Image(image: AssetImage("assets/img.png"),height: 330,width: 400,fit: BoxFit.cover,)),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topLeft:Radius.circular(20) ),

              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text("Spotlight",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 170,left: 20),
            child: Text("New apps we love",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),),
            Padding(padding: EdgeInsets.only(top: 10,left: 20),
              child: Text("September's picks",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.normal),),)
          ],
        )
      ],
    ),
  );
}
Widget topcharts(){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
            GestureDetector(child: age("Top Free", true,true),
            onTap: () {
              showModalBottomSheet(context: context,
                builder: (context) {
                return Container(height: 200,width: double.infinity,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text("Top Charts",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                      Center(
                        child: Container(
                          height: 110,
                          width: 350,
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(12),color: Colors.white),
                          child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Top free",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),),
                              ),
                              Divider(color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Top grossing",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                              ),
                              Divider(color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Top paid",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                              ),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },);
            },),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(context: context,
                  builder: (context) {
                    return Container(height: 350,width: double.infinity,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Text("Device",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                          Center(
                            child: Container(
                              height: 280,
                              width: 350,
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(12),color: Colors.white),
                              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 2),
                                    child: Row(
                                      children: [
                                        Icon(Icons.phone_android_sharp,color: Colors.black54,size: 30,),
                                        Text("Phone",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),),
                                      ],
                                    ),
                                  ),
                                  Divider(color: Colors.grey,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                   child: Row(
                                      children: [
                                        Icon(Icons.tablet_android,color: Colors.black54,size: 30,),
                                        Text("Tablet",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),),
                                      ],
                                    ),
                                  ),
                                  Divider(color: Colors.grey,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Icon(Icons.tv,color: Colors.black54,size: 30,),
                                        Text("TV",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),),
                                      ],
                                    ),
                                  ),
                                  Divider(color: Colors.grey,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Icon(Icons.computer,color: Colors.black54,size: 30,),
                                        Text("Chromebook",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),),
                                      ],
                                    ),
                                  ),
                                  Divider(color: Colors.grey,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Icon(Icons.watch,color: Colors.black54,size: 30,),
                                        Text("Watch",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),),
                                      ],
                                    ),
                                  ),
                                  Divider(color: Colors.grey,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Icon(Icons.car_repair,color: Colors.black54,size: 30,),
                                        Text("Car",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: age("Top Phone", true,true),
              ),
            ),
            GestureDetector(onTap: () {
              showModalBottomSheet(context: context,  isScrollControlled: true,builder: (context) {

                return Container(height: 800,width: double.infinity,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text("Community",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                      Center(
                        child: Container(
                          height:650,
                          width: 350,
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(12),color: Colors.white),
                          child: SingleChildScrollView(
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                for(int i=0;i<com.length;i++)...[
                                  ListTile(
                                    title: Text(com[i]["name"],style:TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                                    leading: Image(image: AssetImage(com[i]["Ima"],),height: 20,width: 20,),

                                  ),
                                  i==com.length-1?Container():
                                  Divider(color: Colors.grey,),
                                ]

                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },);
            },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: age("Categories", true,false),
              ),
            ),
            ],
          ),
        ),
        Expanded(
          child: SizedBox(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index ) {

              return Padding(
                padding: const EdgeInsets.all(6),
                child: ListTile(

                  leading: Text("${index+1}",style: TextStyle(color: Colors.black,fontSize: 15),),
                  title: Row(
                    children: [
                      Image(image: AssetImage(list[index]["ima"],),height: 50,width: 50,fit: BoxFit.cover,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(list[index]["name"],style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
                            Text(list[index]["sub"],style: TextStyle(fontSize: 11,color: Colors.black,fontWeight: FontWeight.w500),),
                            SizedBox(width: 200,
                              child: Row(
                                children: [
                                  Text(list[index]["sub2"],style: TextStyle(fontSize: 11,color: Colors.black,fontWeight: FontWeight.w500),),
                                  Icon(Icons.star,color: Colors.black,size: 15,),
                                  Padding(padding: EdgeInsets.only(left: 15),
                                    child:  Text(list[index]["sub3"],style: TextStyle(fontSize: 1,color: Colors.black,fontWeight: FontWeight.w500),),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },),
          ),
        ),
      ],
    );
}
Widget banner1() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 310,
        width: 400,
        decoration: BoxDecoration(
          color: Color(0xff01ABFE),
          borderRadius: BorderRadius.circular(20),

        ),
        child:Stack(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image(image: AssetImage("assets/im3.png"),height: 150,width: 200,fit: BoxFit.cover,)),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Learn with Paw Patrol",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Engaging lessons,fun games & more ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    ClipRRect(borderRadius: BorderRadius.circular(15),
                        child: Image(image: AssetImage("assets/paw_patrol.jpg"),height: 60,width: 60,fit: BoxFit.cover,)),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Paw Patrol Academy",style: TextStyle(color: Colors.black,fontSize: 16),),
                            Text("Originator, Inc.",style: TextStyle(color: Colors.black,fontSize: 13),),
                            Row(
                              children: [
                                Text("4.4 ",style: TextStyle(color: Colors.black,fontSize: 13),),
                                Icon(Icons.star,size: 10,color: Colors.black38,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("3+ Reted for 3+ ",style: TextStyle(color: Colors.black,fontSize: 12),),
                                ),


                              ],
                            ),
                            Text("In-app purchases",style: TextStyle(color: Colors.black,fontSize: 13),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(onTap: () {},
                            child: Container(width: 70,height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(18)),
                                  color: Colors.white60,
                                ),
                                child: Center(child: Text("Install",style: TextStyle(fontSize: 15,color: Colors.black),)))),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topLeft:Radius.circular(20) ),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("Now available",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                  ),
                ))
          ],
        ),
      ),
    );
  }
Widget funkids(String s1,String s2,String s3,double s4,double s5,double s6,) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(width: 90, height: 130,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(12),
              child: Image(image: AssetImage(s1),
                height: s5,
                width: s5,
                fit: BoxFit.cover,)),
          Text(s2, style: TextStyle(color: Colors.black, fontSize: s4,),
            textAlign: TextAlign.start,),
          Row(
              children: [
                Text(s3, style: TextStyle(color: Colors.black, fontSize: s4),),
                Icon(Icons.star,color: Colors.black,size: 12,),
              ]
          ),


        ],
      ),
    ),
  );
}
Widget kids() {
  return SingleChildScrollView(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Image(image: AssetImage("assets/kids1.png",),height: 200,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
      ),
      Padding(padding: EdgeInsets.only(top: 20,left: 12,right: 12),
        child: Center(child:Text("Everything here is Teacher Approved",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center),),),
      Padding(
        padding: const EdgeInsets.only(top: 20,left: 12,right: 12),
        child: Center(
          child: GestureDetector(onTap:() {

          },
            child: Container(height: 50,width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue.shade900
              ),
              child: Center(child: Text("Learn more",style: TextStyle(color: Colors.white,fontSize: 18),)),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 12,right: 12),
        child: Text("Browse by age",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w400),),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20,left: 12,right: 12),
        child: Row(
          children: [
            age("Ages up to 5",false,false),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: age("Ages 6-8",false,false),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: age("Ages 9-12",false,false),
            ),

          ],
        ),
      ),
      banner1(),
      Padding(
        padding: const EdgeInsets.only(left: 12,right: 12),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text("New & updated",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,color: Colors.black
                ),),
            IconButton(onPressed: () {

            }, icon: Icon(Icons.arrow_forward,color: Colors.black,size: 20,))
          ],
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 12,right: 12),
          child: Row(
            children: [
              funkids("assets/Screatchjr.png", "Screatch jr", "4.3",11,70,13),
              funkids("assets/car_city_heros.jpeg", "Car city hero", "4.2",11,70,13),
              funkids("assets/coloringbook.jpg", "Color book", "4.0",11,70,13),
              funkids("assets/babycaredressup.jpg", "Baby care", "3.8",11,70,13),
              funkids("assets/paw_patrol.jpg", "Paw Patrol", "4.5",11,70,13),
            ],
          ),
        ),
      ),
      Stack(
        children: [
          Container(height: 230,width: MediaQuery.of(context).size.width,color: Color(0xffFDC301),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Spark imagenation",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.black),),
                          IconButton(onPressed: () {},
                              icon: Icon(Icons.arrow_forward,color: Colors.black,size: 20,))
                        ],
                      ),
                      Text("Creative apps for kids",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200,fontSize: 16),),
                      Padding(
                        padding: const EdgeInsets.only(left: 40,top: 40),
                        child: Opacity(child: Image.asset("assets/kids2.png",height: 117,width: 150,fit: BoxFit.contain,),opacity: 0.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Image.asset("assets/Screenshot 2023-10-03 090328.png",height: 150,width: 170,fit: BoxFit.cover,),
                  ),
                  funkids("assets/Screatchjr.png", "Screatch jr", "4.3",12,90,15),
                  funkids("assets/car_city_heros.jpeg", "Car city hero", "4.2",12,90,15),
                  funkids("assets/coloringbook.jpg", "Color book", "4.0",12,90,15),
                  funkids("assets/babycaredressup.jpg", "Baby care", "3.8",12,90,15),
                  funkids("assets/paw_patrol.jpg", "Paw Patrol", "4.5",12,90,15),

                ],
              ),
            ),
          )
        ],
      ),
        Padding(
          padding: const EdgeInsets.only(left: 12,right: 12,top: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Recommended for you",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,color: Colors.black
                ),),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.arrow_forward,color: Colors.black,size: 20,))
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12),
            child: Row(
              children: [
                funkids("assets/Screatchjr.png", "Screatch jr", "4.3",11,70,13),
                funkids("assets/car_city_heros.jpeg", "Car city hero", "4.2",11,70,13),
                funkids("assets/coloringbook.jpg", "Color book", "4.0",11,70,13),
                funkids("assets/babycaredressup.jpg", "Baby care", "3.8",11,70,13),
                funkids("assets/paw_patrol.jpg", "Paw Patrol", "4.5",11,70,13),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12,right: 12,),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Stylized games",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,color: Colors.black
                ),),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.arrow_forward,color: Colors.black,size: 20,))
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12),
            child: Row(
              children: [
                funkids("assets/Screatchjr.png", "Screatch jr", "4.3",11,70,13),
                funkids("assets/car_city_heros.jpeg", "Car city hero", "4.2",11,70,13),
                funkids("assets/coloringbook.jpg", "Color book", "4.0",11,70,13),
                funkids("assets/babycaredressup.jpg", "Baby care", "3.8",11,70,13),
                funkids("assets/paw_patrol.jpg", "Paw Patrol", "4.5",11,70,13),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
Widget age(String s,bool a,bool c) {
  return Container(
    decoration: BoxDecoration(
      borderRadius:BorderRadius.circular(12),
      border: Border.all(color: Colors.black,width: 1),
      color: c?Colors.blueAccent.shade100:Colors.white,

    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Row(
        children: [
          c? Icon(Icons.check,color: Colors.black,size: 18,):Container(),
          Text(s,style: TextStyle(color: Colors.black,fontSize: 15),),
         a? Icon(Icons.arrow_drop_down,color: Colors.black,size: 18,):Container(),
        ],
      )),
    ),
  );
}
Widget community() {
  return ListView.builder(
    itemCount: com.length,
    itemBuilder: (context, index) {
      return   Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
            title: Text(com[index]["name"],style: TextStyle(color: Colors.black,fontSize: 18),),
        leading: Image(image: AssetImage(com[index]['Ima']),height: 30,width: 30,fit: BoxFit.cover,)),
      );
    },
    shrinkWrap: true,


  );
}

}
class cilck extends ChangeNotifier{
  void button(int i)
  {
    currentInd=i;
    notifyListeners();
  }
}