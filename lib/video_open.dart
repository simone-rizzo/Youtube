import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_youtube_app/my_icons.dart';
import 'package:my_youtube_app/video.dart';
import 'video_list.dart';
import 'main.dart';

class VideoOpen extends StatefulWidget {
  int index;
  VideoOpen(this.index);
  @override
  _VideoOpenState createState() => _VideoOpenState();
}

class _VideoOpenState extends State<VideoOpen> {
  bool cliccato = false;
  bool liked=false;
  bool dontlike=false;
  @override
  Widget build(BuildContext context) {
    video vid = videos[widget.index];

    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Container(
          color: Colors.black87,
          child: SingleChildScrollView(
            child: Column(
              children: [
                VideoApp(vid.url),
                Container(
                  padding: EdgeInsets.only(
                      right: 10, left: 20, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Text(vid.titolo, style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          MyIcons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10, left: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(vid.visual,
                        style: TextStyle(color: Colors.white),),
                      SizedBox(
                        width: 20,
                      ),
                      Text(vid.data, style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(child: singleIconButton(!liked?MyIcons.thumbs_up:MyIcons.thumbs_up_alt, vid.likes.toString(), 20),
                    onTap: (){
                      setState(() {
                        liked=!liked;
                        if(liked)
                          vid.likes=vid.likes+1;
                        else
                          vid.likes=vid.likes-1;
                      });
                    },),
                    GestureDetector(child: singleIconButton(!dontlike?MyIcons.thumbs_down:MyIcons.thumbs_down_alt, vid.dislikes.toString(), 20),
                      onTap: (){
                        setState(() {
                          dontlike=!dontlike;
                          if(dontlike)
                            vid.dislikes=vid.dislikes+1;
                          else
                            vid.dislikes=vid.dislikes-1;
                        });
                      },),
                    singleIconButton(MyIcons.share, "Condividi", 20),
                    singleIconButton(MyIcons.download, "Scarica", 20),
                    singleIconButton(MyIcons.add_to_photos, "Salva", 20)
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(vid.avatar_url),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(vid.account_name, style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),),
                                  Text(vid.iscritti, style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w500),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      FlatButton(
                        child: Text("ISCRIVITI",
                          style: TextStyle(color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child: Column(
                    children: [
                      Row(
                          children: [
                            Text("Commenti", style: TextStyle(color: Colors
                                .white70),),
                            SizedBox(width: 10,),
                            Text("1277", style: TextStyle(color: Colors.white70),)
                          ]),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage("https://yt3.ggpht.com/a-/AOh14GjN4zln0_csH_6MQPDPw9zymWh-fIBWjE0u6w=s68-c-k-c0x00ffffff-no-rj-mo"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.grey),
                                  hintText: 'Aggiungi un commento publico...'
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                for(int i=0;i<videos.length;i++) //consigliati
                  i!=widget.index?video_preview(context,videos[i],i):Container()
                //aggiungere lista di altri video
              ],
            ),
          ),
        ),
      ),
    );
  }
}
