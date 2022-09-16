import 'package:flutter/material.dart';
import 'package:stone_age/utils/utils.dart';
import 'package:stone_age/views/common/common.dart';
import 'package:stone_age/views/home/pages/store_page/widgets/widgets.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const StoreNavBar(),
            StoreContent(),
            sizedBoxWithHeight(104),
          ],
        ),
      ),
    );
  }
}
