// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for MedicationStatementStatusCodes
enum MedicationStatementStatusCodesBuilderEnum {
  /// active
  active,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// intended
  intended,

  /// stopped
  stopped,

  /// on-hold
  onHold,

  /// unknown
  unknown,

  /// not-taken
  notTaken,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MedicationStatementStatusCodesBuilderEnum.active:
        return 'active';
      case MedicationStatementStatusCodesBuilderEnum.completed:
        return 'completed';
      case MedicationStatementStatusCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
      case MedicationStatementStatusCodesBuilderEnum.intended:
        return 'intended';
      case MedicationStatementStatusCodesBuilderEnum.stopped:
        return 'stopped';
      case MedicationStatementStatusCodesBuilderEnum.onHold:
        return 'on-hold';
      case MedicationStatementStatusCodesBuilderEnum.unknown:
        return 'unknown';
      case MedicationStatementStatusCodesBuilderEnum.notTaken:
        return 'not-taken';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationStatementStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationStatementStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationStatementStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return MedicationStatementStatusCodesBuilderEnum.active;
      case 'completed':
        return MedicationStatementStatusCodesBuilderEnum.completed;
      case 'entered-in-error':
        return MedicationStatementStatusCodesBuilderEnum.enteredInError;
      case 'intended':
        return MedicationStatementStatusCodesBuilderEnum.intended;
      case 'stopped':
        return MedicationStatementStatusCodesBuilderEnum.stopped;
      case 'on-hold':
        return MedicationStatementStatusCodesBuilderEnum.onHold;
      case 'unknown':
        return MedicationStatementStatusCodesBuilderEnum.unknown;
      case 'not-taken':
        return MedicationStatementStatusCodesBuilderEnum.notTaken;
    }
    return null;
  }
}

/// MedicationStatement Status Codes
class MedicationStatementStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MedicationStatementStatusCodesBuilder._({
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
    final valueEnum = MedicationStatementStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return MedicationStatementStatusCodesBuilder._(
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

  /// Create empty [MedicationStatementStatusCodesBuilder]
  /// with element only
  factory MedicationStatementStatusCodesBuilder.empty() =>
      MedicationStatementStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [MedicationStatementStatusCodesBuilder] from JSON.
  factory MedicationStatementStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationStatementStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for MedicationStatementStatusCodesBuilder
  final MedicationStatementStatusCodesBuilderEnum? valueEnum;

  /// active
  static MedicationStatementStatusCodesBuilder active =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'active',
    valueEnum: MedicationStatementStatusCodesBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// completed
  static MedicationStatementStatusCodesBuilder completed =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'completed',
    valueEnum: MedicationStatementStatusCodesBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static MedicationStatementStatusCodesBuilder enteredInError =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum: MedicationStatementStatusCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// intended
  static MedicationStatementStatusCodesBuilder intended =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'intended',
    valueEnum: MedicationStatementStatusCodesBuilderEnum.intended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Intended',
    ),
  );

  /// stopped
  static MedicationStatementStatusCodesBuilder stopped =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'stopped',
    valueEnum: MedicationStatementStatusCodesBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// on_hold
  static MedicationStatementStatusCodesBuilder onHold =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'on-hold',
    valueEnum: MedicationStatementStatusCodesBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// unknown
  static MedicationStatementStatusCodesBuilder unknown =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'unknown',
    valueEnum: MedicationStatementStatusCodesBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// not_taken
  static MedicationStatementStatusCodesBuilder notTaken =
      MedicationStatementStatusCodesBuilder._(
    valueString: 'not-taken',
    valueEnum: MedicationStatementStatusCodesBuilderEnum.notTaken,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Taken',
    ),
  );

  /// For instances where an Element is present but not value
  static MedicationStatementStatusCodesBuilder elementOnly =
      MedicationStatementStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<MedicationStatementStatusCodesBuilder> values = [
    active,
    completed,
    enteredInError,
    intended,
    stopped,
    onHold,
    unknown,
    notTaken,
  ];

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
}
