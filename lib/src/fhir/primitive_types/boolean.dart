import 'dart:convert';

import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirBooleanExtension on bool {
  FhirBoolean get toFhirBoolean => FhirBoolean(this);
}

class FhirBoolean extends PrimitiveType<bool> {
  @override
  final bool value;

  FhirBoolean(bool input, [Element? element])
      : value = input,
        super(element: element);

  static FhirBoolean? tryParse(dynamic input) {
    if (input is bool) {
      return FhirBoolean(input);
    } else if (input is String) {
      final String lowerValue = input.toLowerCase();
      if (lowerValue == 'true' || lowerValue == 'false') {
        return FhirBoolean(lowerValue == 'true');
      }
    }
    return null;
  }

  factory FhirBoolean.fromJson(dynamic json) {
    if (json is bool) {
      return FhirBoolean(json);
    } else if (json is String) {
      final String lowerValue = json.toLowerCase();
      if (lowerValue == 'true' || lowerValue == 'false') {
        return FhirBoolean(lowerValue == 'true');
      }
    }
    throw const FormatException('Invalid input for FhirBoolean');
  }

  factory FhirBoolean.fromYaml(dynamic yaml) => yaml is String
      ? FhirBoolean.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : throw const FormatException('Invalid Yaml format for FhirBoolean');

  @override
  String get fhirType => 'boolean';

  @override
  bool toJson() => value;

  @override
  bool toYaml() => value;

  @override
  String toString() => value.toString();

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirBoolean && other.value == value) ||
      (other is bool && other == value);

  @override
  FhirBoolean clone() => FhirBoolean(value, element?.clone() as Element?);

  @override
  FhirBoolean setElement(String name, dynamic elementValue) {
    return FhirBoolean(value, element?.setProperty(name, elementValue));
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

  bool operator &(dynamic other) {
    if (other is bool) {
      return value && other;
    } else if (other is FhirBoolean) {
      return value && other.value;
    }
    return false;
  }

  bool operator |(dynamic other) {
    if (other is bool) {
      return value || other;
    } else if (other is FhirBoolean) {
      return value || other.value;
    }
    return false;
  }

  bool operator ^(dynamic other) {
    if (other is bool) {
      return value ^ other;
    } else if (other is FhirBoolean) {
      return value ^ other.value;
    }
    return false;
  }
}
