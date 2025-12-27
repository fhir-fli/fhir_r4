part of '../primitive_types.dart';

/// Actual enum for RequestIntent
enum RequestIntentEnum {
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
      case RequestIntentEnum.proposal:
        return 'proposal';
      case RequestIntentEnum.plan:
        return 'plan';
      case RequestIntentEnum.directive:
        return 'directive';
      case RequestIntentEnum.order:
        return 'order';
      case RequestIntentEnum.originalOrder:
        return 'original-order';
      case RequestIntentEnum.reflexOrder:
        return 'reflex-order';
      case RequestIntentEnum.fillerOrder:
        return 'filler-order';
      case RequestIntentEnum.instanceOrder:
        return 'instance-order';
      case RequestIntentEnum.option:
        return 'option';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RequestIntentEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return RequestIntentEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RequestIntentEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'proposal':
        return RequestIntentEnum.proposal;
      case 'plan':
        return RequestIntentEnum.plan;
      case 'directive':
        return RequestIntentEnum.directive;
      case 'order':
        return RequestIntentEnum.order;
      case 'original-order':
        return RequestIntentEnum.originalOrder;
      case 'reflex-order':
        return RequestIntentEnum.reflexOrder;
      case 'filler-order':
        return RequestIntentEnum.fillerOrder;
      case 'instance-order':
        return RequestIntentEnum.instanceOrder;
      case 'option':
        return RequestIntentEnum.option;
    }
    return null;
  }
}

/// Codes indicating the degree of authority/intentionality associated with
/// a request.
class RequestIntent extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const RequestIntent._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory RequestIntent(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = RequestIntentEnum.fromString(valueString);
    return RequestIntent._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [RequestIntent]
  /// from JSON.
  factory RequestIntent.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = RequestIntentEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestIntent._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestIntent cannot be constructed from JSON.',
      );
    }
    return RequestIntent._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for RequestIntent
  final RequestIntentEnum? valueEnum;

  /// proposal
  static const RequestIntent proposal = RequestIntent._(
    valueString: 'proposal',
    valueEnum: RequestIntentEnum.proposal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Proposal',
    ),
  );

  /// plan
  static const RequestIntent plan = RequestIntent._(
    valueString: 'plan',
    valueEnum: RequestIntentEnum.plan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Plan',
    ),
  );

  /// directive
  static const RequestIntent directive = RequestIntent._(
    valueString: 'directive',
    valueEnum: RequestIntentEnum.directive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Directive',
    ),
  );

  /// order
  static const RequestIntent order = RequestIntent._(
    valueString: 'order',
    valueEnum: RequestIntentEnum.order,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Order',
    ),
  );

  /// original_order
  static const RequestIntent originalOrder = RequestIntent._(
    valueString: 'original-order',
    valueEnum: RequestIntentEnum.originalOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Original Order',
    ),
  );

  /// reflex_order
  static const RequestIntent reflexOrder = RequestIntent._(
    valueString: 'reflex-order',
    valueEnum: RequestIntentEnum.reflexOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Reflex Order',
    ),
  );

  /// filler_order
  static const RequestIntent fillerOrder = RequestIntent._(
    valueString: 'filler-order',
    valueEnum: RequestIntentEnum.fillerOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Filler Order',
    ),
  );

  /// instance_order
  static const RequestIntent instanceOrder = RequestIntent._(
    valueString: 'instance-order',
    valueEnum: RequestIntentEnum.instanceOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Instance Order',
    ),
  );

  /// option
  static const RequestIntent option = RequestIntent._(
    valueString: 'option',
    valueEnum: RequestIntentEnum.option,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Option',
    ),
  );

  /// List of all enum-like values
  static final List<RequestIntent> values = [
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
  RequestIntent withElement(Element? newElement) {
    return RequestIntent._(
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

  @override
  RequestIntent clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  RequestIntentCopyWithImpl<RequestIntent> get copyWith =>
      RequestIntentCopyWithImpl<RequestIntent>(
        this,
        (v) => v as RequestIntent,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class RequestIntentCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  RequestIntentCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      RequestIntent(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
