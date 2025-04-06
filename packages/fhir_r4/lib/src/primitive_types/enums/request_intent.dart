// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes indicating the degree of authority/intentionality associated with
/// a request.
class RequestIntent extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  RequestIntent._({
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
  factory RequestIntent(
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
    return RequestIntent._(
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

  /// Create empty [RequestIntent] with element only
  factory RequestIntent.empty() => RequestIntent._(valueString: '');

  /// Factory constructor to create [RequestIntent]
  /// from JSON.
  factory RequestIntent.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestIntent.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestIntent cannot be constructed from JSON.',
      );
    }
    return RequestIntent._(
      valueString: value,
      element: element,
    );
  }

  /// proposal
  static final RequestIntent proposal = RequestIntent._(
    valueString: 'proposal',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Proposal'.toFhirString,
  );

  /// plan
  static final RequestIntent plan = RequestIntent._(
    valueString: 'plan',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Plan'.toFhirString,
  );

  /// directive
  static final RequestIntent directive = RequestIntent._(
    valueString: 'directive',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Directive'.toFhirString,
  );

  /// order
  static final RequestIntent order = RequestIntent._(
    valueString: 'order',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Order'.toFhirString,
  );

  /// original_order
  static final RequestIntent original_order = RequestIntent._(
    valueString: 'original-order',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Original Order'.toFhirString,
  );

  /// reflex_order
  static final RequestIntent reflex_order = RequestIntent._(
    valueString: 'reflex-order',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Reflex Order'.toFhirString,
  );

  /// filler_order
  static final RequestIntent filler_order = RequestIntent._(
    valueString: 'filler-order',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Filler Order'.toFhirString,
  );

  /// instance_order
  static final RequestIntent instance_order = RequestIntent._(
    valueString: 'instance-order',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Instance Order'.toFhirString,
  );

  /// option
  static final RequestIntent option = RequestIntent._(
    valueString: 'option',
    system: 'http://hl7.org/fhir/ValueSet/request-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Option'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final RequestIntent elementOnly = RequestIntent._(valueString: '');

  /// List of all enum-like values
  static final List<RequestIntent> values = [
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
  RequestIntent clone() => RequestIntent._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  RequestIntent copyWith({
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
        'Invalid input for RequestIntent: $newValue',
      );
    }
    return RequestIntent._(
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
