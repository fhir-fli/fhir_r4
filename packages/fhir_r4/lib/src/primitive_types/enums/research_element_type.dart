// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The possible types of research elements (E.g. Population, Exposure,
/// Outcome).
class ResearchElementType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ResearchElementType._({
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
  factory ResearchElementType(
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
    return ResearchElementType._(
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

  /// Create empty [ResearchElementType] with element only
  factory ResearchElementType.empty() => ResearchElementType._(valueString: '');

  /// Factory constructor to create [ResearchElementType]
  /// from JSON.
  factory ResearchElementType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchElementType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchElementType cannot be constructed from JSON.',
      );
    }
    return ResearchElementType._(
      valueString: value,
      element: element,
    );
  }

  /// population
  static final ResearchElementType population = ResearchElementType._(
    valueString: 'population',
    system: 'http://hl7.org/fhir/ValueSet/research-element-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Population'.toFhirString,
  );

  /// exposure
  static final ResearchElementType exposure = ResearchElementType._(
    valueString: 'exposure',
    system: 'http://hl7.org/fhir/ValueSet/research-element-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Exposure'.toFhirString,
  );

  /// outcome
  static final ResearchElementType outcome = ResearchElementType._(
    valueString: 'outcome',
    system: 'http://hl7.org/fhir/ValueSet/research-element-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Outcome'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ResearchElementType elementOnly =
      ResearchElementType._(valueString: '');

  /// List of all enum-like values
  static final List<ResearchElementType> values = [
    population,
    exposure,
    outcome,
  ];

  /// Clones the current instance
  @override
  ResearchElementType clone() => ResearchElementType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ResearchElementType withElement(Element? newElement) {
    return ResearchElementType._(
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
  ResearchElementType copyWith({
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
        'Invalid input for ResearchElementType: $newValue',
      );
    }
    return ResearchElementType._(
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
