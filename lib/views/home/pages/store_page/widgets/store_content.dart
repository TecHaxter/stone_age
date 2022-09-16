import 'package:flutter/material.dart';
import 'package:stone_age/data/constants/constants.dart';
import 'package:stone_age/views/common/common.dart';
import 'package:stone_age/views/home/pages/store_page/widgets/_store_content_card.dart';

class StoreContent extends StatelessWidget {
  const StoreContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: storeItems.length,
      itemBuilder: (context, index) => StoreContentCard(
        item: storeItems[index],
      ),
      separatorBuilder: (_, __) => sizedBoxWithHeight(8),
    );
  }
}
