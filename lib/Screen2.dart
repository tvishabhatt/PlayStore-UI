import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Screen2 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Screen2State();
  }

}
int currentindex=0;
List a=["","",App(),"",""];
class Screen2State extends State<Screen2>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoTabScaffold(
      backgroundColor: Colors.black,
    tabBar: CupertinoTabBar(

        backgroundColor: Color(0xff010102),
        items: [
      BottomNavigationBarItem(label: "Today",

          icon:Consumer(
        builder: (context, cuttent , child) {
          return currentindex==0?Icon(CupertinoIcons.today,color: Colors.blue.shade800,):Icon(CupertinoIcons.today,color: Colors.grey,);
        },
      ) ),
      BottomNavigationBarItem(label: "Games",
        icon: Consumer(
        builder: (context, cuttent , child) {
          return  currentindex==1?Icon(CupertinoIcons.rocket_fill,color: Colors.blue.shade800,):Icon(CupertinoIcons.rocket_fill,color: Colors.grey,);
        },
      ),),
      BottomNavigationBarItem(label: "Apps",
        icon: Consumer(
        builder: (context, cuttent , child) {
          return currentindex==2?Icon(CupertinoIcons.layers_alt_fill,color: Colors.blue.shade800,):Icon(CupertinoIcons.layers_alt_fill,color: Colors.grey,);
        },
      ), ),
      BottomNavigationBarItem(label: "Arcade",
        icon: Consumer(
        builder: (context, cuttent , child) {
          return  currentindex==3?Icon(CupertinoIcons.map_pin_ellipse,color: Colors.blue.shade800,):Icon(CupertinoIcons.map_pin_ellipse,color: Colors.grey,);
        }
      ),),
      BottomNavigationBarItem(label: "Search",
        icon: Consumer(
        builder: (context, cuttent , child) {
          return  currentindex==4?Icon(CupertinoIcons.search,color: Colors.blue.shade800,):Icon(CupertinoIcons.search,color: Colors.grey,);
        },
      ),),
    ],onTap: (value) {
  cuttent().abc(value);
}
), tabBuilder: (context, i) => CupertinoPageScaffold(
      child: Center(child:a[i]),),);
  }



}
class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }

}
class AppState extends State<App>{

  @override
  Widget build(BuildContext context) {
    PageController _pageController=PageController(initialPage: 0,keepPage: true);
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff010102),
      body: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            automaticallyImplyLeading: false,
            automaticallyImplyTitle: true,
            backgroundColor:Color(0xff010102),

            trailing: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
                child: Icon(CupertinoIcons.person_alt_circle,color: Colors.blue.shade800,size: 30,)),
            largeTitle:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('App',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            ), ),

          SliverFillRemaining(
            child: SingleChildScrollView(
              child: Column(
                children: [
                 Container(height: 350,
                child:PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  children: [
                    fun("GET FIT", "adidas Runnig - Run Tracker", "Choose your training plan", "assets/run.jpg"),
                    fun("GET FIT", "adidas Runnig - Run Tracker", "Choose your training plan", "assets/run.jpg"),
                    fun("GET FIT", "adidas Runnig - Run Tracker", "Choose your training plan", "assets/run.jpg"),
                    fun("GET FIT", "adidas Runnig - Run Tracker", "Choose your training plan", "assets/run.jpg"),
                    fun("GET FIT", "adidas Runnig - Run Tracker", "Choose your training plan", "assets/run.jpg"),
                    fun("GET FIT", "adidas Runnig - Run Tracker", "Choose your training plan", "assets/run.jpg"),

                  ],
                ),
              ),
                 Divider(color: Colors.grey.shade700,indent: 12,endIndent: 12,),
                 Padding(
                   padding: const EdgeInsets.all(12),
                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Trending Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                       TextButton(onPressed: () {}, child: Text("See All",style: TextStyle(color: Colors.blue.shade800),))
                     ],
                   ),
                 ) ,
                 Container(height: 250,
                    child:PageView(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      children: [
                        fun2(),
                        fun2(),
                        fun2(),
                        fun2(),
                        fun2(),
                        fun2(),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Find Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                        TextButton(onPressed: () {}, child: Text("See All",style: TextStyle(color: Colors.blue.shade800),))
                      ],
                    ),
                  ) ,
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          fun3(),
                          fun3(),
                          fun3(),
                          fun3(),
                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
          )


        ],
      ),
    );
  }
  
