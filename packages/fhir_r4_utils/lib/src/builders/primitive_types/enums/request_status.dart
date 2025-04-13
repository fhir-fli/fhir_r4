// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for RequestStatus
enum RequestStatusBuilderEnum {
  /// draft
  draft,

  /// active
  active,

  /// on-hold
  onHold,

  /// revoked
  revoked,

  /// completed
  completed,

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
      case RequestStatusBuilderEnum.draft:
        return 'draft';
      case RequestStatusBuilderEnum.active:
        return 'active';
      case RequestStatusBuilderEnum.onHold:
        return 'on-hold';
      case RequestStatusBuilderEnum.revoked:
        return 'revoked';
      case RequestStatusBuilderEnum.completed:
        return 'completed';
      case RequestStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case RequestStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RequestStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return RequestStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RequestStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'draft':
        return RequestStatusBuilderEnum.draft;
      case 'active':
        return RequestStatusBuilderEnum.active;
      case 'on-hold':
        return RequestStatusBuilderEnum.onHold;
      case 'revoked':
        return RequestStatusBuilderEnum.revoked;
      case 'completed':
        return RequestStatusBuilderEnum.completed;
      case 'entered-in-error':
        return RequestStatusBuilderEnum.enteredInError;
      case 'unknown':
        return RequestStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// Codes identifying the lifecycle stage of a request.
class RequestStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RequestStatusBuilder._({
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
  factory RequestStatusBuilder(
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
    final valueEnum = RequestStatusBuilderEnum.fromString(
      valueString,
    );
    return RequestStatusBuilder._(
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

  /// Create empty [RequestStatusBuilder]
  /// with element only
  factory RequestStatusBuilder.empty() =>
      RequestStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [RequestStatusBuilder] from JSON.
  factory RequestStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestStatusBuilder cannot be constructed from JSON.',
      );
    }
    return RequestStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for RequestStatusBuilder
  final RequestStatusBuilderEnum? valueEnum;

  /// draft
  static RequestStatusBuilder draft = RequestStatusBuilder._(
    valueString: 'draft',
    valueEnum: RequestStatusBuilderEnum.draft,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Draft',
    ),
  );

  /// active
  static RequestStatusBuilder active = RequestStatusBuilder._(
    valueString: 'active',
    valueEnum: RequestStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// on_hold
  static RequestStatusBuilder onHold = RequestStatusBuilder._(
    valueString: 'on-hold',
    valueEnum: RequestStatusBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// revoked
  static RequestStatusBuilder revoked = RequestStatusBuilder._(
    valueString: 'revoked',
    valueEnum: RequestStatusBuilderEnum.revoked,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Revoked',
    ),
  );

  /// completed
  static RequestStatusBuilder completed = RequestStatusBuilder._(
    valueString: 'completed',
    valueEnum: RequestStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static RequestStatusBuilder enteredInError = RequestStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: RequestStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static RequestStatusBuilder unknown = RequestStatusBuilder._(
    valueString: 'unknown',
    valueEnum: RequestStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static RequestStatusBuilder elementOnly = RequestStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<RequestStatusBuilder> values = [
    draft,
    active,
    onHold,
    revoked,
    completed,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  RequestStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return RequestStatusBuilder._(
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
