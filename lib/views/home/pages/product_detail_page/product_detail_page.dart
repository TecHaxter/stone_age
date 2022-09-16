import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:stone_age/data/constants/constants.dart';
import 'package:stone_age/routes/route_arguments.dart';
import 'package:stone_age/routes/routes.dart';
import 'package:stone_age/utils/utils.dart';
import 'package:stone_age/views/common/common.dart';
import 'package:stone_age/views/home/pages/product_detail_page/widgets/widgets.dart';

class ProductDetailPage extends StatefulWidget {
  final ProductDetailPageArgs args;
  const ProductDetailPage({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int sizeNumber = 0;

  bool addedToCart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProductDetailCard(
                item: widget.args.item,
              ),
              sizedBoxWithHeight(32),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.selectSize,
                      style: AppTextStyles.text14w800Black.copyWith(
                        color: Colors.black54,
                      ),
                    ),
                    sizedBoxWithHeight(24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [0, 1, 2]
                          .mapIndexed(
                            (i, e) => ProductSizeCard(
                              isSelected: sizeNumber == i,
                              pricePerGram:
                                  (widget.args.item.bulkPrice?[i] ?? 160) /
                                      (widget.args.item.weight?[i] ?? 4),
                              totalPrice: widget.args.item.bulkPrice?[i] ?? 160,
                              index: i,
                              color100: widget.args.item.colors?[0] ??
                                  AppColors.green100,
                              color300: widget.args.item.colors?[2] ??
                                  AppColors.green300,
                              onTap: (p) {
                                sizeNumber = p;
                                setState(() {});
                              },
                            ),
                          )
                          .toList()
                          .cast(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(56.h),
                child: AppButtonSpaceBetween(
                  color300: addedToCart
                      ? AppColors.lightGray
                      : (widget.args.item.colors?[2] ?? AppColors.green300),
                  firstChild: Text(
                    addedToCart ? AppStrings.goToCart : AppStrings.addToCart,
                    style: addedToCart
                        ? AppTextStyles.text14w600Black
                        : AppTextStyles.text14w600White,
                  ),
                  secondChild: addedToCart
                      ? const Icon(LineIcons.shoppingCart)
                      : Text(
                          '${widget.args.item.bulkPrice?[sizeNumber] ?? 160}',
                          style: AppTextStyles.text14w600White,
                        ),
                  onTap: () {
                    if (!addedToCart) {
                      addedToCart = true;
                      setState(() {});
                      return;
                    }
                    print('shss');
                    AppEnvironment.navigator.pushNamed(
                      HomeRoute.cartScreen,
                      arguments: CartPageArgs(
                        items: storeItems.getRange(0, 3).toList(),
                        quantity: [2, 1, 3],
                        selectedWeightIndex: [2, 0, 1],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
