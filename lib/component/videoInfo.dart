import 'package:flutter/material.dart';

class VideoInfo extends StatelessWidget {
  const VideoInfo({Key? key, required this.videoImageUrl, required this.videoTitle, required this.videoCount, required this.videoContent}) : super(key: key);

  final String videoImageUrl;
  final String videoTitle;
  final int videoCount;
  final String videoContent;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 12,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                width: 120,
                height: 120,
                child: Center(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.easeInOut,
                      height: 120,
                      width:  120,
                      child: Image.network(
                        videoImageUrl,
                        width: 120,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '主题: $videoTitle',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  '共 $videoCount 集',
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(height: 5),
                Text(
                  '描述:$videoContent',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    //   Row(
    //   children: [
    //     const SizedBox(width: 20),
    //     Card(
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadiusDirectional.circular(50),
    //       ),
    //       child: Opacity(
    //         opacity: 0.85,
    //         child: Image.network(
    //           videoImageUrl,
    //           width: 120,
    //           height: 100,
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     ),
    //     const SizedBox(width: 30),
    //     Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Text(
    //           '主题: $videoTitle',
    //           style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    //         ),
    //         SizedBox(height: 5),
    //         Text(
    //           '共 $videoCount 集',
    //           style: TextStyle(fontSize: 8),
    //         ),
    //         SizedBox(height: 5),
    //         Text(
    //           '描述:$videoContent',
    //           style: TextStyle(fontSize: 12),
    //         ),
    //       ],
    //     ),
    //   ],
    // );
  }
}
