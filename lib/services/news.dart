import 'dart:convert';
import '../models/article_model.dart';

//Importacion de paquete http para realizar peticiones http
import 'package:http/http.dart' as http;
//Importacion de paquete para convertir json a formato que puede usar Dart
import 'dart:convert' as convert;

// Clase para obtener noticias de la API de NewsAPI
class News {
  List<ArticleModel> articles = [];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/everything?q=tesla&from=2024-08-17&sortBy=publishedAt&apiKey=055dfa92decc4711b2003ee4504cbf51";
    // Solicitud realiza mediante http.get
    var response = await http.get(Uri.parse(url));

    //Aqui da respuesta de la API
    // Convertimos la respuesta a un objeto json
    var jsonData = jsonDecode(response.body);

    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {}
        ArticleModel articleModel = ArticleModel(
          title: element["title"],
          description: element["description"],
          url: element["url"],
          urlToImage: element["urlToImage"],
          content: element["content"],
          author: element["author"],
        );
        articles.add(articleModel);
      });
    }
  }
}
