// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Biologically Derived Product Status.
class BiologicallyDerivedProductStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  BiologicallyDerivedProductStatus._({
    required super.validatedValue,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory BiologicallyDerivedProductStatus(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return BiologicallyDerivedProductStatus._(
      validatedValue: validated,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [BiologicallyDerivedProductStatus] with element only
  factory BiologicallyDerivedProductStatus.empty() =>
      BiologicallyDerivedProductStatus._(validatedValue: '');

  /// Factory constructor to create [BiologicallyDerivedProductStatus] from JSON.
  factory BiologicallyDerivedProductStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'BiologicallyDerivedProductStatus cannot be constructed from JSON.',);
    }
    return BiologicallyDerivedProductStatus._(
        validatedValue: value, element: element,);
  }

  /// available
  static final BiologicallyDerivedProductStatus available =
      BiologicallyDerivedProductStatus._(
    validatedValue: 'available',
    system: 'http://hl7.org/fhir/ValueSet/product-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Available'.toFhirString,
  );

  /// unavailable
  static final BiologicallyDerivedProductStatus unavailable =
      BiologicallyDerivedProductStatus._(
    validatedValue: 'unavailable',
    system: 'http://hl7.org/fhir/ValueSet/product-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unavailable'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final BiologicallyDerivedProductStatus elementOnly =
      BiologicallyDerivedProductStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<BiologicallyDerivedProductStatus> values = [
    available,
    unavailable,
  ];

  /// Clones the current instance
  @override
  BiologicallyDerivedProductStatus clone() =>
      BiologicallyDerivedProductStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductStatus withElement(Element? newElement) {
    return BiologicallyDerivedProductStatus._(
        validatedValue: value, element: newElement,);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  BiologicallyDerivedProductStatus copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return BiologicallyDerivedProductStatus._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
