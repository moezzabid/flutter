class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath, this.title, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = <SliderModel>[];
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("ca se règle en quelques secondes \n avec deux, trois clics.");
  sliderModel.setTitle("Avec moez\nles problèmes de plomberie \nelectricite\n ...");
  sliderModel.setImageAssetPath("assets/1.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel
      .setDesc("1500professionnel ,\na votre service.");
  sliderModel.setTitle("Choisiez le bon Professionnel \nrapide,efficace et moins cher");
  sliderModel.setImageAssetPath("assets/2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("Moez offre le bon service  .");
  sliderModel.setTitle("Vous êtes un professionnel\n Besoin d'un devis/facture\n Suivre vos collaborateurs ");
  sliderModel.setImageAssetPath("assets/3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}
