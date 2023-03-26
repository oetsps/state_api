import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:state_api/datamodels/season_details_model.dart';
import 'package:state_api/styles/text_styles.dart';

class SeasonDetailsMobile extends ViewModelWidget<SeasonDetailsModel> {
  const SeasonDetailsMobile({super.key});


  @override
  Widget build(BuildContext context, SeasonDetailsModel viewModel) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Column(
        children: <Widget>[
          Text(
            viewModel.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            viewModel.description,
            style: descriptionTextStyle(sizingInformation.deviceScreenType),
          ),
        ],
      ),
    );
  }
}
