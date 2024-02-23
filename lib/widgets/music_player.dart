import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'blurGlass.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({
    Key? key,
  }) : super(key: key);

  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> with TickerProviderStateMixin {
  //music widget anim
  late AnimationController controller;
  late Animation<Offset> animation;
  late Animation<Offset> animationBack;
  int _count = 0;

  //audio
  bool isPlaying = false;
  final AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  void animInit() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    animation = Tween(begin: const Offset(-0.82, 0), end: Offset(0.02, 0)).animate(controller);
    animationBack = Tween(begin:  Offset.zero, end: Offset(-0.4, 0)).animate(controller);
  }

  void musicPlayerInit() {
    assetsAudioPlayer.open(
        Playlist(audios: [
          Audio("assets/music/KoheiTanaka_BeyondtheHappyEnd.mp3"),
          Audio("assets/music/KoheiTanaka_FleetingFragmentofMemory.mp3"),
          Audio("assets/music/KoheiTanaka_Ifyouarewithyou.mp3"),
          Audio("assets/music/KoheiTanaka_Smallguide.mp3"),
        ]),
        loopMode: LoopMode.playlist //loop the full playlist
        );
  }

  void songOperator(int num) {
    //0 :pause or play
    //1 :pre song
    //2 :next song
    if (assetsAudioPlayer.playlist == null) {
      musicPlayerInit();
      debugPrint("init");
    } else {
      switch (num) {
        case 0:
          {
            assetsAudioPlayer.playOrPause();
          }
          break;
        case 1:
          {
            assetsAudioPlayer.previous();
          }
          break;
        case 2:
          {
            assetsAudioPlayer.next();
          }
          break;
        default:
          break;
      }
    }
  }

  Row returnButtonList() {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.skip_previous),
          color: Colors.white,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            songOperator(1);
            setState(() {
              isPlaying = true;
            });
          },
        ),
        IconButton(
          icon: const Icon(Icons.skip_next),
          color: Colors.white,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            songOperator(2);
            setState(() {
              isPlaying = true;
            });
          },
        ),
        IconButton(
          icon: Icon(isPlaying ? Icons.pause_circle : Icons.play_arrow),
          color: Colors.white,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            songOperator(0);
            setState(() {
              isPlaying = !isPlaying;
            });
          },
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    animInit();
  }

  @override
  void dispose() {
    controller.dispose();
    assetsAudioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        // return returnButtonList();
        return IconButton(
          icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
          color: Colors.white,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            songOperator(0);
            setState(() {
              isPlaying = !isPlaying;
            });
          },
        );
      }
      return MouseRegion(
        onEnter: (event) {
          if (controller.isDismissed) {
            Timer.periodic(const Duration(milliseconds: 1000), (t) {
              _count++;
              if (_count == 1) {
                controller.forward();
                _count = 0;
                t.cancel();
              }
            });
          } else if (controller.isAnimating) {
            controller.forward();
          }
        },
        onExit: (event) {
          controller.reverse();
        },
        cursor: SystemMouseCursors.click,
        opaque: false,
        child: SlideTransition(
          position: animation,
          child: Container(
            height: 150,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage('assets/play_music.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: SlideTransition(
                      position: animationBack,
                      child: BlurGlass(
                        marginValue: 3.0,
                        paddingValue: 4.0,
                        child: returnButtonList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
