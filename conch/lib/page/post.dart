import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

import 'feeds.dart';

AssetsAudioPlayer player = AssetsAudioPlayer();

const songs = ['abc.m4a', '.m4a'];
bool isAnimated = false;

void _toggle(pos) {
  if (!isAnimated) {
    player.open(Audio('/assets/sound/' + songs[pos]));
    isAnimated = true;
  } else {
    player.pause();
    isAnimated = false;
  }
}

class Post extends StatelessWidget {
  const Post({Key? key, required this.avar, required this.image})
      : super(key: key);

  final String image;
  final String avar;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/head.JPG'),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text('@ Cambridge, USA 18:45 \n # Sunset'),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      _toggle(0);
                    },
                    icon: const Icon(Icons.play_arrow)),
                const SizedBox(
                  width: 2,
                ),
                const Text('GetAway Car - Taylor Swift'),
                //const Spacer(),
                //IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
              ],
            ),
          ),
          Image.asset(
            image,
            //'assets/images/sunset.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const FittedBox(
                        fit: BoxFit.scaleDown,
                        child:
                            //Icon(Icons.my_library_music_sharp),
                            Text(
                          " Ridin' in a getaway car\n There were sirens in the beat of your heart~",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondRoute()),
                          );
                        },
                        icon: const Icon(
                          Icons.queue_music,
                          size: 24,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondRoute()),
                          );
                        },
                        icon: const Icon(
                          Icons.add_link_rounded,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //RichText(text: TextSpan(z))

          const Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class Post2 extends StatelessWidget {
  const Post2({Key? key, required this.avar, required this.image})
      : super(key: key);

  final String image;
  final String avar;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/drunk.png'),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text('@ Davis, USA 20:45 \n # NightClub'),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      _toggle(2);
                    },
                    icon: const Icon(Icons.play_arrow)),
                const SizedBox(
                  width: 2,
                ),
                const Text('Spooky Scary Skeletons - Andrew Gold'),
                //const Spacer(),
                //IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
              ],
            ),
          ),
          Image.asset(
            image,
            //'assets/images/sunset.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const FittedBox(
                        fit: BoxFit.scaleDown,
                        child:
                            //Icon(Icons.my_library_music_sharp),
                            Text(
                          " ~ Shrieking skulls will shock your soul ~",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondRoute()),
                          );
                        },
                        icon: const Icon(
                          Icons.queue_music,
                          size: 24,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondRoute()),
                          );
                        },
                        icon: const Icon(
                          Icons.add_link_rounded,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //RichText(text: TextSpan(z))

          const Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
