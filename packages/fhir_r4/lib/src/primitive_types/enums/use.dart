// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The purpose of the Claim: predetermination, preauthorization, claim.
class Use extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  Use._({
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
  factory Use(
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
    return Use._(
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

  /// Create empty [Use] with element only
  factory Use.empty() => Use._(valueString: '');

  /// Factory constructor to create [Use]
  /// from JSON.
  factory Use.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Use.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'Use cannot be constructed from JSON.',
      );
    }
    return Use._(
      valueString: value,
      element: element,
    );
  }

  /// claim
  static final Use claim = Use._(
    valueString: 'claim',
    system: 'http://hl7.org/fhir/ValueSet/claim-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Claim'.toFhirString,
  );

  /// preauthorization
  static final Use preauthorization = Use._(
    valueString: 'preauthorization',
    system: 'http://hl7.org/fhir/ValueSet/claim-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Preauthorization'.toFhirString,
  );

  /// predetermination
  static final Use predetermination = Use._(
    valueString: 'predetermination',
    system: 'http://hl7.org/fhir/ValueSet/claim-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Predetermination'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final Use elementOnly = Use._(valueString: '');

  /// List of all enum-like values
  static final List<Use> values = [
    claim,
    preauthorization,
    predetermination,
  ];

  /// Clones the current instance
  @override
  Use clone() => Use._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  Use withElement(Element? newElement) {
    return Use._(
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
  Use copyWith({
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
        'Invalid input for Use: $newValue',
      );
    }
    return Use._(
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
