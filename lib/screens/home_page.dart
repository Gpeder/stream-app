import 'package:flutter/material.dart';
import 'package:stream_app/components/live_now.dart';
import 'package:stream_app/components/popular_strem.dart';
import 'package:stream_app/widgets/app_bar.dart';
import 'package:stream_app/widgets/drawer_bar.dart';
import 'package:stream_app/widgets/filter.dart';
import 'package:stream_app/widgets/title_.dart';
import 'package:stream_app/widgets/title_categorie.dart';
import 'package:stream_app/widgets/transparent_bottombar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: DrawerBar(),
      appBar: CustomAppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          CustomTitle(),
          Filter(
              filtros: [
                'E-sport',
                'Channels',
                'Categorries',
                'Food',
              ],
              onChange: (List<String> selectedValue) {
                print(selectedValue);
              }),
          const SizedBox(height: 20),
          const TitleCategorie(title: 'Live now'),
          const SizedBox(height: 16),
          LiveNow(),
          const SizedBox(height: 16),
          const TitleCategorie(title: 'Popular streamers'),
          const SizedBox(height: 16),
          PopularStrem(),
          const SizedBox(height: 16),
          const TitleCategorie(title: 'Top Categories'),
          const SizedBox(height: 16),
          LiveNow(),
          const SizedBox(height: 16),
        ],
      ),
      bottomNavigationBar:  TransparentBottomBar(),
    );
  }
}