// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Identifies the purpose for this identifier, if known .
class IdentifierUseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  IdentifierUseBuilder._({
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
  factory IdentifierUseBuilder(
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
    return IdentifierUseBuilder._(
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

  /// Create empty [IdentifierUseBuilder] with element only
  factory IdentifierUseBuilder.empty() =>
      IdentifierUseBuilder._(validatedValue: '');

  /// Factory constructor to create [IdentifierUseBuilder] from JSON.
  factory IdentifierUseBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierUseBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IdentifierUseBuilder cannot be constructed from JSON.',
      );
    }
    return IdentifierUseBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// usual
  static IdentifierUseBuilder usual = IdentifierUseBuilder._(
    validatedValue: 'usual',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Usual'.toFhirStringBuilder,
  );

  /// official
  static IdentifierUseBuilder official = IdentifierUseBuilder._(
    validatedValue: 'official',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Official'.toFhirStringBuilder,
  );

  /// temp
  static IdentifierUseBuilder temp = IdentifierUseBuilder._(
    validatedValue: 'temp',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Temp'.toFhirStringBuilder,
  );

  /// secondary
  static IdentifierUseBuilder secondary = IdentifierUseBuilder._(
    validatedValue: 'secondary',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Secondary'.toFhirStringBuilder,
  );

  /// old
  static IdentifierUseBuilder old = IdentifierUseBuilder._(
    validatedValue: 'old',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Old'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static IdentifierUseBuilder elementOnly =
      IdentifierUseBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<IdentifierUseBuilder> values = [
    usual,
    official,
    temp,
    secondary,
    old,
  ];

  /// Clones the current instance
  @override
  IdentifierUseBuilder clone() => IdentifierUseBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  IdentifierUseBuilder withElement(ElementBuilder? newElement) {
    return IdentifierUseBuilder._(validatedValue: value, element: newElement);
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
  IdentifierUseBuilder copyWith({
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
    return IdentifierUseBuilder._(
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
