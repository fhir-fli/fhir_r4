// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for MedicationRequestIntent
enum MedicationRequestIntentEnum {
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
      case MedicationRequestIntentEnum.proposal:
        return 'proposal';
      case MedicationRequestIntentEnum.plan:
        return 'plan';
      case MedicationRequestIntentEnum.order:
        return 'order';
      case MedicationRequestIntentEnum.originalOrder:
        return 'original-order';
      case MedicationRequestIntentEnum.reflexOrder:
        return 'reflex-order';
      case MedicationRequestIntentEnum.fillerOrder:
        return 'filler-order';
      case MedicationRequestIntentEnum.instanceOrder:
        return 'instance-order';
      case MedicationRequestIntentEnum.option:
        return 'option';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationRequestIntentEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationRequestIntentEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationRequestIntentEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'proposal':
        return MedicationRequestIntentEnum.proposal;
      case 'plan':
        return MedicationRequestIntentEnum.plan;
      case 'order':
        return MedicationRequestIntentEnum.order;
      case 'original-order':
        return MedicationRequestIntentEnum.originalOrder;
      case 'reflex-order':
        return MedicationRequestIntentEnum.reflexOrder;
      case 'filler-order':
        return MedicationRequestIntentEnum.fillerOrder;
      case 'instance-order':
        return MedicationRequestIntentEnum.instanceOrder;
      case 'option':
        return MedicationRequestIntentEnum.option;
    }
    return null;
  }
}

/// MedicationRequest Intent Codes
class MedicationRequestIntent extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const MedicationRequestIntent._({
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
  factory MedicationRequestIntent(
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
    final valueEnum = MedicationRequestIntentEnum.fromString(valueString);
    return MedicationRequestIntent._(
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

  /// Factory constructor to create [MedicationRequestIntent]
  /// from JSON.
  factory MedicationRequestIntent.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = MedicationRequestIntentEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestIntent._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationRequestIntent cannot be constructed from JSON.',
      );
    }
    return MedicationRequestIntent._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for MedicationRequestIntent
  final MedicationRequestIntentEnum? valueEnum;

  /// proposal
  static const MedicationRequestIntent proposal = MedicationRequestIntent._(
    valueString: 'proposal',
    valueEnum: MedicationRequestIntentEnum.proposal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Proposal',
    ),
  );

  /// plan
  static const MedicationRequestIntent plan = MedicationRequestIntent._(
    valueString: 'plan',
    valueEnum: MedicationRequestIntentEnum.plan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Plan',
    ),
  );

  /// order
  static const MedicationRequestIntent order = MedicationRequestIntent._(
    valueString: 'order',
    valueEnum: MedicationRequestIntentEnum.order,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Order',
    ),
  );

  /// original_order
  static const MedicationRequestIntent originalOrder =
      MedicationRequestIntent._(
    valueString: 'original-order',
    valueEnum: MedicationRequestIntentEnum.originalOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Original Order',
    ),
  );

  /// reflex_order
  static const MedicationRequestIntent reflexOrder = MedicationRequestIntent._(
    valueString: 'reflex-order',
    valueEnum: MedicationRequestIntentEnum.reflexOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Reflex Order',
    ),
  );

  /// filler_order
  static const MedicationRequestIntent fillerOrder = MedicationRequestIntent._(
    valueString: 'filler-order',
    valueEnum: MedicationRequestIntentEnum.fillerOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Filler Order',
    ),
  );

  /// instance_order
  static const MedicationRequestIntent instanceOrder =
      MedicationRequestIntent._(
    valueString: 'instance-order',
    valueEnum: MedicationRequestIntentEnum.instanceOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Instance Order',
    ),
  );

  /// option
  static const MedicationRequestIntent option = MedicationRequestIntent._(
    valueString: 'option',
    valueEnum: MedicationRequestIntentEnum.option,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Option',
    ),
  );

  /// List of all enum-like values
  static final List<MedicationRequestIntent> values = [
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
  MedicationRequestIntent withElement(Element? newElement) {
    return MedicationRequestIntent._(
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
  MedicationRequestIntent clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  MedicationRequestIntentCopyWithImpl<MedicationRequestIntent> get copyWith =>
      MedicationRequestIntentCopyWithImpl<MedicationRequestIntent>(
        this,
        (v) => v as MedicationRequestIntent,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class MedicationRequestIntentCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  MedicationRequestIntentCopyWithImpl(super._value, super._then);

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
      MedicationRequestIntent(
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
