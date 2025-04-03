// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// MedicationDispense Status Codes
class MedicationDispenseStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MedicationDispenseStatusCodesBuilder._({
    required super.valueString,
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
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return MedicationDispenseStatusCodesBuilder._(
      valueString: valueString,
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
      MedicationDispenseStatusCodesBuilder._(valueString: '');

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
      valueString: value,
      element: element,
    );
  }

  /// preparation
  static MedicationDispenseStatusCodesBuilder preparation =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'preparation',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Preparation'.toFhirStringBuilder,
  );

  /// in_progress
  static MedicationDispenseStatusCodesBuilder in_progress =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Progress'.toFhirStringBuilder,
  );

  /// cancelled
  static MedicationDispenseStatusCodesBuilder cancelled =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// on_hold
  static MedicationDispenseStatusCodesBuilder on_hold =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Hold'.toFhirStringBuilder,
  );

  /// completed
  static MedicationDispenseStatusCodesBuilder completed =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static MedicationDispenseStatusCodesBuilder entered_in_error =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// stopped
  static MedicationDispenseStatusCodesBuilder stopped =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Stopped'.toFhirStringBuilder,
  );

  /// declined
  static MedicationDispenseStatusCodesBuilder declined =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'declined',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Declined'.toFhirStringBuilder,
  );

  /// unknown
  static MedicationDispenseStatusCodesBuilder unknown =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/medicationdispense-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static MedicationDispenseStatusCodesBuilder elementOnly =
      MedicationDispenseStatusCodesBuilder._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  MedicationDispenseStatusCodesBuilder withElement(ElementBuilder? newElement) {
    return MedicationDispenseStatusCodesBuilder._(
        valueString: valueString, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  MedicationDispenseStatusCodesBuilder copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for MedicationDispenseStatusCodes: $newValue');
    }
    return MedicationDispenseStatusCodesBuilder._(
      valueString: newValue ?? valueString,
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
