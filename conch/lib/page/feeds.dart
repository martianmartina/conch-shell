import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

AssetsAudioPlayer player = AssetsAudioPlayer();

const songs = ['abc.m4a', 'face.m4a', 'hallow.m4a', 'remix.m4a'];
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

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More vibe feeds'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      _toggle(1);
                    },
                    icon: const Icon(Icons.play_arrow)),
                const SizedBox(
                  width: 2,
                ),
                const Text('Can\'t feel my face - The weekend'),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      _toggle(2);
                    },
                    icon: const Icon(Icons.play_arrow)),
                const SizedBox(
                  width: 2,
                ),
                const Text('Halloween - Jon Bellion'),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      _toggle(3);
                    },
                    icon: const Icon(Icons.play_arrow)),
                const SizedBox(
                  width: 2,
                ),
                const Text('Remix Spooky Skeleton  - Anam'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
