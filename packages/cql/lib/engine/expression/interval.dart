import '../../cql.dart';

/// Interval selector defining an interval value.
/// The Interval selector defines an interval value. An interval must be
/// defined using a point type that supports comparison, as well as Successor
/// and Predecessor operations, and Minimum and Maximum Value operations.
///
/// The low and high bounds of the interval may each be defined as open or
/// closed. Following standard terminology usage in interval mathematics, an
/// open interval is defined to exclude the specified point, whereas a closed
/// interval includes the point. The default is closed, indicating an inclusive
/// interval.
///
/// The low and high elements are both optional. If the low element is not
/// specified, the low bound of the resulting interval is null. If the high
/// element is not specified, the high bound of the resulting interval is null.
///
/// The static type of the low bound determines the type of the interval, and
/// the high bound must be of the same type.
///
/// If the low bound of the interval is null and open, the low bound of the
/// interval is interpreted as unknown, and computations involving the low
/// boundary will result in null.
///
/// If the low bound of the interval is null and closed, the interval is
/// interpreted to start at the minimum value of the point type, and
/// computations involving the low boundary will be performed with that value.
///
/// If the high bound of the interval is null and open, the high bound of the
/// interval is unknown, and computations involving the high boundary will
/// result in null.
///
/// If the high bound of the interval is null and closed, the interval is
/// interpreted to end at the maximum value of the point type, and computations
/// involving the high boundary will be performed with that interpretation.
class IntervalExpression extends CqlExpression {
  dynamic defaultPointType;

  /// High bound expression of the interval.
  CqlExpression? high;

  /// High bound closed status, defaults to true.
  bool highClosed = true;

  /// Low bound expression of the interval.
  CqlExpression? low;

  /// Low bound closed status, defaults to true.
  bool lowClosed = true;

  IntervalExpression({
    this.lowClosed = true,
    this.highClosed = true,
    this.low,
    this.high,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IntervalExpression.fromJson(Map<String, dynamic> json) =>
      IntervalExpression(
        low: json['low'] != null ? CqlExpression.fromJson(json['low']) : null,
        high:
            json['high'] != null ? CqlExpression.fromJson(json['high']) : null,
        lowClosed: json['lowClosed'] ?? true,
        highClosed: json['highClosed'] ?? true,
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{
      'lowClosed': lowClosed,
      'highClosed': highClosed,
      'type': type,
    };
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('low', low?.toJson());
    writeNotNull('high', high?.toJson());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String get type => 'Interval';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    final lowReturnTypes = low?.getReturnTypes(library) ?? [];
    final highReturnTypes = high?.getReturnTypes(library) ?? [];
    if (lowReturnTypes.length == 1 &&
        highReturnTypes.length == 1 &&
        lowReturnTypes.first == highReturnTypes.first) {
      return ['CqlInterval<${lowReturnTypes.first}>'];
    }
    return ['CqlInterval'];
  }

  @override
  CqlInterval? execute(Map<String, dynamic> context) {
    final low = this.low?.execute(context);
    final high = this.high?.execute(context);
    return CqlInterval(
      low: low,
      lowClosed: lowClosed,
      high: high,
      highClosed: highClosed,
      state: context,
    );
  }

  @override
  String toString() {
    final lowString = low?.toString() ?? 'null';
    final highString = high?.toString() ?? 'null';
    return 'IntervalExpression(low: $lowString, high: $highString)';
  }
}
