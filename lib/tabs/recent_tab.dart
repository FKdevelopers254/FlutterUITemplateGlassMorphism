import 'package:flutter/cupertino.dart';
import 'package:uitemplate/components/card.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ArtistCard(
      imagePath: 'lib/assets/images/1.jpg',
    );
  }
}
