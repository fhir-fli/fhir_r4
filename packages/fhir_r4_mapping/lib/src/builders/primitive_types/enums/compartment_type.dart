part of '../primitive_types.dart';

/// Actual enum for CompartmentType
enum CompartmentTypeBuilderEnum {
  /// Patient
  patient,

  /// Encounter
  encounter,

  /// RelatedPerson
  relatedPerson,

  /// Practitioner
  practitioner,

  /// Device
  device,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CompartmentTypeBuilderEnum.patient:
        return 'Patient';
      case CompartmentTypeBuilderEnum.encounter:
        return 'Encounter';
      case CompartmentTypeBuilderEnum.relatedPerson:
        return 'RelatedPerson';
      case CompartmentTypeBuilderEnum.practitioner:
        return 'Practitioner';
      case CompartmentTypeBuilderEnum.device:
        return 'Device';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CompartmentTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CompartmentTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CompartmentTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Patient':
        return CompartmentTypeBuilderEnum.patient;
      case 'Encounter':
        return CompartmentTypeBuilderEnum.encounter;
      case 'RelatedPerson':
        return CompartmentTypeBuilderEnum.relatedPerson;
      case 'Practitioner':
        return CompartmentTypeBuilderEnum.practitioner;
      case 'Device':
        return CompartmentTypeBuilderEnum.device;
    }
    return null;
  }
}

/// Which type a compartment definition describes.
class CompartmentTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CompartmentTypeBuilder._({
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
  factory CompartmentTypeBuilder(
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
    final valueEnum = CompartmentTypeBuilderEnum.fromString(
      valueString,
    );
    return CompartmentTypeBuilder._(
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

  /// Create empty [CompartmentTypeBuilder]
  /// with element only
  factory CompartmentTypeBuilder.empty() =>
      CompartmentTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CompartmentTypeBuilder] from JSON.
  factory CompartmentTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompartmentTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CompartmentTypeBuilder cannot be constructed from JSON.',
      );
    }
    return CompartmentTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CompartmentTypeBuilder
  final CompartmentTypeBuilderEnum? valueEnum;

  /// Patient
  static CompartmentTypeBuilder patient = CompartmentTypeBuilder._(
    valueString: 'Patient',
    valueEnum: CompartmentTypeBuilderEnum.patient,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/compartment-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Patient',
    ),
  );

  /// Encounter
  static CompartmentTypeBuilder encounter = CompartmentTypeBuilder._(
    valueString: 'Encounter',
    valueEnum: CompartmentTypeBuilderEnum.encounter,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/compartment-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Encounter',
    ),
  );

  /// RelatedPerson
  static CompartmentTypeBuilder relatedPerson = CompartmentTypeBuilder._(
    valueString: 'RelatedPerson',
    valueEnum: CompartmentTypeBuilderEnum.relatedPerson,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/compartment-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'RelatedPerson',
    ),
  );

  /// Practitioner
  static CompartmentTypeBuilder practitioner = CompartmentTypeBuilder._(
    valueString: 'Practitioner',
    valueEnum: CompartmentTypeBuilderEnum.practitioner,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/compartment-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Practitioner',
    ),
  );

  /// Device
  static CompartmentTypeBuilder device = CompartmentTypeBuilder._(
    valueString: 'Device',
    valueEnum: CompartmentTypeBuilderEnum.device,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/compartment-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Device',
    ),
  );

  /// For instances where an Element is present but not value
  static CompartmentTypeBuilder elementOnly = CompartmentTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CompartmentTypeBuilder> values = [
    patient,
    encounter,
    relatedPerson,
    practitioner,
    device,
  ];

  /// Returns the enum value with an element attached
  CompartmentTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CompartmentTypeBuilder._(
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
