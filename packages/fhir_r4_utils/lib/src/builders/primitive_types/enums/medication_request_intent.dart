// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for MedicationRequestIntent
enum MedicationRequestIntentBuilderEnum {
  /// proposal
  proposal,

  /// plan
  plan,

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
      case MedicationRequestIntentBuilderEnum.proposal:
        return 'proposal';
      case MedicationRequestIntentBuilderEnum.plan:
        return 'plan';
      case MedicationRequestIntentBuilderEnum.order:
        return 'order';
      case MedicationRequestIntentBuilderEnum.originalOrder:
        return 'original-order';
      case MedicationRequestIntentBuilderEnum.reflexOrder:
        return 'reflex-order';
      case MedicationRequestIntentBuilderEnum.fillerOrder:
        return 'filler-order';
      case MedicationRequestIntentBuilderEnum.instanceOrder:
        return 'instance-order';
      case MedicationRequestIntentBuilderEnum.option:
        return 'option';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationRequestIntentBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationRequestIntentBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationRequestIntentBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'proposal':
        return MedicationRequestIntentBuilderEnum.proposal;
      case 'plan':
        return MedicationRequestIntentBuilderEnum.plan;
      case 'order':
        return MedicationRequestIntentBuilderEnum.order;
      case 'original-order':
        return MedicationRequestIntentBuilderEnum.originalOrder;
      case 'reflex-order':
        return MedicationRequestIntentBuilderEnum.reflexOrder;
      case 'filler-order':
        return MedicationRequestIntentBuilderEnum.fillerOrder;
      case 'instance-order':
        return MedicationRequestIntentBuilderEnum.instanceOrder;
      case 'option':
        return MedicationRequestIntentBuilderEnum.option;
    }
    return null;
  }
}

/// MedicationRequest Intent Codes
class MedicationRequestIntentBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MedicationRequestIntentBuilder._({
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
  factory MedicationRequestIntentBuilder(
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
    final valueEnum = MedicationRequestIntentBuilderEnum.fromString(
      valueString,
    );
    return MedicationRequestIntentBuilder._(
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

  /// Create empty [MedicationRequestIntentBuilder]
  /// with element only
  factory MedicationRequestIntentBuilder.empty() =>
      MedicationRequestIntentBuilder._(valueString: null);

  /// Factory constructor to create
  /// [MedicationRequestIntentBuilder] from JSON.
  factory MedicationRequestIntentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestIntentBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationRequestIntentBuilder cannot be constructed from JSON.',
      );
    }
    return MedicationRequestIntentBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for MedicationRequestIntentBuilder
  final MedicationRequestIntentBuilderEnum? valueEnum;

  /// proposal
  static MedicationRequestIntentBuilder proposal =
      MedicationRequestIntentBuilder._(
    valueString: 'proposal',
    valueEnum: MedicationRequestIntentBuilderEnum.proposal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Proposal',
    ),
  );

  /// plan
  static MedicationRequestIntentBuilder plan = MedicationRequestIntentBuilder._(
    valueString: 'plan',
    valueEnum: MedicationRequestIntentBuilderEnum.plan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Plan',
    ),
  );

  /// order
  static MedicationRequestIntentBuilder order =
      MedicationRequestIntentBuilder._(
    valueString: 'order',
    valueEnum: MedicationRequestIntentBuilderEnum.order,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Order',
    ),
  );

  /// original_order
  static MedicationRequestIntentBuilder originalOrder =
      MedicationRequestIntentBuilder._(
    valueString: 'original-order',
    valueEnum: MedicationRequestIntentBuilderEnum.originalOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Original Order',
    ),
  );

  /// reflex_order
  static MedicationRequestIntentBuilder reflexOrder =
      MedicationRequestIntentBuilder._(
    valueString: 'reflex-order',
    valueEnum: MedicationRequestIntentBuilderEnum.reflexOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Reflex Order',
    ),
  );

  /// filler_order
  static MedicationRequestIntentBuilder fillerOrder =
      MedicationRequestIntentBuilder._(
    valueString: 'filler-order',
    valueEnum: MedicationRequestIntentBuilderEnum.fillerOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Filler Order',
    ),
  );

  /// instance_order
  static MedicationRequestIntentBuilder instanceOrder =
      MedicationRequestIntentBuilder._(
    valueString: 'instance-order',
    valueEnum: MedicationRequestIntentBuilderEnum.instanceOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Instance Order',
    ),
  );

  /// option
  static MedicationRequestIntentBuilder option =
      MedicationRequestIntentBuilder._(
    valueString: 'option',
    valueEnum: MedicationRequestIntentBuilderEnum.option,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Option',
    ),
  );

  /// For instances where an Element is present but not value
  static MedicationRequestIntentBuilder elementOnly =
      MedicationRequestIntentBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<MedicationRequestIntentBuilder> values = [
    proposal,
    plan,
    order,
    originalOrder,
    reflexOrder,
    fillerOrder,
    instanceOrder,
    option,
  ];

  /// Returns the enum value with an element attached
  MedicationRequestIntentBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MedicationRequestIntentBuilder._(
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
