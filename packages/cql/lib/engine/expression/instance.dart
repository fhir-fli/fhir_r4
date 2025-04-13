import 'package:fhir_r4/fhir_r4.dart';

import '../../cql.dart';

/// Expression allowing class instances to be built up.
/// Instance : Expression
///  ¦
///  0..* --> element : InstanceElement
///  ¦
///  1..1 --> classType
/// The Instance expression allows class instances of any type to be built up
/// as an expression. The classType attribute specifies the type of the class
/// instance being built, and the list of instance elements specify the values
/// for the elements of the class instance. Note that the value of an element
/// may be any expression, including another Instance.
class Instance extends CqlExpression {
  /// Type of the class instance being built.
  QName classType;

  /// List of instance elements specifying values for the elements of the class instance.
  List<InstanceElement>? element;

  Instance({
    required this.classType,
    this.element,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Instance.fromJson(Map<String, dynamic> json) {
    return Instance(
      classType: QName.fromJson(json['classType']),
      element: json['element'] != null
          ? (json['element'] as List)
              .map((e) => InstanceElement.fromJson(e))
              .toList()
          : null,
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
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> val = {
      'classType': classType.toJson(),
      'type': type,
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('element', element!.map((e) => e.toJson()).toList());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'Instance';

  @override
  dynamic execute(Map<String, dynamic> context) {
    switch (classType.localPart) {
      case 'Null':
        return null;
      case 'String':
        {
          if (element == null) {
            throw ArgumentError(
                'Instance of type String must have at least one element');
          }
          if (element!.length != 1) {
            throw ArgumentError(
                'Instance of type String must have exactly one element');
          }
          final result = element!.first.value.execute(context);
          if (result is String) {
            return result;
          }
        }
      case 'Boolean':
        {
          if (element == null) {
            throw ArgumentError(
                'Instance of type Boolean must have at least one element');
          }
          if (element!.length != 1) {
            throw ArgumentError(
                'Instance of type Boolean must have exactly one element');
          }
          final result = element!.first.value.execute(context);
          if (result is bool || result is String) {
            return FhirBoolean(result);
          } else if (result is FhirBoolean) {
            return result;
          }
        }
        break;
      case 'Date':
        {
          if (element == null) {
            throw ArgumentError(
                'Instance of type Date must have at least one element');
          }
          if (element!.length != 1) {
            throw ArgumentError(
                'Instance of type Date must have exactly one element');
          }
          final result = element!.first.value.execute(context);
          if (result is String) {
            return FhirDate.fromString(result);
          } else if (result is FhirDate) {
            return result;
          }
        }
        break;
      case 'DateTime':
        {
          if (element == null) {
            throw ArgumentError(
                'Instance of type DateTime must have at least one element');
          }
          if (element!.length != 1) {
            throw ArgumentError(
                'Instance of type DateTime must have exactly one element');
          }
          final result = element!.first.value.execute(context);
          if (result is String) {
            return FhirDateTime.fromString(result);
          } else if (result is FhirDateTime) {
            return result;
          }
        }
        break;
      case 'Integer':
        {
          if (element == null) {
            throw ArgumentError(
                'Instance of type Integer must have at least one element');
          }
          if (element!.length != 1) {
            throw ArgumentError(
                'Instance of type Integer must have exactly one element');
          }
          final result = element!.first.value.execute(context);
          if (result is int) {
            return FhirInteger(result);
          } else if (result is FhirInteger) {
            return result;
          }
        }
        break;
      case 'Long':
        {
          if (element == null) {
            throw ArgumentError(
                'Instance of type Long must have at least one element');
          }
          if (element!.length != 1) {
            throw ArgumentError(
                'Instance of type Long must have exactly one element');
          }
          final result = element!.first.value.execute(context);
          if (result is int) {
            return FhirInteger64.fromNum(result);
          } else if (result is FhirInteger64) {
            return result;
          }
        }
        break;
      case 'Decimal':
        {
          if (element == null) {
            throw ArgumentError(
                'Instance of type Decimal must have at least one element');
          }
          if (element!.length != 1) {
            throw ArgumentError(
                'Instance of type Decimal must have exactly one element');
          }
          final result = element!.first.value.execute(context);
          if (result is num) {
            return FhirDecimal(result);
          } else if (result is FhirDecimal) {
            return result;
          }
        }
        break;
      case 'Time':
        {
          if (element == null) {
            throw ArgumentError(
                'Instance of type Time must have at least one element');
          }
          if (element!.length != 1) {
            throw ArgumentError(
                'Instance of type Time must have exactly one element');
          }
          final result = element!.first.value.execute(context);
          if (result is String) {
            return FhirTime(result);
          } else if (result is FhirTime) {
            return result;
          }
        }
        break;
      case 'Code':
        {
          if (element == null) {
            throw ArgumentError(
                'Instance of type Code must have at least one element');
          } else {
            final Map<String, dynamic> json = {};
            for (final e in element!) {
              json[e.name] = e.value.execute(context);
            }
            return CqlCode.fromJson(json);
          }
        }
      case 'Concept':
        {
          if (element == null) {
            throw ArgumentError(
                'Instance of type Concept must have at least one element');
          } else {
            final Map<String, dynamic> json = {};
            for (final e in element!) {
              json[e.name] = e.value.execute(context);
            }
            return CqlConcept.fromJson(json);
          }
        }

      // TODO(Dokotela): implement
      // case 'ValueSet': return ValueSet;
      // case 'CodeSystem': return CodeSystem;
      // case 'Interval': return IntervalType
      // case 'Quantity':
      // case 'Ratio':
      default:
        return null;
    }
    return null;
  }
}
