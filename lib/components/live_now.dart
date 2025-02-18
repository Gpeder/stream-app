import 'package:flutter/material.dart';
import 'package:stream_app/theme/cor.dart';
import 'package:stream_app/theme/text.dart';

class LiveNow extends StatefulWidget {
  const LiveNow({super.key});

  @override
  State<LiveNow> createState() => _LiveNowState();
}

class _LiveNowState extends State<LiveNow> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 2.2;
    return SizedBox(
      height: 250,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => _LiveNowItem(width: width, image: 'https://images.pexels.com/photos/442576/pexels-photo-442576.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
          itemCount: 10),
    );
  }
}

class _LiveNowItem extends StatelessWidget {
  final String image;
  final double width;
  const _LiveNowItem({required this.width, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(2),
              image: DecorationImage(
                image:NetworkImage(image),
                fit: BoxFit.cover,
                )
              ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
        Positioned(child: 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 4, backgroundColor: AppColors.primary),
                  SizedBox(width: 5),
                  Text('Stream Name', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                ],
              ),
          
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Text('1.5k views', style: TextStyle(color: AppColors.black, fontSize: 12),),
                  ),
                  CustomText(text: 'Titulo', color: AppColors.white, fontSize: 12, letter: null, fontWeight: FontWeight.bold),
                  SizedBox(height: 5),
                  CustomText(text: 'nome do game', color: AppColors.white, fontSize: 12, letter: null),
                ],
              )
            ],
          ),
        ))
      ],
    );
  }
}
