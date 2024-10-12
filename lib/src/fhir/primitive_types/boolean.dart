import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// This extension is used to convert a Dart boolean to a FHIR boolean
extension FhirBooleanExtension on bool {
  /// This method converts a Dart boolean to a FHIR boolean
  FhirBoolean get toFhirBoolean => FhirBoolean(this);
}

/// This class represents the FHIR primitive type `boolean`
class FhirBoolean extends PrimitiveType<bool> {
  /// This constructor enforces valid input
  // ignore: avoid_positional_boolean_parameters
  FhirBoolean(bool input, [Element? element])
      : value = input,
        super(element: element);

  /// This method accepts a FHIR integer and returns a FHIR decimal
  factory FhirBoolean.fromJson(dynamic json) {
    if (json is bool) {
      return FhirBoolean(json);
    } else if (json is String) {
      final lowerValue = json.toLowerCase();
      if (lowerValue == 'true' || lowerValue == 'false') {
        return FhirBoolean(lowerValue == 'true');
      }
    }
    throw const FormatException('Invalid input for FhirBoolean');
  }

  /// This method accepts a dynamic input and returns a FHIR boolean
  factory FhirBoolean.fromYaml(dynamic yaml) => yaml is String
      ? FhirBoolean.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : throw const FormatException('Invalid Yaml format for FhirBoolean');
  @override
  final bool value;

  /// This method tries to parse a dynamic input into a FHIR boolean
  static FhirBoolean? tryParse(dynamic input) {
    if (input is bool) {
      return FhirBoolean(input);
    } else if (input is String) {
      final lowerValue = input.toLowerCase();
      if (lowerValue == 'true' || lowerValue == 'false') {
        return FhirBoolean(lowerValue == 'true');
      }
    }
    return null;
  }

  @override
  String get fhirType => 'boolean';

  @override
  bool toJson() => value;

  @override
  bool toYaml() => value;

  @override
  String toString() => value.toString();

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirBoolean && other.value == value) ||
      (other is bool && other == value);

  @override
  FhirBoolean clone() => FhirBoolean(value, element?.clone() as Element?);

  @override
  FhirBoolean setElement(String name, dynamic elementValue) {
    return FhirBoolean(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  @override
  FhirBoolean copyWith({
    bool? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirBoolean(
      newValue ?? value,
      element?.copyWith(
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        children: children,
        namedChildren: namedChildren,
      ),
    );
  }

  /// This method returns the logical AND of two [bool]s, or a [FhirBoolean]
  /// and a [bool]
  bool operator &(dynamic other) {
    if (other is bool) {
      return value && other;
    } else if (other is FhirBoolean) {
      return value && other.value;
    }
    return false;
  }

  /// This method returns the logical OR of two [bool]s, or a [FhirBoolean]
  /// and a [bool]
  bool operator |(dynamic other) {
    if (other is bool) {
      return value || other;
    } else if (other is FhirBoolean) {
      return value || other.value;
    }
    return false;
  }

  /// This method returns the logical XOR of two [bool]s, or a [FhirBoolean]
  /// and a [bool]
  bool operator ^(dynamic other) {
    if (other is bool) {
      return value ^ other;
    } else if (other is FhirBoolean) {
      return value ^ other.value;
    }
    return false;
  }
}
