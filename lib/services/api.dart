import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:state_api/datamodels/episode_item_model.dart';

class Api {
  // static const String _apiEndpoint = './state_api/';
  static const String _apiEndpoint = 'https://us-central1-thebasics-2f123.cloudfunctions.net/thebasics/';

  final dummyEpisodes = [
    EpisodeItemModel(
      title: 'Setup, Build and Deploy',
      duration: 14.07,
      imageUrl:
      // 'https://www.filledstacks.com/assets/static/32.81b85c1.ebb7a1a.jpg',
        'assets/images/img01'
    ),
    EpisodeItemModel(
        title: 'Adding a Responsive UI',
        duration: 18.54,
        imageUrl:
        // 'https://www.filledstacks.com/assets/static/033.81b85c1.ebdf16d.jpg'
        'assets/images/img02'
    ),
    EpisodeItemModel(
        title: 'Layout Templates',
        duration: 14.55,
        imageUrl:
        // 'https://www.filledstacks.com/assets/static/034.81b85c1.52d0785.jpg'
        'assets/images/img03'
    ),
    EpisodeItemModel(
        title: 'State Management and Api integration',
        duration: 14.55,
        imageUrl:
        // 'https://www.filledstacks.com/assets/static/034.81b85c1.52d0785.jpg'
        'assets/images/img04'
    ),
  ];


  Future<dynamic> getEpisodes() async {
    var response = await http.get('$_apiEndpoint/courseEpisodes' as Uri);

    if(response.statusCode == 200) {
      var episodes = (jsonDecode(response.body) as List)
          .map((episode) => EpisodeItemModel.fromJson(episode))
          .toList();
      return episodes;
    } else {
      // this is a DUMMY to let code running
      return dummyEpisodes;
    }
    // something wrong happened
    // return 'Could not fetch the episodes at this time';
  }
}