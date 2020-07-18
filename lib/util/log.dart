import 'dart:developer' as dev;

extension LogX on Object {
  String get _type => this.runtimeType.toString();

  void log(String message) {
    dev.log(message, name: _type);
  }
}
