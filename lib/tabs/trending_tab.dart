import 'package:flutter/cupertino.dart';

import '../components/card.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ArtistCard(
      imagePath: 'lib/assets/images/3.jpg',
    );
  }
}
