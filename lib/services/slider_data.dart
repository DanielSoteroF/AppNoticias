import 'dart:convert';
import '../models/slider_model.dart';
//Importacion de paquete http para realizar peticiones http
import 'package:http/http.dart' as http;
//Importacion de paquete para convertir json a formato que puede usar Dart
import 'dart:convert' as convert;

// Clase para obtener noticias de la API de NewsAPI
class SliderData {
  List<SliderModel> slider = [];

  Future<void> getSlider() async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=055dfa92decc4711b2003ee4504cbf51";
    // Solicitud realiza mediante http.get
    var response = await http.get(Uri.parse(url));

    //Aqui da respuesta de la API
    // Convertimos la respuesta a un objeto json
    var jsonData = jsonDecode(response.body);

    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {}
        SliderModel sliderModel = SliderModel(
          title: element["title"],
          description: element["description"],
          url: element["url"],
          urlToImage: element["urlToImage"],
          content: element["content"],
          author: element["author"],
        );
        slider.add(sliderModel);
      });
    }
  }
}
