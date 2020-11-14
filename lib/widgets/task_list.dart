import 'package:flutter/material.dart';

import 'package:todoey_fliutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding:
            EdgeInsets.only(top: 40.0, bottom: 10.0, left: 30.0, right: 30.0),
        children: [
          TaskTile(),
          TaskTile(),
          TaskTile(),
          TaskTile(),
        ]);
  }
}
