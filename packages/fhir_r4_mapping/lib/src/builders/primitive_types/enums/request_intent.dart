part of '../primitive_types.dart';

/// Actual enum for RequestIntent
enum RequestIntentBuilderEnum {
  /// proposal
  proposal,

  /// plan
  plan,

  /// directive
  directive,

  /// order
  order,

  /// original-order
  originalOrder,

  /// reflex-order
  reflexOrder,

  /// filler-order
  fillerOrder,

  /// instance-order
  instanceOrder,

  /// option
  option,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case RequestIntentBuilderEnum.proposal:
        return 'proposal';
      case RequestIntentBuilderEnum.plan:
        return 'plan';
      case RequestIntentBuilderEnum.directive:
        return 'directive';
      case RequestIntentBuilderEnum.order:
        return 'order';
      case RequestIntentBuilderEnum.originalOrder:
        return 'original-order';
      case RequestIntentBuilderEnum.reflexOrder:
        return 'reflex-order';
      case RequestIntentBuilderEnum.fillerOrder:
        return 'filler-order';
      case RequestIntentBuilderEnum.instanceOrder:
        return 'instance-order';
      case RequestIntentBuilderEnum.option:
        return 'option';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RequestIntentBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return RequestIntentBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RequestIntentBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'proposal':
        return RequestIntentBuilderEnum.proposal;
      case 'plan':
        return RequestIntentBuilderEnum.plan;
      case 'directive':
        return RequestIntentBuilderEnum.directive;
      case 'order':
        return RequestIntentBuilderEnum.order;
      case 'original-order':
        return RequestIntentBuilderEnum.originalOrder;
      case 'reflex-order':
        return RequestIntentBuilderEnum.reflexOrder;
      case 'filler-order':
        return RequestIntentBuilderEnum.fillerOrder;
      case 'instance-order':
        return RequestIntentBuilderEnum.instanceOrder;
      case 'option':
        return RequestIntentBuilderEnum.option;
    }
    return null;
  }
}

/// Codes indicating the degree of authority/intentionality associated with
/// a request.
class RequestIntentBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RequestIntentBuilder._({
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
  factory RequestIntentBuilder(
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
    final valueEnum = RequestIntentBuilderEnum.fromString(
      valueString,
    );
    return RequestIntentBuilder._(
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

  /// Create empty [RequestIntentBuilder]
  /// with element only
  factory RequestIntentBuilder.empty() =>
      RequestIntentBuilder._(valueString: null);

  /// Factory constructor to create
  /// [RequestIntentBuilder] from JSON.
  factory RequestIntentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestIntentBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestIntentBuilder cannot be constructed from JSON.',
      );
    }
    return RequestIntentBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for RequestIntentBuilder
  final RequestIntentBuilderEnum? valueEnum;

  /// proposal
  static RequestIntentBuilder proposal = RequestIntentBuilder._(
    valueString: 'proposal',
    valueEnum: RequestIntentBuilderEnum.proposal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Proposal',
    ),
  );

  /// plan
  static RequestIntentBuilder plan = RequestIntentBuilder._(
    valueString: 'plan',
    valueEnum: RequestIntentBuilderEnum.plan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Plan',
    ),
  );

  /// directive
  static RequestIntentBuilder directive = RequestIntentBuilder._(
    valueString: 'directive',
    valueEnum: RequestIntentBuilderEnum.directive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Directive',
    ),
  );

  /// order
  static RequestIntentBuilder order = RequestIntentBuilder._(
    valueString: 'order',
    valueEnum: RequestIntentBuilderEnum.order,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Order',
    ),
  );

  /// original_order
  static RequestIntentBuilder originalOrder = RequestIntentBuilder._(
    valueString: 'original-order',
    valueEnum: RequestIntentBuilderEnum.originalOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Original Order',
    ),
  );

  /// reflex_order
  static RequestIntentBuilder reflexOrder = RequestIntentBuilder._(
    valueString: 'reflex-order',
    valueEnum: RequestIntentBuilderEnum.reflexOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Reflex Order',
    ),
  );

  /// filler_order
  static RequestIntentBuilder fillerOrder = RequestIntentBuilder._(
    valueString: 'filler-order',
    valueEnum: RequestIntentBuilderEnum.fillerOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Filler Order',
    ),
  );

  /// instance_order
  static RequestIntentBuilder instanceOrder = RequestIntentBuilder._(
    valueString: 'instance-order',
    valueEnum: RequestIntentBuilderEnum.instanceOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Instance Order',
    ),
  );

  /// option
  static RequestIntentBuilder option = RequestIntentBuilder._(
    valueString: 'option',
    valueEnum: RequestIntentBuilderEnum.option,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Option',
    ),
  );

  /// For instances where an Element is present but not value
  static RequestIntentBuilder elementOnly = RequestIntentBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<RequestIntentBuilder> values = [
    proposal,
    plan,
    directive,
    order,
    originalOrder,
    reflexOrder,
    fillerOrder,
    instanceOrder,
    option,
  ];

  /// Returns the enum value with an element attached
  RequestIntentBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return RequestIntentBuilder._(
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
