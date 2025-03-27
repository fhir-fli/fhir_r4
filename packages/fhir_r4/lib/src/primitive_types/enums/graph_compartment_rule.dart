// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How a compartment must be linked.
class GraphCompartmentRule extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  GraphCompartmentRule._({
    required super.validatedValue,
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
  factory GraphCompartmentRule(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return GraphCompartmentRule._(
      validatedValue: validated,
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

  /// Create empty [GraphCompartmentRule] with element only
  factory GraphCompartmentRule.empty() =>
      GraphCompartmentRule._(validatedValue: '');

  /// Factory constructor to create [GraphCompartmentRule] from JSON.
  factory GraphCompartmentRule.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentRule.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GraphCompartmentRule cannot be constructed from JSON.',
      );
    }
    return GraphCompartmentRule._(
      validatedValue: value,
      element: element,
    );
  }

  /// identical
  static final GraphCompartmentRule identical = GraphCompartmentRule._(
    validatedValue: 'identical',
    system: 'http://hl7.org/fhir/ValueSet/graph-compartment-rule'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Identical'.toFhirString,
  );

  /// matching
  static final GraphCompartmentRule matching = GraphCompartmentRule._(
    validatedValue: 'matching',
    system: 'http://hl7.org/fhir/ValueSet/graph-compartment-rule'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Matching'.toFhirString,
  );

  /// different
  static final GraphCompartmentRule different = GraphCompartmentRule._(
    validatedValue: 'different',
    system: 'http://hl7.org/fhir/ValueSet/graph-compartment-rule'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Different'.toFhirString,
  );

  /// custom
  static final GraphCompartmentRule custom = GraphCompartmentRule._(
    validatedValue: 'custom',
    system: 'http://hl7.org/fhir/ValueSet/graph-compartment-rule'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Custom'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final GraphCompartmentRule elementOnly =
      GraphCompartmentRule._(validatedValue: '');

  /// List of all enum-like values
  static final List<GraphCompartmentRule> values = [
    identical,
    matching,
    different,
    custom,
  ];

  /// Clones the current instance
  @override
  GraphCompartmentRule clone() => GraphCompartmentRule._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GraphCompartmentRule withElement(Element? newElement) {
    return GraphCompartmentRule._(validatedValue: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  GraphCompartmentRule copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return GraphCompartmentRule._(
      validatedValue: newValue ?? value,
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
