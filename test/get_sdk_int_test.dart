import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_sdk_int/get_sdk_int.dart';

void main() {
  const MethodChannel channel = MethodChannel('get_sdk_int');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return 42;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await GetSDKInt.SDK_INT, 42);
  });
}
