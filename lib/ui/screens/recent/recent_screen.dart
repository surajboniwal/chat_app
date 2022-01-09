import 'package:car_store/ui/screens/recent/temp_data/data.dart';
import 'package:car_store/ui/screens/recent/widgets/recent_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentScreen extends StatelessWidget {
  const RecentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) => ListView.builder(
          itemCount: Recent.list.length,
          itemBuilder: (context, index) => RecentTile(
            recent: Recent.list[index],
          ),
        ),
      ),
    );
  }
}
