import 'package:project_visen/model/fetchCategory.dart';

List<CategoryModel> getCategory() {
  List<CategoryModel> myCategory = [];
  CategoryModel categoryModel;

  categoryModel = new CategoryModel();
  categoryModel.categorieName = 'Business';
  categoryModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80";
  myCategory.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categorieName = 'Sports';
  categoryModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80";
  myCategory.add(categoryModel);

  return myCategory;
}
