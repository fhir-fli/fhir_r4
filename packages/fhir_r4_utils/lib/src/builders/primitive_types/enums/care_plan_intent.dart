// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CarePlanIntent
enum CarePlanIntentBuilderEnum {
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
      case CarePlanIntentBuilderEnum.proposal:
        return 'proposal';
      case CarePlanIntentBuilderEnum.plan:
        return 'plan';
      case CarePlanIntentBuilderEnum.directive:
        return 'directive';
      case CarePlanIntentBuilderEnum.order:
        return 'order';
      case CarePlanIntentBuilderEnum.originalOrder:
        return 'original-order';
      case CarePlanIntentBuilderEnum.reflexOrder:
        return 'reflex-order';
      case CarePlanIntentBuilderEnum.fillerOrder:
        return 'filler-order';
      case CarePlanIntentBuilderEnum.instanceOrder:
        return 'instance-order';
      case CarePlanIntentBuilderEnum.option:
        return 'option';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CarePlanIntentBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CarePlanIntentBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CarePlanIntentBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'proposal':
        return CarePlanIntentBuilderEnum.proposal;
      case 'plan':
        return CarePlanIntentBuilderEnum.plan;
      case 'directive':
        return CarePlanIntentBuilderEnum.directive;
      case 'order':
        return CarePlanIntentBuilderEnum.order;
      case 'original-order':
        return CarePlanIntentBuilderEnum.originalOrder;
      case 'reflex-order':
        return CarePlanIntentBuilderEnum.reflexOrder;
      case 'filler-order':
        return CarePlanIntentBuilderEnum.fillerOrder;
      case 'instance-order':
        return CarePlanIntentBuilderEnum.instanceOrder;
      case 'option':
        return CarePlanIntentBuilderEnum.option;
    }
    return null;
  }
}

/// Codes indicating the degree of authority/intentionality associated with
/// a care plan.
class CarePlanIntentBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CarePlanIntentBuilder._({
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
  factory CarePlanIntentBuilder(
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
    final valueEnum = CarePlanIntentBuilderEnum.fromString(
      valueString,
    );
    return CarePlanIntentBuilder._(
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

  /// Create empty [CarePlanIntentBuilder]
  /// with element only
  factory CarePlanIntentBuilder.empty() =>
      CarePlanIntentBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CarePlanIntentBuilder] from JSON.
  factory CarePlanIntentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanIntentBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CarePlanIntentBuilder cannot be constructed from JSON.',
      );
    }
    return CarePlanIntentBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CarePlanIntentBuilder
  final CarePlanIntentBuilderEnum? valueEnum;

  /// proposal
  static CarePlanIntentBuilder proposal = CarePlanIntentBuilder._(
    valueString: 'proposal',
    valueEnum: CarePlanIntentBuilderEnum.proposal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Proposal',
    ),
  );

  /// plan
  static CarePlanIntentBuilder plan = CarePlanIntentBuilder._(
    valueString: 'plan',
    valueEnum: CarePlanIntentBuilderEnum.plan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Plan',
    ),
  );

  /// directive
  static CarePlanIntentBuilder directive = CarePlanIntentBuilder._(
    valueString: 'directive',
    valueEnum: CarePlanIntentBuilderEnum.directive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Directive',
    ),
  );

  /// order
  static CarePlanIntentBuilder order = CarePlanIntentBuilder._(
    valueString: 'order',
    valueEnum: CarePlanIntentBuilderEnum.order,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Order',
    ),
  );

  /// original_order
  static CarePlanIntentBuilder originalOrder = CarePlanIntentBuilder._(
    valueString: 'original-order',
    valueEnum: CarePlanIntentBuilderEnum.originalOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Original Order',
    ),
  );

  /// reflex_order
  static CarePlanIntentBuilder reflexOrder = CarePlanIntentBuilder._(
    valueString: 'reflex-order',
    valueEnum: CarePlanIntentBuilderEnum.reflexOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Reflex Order',
    ),
  );

  /// filler_order
  static CarePlanIntentBuilder fillerOrder = CarePlanIntentBuilder._(
    valueString: 'filler-order',
    valueEnum: CarePlanIntentBuilderEnum.fillerOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Filler Order',
    ),
  );

  /// instance_order
  static CarePlanIntentBuilder instanceOrder = CarePlanIntentBuilder._(
    valueString: 'instance-order',
    valueEnum: CarePlanIntentBuilderEnum.instanceOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Instance Order',
    ),
  );

  /// option
  static CarePlanIntentBuilder option = CarePlanIntentBuilder._(
    valueString: 'option',
    valueEnum: CarePlanIntentBuilderEnum.option,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Option',
    ),
  );

  /// For instances where an Element is present but not value
  static CarePlanIntentBuilder elementOnly = CarePlanIntentBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CarePlanIntentBuilder> values = [
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
  CarePlanIntentBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CarePlanIntentBuilder._(
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