Widget fun(String a,String b,String c,String d) {
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(a,style: TextStyle(fontSize: 12,color: Colors.blue.shade800,fontWeight: FontWeight.w400),) ,
      Text(b,style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),) ,
      Text(c,style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w500),) ,
        ClipRRect(borderRadius: BorderRadius.circular(12),child: SizedBox(child: Image(image: AssetImage(d),height: 250,width: double.infinity,fit: BoxFit.cover,)))

      ],
    ),
  );
}
Widget button(String a){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.white12),
      onPressed: () {

      },

      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Text(a,style: TextStyle(color: Colors.blue.shade800,fontSize: 12),),
      ),
    ) ;
}
Widget fun2(){
    return Column(
      children: [
        ListTile(
          title: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Snapchat",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),),
          Text("Share the moment",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w400),),
      ],
    ),
          leading: ClipRRect(borderRadius: BorderRadius.circular(12),
              child: SizedBox(child: Image(image: AssetImage("assets/snapchat1.png"),height: 50,width: 50,fit: BoxFit.cover))),
          trailing:button("UPDATE"),),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListTile(
            title: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Picsart Photo Editor AI",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),),
                Text("image Generator,",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w400),),
                Text("Video Editing,",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w400),),
              ],
            ),
            leading: Image(image: AssetImage("assets/photo-editor-photofilter-photocollage-android-removebg-preview.png"),height: 50,width: 50,fit: BoxFit.cover,),
            trailing:IconButton(icon: Icon( CupertinoIcons.cloud_download,size: 30,color: Colors.blue.shade800),onPressed: () {},)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListTile(
              title: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Meesho - Online ",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),),
                  Text("Shooping App ",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),),
                  Text("shooping app,",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w400),),
                ],
              ),
              trailing:Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  button("GET"),
                  Text("In-app Purchase",style: TextStyle(fontSize: 5,color: Colors.grey,fontWeight: FontWeight.w400),),
                ],
              ),
              leading: Image(image: AssetImage("assets/Meesho_logo-removebg-preview.png"),height: 50,width: 50,fit: BoxFit.cover,),
             ),
        ),
      ],
    );
}
Widget fun3(){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SizedBox(height: 180,width: 130,
            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(borderRadius: BorderRadius.circular(12),child: SizedBox(child: Image(image: AssetImage("assets/snapchat1.png"),height: 100,width: 100,fit: BoxFit.cover,))),
                Text("Snapchat",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),textAlign: TextAlign.start,),
                Text("Share the moment",style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.w400),textAlign: TextAlign.start,),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SizedBox(height: 180,width: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(image: AssetImage("assets/photo-editor-photofilter-photocollage-android-removebg-preview.png"),height: 100,width: 100,fit: BoxFit.cover,),
                Text("Picsart Photo Editor AI",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),textAlign: TextAlign.start,),
                Text("image Generator,Video Editing,",style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.w400),textAlign: TextAlign.start,),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SizedBox(height: 180,width: 130,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(image: AssetImage("assets/Meesho_logo-removebg-preview.png"),height: 100,width: 100,fit: BoxFit.cover,),
                Text("Meesho - Online ",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),textAlign: TextAlign.start,),
                Text("Shooping App ",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w700),textAlign: TextAlign.start,),
              ],
            ),
          ),
        ),
      ],
    );
}
  
}
class cuttent extends ChangeNotifier
{
  void abc(int i)
  {
    currentindex=i;
    notifyListeners();
  }

}