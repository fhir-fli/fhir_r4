// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes indicating the degree of authority/intentionality associated with
/// a request.
class RequestIntentBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RequestIntentBuilder._({
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
    return RequestIntentBuilder._(
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

  /// Create empty [RequestIntentBuilder] with element only
  factory RequestIntentBuilder.empty() =>
      RequestIntentBuilder._(valueString: '');

  /// Factory constructor to create [RequestIntentBuilder]
  /// from JSON.
  factory RequestIntentBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestIntentBuilder.elementOnly.withElement(element);
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

  /// proposal
  static RequestIntentBuilder proposal = RequestIntentBuilder._(
    valueString: 'proposal',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Proposal'.toFhirStringBuilder,
  );

  /// plan
  static RequestIntentBuilder plan = RequestIntentBuilder._(
    valueString: 'plan',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Plan'.toFhirStringBuilder,
  );

  /// directive
  static RequestIntentBuilder directive = RequestIntentBuilder._(
    valueString: 'directive',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Directive'.toFhirStringBuilder,
  );

  /// order
  static RequestIntentBuilder order = RequestIntentBuilder._(
    valueString: 'order',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Order'.toFhirStringBuilder,
  );

  /// original_order
  static RequestIntentBuilder original_order = RequestIntentBuilder._(
    valueString: 'original-order',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Original Order'.toFhirStringBuilder,
  );

  /// reflex_order
  static RequestIntentBuilder reflex_order = RequestIntentBuilder._(
    valueString: 'reflex-order',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Reflex Order'.toFhirStringBuilder,
  );

  /// filler_order
  static RequestIntentBuilder filler_order = RequestIntentBuilder._(
    valueString: 'filler-order',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Filler Order'.toFhirStringBuilder,
  );

  /// instance_order
  static RequestIntentBuilder instance_order = RequestIntentBuilder._(
    valueString: 'instance-order',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Instance Order'.toFhirStringBuilder,
  );

  /// option
  static RequestIntentBuilder option = RequestIntentBuilder._(
    valueString: 'option',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Option'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static RequestIntentBuilder elementOnly =
      RequestIntentBuilder._(valueString: '');

  /// List of all enum-like values
  static List<RequestIntentBuilder> values = [
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
  RequestIntentBuilder clone() => RequestIntentBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  RequestIntentBuilder withElement(ElementBuilder? newElement) {
    return RequestIntentBuilder._(
        valueString: valueString, element: newElement);
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
  RequestIntentBuilder copyWith({
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
      throw ArgumentError('Invalid input for RequestIntent: $newValue');
    }
    return RequestIntentBuilder._(
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
