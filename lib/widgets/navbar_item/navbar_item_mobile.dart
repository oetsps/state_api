import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:state_api/datamodels/navbar_item_model.dart';

class NavBarItemMobile extends ViewModelWidget<NavBarItemModel> {
  const NavBarItemMobile({super.key});


  @override
  Widget build(BuildContext context, NavBarItemModel viewModel) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(viewModel.iconData),
          const SizedBox(
            width: 30,
          ),
          Text(
            viewModel.title,
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
