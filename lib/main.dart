import 'package:flutter/material.dart';
import 'package:my_youtube_app/my_icons.dart';
import 'my_icons.dart';
import 'video_open.dart';
import 'video_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: 25, left: 10, right: 10, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          MyIcons.youtube,
                          size: 30,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Youtube", style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(MyIcons.cast, color: Colors.white,),
                        ),
                        IconButton(
                          icon: Icon(MyIcons.bell, color: Colors.white,),
                        ),
                        IconButton(
                          icon: Icon(MyIcons.search, color: Colors.white,),
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage("https://yt3.ggpht.com/a-/AOh14GjN4zln0_csH_6MQPDPw9zymWh-fIBWjE0u6w=s68-c-k-c0x00ffffff-no-rj-mo"),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                      children: [
                        for (int i=0; i<videos.length;i++)
                        video_preview(context, videos[i],i)
                      ]
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  singleIconButton(MyIcons.home, "Home", 20),
                  singleIconButton(MyIcons.explore, "Esplora", 20),
                  Container(
                      child:
                      Center(
                        child: IconButton(
                          icon: Icon(
                            MyIcons.add_circle_outline, color: Colors.white70,
                            size: 40,),
                        ),
                      )
                  ),
                  singleIconButton(MyIcons.subscriptions, "Iscrizioni", 20),
                  singleIconButton(MyIcons.video_library, "Raccolta", 20)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget singleIconButton(IconData  icon, String testo, double size){
  return Container(
    margin: EdgeInsets.only(bottom: 5),
    child: Column(
      children: [
        IconButton(
          icon: Icon(icon, color: Colors.white,size: size,),
        ),
        testo!=""?Text(testo, style: TextStyle(color: Colors.white),)
            : Container()
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
    )
  );
}

Widget video_preview(BuildContext context, video vid, int index){
  return Container(
    child: Column(
      children: [
        Stack(
          children: [
            GestureDetector(child: Image.network(vid.copertina_url),
              onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VideoOpen(index)));
              }
              ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                color: Colors.black87,
                child: Text(vid.minuti, style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(vid.avatar_url),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Text(vid.titolo, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
                      Container(
                        child: Row(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(vid.account_name, style: TextStyle(color: Colors.white70),)),
                            Text(vid.visual,style: TextStyle(color: Colors.white70),),
                            Text(vid.data,style: TextStyle(color: Colors.white70),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(MyIcons.more_vert, color: Colors.white,),
              )
            ],
          ),
        ),
        Divider(),
      ],
    ),
  );
}
