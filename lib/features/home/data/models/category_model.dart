class CategoryModel {
  final List<String> categories;

  const CategoryModel({
    required this.categories,
  });
  factory CategoryModel.fromJson(List<String> json) => 
  CategoryModel(
        categories: json,
      );
}
