import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirBooleanExtension on bool {
  FhirBoolean get toFhirBoolean => FhirBoolean(this);
}

class FhirBoolean extends PrimitiveType<bool> {
  FhirBoolean._(this._valueString, this._valueBoolean, this._isValid,
      [Element? element])
      : super(element: element);

  factory FhirBoolean(dynamic inValue, [Element? element]) {
    if (inValue is bool) {
      return FhirBoolean._(inValue.toString(), inValue, true, element);
    } else if (inValue is String) {
      final String lowerValue = inValue.toLowerCase();
      return <String>['true', 'false'].contains(lowerValue)
          ? FhirBoolean._(inValue, lowerValue == 'true', true, element)
          : FhirBoolean._(inValue, null, false, element);
    } else {
      throw CannotBeConstructed<FhirBoolean>(
          'Boolean cannot be constructed from $inValue of type '
          "'${inValue.runtimeType}'.");
    }
  }

  factory FhirBoolean.fromJson(dynamic json) => FhirBoolean(json);

  factory FhirBoolean.fromYaml(dynamic yaml) => yaml is String
      ? FhirBoolean.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirBoolean.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirBoolean>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'boolean';
  final String _valueString;
  final bool? _valueBoolean;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
  @override
  bool? get value => _valueBoolean;

  @override
  String toString() => _valueString;

  @override
  dynamic toJson() => _valueBoolean ?? _valueString;

  @override
  dynamic toYaml() => _valueBoolean ?? _valueString;

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirBoolean && other.value == _valueBoolean) ||
      (other is bool && other == _valueBoolean) ||
      (other is String && other == _valueString);

  @override
  FhirBoolean clone() => FhirBoolean._(
        _valueString,
        _valueBoolean,
        _isValid,
        element?.clone() as Element?,
      );

  /// Sets a property value and returns a new `FhirBoolean` instance.
  @override
  FhirBoolean setElement(String name, dynamic elementValue) {
    return FhirBoolean(value, element?.setProperty(name, elementValue));
  }

  /// Returns `true` if this `FhirBoolean` is `true`, and `false` otherwise.
  /// If either value is an invalid `FhirBoolean`, it returns false.
  bool operator &(dynamic other) {
    if (value == null) {
      return false;
    } else if (other is bool) {
      return other && value!;
    } else if (other is FhirBoolean) {
      return other.value! && value!;
    }
    return false;
  }

  bool operator |(dynamic other) {
    if (value == null) {
      return false;
    } else if (other is bool) {
      return other || value!;
    } else if (other is FhirBoolean) {
      return other.value! || value!;
    }

    return false;
  }

  bool operator ^(dynamic other) {
    if (value == null) {
      return false;
    } else if (other is bool) {
      return other ^ value!;
    } else if (other is FhirBoolean) {
      return other.value! ^ value!;
    }
    return false;
  }

  @override
  FhirBoolean copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirBoolean._(
      _valueString,
      _valueBoolean,
      _isValid,
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
}
