import 'package:flutter/material.dart';
import 'package:stream_app/theme/cor.dart';
import 'package:stream_app/theme/text.dart';

class PopularStrem extends StatelessWidget {
  const PopularStrem({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 2.5;
    return SizedBox(
      height: 70,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => _PopularStremItem(width),
          itemCount: 10,
          ),
    );
  }
}

class _PopularStremItem extends StatelessWidget {
  final double width;
  const _PopularStremItem(this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      decoration: BoxDecoration(
        gradient: AppColors.customGradient,
        borderRadius: BorderRadius.circular(8),
      ),
      width: width,
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              CircleAvatar(radius: 20, backgroundColor: AppColors.primary,),
              CircleAvatar(radius: 22, backgroundImage: NetworkImage('https://images.unsplash.com/photo-1552058544-f2b08422138a?q=80&w=1899&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
              Positioned(
                top: 30,
                right: -2,
                child: Icon(Icons.check_circle, color: AppColors.primary, size: 16,)
                )
            ],
          ),
          SizedBox(width: 10),
          Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: 'User',color: AppColors.white, fontSize: 16, letter: null, fontWeight: FontWeight.bold,),
                  CustomText(text: '9,5M followers', color: AppColors.white, fontSize: 14, letter: null),
                ],
              )
        ],
      ),
    );
  }
}
