// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for MedicationAdministrationStatusCodes
enum MedicationAdministrationStatusCodesBuilderEnum {
  /// in-progress
  inProgress,

  /// not-done
  notDone,

  /// on-hold
  onHold,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// stopped
  stopped,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MedicationAdministrationStatusCodesBuilderEnum.inProgress:
        return 'in-progress';
      case MedicationAdministrationStatusCodesBuilderEnum.notDone:
        return 'not-done';
      case MedicationAdministrationStatusCodesBuilderEnum.onHold:
        return 'on-hold';
      case MedicationAdministrationStatusCodesBuilderEnum.completed:
        return 'completed';
      case MedicationAdministrationStatusCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
      case MedicationAdministrationStatusCodesBuilderEnum.stopped:
        return 'stopped';
      case MedicationAdministrationStatusCodesBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationAdministrationStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationAdministrationStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationAdministrationStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'in-progress':
        return MedicationAdministrationStatusCodesBuilderEnum.inProgress;
      case 'not-done':
        return MedicationAdministrationStatusCodesBuilderEnum.notDone;
      case 'on-hold':
        return MedicationAdministrationStatusCodesBuilderEnum.onHold;
      case 'completed':
        return MedicationAdministrationStatusCodesBuilderEnum.completed;
      case 'entered-in-error':
        return MedicationAdministrationStatusCodesBuilderEnum.enteredInError;
      case 'stopped':
        return MedicationAdministrationStatusCodesBuilderEnum.stopped;
      case 'unknown':
        return MedicationAdministrationStatusCodesBuilderEnum.unknown;
    }
    return null;
  }
}

/// MedicationAdministration Status Codes
class MedicationAdministrationStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MedicationAdministrationStatusCodesBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = MedicationAdministrationStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return MedicationAdministrationStatusCodesBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [MedicationAdministrationStatusCodesBuilder]
  /// with element only
  factory MedicationAdministrationStatusCodesBuilder.empty() =>
      MedicationAdministrationStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [MedicationAdministrationStatusCodesBuilder] from JSON.
  factory MedicationAdministrationStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationAdministrationStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return MedicationAdministrationStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for MedicationAdministrationStatusCodesBuilder
  final MedicationAdministrationStatusCodesBuilderEnum? valueEnum;

  /// in_progress
  static MedicationAdministrationStatusCodesBuilder inProgress =
      MedicationAdministrationStatusCodesBuilder._(
    valueString: 'in-progress',
    valueEnum: MedicationAdministrationStatusCodesBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-admin-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// not_done
  static MedicationAdministrationStatusCodesBuilder notDone =
      MedicationAdministrationStatusCodesBuilder._(
    valueString: 'not-done',
    valueEnum: MedicationAdministrationStatusCodesBuilderEnum.notDone,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-admin-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Done',
    ),
  );

  /// on_hold
  static MedicationAdministrationStatusCodesBuilder onHold =
      MedicationAdministrationStatusCodesBuilder._(
    valueString: 'on-hold',
    valueEnum: MedicationAdministrationStatusCodesBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-admin-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// completed
  static MedicationAdministrationStatusCodesBuilder completed =
      MedicationAdministrationStatusCodesBuilder._(
    valueString: 'completed',
    valueEnum: MedicationAdministrationStatusCodesBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-admin-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static MedicationAdministrationStatusCodesBuilder enteredInError =
      MedicationAdministrationStatusCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum: MedicationAdministrationStatusCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-admin-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// stopped
  static MedicationAdministrationStatusCodesBuilder stopped =
      MedicationAdministrationStatusCodesBuilder._(
    valueString: 'stopped',
    valueEnum: MedicationAdministrationStatusCodesBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-admin-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// unknown
  static MedicationAdministrationStatusCodesBuilder unknown =
      MedicationAdministrationStatusCodesBuilder._(
    valueString: 'unknown',
    valueEnum: MedicationAdministrationStatusCodesBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-admin-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static MedicationAdministrationStatusCodesBuilder elementOnly =
      MedicationAdministrationStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<MedicationAdministrationStatusCodesBuilder> values = [
    inProgress,
    notDone,
    onHold,
    completed,
    enteredInError,
    stopped,
    unknown,
  ];

  /// Returns the enum value with an element attached
  MedicationAdministrationStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MedicationAdministrationStatusCodesBuilder._(
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
}
