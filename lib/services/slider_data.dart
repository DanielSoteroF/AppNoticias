import '../models/slider_model.dart';

List<SliderModel> getSlider() {
  List<SliderModel> slider = [];

  SliderModel sliderModel = new SliderModel();

  sliderModel.sliderName =
      "inclinarse ante la autoridad de la fuerza silenciosa";
  sliderModel.sliderImage = "images/negocios.jpg";
  slider.add(sliderModel);

  sliderModel = new SliderModel();

  //----------------
  sliderModel.sliderName =
      "Inclinarse Ante La Autoridad De La Fuerza Silenciosa";
  sliderModel.sliderImage = "images/ciencia.jpg";
  slider.add(sliderModel);

  sliderModel = new SliderModel();

  //----------------
  sliderModel.sliderName =
      "Inclinarse Ante La Autoridad De La Fuerza Silenciosa";
  sliderModel.sliderImage = "images/deporte.jpg";
  slider.add(sliderModel);

  sliderModel = new SliderModel();

  //----------------
  sliderModel.sliderName =
      "Inclinarse Ante La Autoridad De La Fuerza Silenciosa";
  sliderModel.sliderImage = "images/entretenimiento.jpg";
  slider.add(sliderModel);

  sliderModel = new SliderModel();

  //----------------
  sliderModel.sliderName =
      "Inclinarse Ante La Autoridad De La Fuerza Silenciosa";
  sliderModel.sliderImage = "images/salud.jpg";
  slider.add(sliderModel);

  return slider;
}
