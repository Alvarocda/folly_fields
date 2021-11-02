import 'package:flutter/widgets.dart';
import 'package:folly_fields/widgets/error_message.dart';
import 'package:folly_fields/widgets/waiting_message.dart';

///
///
///
class SafeFutureBuilder<T> extends StatelessWidget {
  final Future<T>? future;
  final T? initialData;
  final Widget Function(BuildContext context, T data) builder;
  final Widget Function(Object? error, StackTrace? stackTrace)? onError;
  final Widget Function(ConnectionState connectionState)? onWait;
  final String? waitingMessage;

  ///
  ///
  ///
  const SafeFutureBuilder({
    required this.builder,
    this.future,
    this.initialData,
    this.onError,
    this.onWait,
    this.waitingMessage,
    Key? key,
  })  : assert(onWait == null || waitingMessage == null,
            'onWait or waitingMessage must be null.'),
        super(key: key);

  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      future: future,
      initialData: initialData,
      builder: (BuildContext context, AsyncSnapshot<T> snapshot) {
        if (snapshot.hasError) {
          if (onError != null) {
            return onError!(snapshot.error, snapshot.stackTrace);
          } else {
            return ErrorMessage(
              error: snapshot.error,
              stackTrace: snapshot.stackTrace,
            );
          }
        }

        if (snapshot.hasData) {
          return builder(context, snapshot.data!);
        }

        if (onWait != null) {
          return onWait!(snapshot.connectionState);
        } else {
          return WaitingMessage(message: waitingMessage);
        }
      },
    );
  }
}