import 'package:flutter/material.dart';
import 'package:stream_app/components/live_now.dart';
import 'package:stream_app/components/popular_strem.dart';
import 'package:stream_app/widgets/app_bar.dart';
import 'package:stream_app/widgets/drawer_bar.dart';
import 'package:stream_app/widgets/filter.dart';
import 'package:stream_app/widgets/title_.dart';
import 'package:stream_app/widgets/title_categorie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerBar(),
      appBar: CustomAppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          CustomTitle(),
          Filter(filtros: [
            'E-sport',
            'Channels',
            'Categorries',
            'Food',
          ], 
        onChange: (List<String> selectedValue) {print(selectedValue);}),
      SizedBox(height: 20),
        TitleCategorie(title: 'Live now'),
      SizedBox(height: 16),
        LiveNow(),
        SizedBox(height: 16),
        TitleCategorie(title: 'Popular streamers'),
        SizedBox(height: 16),
        PopularStrem(),
        SizedBox(height: 16),
        TitleCategorie(title: 'Top Categories'),
        ],
      ),
    );
  }
}

