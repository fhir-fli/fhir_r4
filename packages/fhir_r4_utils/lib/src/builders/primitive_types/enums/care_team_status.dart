// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicates the status of the care team.
class CareTeamStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CareTeamStatusBuilder._({
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
  factory CareTeamStatusBuilder(
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
    return CareTeamStatusBuilder._(
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

  /// Create empty [CareTeamStatusBuilder] with element only
  factory CareTeamStatusBuilder.empty() =>
      CareTeamStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [CareTeamStatusBuilder] from JSON.
  factory CareTeamStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CareTeamStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CareTeamStatusBuilder cannot be constructed from JSON.',
      );
    }
    return CareTeamStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// proposed
  static CareTeamStatusBuilder proposed = CareTeamStatusBuilder._(
    validatedValue: 'proposed',
    system: 'http://hl7.org/fhir/ValueSet/care-team-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Proposed'.toFhirStringBuilder,
  );

  /// active
  static CareTeamStatusBuilder active = CareTeamStatusBuilder._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/care-team-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// suspended
  static CareTeamStatusBuilder suspended = CareTeamStatusBuilder._(
    validatedValue: 'suspended',
    system: 'http://hl7.org/fhir/ValueSet/care-team-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Suspended'.toFhirStringBuilder,
  );

  /// inactive
  static CareTeamStatusBuilder inactive = CareTeamStatusBuilder._(
    validatedValue: 'inactive',
    system: 'http://hl7.org/fhir/ValueSet/care-team-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Inactive'.toFhirStringBuilder,
  );

  /// entered_in_error
  static CareTeamStatusBuilder entered_in_error = CareTeamStatusBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/care-team-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static CareTeamStatusBuilder elementOnly =
      CareTeamStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<CareTeamStatusBuilder> values = [
    proposed,
    active,
    suspended,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  CareTeamStatusBuilder clone() => CareTeamStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  CareTeamStatusBuilder withElement(ElementBuilder? newElement) {
    return CareTeamStatusBuilder._(validatedValue: value, element: newElement);
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
  CareTeamStatusBuilder copyWith({
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
    return CareTeamStatusBuilder._(
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
