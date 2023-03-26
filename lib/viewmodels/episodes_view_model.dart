import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../datamodels/episode_item_model.dart';
import '../locator.dart';
import '../services/api.dart';

class EpisodesViewModel extends ChangeNotifier {

  final _api = locator<Api>();

  // List<EpisodeItemModel> _episodes;
  // below just dummy to let code running
  List<EpisodeItemModel> _episodes = [
    EpisodeItemModel(
        title: 'Setup, Build and Deploy',
        duration: 14.07,
        imageUrl:
        // 'https://www.filledstacks.com/assets/static/32.81b85c1.ebb7a1a.jpg',
        'assets/images/img01.png'
    ),
    EpisodeItemModel(
        title: 'Adding a Responsive UI',
        duration: 18.54,
        imageUrl:
        // 'https://www.filledstacks.com/assets/static/033.81b85c1.ebdf16d.jpg'
        'assets/images/img02.png'
    ),
    EpisodeItemModel(
        title: 'Layout Templates',
        duration: 14.55,
        imageUrl:
        // 'https://www.filledstacks.com/assets/static/034.81b85c1.52d0785.jpg'
        'assets/images/img03.png'
    ),
    EpisodeItemModel(
        title: 'State Management and Api integration',
        duration: 14.55,
        imageUrl:
        // 'https://www.filledstacks.com/assets/static/034.81b85c1.52d0785.jpg'
        'assets/images/img04.png'
    ),
  ];
  List<EpisodeItemModel> get episodes => _episodes;

  Future getEpisodes() async {
    var episodeResults = await _api.getEpisodes();

    if(episodeResults is String) {
      // show error
    } else {
      _episodes = episodeResults;
    }
    // just for code running purposes
    _episodes = episodeResults;
    // just for code running purposes

    notifyListeners();
  }
}