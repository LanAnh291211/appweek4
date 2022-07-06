extension LocalImagePathAssets on String {
  String get getPNGImageAssets => "assets/images/$this.png";
  String get getSVGImageAssets => "assets/images/$this.svg";
  String get getGIFImageAssets => "assets/images/$this.gif";
}
