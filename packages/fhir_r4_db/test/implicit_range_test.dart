import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// R4B 3.1.1.4.6 and 3.1.1.4.11, each row a worked example from the text.
void main() {
  test('half a unit of the last significant digit, as written', () {
    expect(implicitRange('100'), (low: 99.5, high: 100.5));
    expect(implicitRange('100.00'), (low: 99.995, high: 100.005));
    expect(implicitRange('1.00e2'), (low: 99.5, high: 100.5));
    expect(implicitRange('5.4'), (low: 5.35, high: 5.45));
    expect(implicitRange('5.40e-3'), (low: 0.005395, high: 0.005405));
    expect(implicitRange('2.0'), (low: 1.95, high: 2.05));
    expect(implicitRange('-2.0'), (low: -2.05, high: -1.95));
    expect(implicitRange('0.3'), (low: 0.25, high: 0.35));
    // One figure at the hundreds place. The text's own example says
    // [95, 105) for 1e2 and calls it one significant figure; by the rule
    // as worded that is two, so the rule is followed and not the example.
    expect(implicitRange('1E2'), (low: 50, high: 150));
  });

  test('the bounds are the doubles the same decimals parse to', () {
    // 5.4 - 0.05 in floating point is 5.3500000000000005, which is above
    // the double 5.35 parses to, so a stored 5.35 would have fallen outside
    // the range the specification says contains it.
    expect(implicitRange('5.4')!.low, double.parse('5.35'));
    expect(5.4 - 0.05 == double.parse('5.35'), isFalse);
  });

  test('a non-number has no range', () {
    expect(implicitRange('high'), isNull);
    expect(implicitRange(''), isNull);
  });
}
