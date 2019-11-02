import 'package:codedecoders/models/example_content.dart';
import 'package:codedecoders/views/youtube_card.dart';
import 'package:flutter/material.dart';


class YoutubeBody extends StatelessWidget {
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
        ListView.builder(
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
      ],
    );
  }
}