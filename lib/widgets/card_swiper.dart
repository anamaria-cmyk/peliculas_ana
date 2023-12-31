import 'package:flutter/material.dart';

import 'package:card_swiper/card_swiper.dart';


class CardSwiper extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      child: Swiper(
        itemCount:10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.5,
        itemHeight: size.height * 0.4,
        itemBuilder: ( BuildContext context, int index) {

          return GestureDetector(
            onTap: () => Navigator.pushNamed(context,'details', arguments:'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: const FadeInImage(
                placeholder:  AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/300x400'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}