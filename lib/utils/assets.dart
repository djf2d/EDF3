enum AppIcons with AppIconsName {
  card("card"),
  home("home"),
  history("history"),
  qr("qr"),
  profile("profile");

  const AppIcons(this.name);

  @override
  final String name;

  String getPath() {
    return 'assets/$name.png';
  }
}

mixin AppIconsName {
  String get name;
}
