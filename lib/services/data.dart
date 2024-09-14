//CREAREMOS UN ALISTA DE MODELOS DE CATEGORIAS
//CUALES APARECERAN EN LA PAGINA DE INICIO

import '../models/category_model.dart';
//IMPORTAMOS EL MODELO QUE TENDRA LAS CATEGORIAS

//DECLARAMOS UNA FUNCION QUE TENDRA EL ALISTA DE CATEGORIAS
List<CategoryModel> getCategories() {
  //CREAREMOS UNA LISTA DE CATEGORIA VACIA
  //QUE ALMACENARA INSTANCIAS DE CATEGORYMODEL
  List<CategoryModel> category = [];

  //CREACION DE NUEVO OBJETO CATEGORYMODEL
  CategoryModel categoryModel = new CategoryModel();

  categoryModel.categoryName = "Negocios";
  categoryModel.categoryImage = "images/negocios.jpg";
  category.add(categoryModel);

  //CREA UNA NUEVA INSTANCIA DE CATEGORYMODEL
  //PARA REUTILIZAR LA VARIABLE categoryModel
  categoryModel = new CategoryModel();

  //----------------
  categoryModel.categoryName = "Ciencia";
  categoryModel.categoryImage = "images/ciencia.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  //----------------
  categoryModel.categoryName = "Deporte";
  categoryModel.categoryImage = "images/deporte.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  //----------------
  categoryModel.categoryName = "Entretenimiento";
  categoryModel.categoryImage = "images/entretenimiento.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  //----------------
  categoryModel.categoryName = "Salud";
  categoryModel.categoryImage = "images/salud.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  return category;
}
