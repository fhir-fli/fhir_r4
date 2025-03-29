// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// MedicationRequest Status Codes
class MedicationrequestStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  MedicationrequestStatus._({
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
  factory MedicationrequestStatus(
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
    return MedicationrequestStatus._(
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

  /// Create empty [MedicationrequestStatus] with element only
  factory MedicationrequestStatus.empty() =>
      MedicationrequestStatus._(validatedValue: '');

  /// Factory constructor to create [MedicationrequestStatus] from JSON.
  factory MedicationrequestStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationrequestStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationrequestStatus cannot be constructed from JSON.',
      );
    }
    return MedicationrequestStatus._(
      validatedValue: value,
      element: element,
    );
  }

  /// active
  static final MedicationrequestStatus active = MedicationrequestStatus._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// on_hold
  static final MedicationrequestStatus on_hold = MedicationrequestStatus._(
    validatedValue: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// cancelled
  static final MedicationrequestStatus cancelled = MedicationrequestStatus._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// completed
  static final MedicationrequestStatus completed = MedicationrequestStatus._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final MedicationrequestStatus entered_in_error =
      MedicationrequestStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// stopped
  static final MedicationrequestStatus stopped = MedicationrequestStatus._(
    validatedValue: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Stopped'.toFhirString,
  );

  /// draft
  static final MedicationrequestStatus draft = MedicationrequestStatus._(
    validatedValue: 'draft',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Draft'.toFhirString,
  );

  /// unknown
  static final MedicationrequestStatus unknown = MedicationrequestStatus._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final MedicationrequestStatus elementOnly =
      MedicationrequestStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<MedicationrequestStatus> values = [
    active,
    on_hold,
    cancelled,
    completed,
    entered_in_error,
    stopped,
    draft,
    unknown,
  ];

  /// Clones the current instance
  @override
  MedicationrequestStatus clone() => MedicationrequestStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationrequestStatus withElement(Element? newElement) {
    return MedicationrequestStatus._(
      validatedValue: value,
      element: newElement,
    );
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
  MedicationrequestStatus copyWith({
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
    return MedicationrequestStatus._(
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
