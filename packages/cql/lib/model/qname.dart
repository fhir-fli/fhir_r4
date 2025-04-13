import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import '../cql.dart';

class QName {
  final String namespaceURI;
  final String localPart;
  final String prefix;

  QName({
    this.namespaceURI = '',
    required this.localPart,
    this.prefix = '',
  });

  factory QName.empty() => QName(namespaceURI: '', localPart: '', prefix: '');

  factory QName.local(String localPart) => QName(
        namespaceURI: '',
        localPart: localPart,
        prefix: '',
      );

  factory QName.fromDataType(String type) => QName(
        namespaceURI: _isElmType(type) || _isFhirType(type)
            ? 'urn:hl7-org:elm-types:r1'
            : '',
        localPart: _isFhirType(type) ? _fhirTypeToElmType(type) : type,
        prefix: '',
      );

  factory QName.fromFull(String? qNameAsString) {
    if (qNameAsString?.isEmpty ?? true) {
      throw ArgumentError('Cannot create QName from "null" or empty String');
    } else if (qNameAsString!.contains('{')) {
      final beginningOfNamespaceURI = qNameAsString.indexOf('{');
      final endOfNamespaceURI = qNameAsString.indexOf('}');
      if (endOfNamespaceURI == -1) {
        throw ArgumentError(
            'Cannot create QName from "$qNameAsString", missing closing "}"');
      }
      String namespaceURI = qNameAsString.substring(
          beginningOfNamespaceURI + 1, endOfNamespaceURI);
      final String localPart = qNameAsString.substring(endOfNamespaceURI + 1);
      if (namespaceURI.isEmpty) {
        namespaceURI = _isElmType(localPart) || _isFhirType(localPart)
            ? 'urn:hl7-org:elm-types:r1'
            : '';
      }
      return QName(
          namespaceURI: namespaceURI,
          localPart: _isFhirType(localPart)
              ? _fhirTypeToElmType(localPart)
              : localPart,
          prefix: qNameAsString.substring(0, beginningOfNamespaceURI));
    } else {
      return QName(
          namespaceURI: _isElmType(qNameAsString) || _isFhirType(qNameAsString)
              ? 'urn:hl7-org:elm-types:r1'
              : qNameAsString,
          localPart: _isFhirType(qNameAsString)
              ? _fhirTypeToElmType(qNameAsString)
              : qNameAsString,
          prefix: '');
    }
  }

  factory QName.fromJson(String json) => QName.fromFull(json);

  factory QName.fromLocalPart(String localPart) => QName(
        prefix: '',
        namespaceURI: localPart,
        localPart: localPart,
      );

  factory QName.fromNamespace(String? namespaceURI, String localPart) =>
      QName(namespaceURI: namespaceURI ?? '', localPart: localPart, prefix: '');

  @override
  bool operator ==(Object other) {
    if (other == this) {
      return true;
    } else if (other is QName) {
      final qName = other;
      return localPart == qName.localPart && namespaceURI == qName.namespaceURI;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => namespaceURI.hashCode ^ localPart.hashCode;

  @override
  String toString() =>
      namespaceURI == '' ? localPart : "$prefix{$namespaceURI}$localPart";

  String toJson() => toString();

  bool equals(Object? other) => this == other;

  static QName valueOf(String? qNameAsString) {
    if (qNameAsString == null) {
      throw ArgumentError("cannot create QName from null or empty string");
    } else if (qNameAsString.isEmpty) {
      throw ArgumentError("cannot create QName from \"null\" or \"\" String");
    } else if (qNameAsString[0] != '{') {
      return QName(namespaceURI: "", localPart: qNameAsString, prefix: "");
    } else if (qNameAsString.startsWith("{}")) {
      throw ArgumentError(
          "Namespace URI .equals(XMLConstants.NULL_NS_URI), .equals(\"\"), only the local part, \"${qNameAsString.substring(2 + "".length)}\", should be provided.");
    } else {
      int endOfNamespaceURI = qNameAsString.indexOf('}');
      if (endOfNamespaceURI == -1) {
        throw ArgumentError(
            "cannot create QName from \"$qNameAsString\", missing closing \"}\"");
      } else {
        return QName(
          namespaceURI: qNameAsString.substring(1, endOfNamespaceURI),
          localPart: qNameAsString.substring(endOfNamespaceURI + 1),
        );
      }
    }
  }

  static bool _isElmType(String? type) => [
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
        'ValueSet',
      ].contains(type);

  static bool _isFhirType(String? type) => [
        'FhirDateTime',
        'FhirTime',
        'FhirDate',
        'FhirDateTime',
        'FhirDecimal',
        'FhirInteger',
        'FhirBoolean',
        'ConceptType',
        'CqlInterval',
        'ValidatedQuantity',
        'ValidatedRatio',
        'CodeType',
      ].contains(type);

  static String _fhirTypeToElmType(String fhirType) {
    switch (fhirType) {
      case 'FhirDateTime':
        return 'DateTime';
      case 'FhirTime':
        return 'Time';
      case 'FhirDate':
        return 'DateTime';
      case 'FhirDecimal':
        return 'Decimal';
      case 'FhirInteger':
        return 'Integer';
      case 'FhirBoolean':
        return 'Boolean';
      case 'ConceptType':
        return 'Concept';
      case 'CqlInterval':
        return 'Interval';
      case 'ValidatedQuantity':
        return 'Quantity';
      case 'ValidatedRatio':
        return 'Ratio';
      case 'CodeType':
        return 'Code';
      default:
        return fhirType;
    }
  }

  List<String> getReturnTypes(CqlLibrary library) {
    switch (localPart) {
      case 'DateTime':
        return ['FhirDateTime'];
      case 'Time':
        return ['FhirTime'];
      case 'Date':
        return ['FhirDate'];
      case 'Decimal':
        return ['FhirDecimal'];
      case 'Integer':
        return ['FhirInteger'];
      case 'Boolean':
        return ['FhirBoolean'];
      case 'Concept':
        return ['ConceptType'];
      case 'Interval':
        return ['CqlInterval'];
      case 'Quantity':
        return ['ValidatedQuantity'];
      case 'Ratio':
        return ['ValidatedRatio'];
      case 'Code':
        return ['CodeType'];
      default:
        return [localPart];
    }
  }

  Type? get type {
    {
      switch (localPart) {
        case 'Null':
          return Null;
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
        case 'List':
          return List;
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
}
