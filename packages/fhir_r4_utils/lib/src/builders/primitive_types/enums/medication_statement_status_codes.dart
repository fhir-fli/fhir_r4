// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// MedicationStatement Status Codes
class MedicationStatementStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MedicationStatementStatusCodesBuilder._({
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
  factory MedicationStatementStatusCodesBuilder(
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
    return MedicationStatementStatusCodesBuilder._(
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

  /// Create empty [MedicationStatementStatusCodesBuilder] with element only
  factory MedicationStatementStatusCodesBuilder.empty() =>
      MedicationStatementStatusCodesBuilder._(validatedValue: '');

  /// Factory constructor to create [MedicationStatementStatusCodesBuilder]
  /// from JSON.
  factory MedicationStatementStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationStatementStatusCodesBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationStatementStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return MedicationStatementStatusCodesBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// active
  static MedicationStatementStatusCodesBuilder active =
      MedicationStatementStatusCodesBuilder._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// completed
  static MedicationStatementStatusCodesBuilder completed =
      MedicationStatementStatusCodesBuilder._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static MedicationStatementStatusCodesBuilder entered_in_error =
      MedicationStatementStatusCodesBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// intended
  static MedicationStatementStatusCodesBuilder intended =
      MedicationStatementStatusCodesBuilder._(
    validatedValue: 'intended',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Intended'.toFhirStringBuilder,
  );

  /// stopped
  static MedicationStatementStatusCodesBuilder stopped =
      MedicationStatementStatusCodesBuilder._(
    validatedValue: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Stopped'.toFhirStringBuilder,
  );

  /// on_hold
  static MedicationStatementStatusCodesBuilder on_hold =
      MedicationStatementStatusCodesBuilder._(
    validatedValue: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Hold'.toFhirStringBuilder,
  );

  /// unknown
  static MedicationStatementStatusCodesBuilder unknown =
      MedicationStatementStatusCodesBuilder._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// not_taken
  static MedicationStatementStatusCodesBuilder not_taken =
      MedicationStatementStatusCodesBuilder._(
    validatedValue: 'not-taken',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Taken'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static MedicationStatementStatusCodesBuilder elementOnly =
      MedicationStatementStatusCodesBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<MedicationStatementStatusCodesBuilder> values = [
    active,
    completed,
    entered_in_error,
    intended,
    stopped,
    on_hold,
    unknown,
    not_taken,
  ];

  /// Clones the current instance
  @override
  MedicationStatementStatusCodesBuilder clone() =>
      MedicationStatementStatusCodesBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  MedicationStatementStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MedicationStatementStatusCodesBuilder._(
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
  MedicationStatementStatusCodesBuilder copyWith({
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
    return MedicationStatementStatusCodesBuilder._(
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
