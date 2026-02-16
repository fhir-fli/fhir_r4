import 'package:fhir_r4/fhir_r4.dart' hide Quantity;
import 'package:fhir_r4/fhir_r4.dart' as fhir show Quantity;
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Is operator allowing testing the type of a result.
class Is extends UnaryExpression {
  /// Type to test against.
  QName? isType;

  /// Type specifier for testing.
  TypeSpecifierExpression? isTypeSpecifier;

  Is({
    this.isTypeSpecifier,
    this.isType,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Is.fromJson(Map<String, dynamic> json) => Is(
        isTypeSpecifier: json['isTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['isTypeSpecifier'])
            : null,
        isType: json['isType'] != null ? QName.fromJson(json['isType']) : null,
        operand: CqlExpression.fromJson(json['operand']!),
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
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.toJson(),
    };
    if (isTypeSpecifier != null) {
      data['isTypeSpecifier'] = isTypeSpecifier!.toJson();
    }

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
  String get type => 'Is';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final dynamic value = await operand.execute(context);

    if (value == null) {
      return FhirBoolean(false);
    }

    if (isTypeSpecifier != null) {
      return FhirBoolean(_matchesSpecifier(value, isTypeSpecifier!));
    }

    if (isType != null) {
      return FhirBoolean(_matchesType(value, isType!.localPart));
    }

    // No type info — can't check, return true
    return FhirBoolean(true);
  }

  bool _matchesType(dynamic value, String typeName) {
    switch (typeName) {
      case 'Integer':
        return value is FhirInteger;
      case 'Decimal':
        return value is FhirDecimal;
      case 'String':
        return value is String || value is FhirString;
      case 'Boolean':
        return value is FhirBoolean;
      case 'Quantity':
        return value is ValidatedQuantity ||
            (value is Map<String, dynamic> &&
                value.containsKey('value') &&
                value.containsKey('unit'));
      case 'Ratio':
        return value is ValidatedRatio;
      case 'DateTime':
        return value is FhirDateTime;
      case 'Date':
        return value is FhirDate;
      case 'Time':
        return value is FhirTime;
      case 'Code':
        return value is Code || value is CqlCode;
      case 'Concept':
        return value is Concept || value is CqlConcept;
      case 'Interval':
        return value is CqlInterval;
      default:
        return false;
    }
  }

  bool _matchesSpecifier(dynamic value, TypeSpecifierExpression spec) {
    if (spec is NamedTypeSpecifier) {
      final ns = spec.namespace.namespaceURI;
      final name = spec.namespace.localPart;
      // For FHIR-namespaced types, use Dart `is` checks that respect
      // FHIR subtype relationships (e.g., FhirCode IS-A string).
      if (ns == 'http://hl7.org/fhir') {
        return _matchesFhirType(value, name);
      }
      return _matchesType(value, name);
    }
    if (spec is ListTypeSpecifier && spec.elementType != null) {
      return value is List;
    }
    if (spec is ChoiceTypeSpecifier) {
      for (final choice in spec.choice ?? <TypeSpecifierExpression>[]) {
        if (_matchesSpecifier(value, choice)) return true;
      }
      return false;
    }
    return false;
  }

  /// Matches a value against a FHIR-namespaced type name using Dart `is`
  /// checks. Handles lowercase FHIR primitive names and subtype relationships.
  bool _matchesFhirType(dynamic value, String name) {
    switch (name) {
      case 'boolean':
        return value is FhirBoolean;
      case 'integer':
        return value is FhirInteger;
      case 'decimal':
        return value is FhirDecimal;
      case 'string':
        // FhirCode, FhirMarkdown, FhirId all extend FhirString
        return value is FhirString;
      case 'uri':
        // FhirCanonical, FhirUrl extend FhirUri
        return value is FhirUri;
      case 'code':
        return value is FhirCode;
      case 'date':
        return value is FhirDate;
      case 'dateTime':
        return value is FhirDateTime;
      case 'time':
        return value is FhirTime;
      case 'instant':
        return value is FhirInstant;
      case 'base64Binary':
        return value is FhirBase64Binary;
      case 'id':
        return value is FhirId;
      case 'markdown':
        return value is FhirMarkdown;
      case 'positiveInt':
        return value is FhirPositiveInt;
      case 'unsignedInt':
        return value is FhirUnsignedInt;
      case 'oid':
        return value is FhirOid;
      case 'uuid':
        return value is FhirUuid;
      case 'canonical':
        return value is FhirCanonical;
      case 'url':
        return value is FhirUrl;
      case 'Coding':
        return value is Coding;
      case 'CodeableConcept':
        return value is CodeableConcept;
      case 'Quantity':
        return value is fhir.Quantity;
      case 'Period':
        return value is Period;
      case 'Range':
        return value is Range;
      case 'Attachment':
        return value is Attachment;
      case 'Identifier':
        return value is Identifier;
      case 'HumanName':
        return value is HumanName;
      case 'Address':
        return value is Address;
      case 'ContactPoint':
        return value is ContactPoint;
      case 'Reference':
        return value is Reference;
      default:
        // Fallback: compare runtime type name
        if (value is FhirBase) {
          return value.runtimeType.toString() == name;
        }
        return false;
    }
  }
}
