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
  static const _elmCoreTypes = {
    'Quantity','Ratio','Integer','Decimal',
    'Code','DateTime','Time','String',
    'Boolean','Concept','Interval','ValueSet'
  };

  /// FHIR primitives & resources → FHIR namespace
  static const _fhirNs = 'http://hl7.org/fhir';
  static const _fhirPrimitiveTypes = {
    'FhirDateTime','FhirTime','FhirDate',
    'FhirDecimal','FhirInteger','FhirBoolean'
  };
  static const _fhirResourceTypes = {
    // fill this with your FHIR resource names as needed…
    'Patient','Observation','Condition', /* etc. */
  };

  /// Factory for an Elm‐type QName
  factory QName.forElm(String localPart) {
    if (!_elmCoreTypes.contains(localPart)) {
      throw ArgumentError('Not a known ELM core type: $localPart');
    }
    return QName(namespaceURI: _elmNs, localPart: localPart);
  }

  /// Factory for a FHIR‐type QName
  factory QName.forFhir(String localPart) {
    if (!(_fhirPrimitiveTypes.contains(localPart)
       || _fhirResourceTypes.contains(localPart))) {
      throw ArgumentError('Not a known FHIR type: $localPart');
    }
    return QName(namespaceURI: _fhirNs, localPart: localPart);
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
    if (_elmCoreTypes.contains(full)) {
      return QName(namespaceURI: _elmNs, localPart: full);
    }
    if (_fhirPrimitiveTypes.contains(full)
     || _fhirResourceTypes.contains(full)) {
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
    return other is QName
        && other.localPart == localPart
        && other.namespaceURI == namespaceURI;
  }

  @override
  int get hashCode => namespaceURI.hashCode ^ localPart.hashCode;

  /// Returns the CQL‐ELM return types for this QName
  List<String> getReturnTypes(CqlLibrary library) {
    switch (localPart) {
      case 'DateTime': return ['FhirDateTime'];
      case 'Time':     return ['FhirTime'];
      case 'Date':     return ['FhirDate'];
      case 'Decimal':  return ['FhirDecimal'];
      case 'Integer':  return ['FhirInteger'];
      case 'Boolean':  return ['FhirBoolean'];
      case 'Concept':  return ['ConceptType'];
      case 'Interval': return ['CqlInterval'];
      case 'Quantity': return ['ValidatedQuantity'];
      case 'Ratio':    return ['ValidatedRatio'];
      case 'Code':     return ['CodeType'];
      default:         return [localPart];
    }
  }

  /// Maps QName.localPart to a Dart Type, if known
  Type? get type {
    switch (localPart) {
      case 'Boolean': return FhirBoolean;
      case 'Code':    return CqlCode;
      case 'Concept': return CqlConcept;
      case 'ValueSet': return CqlValueSet;
      case 'CodeSystem': return CqlCodeSystem;
      case 'Interval': return CqlInterval;
      case 'Date':    return FhirDate;
      case 'DateTime':return FhirDateTime;
      case 'Decimal': return FhirDecimal;
      case 'Integer': return FhirInteger;
      case 'Long':    return FhirInteger64;
      case 'Quantity':return ValidatedQuantity;
      case 'Ratio':   return ValidatedRatio;
      case 'String':  return String;
      case 'Time':    return FhirTime;
      default:        return null;
    }
  }
}
