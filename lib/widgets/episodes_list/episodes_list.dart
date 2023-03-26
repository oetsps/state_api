import 'package:flutter/material.dart';
import 'package:state_api/datamodels/episode_item_model.dart';

import 'episode_item.dart';

class EpisodesList extends StatelessWidget {
  final List<EpisodeItemModel> episodes;

  const EpisodesList({super.key, required this.episodes});
  
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: <Widget>[
        ...episodes.map(
          (episode) => EpisodeItem(episode),
        )
      ],
    );
  }
}
