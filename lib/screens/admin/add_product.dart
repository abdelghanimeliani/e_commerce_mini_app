import 'package:e_commerce_mini_app/const.dart';
import 'package:e_commerce_mini_app/models/product.dart';
import 'package:e_commerce_mini_app/services/store.dart';
import 'package:e_commerce_mini_app/widgerts/costom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  static String id = "this is addProduct";
  String _name, _description, _category, _price, _location;
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final Store _store = Store();
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: kMainColor,
        body: Form(
          key: _globalKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                  onClick: (value) {
                    _name = value;
                  },
                  hint: "product name",
                  icon: null),
              SizedBox(
                height: height * 0.05,
              ),
              CustomTextField(
                  onClick: (value) {
                    _description = value;
                  },
                  hint: "product descreption",
                  icon: null),
              SizedBox(
                height: height * 0.05,
              ),
              CustomTextField(
                  onClick: (value) {
                    _category = value;
                  },
                  hint: "product category",
                  icon: null),
              SizedBox(
                height: height * 0.05,
              ),
              CustomTextField(
                  onClick: (value) {
                    _price = value;
                  },
                  hint: "product price",
                  icon: null),
              SizedBox(
                height: height * 0.05,
              ),
              CustomTextField(
                  onClick: (value) {
                    _location = value;
                  },
                  hint: "product location",
                  icon: null),
              SizedBox(
                height: height * 0.05,
              ),
              RaisedButton(
                  child: Text("add product"),
                  onPressed: () {
                    if (_globalKey.currentState.validate()) {
                      _globalKey.currentState.save();
                      _store.addProduct(Product(
                          pName: _name,
                          pCategorie: _category,
                          pDescreption: _description,
                          pLocation: _location,
                          pPrice: _price));
                    }
                    _globalKey.currentState.reset();
                  }),
            ],
          ),
        ));
  }
}
