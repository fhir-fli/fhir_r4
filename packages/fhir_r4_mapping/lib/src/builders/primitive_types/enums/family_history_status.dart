// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for FamilyHistoryStatus
enum FamilyHistoryStatusBuilderEnum {
  /// partial
  partial,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// health-unknown
  healthUnknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case FamilyHistoryStatusBuilderEnum.partial:
        return 'partial';
      case FamilyHistoryStatusBuilderEnum.completed:
        return 'completed';
      case FamilyHistoryStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case FamilyHistoryStatusBuilderEnum.healthUnknown:
        return 'health-unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FamilyHistoryStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return FamilyHistoryStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FamilyHistoryStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'partial':
        return FamilyHistoryStatusBuilderEnum.partial;
      case 'completed':
        return FamilyHistoryStatusBuilderEnum.completed;
      case 'entered-in-error':
        return FamilyHistoryStatusBuilderEnum.enteredInError;
      case 'health-unknown':
        return FamilyHistoryStatusBuilderEnum.healthUnknown;
    }
    return null;
  }
}

/// A code that identifies the status of the family history record.
class FamilyHistoryStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FamilyHistoryStatusBuilder._({
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
  factory FamilyHistoryStatusBuilder(
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
    final valueEnum = FamilyHistoryStatusBuilderEnum.fromString(
      valueString,
    );
    return FamilyHistoryStatusBuilder._(
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

  /// Create empty [FamilyHistoryStatusBuilder]
  /// with element only
  factory FamilyHistoryStatusBuilder.empty() =>
      FamilyHistoryStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [FamilyHistoryStatusBuilder] from JSON.
  factory FamilyHistoryStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FamilyHistoryStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FamilyHistoryStatusBuilder cannot be constructed from JSON.',
      );
    }
    return FamilyHistoryStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for FamilyHistoryStatusBuilder
  final FamilyHistoryStatusBuilderEnum? valueEnum;

  /// partial
  static FamilyHistoryStatusBuilder partial = FamilyHistoryStatusBuilder._(
    valueString: 'partial',
    valueEnum: FamilyHistoryStatusBuilderEnum.partial,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/history-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Partial',
    ),
  );

  /// completed
  static FamilyHistoryStatusBuilder completed = FamilyHistoryStatusBuilder._(
    valueString: 'completed',
    valueEnum: FamilyHistoryStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/history-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static FamilyHistoryStatusBuilder enteredInError =
      FamilyHistoryStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: FamilyHistoryStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/history-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// health_unknown
  static FamilyHistoryStatusBuilder healthUnknown =
      FamilyHistoryStatusBuilder._(
    valueString: 'health-unknown',
    valueEnum: FamilyHistoryStatusBuilderEnum.healthUnknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/history-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Health Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static FamilyHistoryStatusBuilder elementOnly = FamilyHistoryStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<FamilyHistoryStatusBuilder> values = [
    partial,
    completed,
    enteredInError,
    healthUnknown,
  ];

  /// Returns the enum value with an element attached
  FamilyHistoryStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return FamilyHistoryStatusBuilder._(
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
