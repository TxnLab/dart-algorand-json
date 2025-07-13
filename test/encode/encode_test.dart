import 'package:algorand_json/algorand_json.dart';
import 'package:test/test.dart';

void main() {
  final BigInt maxUint64 = BigInt.parse('FFFFFFFFFFFFFFFF', radix: 16);

  setUp(() async {});

  test('Test encode JSON', () async {
    final input = <String, dynamic>{
      'string': 'json-string',
      'int': 5,
      'bigint': maxUint64,
    };

    final result = BigIntJsonTransformer.encode(input);
    const expectedString =
        "{\"string\":\"json-string\",\"int\":5,\"bigint\":18446744073709551615}";
    expect(result, equals(expectedString));
  });
}
