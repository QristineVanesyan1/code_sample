class Assets {
  static String get BG1_1 => 'BG1-1'.svg;
  const Assets._();
}

extension on String {
  String get svg => 'assets/svg/$this.svg';
  String get png => 'assets/images/$this.png';
  String get json => 'assets/json/$this.json';
}
