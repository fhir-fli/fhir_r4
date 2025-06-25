import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The SortByItem element specifies the direction for sorting.
abstract class SortByItem extends Element {
  final SortDirection direction;

  SortByItem({
    required this.direction,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory SortByItem.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'ByColumn':
        return ByColumn.fromJson(json);
      case 'ByDirection':
        return ByDirection.fromJson(json);
      case 'ByExpression':
        return ByExpression.fromJson(json);
      default:
        throw ArgumentError('Unknown SortByItem type: ${json['type']}');
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'direction': direction.toJson(),
    };

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  String toString() => toJson().toString();

  String get type => 'SortByItem';
}
