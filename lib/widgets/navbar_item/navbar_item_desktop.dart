import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:state_api/datamodels/navbar_item_model.dart';

class NavBarItemTabletDesktop extends ViewModelWidget<NavBarItemModel> {
  const NavBarItemTabletDesktop({super.key});

  
  @override
  Widget build(BuildContext context, NavBarItemModel viewModel) {
    return Text(
      viewModel.title,
      style: const TextStyle(fontSize: 18),
    );
  }
}
