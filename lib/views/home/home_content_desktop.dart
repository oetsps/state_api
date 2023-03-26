import 'package:flutter/material.dart';
import 'package:state_api/widgets/call_to_action/call_to_action.dart';
import 'package:state_api/widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const CourseDetails(),
        Expanded(
          child: Center(
            child: CallToAction('Join Course'),
          ),
        )
      ],
    );
  }
}
