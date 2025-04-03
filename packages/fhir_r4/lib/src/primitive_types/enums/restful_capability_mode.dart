// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The mode of a RESTful capability statement.
class RestfulCapabilityMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  RestfulCapabilityMode._({
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
  factory RestfulCapabilityMode(
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
    return RestfulCapabilityMode._(
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

  /// Create empty [RestfulCapabilityMode] with element only
  factory RestfulCapabilityMode.empty() =>
      RestfulCapabilityMode._(valueString: '');

  /// Factory constructor to create [RestfulCapabilityMode]
  /// from JSON.
  factory RestfulCapabilityMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RestfulCapabilityMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RestfulCapabilityMode cannot be constructed from JSON.',
      );
    }
    return RestfulCapabilityMode._(
      valueString: value,
      element: element,
    );
  }

  /// client
  static final RestfulCapabilityMode client = RestfulCapabilityMode._(
    valueString: 'client',
    system: 'http://hl7.org/fhir/ValueSet/restful-capability-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Client'.toFhirString,
  );

  /// server
  static final RestfulCapabilityMode server = RestfulCapabilityMode._(
    valueString: 'server',
    system: 'http://hl7.org/fhir/ValueSet/restful-capability-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Server'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final RestfulCapabilityMode elementOnly =
      RestfulCapabilityMode._(valueString: '');

  /// List of all enum-like values
  static final List<RestfulCapabilityMode> values = [
    client,
    server,
  ];

  /// Clones the current instance
  @override
  RestfulCapabilityMode clone() => RestfulCapabilityMode._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RestfulCapabilityMode withElement(Element? newElement) {
    return RestfulCapabilityMode._(
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
  RestfulCapabilityMode copyWith({
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
        'Invalid input for RestfulCapabilityMode: $newValue',
      );
    }
    return RestfulCapabilityMode._(
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
