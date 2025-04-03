// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How a compartment must be linked.
class GraphCompartmentRuleBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GraphCompartmentRuleBuilder._({
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
  factory GraphCompartmentRuleBuilder(
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
    return GraphCompartmentRuleBuilder._(
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

  /// Create empty [GraphCompartmentRuleBuilder] with element only
  factory GraphCompartmentRuleBuilder.empty() =>
      GraphCompartmentRuleBuilder._(valueString: '');

  /// Factory constructor to create [GraphCompartmentRuleBuilder]
  /// from JSON.
  factory GraphCompartmentRuleBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentRuleBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GraphCompartmentRuleBuilder cannot be constructed from JSON.',
      );
    }
    return GraphCompartmentRuleBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// identical
  static GraphCompartmentRuleBuilder identical = GraphCompartmentRuleBuilder._(
    valueString: 'identical',
    system:
        'http://hl7.org/fhir/ValueSet/graph-compartment-rule'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Identical'.toFhirStringBuilder,
  );

  /// matching
  static GraphCompartmentRuleBuilder matching = GraphCompartmentRuleBuilder._(
    valueString: 'matching',
    system:
        'http://hl7.org/fhir/ValueSet/graph-compartment-rule'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Matching'.toFhirStringBuilder,
  );

  /// different
  static GraphCompartmentRuleBuilder different = GraphCompartmentRuleBuilder._(
    valueString: 'different',
    system:
        'http://hl7.org/fhir/ValueSet/graph-compartment-rule'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Different'.toFhirStringBuilder,
  );

  /// custom
  static GraphCompartmentRuleBuilder custom = GraphCompartmentRuleBuilder._(
    valueString: 'custom',
    system:
        'http://hl7.org/fhir/ValueSet/graph-compartment-rule'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Custom'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static GraphCompartmentRuleBuilder elementOnly =
      GraphCompartmentRuleBuilder._(valueString: '');

  /// List of all enum-like values
  static List<GraphCompartmentRuleBuilder> values = [
    identical,
    matching,
    different,
    custom,
  ];

  /// Clones the current instance
  @override
  GraphCompartmentRuleBuilder clone() => GraphCompartmentRuleBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  GraphCompartmentRuleBuilder withElement(ElementBuilder? newElement) {
    return GraphCompartmentRuleBuilder._(
        valueString: valueString, element: newElement,);
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
  GraphCompartmentRuleBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for GraphCompartmentRule: $newValue');
    }
    return GraphCompartmentRuleBuilder._(
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
