part of '../primitive_types.dart';

/// Actual enum for MedicationStatusCodes
enum MedicationStatusCodesBuilderEnum {
  /// active
  active,

  /// inactive
  inactive,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MedicationStatusCodesBuilderEnum.active:
        return 'active';
      case MedicationStatusCodesBuilderEnum.inactive:
        return 'inactive';
      case MedicationStatusCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return MedicationStatusCodesBuilderEnum.active;
      case 'inactive':
        return MedicationStatusCodesBuilderEnum.inactive;
      case 'entered-in-error':
        return MedicationStatusCodesBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// Medication Status Codes
class MedicationStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MedicationStatusCodesBuilder._({
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
  factory MedicationStatusCodesBuilder(
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
    final valueEnum = MedicationStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return MedicationStatusCodesBuilder._(
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

  /// Create empty [MedicationStatusCodesBuilder]
  /// with element only
  factory MedicationStatusCodesBuilder.empty() =>
      MedicationStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [MedicationStatusCodesBuilder] from JSON.
  factory MedicationStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return MedicationStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for MedicationStatusCodesBuilder
  final MedicationStatusCodesBuilderEnum? valueEnum;

  /// active
  static MedicationStatusCodesBuilder active = MedicationStatusCodesBuilder._(
    valueString: 'active',
    valueEnum: MedicationStatusCodesBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static MedicationStatusCodesBuilder inactive = MedicationStatusCodesBuilder._(
    valueString: 'inactive',
    valueEnum: MedicationStatusCodesBuilderEnum.inactive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static MedicationStatusCodesBuilder enteredInError =
      MedicationStatusCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum: MedicationStatusCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static MedicationStatusCodesBuilder elementOnly =
      MedicationStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<MedicationStatusCodesBuilder> values = [
    active,
    inactive,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  MedicationStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MedicationStatusCodesBuilder._(
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
