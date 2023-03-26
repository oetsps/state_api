import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:state_api/datamodels/season_details_model.dart';
import 'package:state_api/viewmodels/episodes_view_model.dart';
import 'package:state_api/widgets/episodes_list/episodes_list.dart';
import 'package:state_api/widgets/season_details/season_details.dart';

class EpisodesView extends StatelessWidget {
  const EpisodesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => EpisodesViewModel(),
      onViewModelReady: (model) => model.getEpisodes(),
      builder: (context, model, child) => SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const SizedBox(
            height: 100,
          ),
          SeasonDetails(
            SeasonDetailsModel(
              title: 'SEASON 1',
              description:
                  'This season covers the absolute basics of Flutter Web Dev to get us up and running with a basic web app.',
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          model.episodes == null
              ? CircularProgressIndicator()
              : EpisodesList(
                  episodes: model.episodes,
              ),
        ],
      )),
    );
  }
}
