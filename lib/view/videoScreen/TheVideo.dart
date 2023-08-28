// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class TheVideo extends StatefulWidget {
//   TheVideo({Key? key}) : super(key: key);

//   @override
//   State<TheVideo> createState() => _TheVideoState();
// }

// class _TheVideoState extends State<TheVideo> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();

//     // _controller = VideoPlayerController.networkUrl(
//     //   Uri.parse('https://www.youtube.com/watch?v=OtXCGqlzrpM'),
//     // )..initialize().then((_) {
//     //     setState(() {});
//     //   });
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           if (_controller.value.isPlaying) {
//             _controller.pause();
//           } else {
//             _controller.play();
//           }
//         });
//       },
//       child: Center(
//         child: _controller.value.isInitialized
//             ? AspectRatio(
//                 aspectRatio: _controller.value.aspectRatio,
//                 child: VideoPlayer(_controller),
//               )
//             : CircularProgressIndicator(),
//       ),
//     );
//   }
// }
