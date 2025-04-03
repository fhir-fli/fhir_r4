// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The possible types of variables for exposures or outcomes (E.g.
/// Dichotomous, Continuous, Descriptive).
class VariableType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  VariableType._({
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
  factory VariableType(
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
    return VariableType._(
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

  /// Create empty [VariableType] with element only
  factory VariableType.empty() => VariableType._(valueString: '');

  /// Factory constructor to create [VariableType] from JSON.
  factory VariableType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VariableType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VariableType cannot be constructed from JSON.',
      );
    }
    return VariableType._(
      valueString: value,
      element: element,
    );
  }

  /// dichotomous
  static final VariableType dichotomous = VariableType._(
    valueString: 'dichotomous',
    system: 'http://hl7.org/fhir/ValueSet/variable-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Dichotomous'.toFhirString,
  );

  /// continuous
  static final VariableType continuous = VariableType._(
    valueString: 'continuous',
    system: 'http://hl7.org/fhir/ValueSet/variable-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Continuous'.toFhirString,
  );

  /// descriptive
  static final VariableType descriptive = VariableType._(
    valueString: 'descriptive',
    system: 'http://hl7.org/fhir/ValueSet/variable-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Descriptive'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final VariableType elementOnly = VariableType._(valueString: '');

  /// List of all enum-like values
  static final List<VariableType> values = [
    dichotomous,
    continuous,
    descriptive,
  ];

  /// Clones the current instance
  @override
  VariableType clone() => VariableType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  VariableType withElement(Element? newElement) {
    return VariableType._(
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
  VariableType copyWith({
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
      throw ArgumentError('Invalid input for VariableType: $newValue');
    }
    return VariableType._(
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
