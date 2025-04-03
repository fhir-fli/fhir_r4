// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How resource references can be aggregated.
class AggregationMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AggregationMode._({
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
  factory AggregationMode(
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
    return AggregationMode._(
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

  /// Create empty [AggregationMode] with element only
  factory AggregationMode.empty() => AggregationMode._(valueString: '');

  /// Factory constructor to create [AggregationMode] from JSON.
  factory AggregationMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AggregationMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AggregationMode cannot be constructed from JSON.',
      );
    }
    return AggregationMode._(
      valueString: value,
      element: element,
    );
  }

  /// contained
  static final AggregationMode contained = AggregationMode._(
    valueString: 'contained',
    system: 'http://hl7.org/fhir/ValueSet/resource-aggregation-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Contained'.toFhirString,
  );

  /// referenced
  static final AggregationMode referenced = AggregationMode._(
    valueString: 'referenced',
    system: 'http://hl7.org/fhir/ValueSet/resource-aggregation-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Referenced'.toFhirString,
  );

  /// bundled
  static final AggregationMode bundled = AggregationMode._(
    valueString: 'bundled',
    system: 'http://hl7.org/fhir/ValueSet/resource-aggregation-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Bundled'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AggregationMode elementOnly = AggregationMode._(valueString: '');

  /// List of all enum-like values
  static final List<AggregationMode> values = [
    contained,
    referenced,
    bundled,
  ];

  /// Clones the current instance
  @override
  AggregationMode clone() => AggregationMode._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AggregationMode withElement(Element? newElement) {
    return AggregationMode._(
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
  AggregationMode copyWith({
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
      throw ArgumentError('Invalid input for AggregationMode: $newValue');
    }
    return AggregationMode._(
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
