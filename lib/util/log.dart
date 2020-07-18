import 'dart:developer' as dev;

mixin LogMixin on Object {
  String get _type => this.runtimeType.toString();

  void log(dynamic message, {Object error}) {
    dev.log(
      message.toString(),
      name: _type,
      error: error,
    );
  }
}
