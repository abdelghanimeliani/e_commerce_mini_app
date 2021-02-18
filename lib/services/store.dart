import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_mini_app/const.dart';
import 'package:e_commerce_mini_app/models/product.dart';

class Store {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  addProduct(Product product) {
    firebaseFirestore.collection(kProductsCollection).add({
      kNameProduct: product.pName,
      kPriceProduct: product.pPrice,
      kDescriptionProduct: product.pDescreption,
      kCategoryProduct: product.pCategorie,
      kLocationProduct: product.pLocation
    });
  }
}
