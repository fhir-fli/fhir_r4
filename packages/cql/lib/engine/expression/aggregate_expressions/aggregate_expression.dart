import '../../../cql.dart';

/// Abstract base class for Aggregate expressions performing operations on lists of data.
abstract class AggregateExpression extends CqlExpression {
  final String? path;
  final List<TypeSpecifierExpression>? signature;
  final CqlExpression source;

  AggregateExpression({
    required this.signature,
    required this.source,
    required this.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory AggregateExpression.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    switch (type) {
      case 'Aggregate':
        return Aggregate.fromJson(json);
      case 'AllTrue':
        return AllTrue.fromJson(json);
      case 'AnyTrue':
        return AnyTrue.fromJson(json);
      case 'Avg':
        return Avg.fromJson(json);
      case 'Count':
        return Count.fromJson(json);
      case 'GeometricMean':
        return GeometricMean.fromJson(json);
      case 'Max':
        return Max.fromJson(json);
      case 'Median':
        return Median.fromJson(json);
      case 'Min':
        return Min.fromJson(json);
      case 'Mode':
        return Mode.fromJson(json);
      case 'PopulationStdDev':
        return PopulationStdDev.fromJson(json);
      case 'PopulationVariance':
        return PopulationVariance.fromJson(json);
      case 'Product':
        return Product.fromJson(json);
      case 'StdDev':
        return StdDev.fromJson(json);
      case 'Sum':
        return Sum.fromJson(json);
      case 'Variance':
        return Variance.fromJson(json);
      default:
        throw ArgumentError('Unknown AggregateExpression type: $type');
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
      'path': path,
      'signature': signature?.map((s) => s.toJson()).toList(),
      'source': source.toJson(),
    };

    if (annotation != null) {
      json['annotation'] = annotation!.map((a) => a.toJson()).toList();
    }

    if (localId != null) {
      json['localId'] = localId;
    }

    if (locator != null) {
      json['locator'] = locator;
    }

    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return json;
  }

  @override
  String get type => 'AggregateExpression';
}
