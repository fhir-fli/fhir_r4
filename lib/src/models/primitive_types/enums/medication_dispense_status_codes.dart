// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// MedicationDispense Status Codes
class MedicationDispenseStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  MedicationDispenseStatusCodes._({
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
  factory MedicationDispenseStatusCodes(
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
    return MedicationDispenseStatusCodes._(
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

  /// Create empty [MedicationDispenseStatusCodes] with element only
  factory MedicationDispenseStatusCodes.empty() =>
      MedicationDispenseStatusCodes._(validatedValue: '');

  /// Factory constructor to create [MedicationDispenseStatusCodes] from JSON.
  factory MedicationDispenseStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationDispenseStatusCodes cannot be constructed from JSON.',
      );
    }
    return MedicationDispenseStatusCodes._(
      validatedValue: value,
      element: element,
    );
  }

  /// preparation
  static final MedicationDispenseStatusCodes preparation =
      MedicationDispenseStatusCodes._(
    validatedValue: 'preparation',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Preparation'.toFhirString,
  );

  /// in_progress
  static final MedicationDispenseStatusCodes in_progress =
      MedicationDispenseStatusCodes._(
    validatedValue: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// cancelled
  static final MedicationDispenseStatusCodes cancelled =
      MedicationDispenseStatusCodes._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// on_hold
  static final MedicationDispenseStatusCodes on_hold =
      MedicationDispenseStatusCodes._(
    validatedValue: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// completed
  static final MedicationDispenseStatusCodes completed =
      MedicationDispenseStatusCodes._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final MedicationDispenseStatusCodes entered_in_error =
      MedicationDispenseStatusCodes._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// stopped
  static final MedicationDispenseStatusCodes stopped =
      MedicationDispenseStatusCodes._(
    validatedValue: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Stopped'.toFhirString,
  );

  /// declined
  static final MedicationDispenseStatusCodes declined =
      MedicationDispenseStatusCodes._(
    validatedValue: 'declined',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Declined'.toFhirString,
  );

  /// unknown
  static final MedicationDispenseStatusCodes unknown =
      MedicationDispenseStatusCodes._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final MedicationDispenseStatusCodes elementOnly =
      MedicationDispenseStatusCodes._(validatedValue: '');

  /// List of all enum-like values
  static final List<MedicationDispenseStatusCodes> values = [
    preparation,
    in_progress,
    cancelled,
    on_hold,
    completed,
    entered_in_error,
    stopped,
    declined,
    unknown,
  ];

  /// Clones the current instance
  @override
  MedicationDispenseStatusCodes clone() => MedicationDispenseStatusCodes._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationDispenseStatusCodes withElement(Element? newElement) {
    return MedicationDispenseStatusCodes._(
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
  MedicationDispenseStatusCodes copyWith({
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
    return MedicationDispenseStatusCodes._(
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
