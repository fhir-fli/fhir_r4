import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:uuid/uuid.dart';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirUuidExtension on String {
  FhirUuid get toFhirUuid => FhirUuid(this);
}

extension FhirUuidValueExtension on UuidValue {
  FhirUuid get toFhirUuid => FhirUuid.fromUuid(this);
}

@Entity()
class FhirUuid extends PrimitiveType<UuidValue> {
  @override
  final UuidValue value;

  // Constructor only accepts valid UuidValue or String input
  FhirUuid(String input, [Element? element])
      : value = _validateUuid(input),
        super(element: element);

  FhirUuid.fromUuid(UuidValue input, [Element? element])
      : value = input,
        super(element: element);

  static FhirUuid? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirUuid(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  // Validate the input and return a UuidValue object
  static UuidValue _validateUuid(String input) {
    if (Uuid.isValidUUID(fromString: input)) {
      return UuidValue(input);
    } else {
      throw FormatException(
          'FhirUuid cannot be constructed from invalid String: $input');
    }
  }

  // fromJson only accepts a String and validates it
  factory FhirUuid.fromJson(dynamic json) {
    if (json is String) {
      return FhirUuid(json);
    } else {
      throw const FormatException('Invalid input for FhirUuid');
    }
  }

  factory FhirUuid.fromYaml(String yaml) =>
      FhirUuid.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))) as String);

  @override
  @Id()
  int dbId = 0;

  @override
  String get fhirType => 'uuid';

  // Convert the stored UuidValue back to a string for output formats
  @override
  String toJson() => value.uuid;
  @override
  String toYaml() => value.uuid;
  @override
  String toString() => value.uuid;
  @override
  String toJsonString() => jsonEncode(toJson());

  // Equality check, can compare against another FhirUuid, UuidValue, or String
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUuid && other.value == value) ||
      (other is UuidValue && other == value) ||
      (other is String &&
          Uuid.isValidUUID(fromString: other) &&
          UuidValue(other) == value);

  // Clone the object
  @override
  FhirUuid clone() => FhirUuid.fromUuid(value, element?.clone() as Element?);

  // UUID generation factories
  factory FhirUuid.v1([Element? element]) {
    const Uuid uuid = Uuid();
    return FhirUuid(uuid.v1(), element);
  }

  factory FhirUuid.v4([Element? element]) {
    const Uuid uuid = Uuid();
    return FhirUuid(uuid.v4(), element);
  }

  factory FhirUuid.v5(String namespace, String name, [Element? element]) {
    const Uuid uuid = Uuid();
    return FhirUuid(uuid.v5(namespace, name), element);
  }

  /// Validates if the provided UUID is valid
  static bool isValidUuid(String uuid) {
    return Uuid.isValidUUID(fromString: uuid);
  }

  /// Parses a UUID string and returns a list of bytes (List<int>)
  static List<int> parseUuid(String uuid) {
    return Uuid.parse(uuid);
  }

  /// Unparses a list of bytes and returns a UUID string
  static String unparseUuid(List<int> buffer) {
    return Uuid.unparse(buffer);
  }

  // Bitwise operations on Uuid (mock example, just as placeholders)
  FhirUuid operator &(dynamic other) {
    throw UnsupportedError('Bitwise operations are not supported on Uuid');
  }

  FhirUuid operator |(dynamic other) {
    throw UnsupportedError('Bitwise operations are not supported on Uuid');
  }

  // Additional placeholder operations as examples
  FhirUuid operator ^(dynamic other) {
    throw UnsupportedError('Bitwise operations are not supported on Uuid');
  }

  @override
  FhirUuid setElement(String name, dynamic elementValue) {
    return FhirUuid.fromUuid(value, element?.setProperty(name, elementValue));
  }

  @override
  FhirUuid copyWith({
    UuidValue? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirUuid.fromUuid(
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
}
