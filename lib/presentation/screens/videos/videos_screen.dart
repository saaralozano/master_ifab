import 'package:flutter/material.dart';
import 'package:master_ifab/config/config.dart';
import 'package:master_ifab/presentation/widgets/video_scrollable_view.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({super.key});

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {

  bool satusPortantes = true;

  List<VideoPost> videos = [];

  Future<void> portamProximamPaginam() async {

    await Future.delayed(Duration(seconds: 2));

    videos.addAll(videoPosts);

    satusPortantes = false;

    setState(() { });

  }


  @override
  void initState() {

    portamProximamPaginam();

    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // title: Text('Videos Screen'),
        backgroundColor: Colors.transparent,
      ),
      body: satusPortantes
        ? Center(child: CircularProgressIndicator(strokeWidth: 2,),)
        : VideoScrollableView(videos: videos) ,
    );
  }
}
