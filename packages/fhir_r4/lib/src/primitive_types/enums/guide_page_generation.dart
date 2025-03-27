// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A code that indicates how the page is generated.
class GuidePageGeneration extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  GuidePageGeneration._({
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
  factory GuidePageGeneration(
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
    return GuidePageGeneration._(
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

  /// Create empty [GuidePageGeneration] with element only
  factory GuidePageGeneration.empty() =>
      GuidePageGeneration._(validatedValue: '');

  /// Factory constructor to create [GuidePageGeneration] from JSON.
  factory GuidePageGeneration.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidePageGeneration.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GuidePageGeneration cannot be constructed from JSON.',
      );
    }
    return GuidePageGeneration._(
      validatedValue: value,
      element: element,
    );
  }

  /// html
  static final GuidePageGeneration html = GuidePageGeneration._(
    validatedValue: 'html',
    system: 'http://hl7.org/fhir/ValueSet/guide-page-generation'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'HTML'.toFhirString,
  );

  /// markdown
  static final GuidePageGeneration markdown = GuidePageGeneration._(
    validatedValue: 'markdown',
    system: 'http://hl7.org/fhir/ValueSet/guide-page-generation'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Markdown'.toFhirString,
  );

  /// xml
  static final GuidePageGeneration xml = GuidePageGeneration._(
    validatedValue: 'xml',
    system: 'http://hl7.org/fhir/ValueSet/guide-page-generation'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'XML'.toFhirString,
  );

  /// generated
  static final GuidePageGeneration generated = GuidePageGeneration._(
    validatedValue: 'generated',
    system: 'http://hl7.org/fhir/ValueSet/guide-page-generation'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Generated'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final GuidePageGeneration elementOnly =
      GuidePageGeneration._(validatedValue: '');

  /// List of all enum-like values
  static final List<GuidePageGeneration> values = [
    html,
    markdown,
    xml,
    generated,
  ];

  /// Clones the current instance
  @override
  GuidePageGeneration clone() => GuidePageGeneration._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GuidePageGeneration withElement(Element? newElement) {
    return GuidePageGeneration._(validatedValue: value, element: newElement);
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
  GuidePageGeneration copyWith({
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
    return GuidePageGeneration._(
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
