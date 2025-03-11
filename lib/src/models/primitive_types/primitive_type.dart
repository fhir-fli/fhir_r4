part of 'primitive_types.dart';

/// Abstract base class for all FHIR primitive types
abstract class PrimitiveType<T> extends DataType {
  /// Internal constructor used only by subclasses (same library).
  /// It's *not* const, because we do runtime merging of extensions.
  PrimitiveType._({
    required this.value,
    this.element,
    super.id,
    List<FhirExtension>? extension_,
    super.disallowExtensions,
    String objectPath = 'PrimitiveType',
  }) : super(
          extension_: _mergeExtensions(extension_, element),
          objectPath: objectPath,
        );

  /// The primitive value (nullable)
  final T? value;

  /// Optional metadata element (nullable)
  final Element? element;

  /// By default, the FHIR type is just 'PrimitiveType',
  /// though subclasses often override it (e.g., 'boolean', 'decimal', etc.).
  @override
  String get fhirType => 'PrimitiveType';

  /// Returns `true` if `value != null`
  bool get hasValue => value != null;

  /// Returns `true` if `element != null`
  bool get hasElement => element != null;

  /// Returns `true` if both are non-null
  bool get hasValueAndElement => hasValue && hasElement;

  /// Default JSON serialization merges `value` and `_value` (Element).
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (value != null) {
      json['value'] = value;
    }
    if (element != null) {
      json['_value'] = element!.toJson();
    }
    return json;
  }

  /// By default, deep equality checks `value`, `element`, and `userData`
  @override
  bool equalsDeep(FhirBase? other) {
    return other is PrimitiveType<T> &&
        value == other.value &&
        element == other.element &&
        userData == other.userData;
  }

  /// By default, shallow equality checks just `value`
  @override
  bool equalsShallow(FhirBase other) =>
      other is PrimitiveType<T> && value == other.value;

  /// Our own convenience method
  bool equals(Object other) {
    if (identical(this, other)) return true;
    if (other is! PrimitiveType<T>) return false;
    return value == other.value && element == other.element;
  }

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// If we have a value, return "ClassName[value]",
  /// otherwise default super.toString().
  @override
  String toString() =>
      value != null ? '$runtimeType[$value]' : super.toString();

  /// The "primitive" representation as a string
  @override
  String? get primitiveValue => value?.toString();

  /// Subclasses must each implement clone() returning their own concrete type
  @override
  PrimitiveType<T> clone();

  /// Subclasses must each implement copyWith() returning their own
  /// concrete type
  @override
  PrimitiveType<T> copyWith({
    T? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  });

  /// Subclasses must implement createProperty if they have special logic,
  /// else can simply return `this`.
  @override
  PrimitiveType<T> createProperty(String propertyName);

  /// Merges the child constructor's [extension_] with [element?.extension_].
  /// If both are non-null, we concatenate. If only one is non-null, we use it.
  static List<FhirExtension>? _mergeExtensions(
    List<FhirExtension>? baseExtensions,
    Element? element,
  ) {
    final elementExtensions = element?.extension_;
    if (baseExtensions == null && elementExtensions == null) {
      return null;
    }
    if (baseExtensions == null) {
      return elementExtensions;
    }
    if (elementExtensions == null) {
      return baseExtensions;
    }
    return [...baseExtensions, ...elementExtensions];
  }
}
