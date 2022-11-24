import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:resep_makanan/models/resep.dart';
// import 'package:resep_makanan/models/resep_api.dart';
import 'package:resep_makanan/views/widgets/resep_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text("Resep Kue")
          ],
        ),
      ),
      body: ListView(
        children: [
          ResepCard(
            title: 'Kue Bolu',
            rating: '4.9',
            coockTime: '30 min',
            thumbnailUrl:
                'https://thumb.intipseleb.com/media/frontend/thumbs3/2022/03/17/6232d5479c7a5-resep-kue-bolu_1265_711.jpg',
          ),
          ResepCard(
            title: 'Kue Putu',
            rating: '4.9',
            coockTime: '30 min',
            thumbnailUrl:
                'https://www.resepkekinian.com/wp-content/uploads/2021/04/Kue-Putu.jpg',
          ),
          ResepCard(
            title: 'Bolu Pisang',
            rating: '4.9',
            coockTime: '30 min',
            thumbnailUrl:
                'https://cdn-brilio-net.akamaized.net/webp/news/2022/04/27/228381/1733257-1000xauto-11-resep-kue-basah-dari-tepung-terigu.jpg',
          ),
          ResepCard(
            title: 'Kue Lumpur Labu Kuning',
            rating: '4.9',
            coockTime: '30 min',
            thumbnailUrl:
                'https://cdn-brilio-net.akamaized.net/webp/news/2022/04/27/228381/1733247-1000xauto-11-resep-kue-basah-dari-tepung-terigu.jpg',
          ),
          ResepCard(
            title: 'Puding Cake Mangga',
            rating: '4.9',
            coockTime: '30 min',
            thumbnailUrl:
                'https://cdn-brilio-net.akamaized.net/webp/news/2022/04/27/228381/1733246-1000xauto-11-resep-kue-basah-dari-tepung-terigu.jpg',
          ),
          ResepCard(
            title: 'Nagasari Pisang Gula Merah',
            rating: '4.9',
            coockTime: '30 min',
            thumbnailUrl:
                'https://cdn-brilio-net.akamaized.net/webp/news/2022/04/27/228381/1733248-1000xauto-11-resep-kue-basah-dari-tepung-terigu.jpg',
          ),
          ResepCard(
            title: 'Donat Kentang',
            rating: '4.9',
            coockTime: '30 min',
            thumbnailUrl:
                'https://cdn-brilio-net.akamaized.net/webp/news/2022/04/27/228381/1733249-1000xauto-11-resep-kue-basah-dari-tepung-terigu.jpg',
          ),
          ResepCard(
            title: 'Bolu Kukus',
            rating: '4.9',
            coockTime: '30 min',
            thumbnailUrl:
                'https://cdn-brilio-net.akamaized.net/webp/news/2022/04/27/228381/1733251-1000xauto-11-resep-kue-basah-dari-tepung-terigu.jpg',
          ),
          ResepCard(
            title: 'Bolu Macan',
            rating: '4.9',
            coockTime: '30 min',
            thumbnailUrl:
                'https://cdn-brilio-net.akamaized.net/webp/news/2022/04/27/228381/1733252-1000xauto-11-resep-kue-basah-dari-tepung-terigu.jpg',
          ),
          ResepCard(
            title: 'Cake Steam Red Velvet',
            rating: '4.9',
            coockTime: '30 min',
            thumbnailUrl:
                'https://cdn-brilio-net.akamaized.net/webp/news/2022/04/27/228381/1733254-1000xauto-11-resep-kue-basah-dari-tepung-terigu.jpg',
          ),
        ],
      ),
    );
  }
}
