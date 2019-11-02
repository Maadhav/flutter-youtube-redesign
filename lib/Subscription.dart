import 'package:codedecoders/models/example_content.dart';
import 'package:codedecoders/views/youtube_card.dart';
import 'package:flutter/material.dart';


class Subscription extends StatelessWidget {
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
          alignment: Alignment.topCenter,
          transform: Matrix4.translationValues(0, -210, 0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ExampleContent.exampleVideos.length,
            itemBuilder: (context,index){
              return Padding(
                padding: EdgeInsets.all(8),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      ExampleContent.exampleVideos[index].channelThumbnailUrl,
                      width: 70,
                      height: 70,
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 100),
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
}