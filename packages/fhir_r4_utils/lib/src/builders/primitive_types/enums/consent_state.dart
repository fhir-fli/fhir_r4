// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicates the state of the consent.
class ConsentStateBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConsentStateBuilder._({
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
  factory ConsentStateBuilder(
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
    return ConsentStateBuilder._(
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

  /// Create empty [ConsentStateBuilder] with element only
  factory ConsentStateBuilder.empty() =>
      ConsentStateBuilder._(validatedValue: '');

  /// Factory constructor to create [ConsentStateBuilder]
  /// from JSON.
  factory ConsentStateBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentStateBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentStateBuilder cannot be constructed from JSON.',
      );
    }
    return ConsentStateBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// draft
  static ConsentStateBuilder draft = ConsentStateBuilder._(
    validatedValue: 'draft',
    system: 'http://hl7.org/fhir/ValueSet/consent-state-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Pending'.toFhirStringBuilder,
  );

  /// proposed
  static ConsentStateBuilder proposed = ConsentStateBuilder._(
    validatedValue: 'proposed',
    system: 'http://hl7.org/fhir/ValueSet/consent-state-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Proposed'.toFhirStringBuilder,
  );

  /// active
  static ConsentStateBuilder active = ConsentStateBuilder._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/consent-state-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// rejected
  static ConsentStateBuilder rejected = ConsentStateBuilder._(
    validatedValue: 'rejected',
    system: 'http://hl7.org/fhir/ValueSet/consent-state-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Rejected'.toFhirStringBuilder,
  );

  /// inactive
  static ConsentStateBuilder inactive = ConsentStateBuilder._(
    validatedValue: 'inactive',
    system: 'http://hl7.org/fhir/ValueSet/consent-state-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Inactive'.toFhirStringBuilder,
  );

  /// entered_in_error
  static ConsentStateBuilder entered_in_error = ConsentStateBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/consent-state-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ConsentStateBuilder elementOnly =
      ConsentStateBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ConsentStateBuilder> values = [
    draft,
    proposed,
    active,
    rejected,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  ConsentStateBuilder clone() => ConsentStateBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ConsentStateBuilder withElement(ElementBuilder? newElement) {
    return ConsentStateBuilder._(validatedValue: value, element: newElement);
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
  ConsentStateBuilder copyWith({
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
    return ConsentStateBuilder._(
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
