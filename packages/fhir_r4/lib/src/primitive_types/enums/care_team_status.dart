// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicates the status of the care team.
class CareTeamStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  CareTeamStatus._({
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
  factory CareTeamStatus(
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
    return CareTeamStatus._(
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

  /// Create empty [CareTeamStatus] with element only
  factory CareTeamStatus.empty() => CareTeamStatus._(validatedValue: '');

  /// Factory constructor to create [CareTeamStatus] from JSON.
  factory CareTeamStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CareTeamStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CareTeamStatus cannot be constructed from JSON.',
      );
    }
    return CareTeamStatus._(
      validatedValue: value,
      element: element,
    );
  }

  /// proposed
  static final CareTeamStatus proposed = CareTeamStatus._(
    validatedValue: 'proposed',
    system: 'http://hl7.org/fhir/ValueSet/care-team-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Proposed'.toFhirString,
  );

  /// active
  static final CareTeamStatus active = CareTeamStatus._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/care-team-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// suspended
  static final CareTeamStatus suspended = CareTeamStatus._(
    validatedValue: 'suspended',
    system: 'http://hl7.org/fhir/ValueSet/care-team-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Suspended'.toFhirString,
  );

  /// inactive
  static final CareTeamStatus inactive = CareTeamStatus._(
    validatedValue: 'inactive',
    system: 'http://hl7.org/fhir/ValueSet/care-team-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Inactive'.toFhirString,
  );

  /// entered_in_error
  static final CareTeamStatus entered_in_error = CareTeamStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/care-team-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final CareTeamStatus elementOnly =
      CareTeamStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<CareTeamStatus> values = [
    proposed,
    active,
    suspended,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  CareTeamStatus clone() => CareTeamStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CareTeamStatus withElement(Element? newElement) {
    return CareTeamStatus._(validatedValue: value, element: newElement);
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
  CareTeamStatus copyWith({
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
    return CareTeamStatus._(
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
