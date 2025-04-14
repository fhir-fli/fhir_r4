// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for Status
enum StatusBuilderEnum {
  /// attested
  attested,

  /// validated
  validated,

  /// in-process
  inProcess,

  /// req-revalid
  reqRevalid,

  /// val-fail
  valFail,

  /// reval-fail
  revalFail,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StatusBuilderEnum.attested:
        return 'attested';
      case StatusBuilderEnum.validated:
        return 'validated';
      case StatusBuilderEnum.inProcess:
        return 'in-process';
      case StatusBuilderEnum.reqRevalid:
        return 'req-revalid';
      case StatusBuilderEnum.valFail:
        return 'val-fail';
      case StatusBuilderEnum.revalFail:
        return 'reval-fail';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return StatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'attested':
        return StatusBuilderEnum.attested;
      case 'validated':
        return StatusBuilderEnum.validated;
      case 'in-process':
        return StatusBuilderEnum.inProcess;
      case 'req-revalid':
        return StatusBuilderEnum.reqRevalid;
      case 'val-fail':
        return StatusBuilderEnum.valFail;
      case 'reval-fail':
        return StatusBuilderEnum.revalFail;
    }
    return null;
  }
}

/// The validation status of the target
class StatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StatusBuilder._({
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
  factory StatusBuilder(
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
    final valueEnum = StatusBuilderEnum.fromString(
      valueString,
    );
    return StatusBuilder._(
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

  /// Create empty [StatusBuilder]
  /// with element only
  factory StatusBuilder.empty() => StatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [StatusBuilder] from JSON.
  factory StatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StatusBuilder cannot be constructed from JSON.',
      );
    }
    return StatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for StatusBuilder
  final StatusBuilderEnum? valueEnum;

  /// attested
  static StatusBuilder attested = StatusBuilder._(
    valueString: 'attested',
    valueEnum: StatusBuilderEnum.attested,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Attested',
    ),
  );

  /// validated
  static StatusBuilder validated = StatusBuilder._(
    valueString: 'validated',
    valueEnum: StatusBuilderEnum.validated,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Validated',
    ),
  );

  /// in_process
  static StatusBuilder inProcess = StatusBuilder._(
    valueString: 'in-process',
    valueEnum: StatusBuilderEnum.inProcess,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In process',
    ),
  );

  /// req_revalid
  static StatusBuilder reqRevalid = StatusBuilder._(
    valueString: 'req-revalid',
    valueEnum: StatusBuilderEnum.reqRevalid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Requires revalidation',
    ),
  );

  /// val_fail
  static StatusBuilder valFail = StatusBuilder._(
    valueString: 'val-fail',
    valueEnum: StatusBuilderEnum.valFail,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Validation failed',
    ),
  );

  /// reval_fail
  static StatusBuilder revalFail = StatusBuilder._(
    valueString: 'reval-fail',
    valueEnum: StatusBuilderEnum.revalFail,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Re-Validation failed',
    ),
  );

  /// For instances where an Element is present but not value
  static StatusBuilder elementOnly = StatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<StatusBuilder> values = [
    attested,
    validated,
    inProcess,
    reqRevalid,
    valFail,
    revalFail,
  ];

  /// Returns the enum value with an element attached
  StatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return StatusBuilder._(
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
