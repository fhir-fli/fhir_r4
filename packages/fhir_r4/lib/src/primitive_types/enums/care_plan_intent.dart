// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes indicating the degree of authority/intentionality associated with
/// a care plan.
class CarePlanIntent extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  CarePlanIntent._({
    required super.valueString,
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
  factory CarePlanIntent(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return CarePlanIntent._(
      valueString: valueString,
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

  /// Create empty [CarePlanIntent] with element only
  factory CarePlanIntent.empty() => CarePlanIntent._(valueString: '');

  /// Factory constructor to create [CarePlanIntent]
  /// from JSON.
  factory CarePlanIntent.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanIntent.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CarePlanIntent cannot be constructed from JSON.',
      );
    }
    return CarePlanIntent._(
      valueString: value,
      element: element,
    );
  }

  /// proposal
  static final CarePlanIntent proposal = CarePlanIntent._(
    valueString: 'proposal',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Proposal'.toFhirString,
  );

  /// plan
  static final CarePlanIntent plan = CarePlanIntent._(
    valueString: 'plan',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Plan'.toFhirString,
  );

  /// directive
  static final CarePlanIntent directive = CarePlanIntent._(
    valueString: 'directive',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Directive'.toFhirString,
  );

  /// order
  static final CarePlanIntent order = CarePlanIntent._(
    valueString: 'order',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Order'.toFhirString,
  );

  /// original_order
  static final CarePlanIntent original_order = CarePlanIntent._(
    valueString: 'original-order',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Original Order'.toFhirString,
  );

  /// reflex_order
  static final CarePlanIntent reflex_order = CarePlanIntent._(
    valueString: 'reflex-order',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Reflex Order'.toFhirString,
  );

  /// filler_order
  static final CarePlanIntent filler_order = CarePlanIntent._(
    valueString: 'filler-order',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Filler Order'.toFhirString,
  );

  /// instance_order
  static final CarePlanIntent instance_order = CarePlanIntent._(
    valueString: 'instance-order',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Instance Order'.toFhirString,
  );

  /// option
  static final CarePlanIntent option = CarePlanIntent._(
    valueString: 'option',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Option'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final CarePlanIntent elementOnly = CarePlanIntent._(valueString: '');

  /// List of all enum-like values
  static final List<CarePlanIntent> values = [
    proposal,
    plan,
    directive,
    order,
    original_order,
    reflex_order,
    filler_order,
    instance_order,
    option,
  ];

  /// Clones the current instance
  @override
  CarePlanIntent clone() => CarePlanIntent._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  CarePlanIntent copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for CarePlanIntent: $newValue',
      );
    }
    return CarePlanIntent._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
