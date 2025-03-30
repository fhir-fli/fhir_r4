// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// MedicationDispense Status Codes
class MedicationDispenseStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MedicationDispenseStatusCodesBuilder._({
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
  factory MedicationDispenseStatusCodesBuilder(
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
    return MedicationDispenseStatusCodesBuilder._(
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

  /// Create empty [MedicationDispenseStatusCodesBuilder] with element only
  factory MedicationDispenseStatusCodesBuilder.empty() =>
      MedicationDispenseStatusCodesBuilder._(validatedValue: '');

  /// Factory constructor to create [MedicationDispenseStatusCodesBuilder]
  /// from JSON.
  factory MedicationDispenseStatusCodesBuilder.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseStatusCodesBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationDispenseStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return MedicationDispenseStatusCodesBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// preparation
  static MedicationDispenseStatusCodesBuilder preparation =
      MedicationDispenseStatusCodesBuilder._(
    validatedValue: 'preparation',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Preparation'.toFhirStringBuilder,
  );

  /// in_progress
  static MedicationDispenseStatusCodesBuilder in_progress =
      MedicationDispenseStatusCodesBuilder._(
    validatedValue: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Progress'.toFhirStringBuilder,
  );

  /// cancelled
  static MedicationDispenseStatusCodesBuilder cancelled =
      MedicationDispenseStatusCodesBuilder._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// on_hold
  static MedicationDispenseStatusCodesBuilder on_hold =
      MedicationDispenseStatusCodesBuilder._(
    validatedValue: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Hold'.toFhirStringBuilder,
  );

  /// completed
  static MedicationDispenseStatusCodesBuilder completed =
      MedicationDispenseStatusCodesBuilder._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static MedicationDispenseStatusCodesBuilder entered_in_error =
      MedicationDispenseStatusCodesBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// stopped
  static MedicationDispenseStatusCodesBuilder stopped =
      MedicationDispenseStatusCodesBuilder._(
    validatedValue: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Stopped'.toFhirStringBuilder,
  );

  /// declined
  static MedicationDispenseStatusCodesBuilder declined =
      MedicationDispenseStatusCodesBuilder._(
    validatedValue: 'declined',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Declined'.toFhirStringBuilder,
  );

  /// unknown
  static MedicationDispenseStatusCodesBuilder unknown =
      MedicationDispenseStatusCodesBuilder._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static MedicationDispenseStatusCodesBuilder elementOnly =
      MedicationDispenseStatusCodesBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<MedicationDispenseStatusCodesBuilder> values = [
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
  MedicationDispenseStatusCodesBuilder clone() =>
      MedicationDispenseStatusCodesBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  MedicationDispenseStatusCodesBuilder withElement(ElementBuilder? newElement) {
    return MedicationDispenseStatusCodesBuilder._(
        validatedValue: value, element: newElement);
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
  MedicationDispenseStatusCodesBuilder copyWith({
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
    return MedicationDispenseStatusCodesBuilder._(
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
