import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/function/custom_toast.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_gester_detector.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/custom_text_button.dart';
import 'package:shopping_app/features/auth/presentation/views/widgets/rich_text.dart';
import 'package:shopping_app/features/cart/data/model/card_model.dart';
import 'package:shopping_app/features/cart/presentation/manager/add_to_card_cubit/add_to_card_cubit.dart';
import 'package:shopping_app/features/home/data/models/product_model/product_model.dart';
import 'package:shopping_app/features/review/presentation/views/review_view.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/generated/l10n.dart';

// import 'review_info.dart';
import 'size_card.dart';
import 'product_image.dart';
import 'total_price.dart';

class CardDetailsBody extends StatelessWidget {
  const CardDetailsBody({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          ProductImage(
            productModel: productModel,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Text(
                        productModel.description ?? 'Unknown',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 14.0),
                      child: Text(
                        s.price,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text(
                        productModel.title ?? 'Unknown',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
                                  color: AppColors.black,
                                ),
                      ),
                    ),
                    Text(
                      r'$' '${productModel.price}',
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: AppColors.black,
                              ),
                    )
                  ],
                ),
                const SizedBox(height: 21),
                Text(
                  s.size,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: AppColors.black,
                      ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizeCard(size: 'S'),
                    SizeCard(size: 'M'),
                    SizeCard(size: 'L'),
                    SizeCard(size: 'XL'),
                    SizeCard(size: '2XL'),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  s.description,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: AppColors.black,
                      ),
                ),
                const SizedBox(height: 10),
                Richtext(
                  text: productModel.description ?? '',
                  textButton: ' ${s.readMore}..',
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      s.reviews,
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: AppColors.black,
                              ),
                    ),
                    CustomTextButton(
                      text: s.viewAll,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReviewView(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                // const ReviewInfo(),
                // const SizedBox(height: 20),
                TotalPrice(
                  productModel: productModel,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          BlocConsumer<AddToCardCubit, AddToCardState>(
            listener: (context, state) {
              if (state is AddToCardSuccess) {
                showToast('Add To Cart Successfully ');
              } else if (state is AddToCardFailure) {
                showToast(' ${state.errorMessage}');
              }
            },
            builder: (context, state) {
              AddToCardCubit item = BlocProvider.of<AddToCardCubit>(context);
              return state is AddToCardLoading
                  ? const CircularProgressIndicator()
                  : CustomGesterDetector(
                      text: s.addToCart,
                      onTap: () {
                        var cardModel = CardModel(
                            image: productModel.image!,
                            title: productModel.title!,
                            price: productModel.price!,
                            quantity: 1);
                        item.addToCart(cardModel);
                      },
                    );
            },
          )
        ],
      ),
    );
  }
}
