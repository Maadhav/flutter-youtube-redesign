import 'package:codedecoders/models/example_content.dart';
import 'package:codedecoders/views/youtube_card.dart';
import 'package:flutter/material.dart';


class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/Home_clean.png",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              showIcon(
                url: "https://s.ytimg.com/yts/img/trending/nav_icons/coverMusic_84BG_320x320-vflI7Luak.png",
                heading: "Music"
              ),
              showIcon(
                url: "https://s.ytimg.com/yts/img/trending/nav_icons/coverGaming_84BG_320x320-vflr0EUXA.png",
                heading: "Gaming"
              ),
              showIcon(
                url: "https://s.ytimg.com/yts/img/trending/nav_icons/coverNews_84BG_320x320-vflYn8aEE.png",
                heading: "News"
              ),
              showIcon(
                url: "https://s.ytimg.com/yts/img/trending/nav_icons/coverMovies_84BG_80x80-vfloc3mzb.png",
                heading: "Movies"
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 120),
          child: ListView.builder(
            cacheExtent: MediaQuery.of(context).size.height,
            itemCount: ExampleContent.exampleVideos.length,
            itemBuilder: (context, index){
              return InkResponse(
                onTap: (){},
                child: YoutubeCard(
                  content: ExampleContent.exampleVideos[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
  showIcon({String url,String heading}){
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(url,
          height: 80,
          width: 80,
          ),
        ),
        Text("Movies")
      ],
    );
  }
}