import 'dart:convert';
import 'dart:io';
import 'package:diy_beauty_products/CategoryScreen/models/categorymodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;



class CategoryProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get islOading {
    return _isLoading;
  }

  final bool _loadingSpinner = false;
  bool get loadingSpinner {
    return _loadingSpinner;
  }

  bool _isSelect = false;

  bool get isSelect {
    return _isSelect;
  }

  final bool _isError = false;

  bool get isError {
    return _isError;
  }

  List<CategoryModel> _category = [];
  List<CategoryModel> get category {
    return [..._category];
  }

  Future<void> getAllCategoryData({BuildContext? context}) async {
    try {
      _isLoading = true;
      // var headers = {'Cookie': 'ci_session=c7lis868nec6nl8r1lb5el72q8n26upv'};
      var response = await https.get(
        Uri.parse(
            "http://campus.sicsglobal.co.in/Project/Diy_product/api/view_category.php"),
      );

      print(
          "http://campus.sicsglobal.co.in/Project/PetAdoption/api/view_categories.php");

      print(response.body);

      if (response.statusCode == 200) {
        _isLoading = false;
        _category = [];
        var extractedData = json.decode(response.body);
        //  print(json.decode(response.body) + 'printed extrated data');
        final List<dynamic> categoryDetails = extractedData['categoryDetails'];
        for (var i = 0; i < categoryDetails.length; i++) {
          _category.add(
            CategoryModel(
                id: categoryDetails[i]['id'].toString(),
                categoryName: categoryDetails[i]['category_name'].toString(),
                image: categoryDetails[i]['image'].toString()
                ),
          );
        }
        ;

        print('category details' + _category.toString());
        _isLoading = false;
        print('category loading completed --->' + 'loading data');
        notifyListeners();
      } else {
        _isLoading = true;
        notifyListeners();
      }
    } on HttpException catch (e) {
      // ignore: prefer_interpolation_to_compose_strings
      print('error in fav prod -->>' + e.toString());
      print('Favourite Data is one by one loaded the favouite' + e.toString());
      _isLoading = false;

      _isSelect = false;
      notifyListeners();
    }
  }
}
