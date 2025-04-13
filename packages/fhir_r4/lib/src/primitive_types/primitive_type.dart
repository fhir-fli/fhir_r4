part of 'primitive_types.dart';

/// The abstract base class for all FHIR primitive types.
///
/// Each FHIR primitive can carry:
/// - A raw [valueString] (nullable)
/// - Optional [element] metadata (which may hold extensions, etc.)
///
/// Subclasses often override:
/// - [fhirType] to match FHIR's type (e.g. `"boolean"`, `"decimal"`, etc.).
/// - [toJson], if the JSON output deviates from the simple string-based
/// `'value'`.
abstract class PrimitiveType extends DataType {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Internal constructor, used only by subclasses in the same library.
  ///
  /// - Merges [extension_] with [element?.extension_] so that all extensions
  ///   live in [DataType.extension_].
  /// - Throws if both [valueString] and [element] are `null`.
  const PrimitiveType._({
    required this.valueString,
    this.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  })  : assert(
          valueString != null || element != null,
          'Either valueString or element must be provided for a PrimitiveType.',
        ),
        super();

  // --------------------------------------------------------------------------
  // Fields
  // --------------------------------------------------------------------------

  /// The primitive FHIR value as a [String].
  ///
  /// For example:
  /// - For `boolean` types, it would be `"true"` or `"false"`.
  /// - For `uri`, it might be `"http://example.com"`.
  /// - For `base64Binary`, a Base64-encoded string.
  ///
  /// `null` indicates that this instance relies solely on [element]
  /// (extensions).
  final String? valueString;

  /// Optional FHIR metadata element (usually carrying extensions).
  final Element? element;

  // --------------------------------------------------------------------------
  // FHIR Overrides
  // --------------------------------------------------------------------------

  /// Returns the FHIR type name. Subclasses usually override this.
  @override
  String get fhirType => 'PrimitiveType';

  /// The "primitive" string value of this type (if any).
  @override
  String? get primitiveValue => valueString;

  // --------------------------------------------------------------------------
  // Flags / Booleans
  // --------------------------------------------------------------------------

  /// Returns `true` if [valueString] is non-null.
  bool get hasValue => valueString != null;

  /// Returns `true` if [element] is non-null.
  bool get hasElement => element != null;

  /// Returns `true` if both [valueString] and [element] are non-null.
  bool get hasValueAndElement => hasValue && hasElement;

  /// Returns `true` if the Type is considered string-based, otherwise `false`
  bool get stringBased => false;

  // --------------------------------------------------------------------------
  // JSON Serialization
  // --------------------------------------------------------------------------

  /// Default JSON serialization merges the raw `'value'` with `'_value'`
  /// (the [element]).
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (valueString != null) {
      json['value'] = valueString;
    }
    if (element != null) {
      json['_value'] = element!.toJson();
    }
    return json;
  }

  // --------------------------------------------------------------------------
  // Equality
  // --------------------------------------------------------------------------

  /// By default, deep equality checks [valueString], [element], and [userData].
  @override
  bool equalsDeep(FhirBase? other) {
    return other is PrimitiveType &&
        valueString == other.valueString &&
        element == other.element;
  }

  /// By default, shallow equality checks only [valueString].
  @override
  bool equalsShallow(FhirBase other) =>
      other is PrimitiveType && valueString == other.valueString;

  /// Convenience method matching [equalsDeep], except for checking [userData].
  bool equals(Object other) {
    if (identical(this, other)) return true;
    if (other is! PrimitiveType) return false;
    return valueString == other.valueString && element == other.element;
  }

  /// Operator `==` delegates to [equals].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Hash code uses [valueString] and [element].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Other Overrides
  // --------------------------------------------------------------------------

  /// Returns a debug-friendly string of the form `"ClassName[valueString]"`.
  @override
  String toString() =>
      valueString != null ? '$runtimeType[$valueString]' : super.toString();

  // --------------------------------------------------------------------------
  // Subclass Contracts
  // --------------------------------------------------------------------------

  /// Clones the object (deep copy) into the same subclass type.
  @override
  PrimitiveType clone();

  /// Returns a copy of `this` with specific fields replaced.
  @override
  $PrimitiveTypeCopyWith<PrimitiveType> get copyWith;

  /// Returns a list of all extensions, including those in [element].
  List<FhirExtension>? get allExtensions {
    final elementExtensions = element?.extension_;
    if (extension_ == null && elementExtensions == null) {
      return null;
    }
    if (extension_ == null) {
      return elementExtensions;
    }
    if (elementExtensions == null) {
      return extension_;
    }
    return [...extension_!, ...elementExtensions];
  }

  @override
  List<FhirBase> getChildrenByName(String name, [bool checkValid = false]) {
    if (name == 'id') {
      return [id!];
    } else if (name == 'extension') {
      return allExtensions ?? <FhirExtension>[];
    }
    return <FhirBase>[];
  }
}

/// The public interface for copyWith for Element.
/// Notice that each parameter is declared with its proper type.
abstract class $PrimitiveTypeCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  });
}
