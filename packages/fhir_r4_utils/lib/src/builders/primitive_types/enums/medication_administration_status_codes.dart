// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// MedicationAdministration Status Codes
class MedicationAdministrationStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MedicationAdministrationStatusCodesBuilder._({
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
  factory MedicationAdministrationStatusCodesBuilder(
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
    return MedicationAdministrationStatusCodesBuilder._(
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

  /// Create empty [MedicationAdministrationStatusCodesBuilder] with element only
  factory MedicationAdministrationStatusCodesBuilder.empty() =>
      MedicationAdministrationStatusCodesBuilder._(validatedValue: '');

  /// Factory constructor to create [MedicationAdministrationStatusCodesBuilder]
  /// from JSON.
  factory MedicationAdministrationStatusCodesBuilder.fromJson(
      Map<String, dynamic> json,) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationStatusCodesBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationAdministrationStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return MedicationAdministrationStatusCodesBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// in_progress
  static MedicationAdministrationStatusCodesBuilder in_progress =
      MedicationAdministrationStatusCodesBuilder._(
    validatedValue: 'in-progress',
    system:
        'http://hl7.org/fhir/ValueSet/medication-admin-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Progress'.toFhirStringBuilder,
  );

  /// not_done
  static MedicationAdministrationStatusCodesBuilder not_done =
      MedicationAdministrationStatusCodesBuilder._(
    validatedValue: 'not-done',
    system:
        'http://hl7.org/fhir/ValueSet/medication-admin-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Done'.toFhirStringBuilder,
  );

  /// on_hold
  static MedicationAdministrationStatusCodesBuilder on_hold =
      MedicationAdministrationStatusCodesBuilder._(
    validatedValue: 'on-hold',
    system:
        'http://hl7.org/fhir/ValueSet/medication-admin-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Hold'.toFhirStringBuilder,
  );

  /// completed
  static MedicationAdministrationStatusCodesBuilder completed =
      MedicationAdministrationStatusCodesBuilder._(
    validatedValue: 'completed',
    system:
        'http://hl7.org/fhir/ValueSet/medication-admin-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static MedicationAdministrationStatusCodesBuilder entered_in_error =
      MedicationAdministrationStatusCodesBuilder._(
    validatedValue: 'entered-in-error',
    system:
        'http://hl7.org/fhir/ValueSet/medication-admin-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// stopped
  static MedicationAdministrationStatusCodesBuilder stopped =
      MedicationAdministrationStatusCodesBuilder._(
    validatedValue: 'stopped',
    system:
        'http://hl7.org/fhir/ValueSet/medication-admin-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Stopped'.toFhirStringBuilder,
  );

  /// unknown
  static MedicationAdministrationStatusCodesBuilder unknown =
      MedicationAdministrationStatusCodesBuilder._(
    validatedValue: 'unknown',
    system:
        'http://hl7.org/fhir/ValueSet/medication-admin-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static MedicationAdministrationStatusCodesBuilder elementOnly =
      MedicationAdministrationStatusCodesBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<MedicationAdministrationStatusCodesBuilder> values = [
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
  MedicationAdministrationStatusCodesBuilder clone() =>
      MedicationAdministrationStatusCodesBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  MedicationAdministrationStatusCodesBuilder withElement(
      ElementBuilder? newElement,) {
    return MedicationAdministrationStatusCodesBuilder._(
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
  MedicationAdministrationStatusCodesBuilder copyWith({
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
    return MedicationAdministrationStatusCodesBuilder._(
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
