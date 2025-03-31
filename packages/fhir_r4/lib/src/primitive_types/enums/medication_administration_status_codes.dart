// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// MedicationAdministration Status Codes
class MedicationAdministrationStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  MedicationAdministrationStatusCodes._({
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
  factory MedicationAdministrationStatusCodes(
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
    return MedicationAdministrationStatusCodes._(
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

  /// Create empty [MedicationAdministrationStatusCodes] with element only
  factory MedicationAdministrationStatusCodes.empty() =>
      MedicationAdministrationStatusCodes._(validatedValue: '');

  /// Factory constructor to create [MedicationAdministrationStatusCodes] from JSON.
  factory MedicationAdministrationStatusCodes.fromJson(
      Map<String, dynamic> json,) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationStatusCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationAdministrationStatusCodes cannot be constructed from JSON.',
      );
    }
    return MedicationAdministrationStatusCodes._(
      validatedValue: value,
      element: element,
    );
  }

  /// in_progress
  static final MedicationAdministrationStatusCodes in_progress =
      MedicationAdministrationStatusCodes._(
    validatedValue: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/medication-admin-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// not_done
  static final MedicationAdministrationStatusCodes not_done =
      MedicationAdministrationStatusCodes._(
    validatedValue: 'not-done',
    system: 'http://hl7.org/fhir/ValueSet/medication-admin-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Done'.toFhirString,
  );

  /// on_hold
  static final MedicationAdministrationStatusCodes on_hold =
      MedicationAdministrationStatusCodes._(
    validatedValue: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/medication-admin-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// completed
  static final MedicationAdministrationStatusCodes completed =
      MedicationAdministrationStatusCodes._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/medication-admin-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final MedicationAdministrationStatusCodes entered_in_error =
      MedicationAdministrationStatusCodes._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/medication-admin-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// stopped
  static final MedicationAdministrationStatusCodes stopped =
      MedicationAdministrationStatusCodes._(
    validatedValue: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/medication-admin-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Stopped'.toFhirString,
  );

  /// unknown
  static final MedicationAdministrationStatusCodes unknown =
      MedicationAdministrationStatusCodes._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/medication-admin-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final MedicationAdministrationStatusCodes elementOnly =
      MedicationAdministrationStatusCodes._(validatedValue: '');

  /// List of all enum-like values
  static final List<MedicationAdministrationStatusCodes> values = [
    in_progress,
    not_done,
    on_hold,
    completed,
    entered_in_error,
    stopped,
    unknown,
  ];

  /// Clones the current instance
  @override
  MedicationAdministrationStatusCodes clone() =>
      MedicationAdministrationStatusCodes._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationAdministrationStatusCodes withElement(Element? newElement) {
    return MedicationAdministrationStatusCodes._(
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
  MedicationAdministrationStatusCodes copyWith({
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
    return MedicationAdministrationStatusCodes._(
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
