import 'package:get/get.dart';

class HomeController extends GetxController {

  var selectedCategory = 'All'.obs;
  var selectedSubcategory = 'Pets'.obs;

  // Main categories
  final List<String> categories = ['All', 'Cow', 'Cat', 'Bird', 'Dog'];

  // Subcategories for each main category
  final Map<String, List<String>> subcategories = {
    'All': ['Pets', 'Food', 'Medicine'],
    'Cow': ['Pets', 'Food', 'Medicine'],
    'Cat': ['Pets', 'Food', 'Medicine'],
    'Bird': ['Pets', 'Food', 'Medicine'],
    'Dog': ['Pets', 'Food', 'Medicine'],
  };

  // Update selected category and reset subcategory
  void selectCategory(String category) {
    selectedCategory.value = category;
    selectedSubcategory.value = 'Pets';
  }

  // Update selected subcategory
  void selectSubcategory(String subcategory) {
    selectedSubcategory.value = subcategory;
  }

  @override
  void onInit() {
    super.onInit();
  }

}
