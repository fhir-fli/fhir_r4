import 'dart:convert';
import 'package:uuid/uuid.dart';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

class FhirUuid extends PrimitiveType<UuidValue> {
  FhirUuid._(this._valueUuid, this._isValid, [Element? element])
      : super(fhirType: 'uuid', element: element);

  /// Factory constructor to create FhirUuid from a dynamic input.
  factory FhirUuid(dynamic inValue, [Element? element]) {
    if (inValue is String && Uuid.isValidUUID(fromString: inValue)) {
      return FhirUuid._(UuidValue(inValue), true, element);
    } else if (inValue is UuidValue) {
      return FhirUuid._(inValue, true, element);
    }
    throw CannotBeConstructed<FhirUuid>(
        'FhirUuid cannot be constructed from $inValue.');
  }

  factory FhirUuid.fromJson(dynamic json) => FhirUuid(json);

  factory FhirUuid.fromYaml(dynamic yaml) => yaml is String
      ? FhirUuid.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirUuid.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirUuid>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  final UuidValue _valueUuid;
  final bool _isValid;

  @override
  bool get isValid => _isValid;

  @override
  UuidValue get value => _valueUuid;

  @override
  String toString() => _valueUuid.uuid;

  @override
  String toJson() => _valueUuid.uuid;

  @override
  String toYaml() => _valueUuid.uuid;

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUuid && other.value == _valueUuid) ||
      (other is UuidValue && other == _valueUuid) ||
      (other is String && other == _valueUuid.uuid);

  @override
  FhirUuid clone() => FhirUuid._(
        _valueUuid,
        _isValid,
        element?.clone() as Element?,
      );

  @override
  FhirUuid setElement(String name, dynamic value) {
    return FhirUuid(value, element?.setProperty(name, value));
  }

  factory FhirUuid.v1() {
    const Uuid uuid = Uuid();
    return FhirUuid(uuid.v1());
  }

  factory FhirUuid.v4() {
    const Uuid uuid = Uuid();
    return FhirUuid(uuid.v4());
  }

  factory FhirUuid.v5(String namespace, String name) {
    const Uuid uuid = Uuid();
    return FhirUuid(uuid.v5(namespace, name));
  }

  /// Validates if the provided UUID is valid.
  static bool isValidUuid(String uuid) {
    return Uuid.isValidUUID(fromString: uuid);
  }

  /// Parses a UUID string and returns a list of bytes (List<int>).
  static List<int> parseUuid(String uuid) {
    return Uuid.parse(uuid);
  }

  /// Unparses a list of bytes and returns a UUID string.
  static String unparseUuid(List<int> buffer) {
    return Uuid.unparse(buffer);
  }
}