// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for RemittanceOutcome
enum RemittanceOutcomeBuilderEnum {
  /// queued
  queued,

  /// complete
  complete,

  /// error
  error,

  /// partial
  partial,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case RemittanceOutcomeBuilderEnum.queued:
        return 'queued';
      case RemittanceOutcomeBuilderEnum.complete:
        return 'complete';
      case RemittanceOutcomeBuilderEnum.error:
        return 'error';
      case RemittanceOutcomeBuilderEnum.partial:
        return 'partial';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RemittanceOutcomeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return RemittanceOutcomeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RemittanceOutcomeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'queued':
        return RemittanceOutcomeBuilderEnum.queued;
      case 'complete':
        return RemittanceOutcomeBuilderEnum.complete;
      case 'error':
        return RemittanceOutcomeBuilderEnum.error;
      case 'partial':
        return RemittanceOutcomeBuilderEnum.partial;
    }
    return null;
  }
}

/// The outcome of the processing.
class RemittanceOutcomeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RemittanceOutcomeBuilder._({
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
  factory RemittanceOutcomeBuilder(
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
    final valueEnum = RemittanceOutcomeBuilderEnum.fromString(
      valueString,
    );
    return RemittanceOutcomeBuilder._(
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

  /// Create empty [RemittanceOutcomeBuilder]
  /// with element only
  factory RemittanceOutcomeBuilder.empty() =>
      RemittanceOutcomeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [RemittanceOutcomeBuilder] from JSON.
  factory RemittanceOutcomeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RemittanceOutcomeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RemittanceOutcomeBuilder cannot be constructed from JSON.',
      );
    }
    return RemittanceOutcomeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for RemittanceOutcomeBuilder
  final RemittanceOutcomeBuilderEnum? valueEnum;

  /// queued
  static RemittanceOutcomeBuilder queued = RemittanceOutcomeBuilder._(
    valueString: 'queued',
    valueEnum: RemittanceOutcomeBuilderEnum.queued,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/remittance-outcome',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Queued',
    ),
  );

  /// complete
  static RemittanceOutcomeBuilder complete = RemittanceOutcomeBuilder._(
    valueString: 'complete',
    valueEnum: RemittanceOutcomeBuilderEnum.complete,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/remittance-outcome',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Complete',
    ),
  );

  /// error
  static RemittanceOutcomeBuilder error = RemittanceOutcomeBuilder._(
    valueString: 'error',
    valueEnum: RemittanceOutcomeBuilderEnum.error,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/remittance-outcome',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Error',
    ),
  );

  /// partial
  static RemittanceOutcomeBuilder partial = RemittanceOutcomeBuilder._(
    valueString: 'partial',
    valueEnum: RemittanceOutcomeBuilderEnum.partial,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/remittance-outcome',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Partial',
    ),
  );

  /// For instances where an Element is present but not value
  static RemittanceOutcomeBuilder elementOnly = RemittanceOutcomeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<RemittanceOutcomeBuilder> values = [
    queued,
    complete,
    error,
    partial,
  ];

  /// Returns the enum value with an element attached
  RemittanceOutcomeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return RemittanceOutcomeBuilder._(
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
