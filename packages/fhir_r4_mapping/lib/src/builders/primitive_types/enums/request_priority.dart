part of '../primitive_types.dart';

/// Actual enum for RequestPriority
enum RequestPriorityBuilderEnum {
  /// routine
  routine,

  /// urgent
  urgent,

  /// asap
  asap,

  /// stat
  stat,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case RequestPriorityBuilderEnum.routine:
        return 'routine';
      case RequestPriorityBuilderEnum.urgent:
        return 'urgent';
      case RequestPriorityBuilderEnum.asap:
        return 'asap';
      case RequestPriorityBuilderEnum.stat:
        return 'stat';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RequestPriorityBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return RequestPriorityBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RequestPriorityBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'routine':
        return RequestPriorityBuilderEnum.routine;
      case 'urgent':
        return RequestPriorityBuilderEnum.urgent;
      case 'asap':
        return RequestPriorityBuilderEnum.asap;
      case 'stat':
        return RequestPriorityBuilderEnum.stat;
    }
    return null;
  }
}

/// Identifies the level of importance to be assigned to actioning the
/// request.
class RequestPriorityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RequestPriorityBuilder._({
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
  factory RequestPriorityBuilder(
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
    final valueEnum = RequestPriorityBuilderEnum.fromString(
      valueString,
    );
    return RequestPriorityBuilder._(
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

  /// Create empty [RequestPriorityBuilder]
  /// with element only
  factory RequestPriorityBuilder.empty() =>
      RequestPriorityBuilder._(valueString: null);

  /// Factory constructor to create
  /// [RequestPriorityBuilder] from JSON.
  factory RequestPriorityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestPriorityBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestPriorityBuilder cannot be constructed from JSON.',
      );
    }
    return RequestPriorityBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for RequestPriorityBuilder
  final RequestPriorityBuilderEnum? valueEnum;

  /// routine
  static RequestPriorityBuilder routine = RequestPriorityBuilder._(
    valueString: 'routine',
    valueEnum: RequestPriorityBuilderEnum.routine,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-priority',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Routine',
    ),
  );

  /// urgent
  static RequestPriorityBuilder urgent = RequestPriorityBuilder._(
    valueString: 'urgent',
    valueEnum: RequestPriorityBuilderEnum.urgent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-priority',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Urgent',
    ),
  );

  /// asap
  static RequestPriorityBuilder asap = RequestPriorityBuilder._(
    valueString: 'asap',
    valueEnum: RequestPriorityBuilderEnum.asap,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-priority',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ASAP',
    ),
  );

  /// stat
  static RequestPriorityBuilder stat = RequestPriorityBuilder._(
    valueString: 'stat',
    valueEnum: RequestPriorityBuilderEnum.stat,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-priority',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'STAT',
    ),
  );

  /// For instances where an Element is present but not value
  static RequestPriorityBuilder elementOnly = RequestPriorityBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<RequestPriorityBuilder> values = [
    routine,
    urgent,
    asap,
    stat,
  ];

  /// Returns the enum value with an element attached
  RequestPriorityBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return RequestPriorityBuilder._(
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
