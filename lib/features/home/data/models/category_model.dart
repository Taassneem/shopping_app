class CategoryModel {
  final String categories;

  const CategoryModel({
    required this.categories,
  });
  factory CategoryModel.fromJson(String json) => CategoryModel(
        categories: json,
      );
}
