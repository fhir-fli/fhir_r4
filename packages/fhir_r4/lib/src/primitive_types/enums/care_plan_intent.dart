part of '../primitive_types.dart';

/// Actual enum for CarePlanIntent
enum CarePlanIntentEnum {
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
      case CarePlanIntentEnum.proposal:
        return 'proposal';
      case CarePlanIntentEnum.plan:
        return 'plan';
      case CarePlanIntentEnum.directive:
        return 'directive';
      case CarePlanIntentEnum.order:
        return 'order';
      case CarePlanIntentEnum.originalOrder:
        return 'original-order';
      case CarePlanIntentEnum.reflexOrder:
        return 'reflex-order';
      case CarePlanIntentEnum.fillerOrder:
        return 'filler-order';
      case CarePlanIntentEnum.instanceOrder:
        return 'instance-order';
      case CarePlanIntentEnum.option:
        return 'option';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CarePlanIntentEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CarePlanIntentEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CarePlanIntentEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'proposal':
        return CarePlanIntentEnum.proposal;
      case 'plan':
        return CarePlanIntentEnum.plan;
      case 'directive':
        return CarePlanIntentEnum.directive;
      case 'order':
        return CarePlanIntentEnum.order;
      case 'original-order':
        return CarePlanIntentEnum.originalOrder;
      case 'reflex-order':
        return CarePlanIntentEnum.reflexOrder;
      case 'filler-order':
        return CarePlanIntentEnum.fillerOrder;
      case 'instance-order':
        return CarePlanIntentEnum.instanceOrder;
      case 'option':
        return CarePlanIntentEnum.option;
    }
    return null;
  }
}

/// Codes indicating the degree of authority/intentionality associated with
/// a care plan.
class CarePlanIntent extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CarePlanIntent._({
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
  factory CarePlanIntent(
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
    final valueEnum = CarePlanIntentEnum.fromString(valueString);
    return CarePlanIntent._(
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

  /// Factory constructor to create [CarePlanIntent]
  /// from JSON.
  factory CarePlanIntent.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CarePlanIntentEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanIntent._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CarePlanIntent cannot be constructed from JSON.',
      );
    }
    return CarePlanIntent._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CarePlanIntent
  final CarePlanIntentEnum? valueEnum;

  /// proposal
  static const CarePlanIntent proposal = CarePlanIntent._(
    valueString: 'proposal',
    valueEnum: CarePlanIntentEnum.proposal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Proposal',
    ),
  );

  /// plan
  static const CarePlanIntent plan = CarePlanIntent._(
    valueString: 'plan',
    valueEnum: CarePlanIntentEnum.plan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Plan',
    ),
  );

  /// directive
  static const CarePlanIntent directive = CarePlanIntent._(
    valueString: 'directive',
    valueEnum: CarePlanIntentEnum.directive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Directive',
    ),
  );

  /// order
  static const CarePlanIntent order = CarePlanIntent._(
    valueString: 'order',
    valueEnum: CarePlanIntentEnum.order,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Order',
    ),
  );

  /// original_order
  static const CarePlanIntent originalOrder = CarePlanIntent._(
    valueString: 'original-order',
    valueEnum: CarePlanIntentEnum.originalOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Original Order',
    ),
  );

  /// reflex_order
  static const CarePlanIntent reflexOrder = CarePlanIntent._(
    valueString: 'reflex-order',
    valueEnum: CarePlanIntentEnum.reflexOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Reflex Order',
    ),
  );

  /// filler_order
  static const CarePlanIntent fillerOrder = CarePlanIntent._(
    valueString: 'filler-order',
    valueEnum: CarePlanIntentEnum.fillerOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Filler Order',
    ),
  );

  /// instance_order
  static const CarePlanIntent instanceOrder = CarePlanIntent._(
    valueString: 'instance-order',
    valueEnum: CarePlanIntentEnum.instanceOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Instance Order',
    ),
  );

  /// option
  static const CarePlanIntent option = CarePlanIntent._(
    valueString: 'option',
    valueEnum: CarePlanIntentEnum.option,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Option',
    ),
  );

  /// List of all enum-like values
  static final List<CarePlanIntent> values = [
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
  CarePlanIntent withElement(Element? newElement) {
    return CarePlanIntent._(
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
  CarePlanIntent clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CarePlanIntentCopyWithImpl<CarePlanIntent> get copyWith =>
      CarePlanIntentCopyWithImpl<CarePlanIntent>(
        this,
        (v) => v as CarePlanIntent,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CarePlanIntentCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CarePlanIntentCopyWithImpl(super._value, super._then);

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
      CarePlanIntent(
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
