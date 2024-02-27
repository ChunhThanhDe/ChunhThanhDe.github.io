import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:profile/utils/constants.dart';
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

  List<Audio> audio = [
    Audio("assets/music/KoheiTanaka_BeyondtheHappyEnd.mp3"),
    Audio("assets/music/KoheiTanaka_FleetingFragmentofMemory.mp3"),
    Audio("assets/music/KoheiTanaka_Ifyouarewithyou.mp3"),
    Audio("assets/music/KoheiTanaka_Smallguide.mp3"),
  ];

  int currentPlay = 0;

  List<String> name = [
    "BeyondtheHappyEnd",
    "FleetingFragmentofMemory",
    "Ifyouarewithyou",
    "Smallguide",
  ];

  //audio
  bool isPlaying = false;
  final AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  // timer animation
  Timer? timer_reverse;

  void animInit() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    animation = Tween(begin: const Offset(-0.82, 0), end: Offset(0.02, 0)).animate(controller);
    animationBack = Tween(begin: Offset.zero, end: Offset(-0.4, 0)).animate(controller);
  }

  void musicPlayerInit() {
    assetsAudioPlayer.open(Playlist(audios: audio), loopMode: LoopMode.playlist);
  }

  void songOperator(int num) {
    //0 :pause or play
    //1 :pre song
    //2 :next song
    if (assetsAudioPlayer.playlist == null) {
      musicPlayerInit();
      currentPlay = 0;
      debugPrint("init music");
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
            currentPlay--;
          }
          break;
        case 2:
          {
            assetsAudioPlayer.next();
            if (currentPlay < name.length - 1) {
              currentPlay++;
            } else {
              currentPlay = 0;
            }
          }
          break;
        default:
          break;
      }
    }
  }

  Row returnButtonListDesktop() {
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

  Row returnButtonListMobile() {
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
        Align(
          alignment: Alignment.center,
          child: Icon(Icons.queue_music_outlined),
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

    if (timer_reverse != null) {
      timer_reverse!.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return mobileContainerMusic();
        }
        return desktopContainerMusic();
      },
    );
  }

  Widget mobileContainerMusic() {
    return SlideTransition(
      position: animation,
      child: InkWell(
        onTap: () {
          if (controller.isDismissed) {
            _count++;
            if (_count == 1) {
              controller.forward();
              _count = 0;
            }
          } else if (controller.isAnimating) {
            controller.forward();
          }

          if (timer_reverse != null) {
            timer_reverse!.cancel();
          }

          timer_reverse = Timer.periodic(const Duration(milliseconds: 6000), (t) {
            controller.reverse();
            t.cancel();
          });
        },
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: BlurGlass(
          marginValue: 2.0,
          paddingValue: 3.0,
          child: returnButtonListMobile(),
        ),
      ),
    );
  }

  Widget desktopContainerMusic() {
    return SlideTransition(
      position: animation,
      child: InkWell(
        onTap: () {
          if (controller.isDismissed) {
            _count++;
            if (_count == 1) {
              controller.forward();
              _count = 0;
            }
          } else if (controller.isAnimating) {
            controller.forward();
          }

          if (timer_reverse != null) {
            timer_reverse!.cancel();
          }

          timer_reverse = Timer.periodic(const Duration(milliseconds: 6000), (t) {
            controller.reverse();
            t.cancel();
          });
        },
        onHover: (isHovered) {
          if (isHovered) {
            if (controller.isDismissed) {
              Timer.periodic(const Duration(milliseconds: 1000), (t) {
                _count++;
                if (_count == 1) {
                  controller.forward();
                  _count = 0;
                  t.cancel();
                }
              });
            }
            if (controller.isAnimating) {
              controller.forward();
            }
          } else {
            controller.reverse();
          }
        },
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Container(
          height: 120,
          width: 250,
          decoration: BoxDecoration(
            // color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage('assets/play_music.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    name[currentPlay],
                    style: kMiniTitleMusicStyleWhite,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: SlideTransition(
                    position: animationBack,
                    child: BlurGlass(
                      marginValue: 3.0,
                      paddingValue: 4.0,
                      child: returnButtonListDesktop(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
