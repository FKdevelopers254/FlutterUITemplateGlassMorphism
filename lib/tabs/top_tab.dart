import 'package:flutter/cupertino.dart';

import '../components/card.dart';

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ArtistCard(
      imagePath: 'lib/assets/images/2.jpg',
    );
  }
}
