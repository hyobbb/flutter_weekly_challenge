import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver {
  const Logger();

  @override
  void didUpdateProvider(
      ProviderBase provider,
      Object? previousValue,
      Object? newValue,
      ProviderContainer container,
      ) {
    if (kDebugMode) {
      print('''Provider Update
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
    }
  }

  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    if (kDebugMode) {
      print('''Provider Init
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$value"
}''');
    }
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer containers) {
    if (kDebugMode) {
      print('''Provider disposed: "${provider.name ?? provider.runtimeType}"''');
    }
  }

  @override
  void providerDidFail(ProviderBase provider, Object error, StackTrace stackTrace, ProviderContainer container) {
    if (kDebugMode) {
      print('''Provider Fail
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "error": "$error",
  "stackTrace: $stackTrace,
}''');
    }
  }
}
