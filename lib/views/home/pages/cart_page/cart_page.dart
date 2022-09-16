import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:stone_age/data/constants/constants.dart';
import 'package:stone_age/data/models/models.dart';
import 'package:stone_age/routes/route_arguments.dart';
import 'package:stone_age/utils/utils.dart';
import 'package:stone_age/views/common/common.dart';
import 'package:stone_age/views/home/pages/cart_page/widgets/cart_item.dart';

class CartPage extends StatefulWidget {
  final CartPageArgs args;
  const CartPage({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int sizeNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              sizedBoxWithHeight(32),
              InkWell(
                onTap: () {
                  AppEnvironment.navigator.pop();
                },
                child: const Icon(
                  LineIcons.arrowLeft,
                ),
              ),
              sizedBoxWithHeight(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.cart,
                    style: AppTextStyles.text28w900Black,
                  ),
                  Column(
                    children: [
                      Text(
                        '${widget.args.items.length} items',
                        style: AppTextStyles.text12w500Black.copyWith(
                          color: AppColors.darkGray,
                        ),
                      ),
                      sizedBoxWithHeight(8),
                      Text(
                        '\$${widget.args.items.mapIndexed((i, StoreItemModel e) => (e.bulkPrice?[widget.args.selectedWeightIndex[i]] ?? 0) * widget.args.quantity[i]).reduce((one, two) => one + two)}',
                        style: AppTextStyles.text16w800Black,
                      ),
                    ],
                  )
                ],
              ),
              sizedBoxWithHeight(16),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => CartItem(
                  item: widget.args.items[index],
                  quantity: widget.args.quantity[index],
                  selectedWeight: widget.args.selectedWeightIndex[index],
                  onTapIncreQuatity: (v) {
                    if (v) {
                      widget.args.quantity[index] += 1;
                    } else {
                      widget.args.quantity[index] -= 1;
                    }

                    if (widget.args.quantity[index] < 1) {
                      widget.args.quantity.removeAt(index);
                      widget.args.items.removeAt(index);
                      widget.args.selectedWeightIndex.removeAt(index);
                    }
                    setState(() {});
                  },
                ),
                separatorBuilder: (_, __) => sizedBoxWithHeight(16),
                itemCount: widget.args.items.length,
              ),
              if (widget.args.items.length < 2) ...{
                sizedBoxWithHeight(160),
              },
              if (widget.args.items.length < 3) ...{
                sizedBoxWithHeight(120),
              },
              if (widget.args.items.length < 4) ...{
                sizedBoxWithHeight(60),
              },
              sizedBoxWithHeight(48),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                ),
                child: AppButtonSpaceBetween(
                  color300: AppColors.green300,
                  firstChild: Text(
                    AppStrings.proceedToCheckout,
                    style: AppTextStyles.text14w600White,
                  ),
                  secondChild: Icon(
                    LineIcons.arrowRight,
                    color: AppColors.theWhite,
                  ),
                  onTap: () {},
                ),
              ),
              sizedBoxWithHeight(48),
            ],
          ),
        ),
      ),
    );
  }
}
