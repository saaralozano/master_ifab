
import 'package:flutter/material.dart';
import 'package:master_ifab/config/data/local_video_post.dart';
import 'package:master_ifab/config/entities/video_post.dart';
import 'package:master_ifab/presentation/widgets/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key,
    required this.videos,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {

        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            // TODO: Video + gradiente

            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost)
            )
          ],
        );
      },
    );
  }
}