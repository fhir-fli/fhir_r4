import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class QName {
  final String namespaceURI;
  final String localPart;
  final String prefix;

  QName({
    this.namespaceURI = '',
    required this.localPart,
    this.prefix = '',
  });

  /// Elm‐core type → Elm namespace
  static const _elmNs = 'urn:hl7-org:elm-types:r1';
  static const elmCoreTypes = {
    'Quantity',
    'Ratio',
    'Integer',
    'Decimal',
    'Code',
    'DateTime',
    'Time',
    'String',
    'Boolean',
    'Concept',
    'Interval',
    'ValueSet'
  };

  static final fhirTypes =
      fhirFieldMap.keys.map((key) => key.toLowerCase()).toList();

  /// FHIR primitives & resources → FHIR namespace
  static const _fhirNs = 'http://hl7.org/fhir';

  /// Factory for an Elm‐type QName
  factory QName.fromElmType(String elmType) {
    if (!elmCoreTypes.contains(elmType)) {
      throw ArgumentError('Not a known ELM core type: $elmType');
    }
    return QName(namespaceURI: _elmNs, localPart: elmType);
  }

  /// Factory for a FHIR‐type QName
  factory QName.fromFhirType(String fhirType) {
    if (!fhirTypes.contains(fhirType.toLowerCase())) {
      throw ArgumentError('Not a known FHIR type: $fhirType');
    }
    return QName(namespaceURI: _fhirNs, localPart: fhirType);
  }

  /// Parses "{ns}Local" or "Local".  If no `{...}`, will assign Elm vs FHIR
  /// namespace automatically when localPart matches a known set.
  factory QName.parse(String full) {
    if (full.isEmpty) {
      throw ArgumentError('Cannot parse empty QName');
    }
    if (full.startsWith('{')) {
      final end = full.indexOf('}');
      if (end < 0) throw ArgumentError('Missing "}" in QName "$full"');
      final ns = full.substring(1, end);
      final name = full.substring(end + 1);
      return QName(namespaceURI: ns, localPart: name);
    }
    // no braces → pick default namespace
    if (elmCoreTypes.contains(full)) {
      return QName(namespaceURI: _elmNs, localPart: full);
    }
    if (fhirTypes.contains(full.toLowerCase())) {
      return QName(namespaceURI: _fhirNs, localPart: full);
    }
    return QName(localPart: full);
  }

  /// JSON loader
  factory QName.fromJson(String json) => QName.parse(json);

  @override
  String toString() =>
      namespaceURI.isEmpty ? localPart : '{$namespaceURI}$localPart';

  String toJson() => toString();

  @override
  bool operator ==(Object other) {
    return other is QName &&
        other.localPart == localPart &&
        other.namespaceURI == namespaceURI;
  }

  @override
  int get hashCode => namespaceURI.hashCode ^ localPart.hashCode;

  /// Returns the CQL‐ELM return types for this QName
  List<String> getReturnTypes(CqlLibrary library) {
    return [localPart];
  }

  /// Maps QName.localPart to a Dart Type, if known
  Type? get type {
    switch (localPart) {
      case 'Boolean':
        return FhirBoolean;
      case 'Code':
        return CqlCode;
      case 'Concept':
        return CqlConcept;
      case 'ValueSet':
        return CqlValueSet;
      case 'CodeSystem':
        return CqlCodeSystem;
      case 'Interval':
        return CqlInterval;
      case 'Date':
        return FhirDate;
      case 'DateTime':
        return FhirDateTime;
      case 'Decimal':
        return FhirDecimal;
      case 'Integer':
        return FhirInteger;
      case 'Long':
        return FhirInteger64;
      case 'Quantity':
        return ValidatedQuantity;
      case 'Ratio':
        return ValidatedRatio;
      case 'String':
        return String;
      case 'Time':
        return FhirTime;
      default:
        return null;
    }
  }
}
