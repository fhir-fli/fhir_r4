// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of an address (physical / postal).
class AddressTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AddressTypeBuilder._({
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
  factory AddressTypeBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return AddressTypeBuilder._(
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

  /// Create empty [AddressTypeBuilder] with element only
  factory AddressTypeBuilder.empty() =>
      AddressTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [AddressTypeBuilder]
  /// from JSON.
  factory AddressTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AddressTypeBuilder cannot be constructed from JSON.',
      );
    }
    return AddressTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// postal
  static AddressTypeBuilder postal = AddressTypeBuilder._(
    validatedValue: 'postal',
    system: 'http://hl7.org/fhir/ValueSet/address-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Postal'.toFhirStringBuilder,
  );

  /// physical
  static AddressTypeBuilder physical = AddressTypeBuilder._(
    validatedValue: 'physical',
    system: 'http://hl7.org/fhir/ValueSet/address-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Physical'.toFhirStringBuilder,
  );

  /// both
  static AddressTypeBuilder both = AddressTypeBuilder._(
    validatedValue: 'both',
    system: 'http://hl7.org/fhir/ValueSet/address-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Postal & Physical'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static AddressTypeBuilder elementOnly =
      AddressTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<AddressTypeBuilder> values = [
    postal,
    physical,
    both,
  ];

  /// Clones the current instance
  @override
  AddressTypeBuilder clone() => AddressTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  AddressTypeBuilder withElement(ElementBuilder? newElement) {
    return AddressTypeBuilder._(validatedValue: value, element: newElement);
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
  AddressTypeBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return AddressTypeBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
