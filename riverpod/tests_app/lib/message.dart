class Message {
  static Future<String> fetchMessage() {
    return Future.delayed(const Duration(seconds: 5),
        (() => 'Hello sam, hope you\'re doing well now!'));
  }
}
