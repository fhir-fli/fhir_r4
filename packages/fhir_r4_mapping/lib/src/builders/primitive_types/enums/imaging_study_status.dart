part of '../primitive_types.dart';

/// Actual enum for ImagingStudyStatus
enum ImagingStudyStatusBuilderEnum {
  /// registered
  registered,

  /// available
  available,

  /// cancelled
  cancelled,

  /// entered-in-error
  enteredInError,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ImagingStudyStatusBuilderEnum.registered:
        return 'registered';
      case ImagingStudyStatusBuilderEnum.available:
        return 'available';
      case ImagingStudyStatusBuilderEnum.cancelled:
        return 'cancelled';
      case ImagingStudyStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case ImagingStudyStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ImagingStudyStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ImagingStudyStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ImagingStudyStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'registered':
        return ImagingStudyStatusBuilderEnum.registered;
      case 'available':
        return ImagingStudyStatusBuilderEnum.available;
      case 'cancelled':
        return ImagingStudyStatusBuilderEnum.cancelled;
      case 'entered-in-error':
        return ImagingStudyStatusBuilderEnum.enteredInError;
      case 'unknown':
        return ImagingStudyStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// The status of the ImagingStudy.
class ImagingStudyStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ImagingStudyStatusBuilder._({
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
  factory ImagingStudyStatusBuilder(
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
    final valueEnum = ImagingStudyStatusBuilderEnum.fromString(
      valueString,
    );
    return ImagingStudyStatusBuilder._(
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

  /// Create empty [ImagingStudyStatusBuilder]
  /// with element only
  factory ImagingStudyStatusBuilder.empty() =>
      ImagingStudyStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ImagingStudyStatusBuilder] from JSON.
  factory ImagingStudyStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingStudyStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImagingStudyStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ImagingStudyStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ImagingStudyStatusBuilder
  final ImagingStudyStatusBuilderEnum? valueEnum;

  /// registered
  static ImagingStudyStatusBuilder registered = ImagingStudyStatusBuilder._(
    valueString: 'registered',
    valueEnum: ImagingStudyStatusBuilderEnum.registered,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingstudy-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Registered',
    ),
  );

  /// available
  static ImagingStudyStatusBuilder available = ImagingStudyStatusBuilder._(
    valueString: 'available',
    valueEnum: ImagingStudyStatusBuilderEnum.available,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingstudy-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Available',
    ),
  );

  /// cancelled
  static ImagingStudyStatusBuilder cancelled = ImagingStudyStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: ImagingStudyStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingstudy-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static ImagingStudyStatusBuilder enteredInError = ImagingStudyStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: ImagingStudyStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingstudy-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static ImagingStudyStatusBuilder unknown = ImagingStudyStatusBuilder._(
    valueString: 'unknown',
    valueEnum: ImagingStudyStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingstudy-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static ImagingStudyStatusBuilder elementOnly = ImagingStudyStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ImagingStudyStatusBuilder> values = [
    registered,
    available,
    cancelled,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ImagingStudyStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ImagingStudyStatusBuilder._(
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
