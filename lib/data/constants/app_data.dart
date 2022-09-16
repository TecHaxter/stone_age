import 'package:stone_age/data/constants/app_assets.dart';
import 'package:stone_age/data/constants/app_colors.dart';
import 'package:stone_age/data/constants/app_strings.dart';
import 'package:stone_age/data/models/store_item_model.dart';

final List<StoreItemModel> storeItems = [
  StoreItemModel(
    name: AppStrings.chronic,
    category: AppStrings.hybrid,
    phcRange: '4.0 - 10.0%',
    ebdRange: '0.0 - 0.99%',
    bulkPrice: [160, 220, 290],
    weight: [4, 6, 8],
    colors: [AppColors.green100, AppColors.green200, AppColors.green300],
    image: AppAssets.chronic,
  ),
  StoreItemModel(
    name: AppStrings.royalHigh,
    category: AppStrings.indicaDominent,
    phcRange: '4.0 - 9.0%',
    ebdRange: '0.0 - 1.8%',
    bulkPrice: [104, 130, 160],
    weight: [5, 7, 9],
    colors: [AppColors.orange100, AppColors.orange200, AppColors.orange300],
    image: AppAssets.royalHigh,
  ),
  StoreItemModel(
    name: AppStrings.blueBalance,
    category: AppStrings.sativaDominent,
    phcRange: '8.0 - 14.0%',
    ebdRange: '0.0 - 0.60%',
    bulkPrice: [280, 385, 490],
    weight: [5, 7, 9],
    colors: [AppColors.blue100, AppColors.blue200, AppColors.blue300],
    image: AppAssets.blueBalance,
  ),
  StoreItemModel(
    name: AppStrings.purpleHaze,
    category: AppStrings.sativaDominent,
    phcRange: '12.0 - 18.0%',
    ebdRange: '0.10 - 0.30%',
    bulkPrice: [302, 435, 590],
    weight: [4, 6, 8],
    colors: [AppColors.purple100, AppColors.purple200, AppColors.purple300],
    image: AppAssets.purpleHaze,
  ),
];
