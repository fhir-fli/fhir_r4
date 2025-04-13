// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SpecimenStatus
enum SpecimenStatusBuilderEnum {
  /// available
  available,

  /// unavailable
  unavailable,

  /// unsatisfactory
  unsatisfactory,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SpecimenStatusBuilderEnum.available:
        return 'available';
      case SpecimenStatusBuilderEnum.unavailable:
        return 'unavailable';
      case SpecimenStatusBuilderEnum.unsatisfactory:
        return 'unsatisfactory';
      case SpecimenStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SpecimenStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SpecimenStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SpecimenStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'available':
        return SpecimenStatusBuilderEnum.available;
      case 'unavailable':
        return SpecimenStatusBuilderEnum.unavailable;
      case 'unsatisfactory':
        return SpecimenStatusBuilderEnum.unsatisfactory;
      case 'entered-in-error':
        return SpecimenStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// Codes providing the status/availability of a specimen.
class SpecimenStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SpecimenStatusBuilder._({
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
  factory SpecimenStatusBuilder(
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
    final valueEnum = SpecimenStatusBuilderEnum.fromString(
      valueString,
    );
    return SpecimenStatusBuilder._(
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

  /// Create empty [SpecimenStatusBuilder]
  /// with element only
  factory SpecimenStatusBuilder.empty() =>
      SpecimenStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SpecimenStatusBuilder] from JSON.
  factory SpecimenStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SpecimenStatusBuilder cannot be constructed from JSON.',
      );
    }
    return SpecimenStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SpecimenStatusBuilder
  final SpecimenStatusBuilderEnum? valueEnum;

  /// available
  static SpecimenStatusBuilder available = SpecimenStatusBuilder._(
    valueString: 'available',
    valueEnum: SpecimenStatusBuilderEnum.available,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Available',
    ),
  );

  /// unavailable
  static SpecimenStatusBuilder unavailable = SpecimenStatusBuilder._(
    valueString: 'unavailable',
    valueEnum: SpecimenStatusBuilderEnum.unavailable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unavailable',
    ),
  );

  /// unsatisfactory
  static SpecimenStatusBuilder unsatisfactory = SpecimenStatusBuilder._(
    valueString: 'unsatisfactory',
    valueEnum: SpecimenStatusBuilderEnum.unsatisfactory,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unsatisfactory',
    ),
  );

  /// entered_in_error
  static SpecimenStatusBuilder enteredInError = SpecimenStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: SpecimenStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static SpecimenStatusBuilder elementOnly = SpecimenStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SpecimenStatusBuilder> values = [
    available,
    unavailable,
    unsatisfactory,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  SpecimenStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SpecimenStatusBuilder._(
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
