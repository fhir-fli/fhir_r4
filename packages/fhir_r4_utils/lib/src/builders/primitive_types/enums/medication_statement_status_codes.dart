// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// MedicationStatement Status Codes
class MedicationStatementStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MedicationStatementStatusCodesBuilder._({
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
  factory MedicationStatementStatusCodesBuilder(
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
    return MedicationStatementStatusCodesBuilder._(
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

  /// Create empty [MedicationStatementStatusCodesBuilder] with element only
  factory MedicationStatementStatusCodesBuilder.empty() =>
      MedicationStatementStatusCodesBuilder._(valueString: '');

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
      valueString: value,
      element: element,
    );
  }

  /// active
  static MedicationStatementStatusCodesBuilder active =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'active',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// completed
  static MedicationStatementStatusCodesBuilder completed =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static MedicationStatementStatusCodesBuilder entered_in_error =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// intended
  static MedicationStatementStatusCodesBuilder intended =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'intended',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Intended'.toFhirStringBuilder,
  );

  /// stopped
  static MedicationStatementStatusCodesBuilder stopped =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Stopped'.toFhirStringBuilder,
  );

  /// on_hold
  static MedicationStatementStatusCodesBuilder on_hold =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Hold'.toFhirStringBuilder,
  );

  /// unknown
  static MedicationStatementStatusCodesBuilder unknown =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// not_taken
  static MedicationStatementStatusCodesBuilder not_taken =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'not-taken',
    system: 'http://hl7.org/fhir/ValueSet/medication-statement-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Taken'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static MedicationStatementStatusCodesBuilder elementOnly =
      MedicationStatementStatusCodesBuilder._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  MedicationStatementStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MedicationStatementStatusCodesBuilder._(
      valueString: valueString,
      element: newElement,
    );
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
  MedicationStatementStatusCodesBuilder copyWith({
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
        'Invalid input for MedicationStatementStatusCodes: $newValue',
      );
    }
    return MedicationStatementStatusCodesBuilder._(
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
