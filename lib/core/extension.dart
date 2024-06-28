extension checkIsEmail on String {
  bool isEmail() {
    return this.contains('@') && this.contains('.');
  }
}

extension ExtractUserNameFromEmail on String {
  String ToUserName() {
    List<String> parts = this.split('@');
    String username = parts[0];
    if (username.length > 10) {
      return username.substring(0, 10);
    }
    return username;
  }
}
