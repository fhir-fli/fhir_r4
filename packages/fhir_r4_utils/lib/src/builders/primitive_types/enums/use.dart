// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The purpose of the Claim: predetermination, preauthorization, claim.
class UseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  UseBuilder._({
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
  factory UseBuilder(
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
    return UseBuilder._(
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

  /// Create empty [UseBuilder] with element only
  factory UseBuilder.empty() => UseBuilder._(valueString: '');

  /// Factory constructor to create [UseBuilder]
  /// from JSON.
  factory UseBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UseBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'UseBuilder cannot be constructed from JSON.',
      );
    }
    return UseBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// claim
  static UseBuilder claim = UseBuilder._(
    valueString: 'claim',
    system: 'http://hl7.org/fhir/ValueSet/claim-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Claim'.toFhirStringBuilder,
  );

  /// preauthorization
  static UseBuilder preauthorization = UseBuilder._(
    valueString: 'preauthorization',
    system: 'http://hl7.org/fhir/ValueSet/claim-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Preauthorization'.toFhirStringBuilder,
  );

  /// predetermination
  static UseBuilder predetermination = UseBuilder._(
    valueString: 'predetermination',
    system: 'http://hl7.org/fhir/ValueSet/claim-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Predetermination'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static UseBuilder elementOnly = UseBuilder._(valueString: '');

  /// List of all enum-like values
  static List<UseBuilder> values = [
    claim,
    preauthorization,
    predetermination,
  ];

  /// Clones the current instance
  @override
  UseBuilder clone() => UseBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  UseBuilder withElement(ElementBuilder? newElement) {
    return UseBuilder._(valueString: valueString, element: newElement);
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
  UseBuilder copyWith({
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
      throw ArgumentError('Invalid input for Use: $newValue');
    }
    return UseBuilder._(
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
