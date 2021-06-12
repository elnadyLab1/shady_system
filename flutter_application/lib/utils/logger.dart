class Logger {
  // Sample of abstract logging function
  static void write(String text, {bool isError = false}) {
    // ignore: avoid_print
    print('** $text [$isError]');
  }
}
