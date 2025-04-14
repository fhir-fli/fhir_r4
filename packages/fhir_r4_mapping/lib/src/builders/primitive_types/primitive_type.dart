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
abstract class PrimitiveTypeBuilder extends DataTypeBuilder {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Internal constructor, used only by subclasses in the same library.
  ///
  /// - Merges [extension_] with [element?.extension_] so that all extensions
  ///   live in [DataTypeBuilder.extension_].
  /// - Throws if both [valueString] and [element] are `null`.
  PrimitiveTypeBuilder._({
    required this.valueString,
    this.element,
    super.id,
    List<FhirExtensionBuilder>? extension_,
    super.disallowExtensions,
    String objectPath = 'PrimitiveTypeBuilder',
  }) : super(
          extension_: _mergeExtensions(extension_, element),
          objectPath: objectPath,
        ) {
    if (valueString == null && element == null) {
      throw ArgumentError('A value or element is required for $objectPath');
    }
  }

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
  String? valueString;

  /// Optional FHIR metadata element (usually carrying extensions).
  ElementBuilder? element;

  // --------------------------------------------------------------------------
  // FHIR Overrides
  // --------------------------------------------------------------------------

  /// Returns the FHIR type name. Subclasses usually override this.
  @override
  String get fhirType => 'PrimitiveTypeBuilder';

  /// The "primitive" string value of this type (if any).
  @override
  String? get primitiveValue => valueString;

  // --------------------------------------------------------------------------
  // Flags / Booleans
  // --------------------------------------------------------------------------

  /// Returns `true` if [valueString] is non-null.
  bool get hasValue => valueString != null;

  /// Returns `true` if [element] is non-null.
  bool get hasElementBuilder => element != null;

  /// Returns `true` if both [valueString] and [element] are non-null.
  bool get hasValueAndElementBuilder => hasValue && hasElementBuilder;

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
  bool equalsDeep(FhirBaseBuilder? other) {
    return other is PrimitiveTypeBuilder &&
        valueString == other.valueString &&
        element == other.element &&
        userData == other.userData;
  }

  /// By default, shallow equality checks only [valueString].
  @override
  bool equalsShallow(FhirBaseBuilder other) =>
      other is PrimitiveTypeBuilder && valueString == other.valueString;

  /// Convenience method matching [equalsDeep], except for checking [userData].
  bool equals(Object other) {
    if (identical(this, other)) return true;
    if (other is! PrimitiveTypeBuilder) return false;
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
  PrimitiveTypeBuilder clone();

  /// Returns a copy of `this` with specific fields replaced.
  @override
  PrimitiveTypeBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  });

  /// Subclasses must implement [createProperty]; if they have no specialized
  /// logic, they can just return `this`.
  @override
  PrimitiveTypeBuilder createProperty(String propertyName);

  // --------------------------------------------------------------------------
  // Internal Utilities
  // --------------------------------------------------------------------------

  /// Merges the child constructor's [extension_] with [element?.extension_].
  /// If both are non-null, concatenates them.
  static List<FhirExtensionBuilder>? _mergeExtensions(
    List<FhirExtensionBuilder>? baseExtensions,
    ElementBuilder? element,
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
