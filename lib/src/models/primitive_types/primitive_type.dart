import 'package:fhir_r4/fhir_r4.dart';

/// Abstract base class for all FHIR primitive types
abstract class PrimitiveType<T> extends DataType {
  /// Main constructor for [PrimitiveType<T> ]
  PrimitiveType(
    this.value, {
    this.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  });

  @override
  String get fhirType => 'PrimitiveType';

  /// The primitive value (nullable)
  final T? value;

  /// Optional metadata element (nullable)
  final Element? element;

  /// Boolean getter to determine if the value is present
  bool get hasValue => value != null;

  /// Boolean getter to determine if the element is present
  bool get hasElement => element != null;

  /// Boolean getter to determine if both value and element are present
  bool get hasValueAndElement => hasValue && hasElement;

  /// Converts the instance to JSON, handling both value and element
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (value != null) json['value'] = value;
    if (element != null) json['_value'] = element!.toJson();
    return json;
  }

  /// Checks equality between two instances (deep comparison)
  @override
  bool equalsDeep(FhirBase? other) {
    return other is PrimitiveType<T> &&
        value == other.value &&
        element == other.element &&
        userData == other.userData;
  }

  /// Checks equality between two instances (shallow comparison)
  @override
  bool equalsShallow(FhirBase other) =>
      other is PrimitiveType && value == other.value;

  /// Overrides `==` for equality comparison
  bool equals(Object other) {
    if (identical(this, other)) return true;
    if (other is! PrimitiveType<T>) return false;
    return value == other.value && element == other.element;
  }

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Overrides `hashCode` for use in hash-based collections
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Provides a string representation of the instance
  @override
  String toString() =>
      value != null ? '$runtimeType[$value]' : super.toString();

  /// Clone method to create a deep copy of the instance
  @override
  PrimitiveType<T> clone();

  /// CopyWith method to create a modified copy of the instance
  @override
  PrimitiveType<T> copyWith({
    T? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  });
}
