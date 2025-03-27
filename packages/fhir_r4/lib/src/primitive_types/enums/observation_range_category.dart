// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes identifying the category of observation range.
class ObservationRangeCategory extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ObservationRangeCategory._({
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
  factory ObservationRangeCategory(
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
    return ObservationRangeCategory._(
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

  /// Create empty [ObservationRangeCategory] with element only
  factory ObservationRangeCategory.empty() =>
      ObservationRangeCategory._(validatedValue: '');

  /// Factory constructor to create [ObservationRangeCategory] from JSON.
  factory ObservationRangeCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationRangeCategory.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationRangeCategory cannot be constructed from JSON.',
      );
    }
    return ObservationRangeCategory._(
      validatedValue: value,
      element: element,
    );
  }

  /// reference
  static final ObservationRangeCategory reference = ObservationRangeCategory._(
    validatedValue: 'reference',
    system: 'http://hl7.org/fhir/ValueSet/observation-range-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'reference range'.toFhirString,
  );

  /// critical
  static final ObservationRangeCategory critical = ObservationRangeCategory._(
    validatedValue: 'critical',
    system: 'http://hl7.org/fhir/ValueSet/observation-range-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'critical range'.toFhirString,
  );

  /// absolute
  static final ObservationRangeCategory absolute = ObservationRangeCategory._(
    validatedValue: 'absolute',
    system: 'http://hl7.org/fhir/ValueSet/observation-range-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'absolute range'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ObservationRangeCategory elementOnly =
      ObservationRangeCategory._(validatedValue: '');

  /// List of all enum-like values
  static final List<ObservationRangeCategory> values = [
    reference,
    critical,
    absolute,
  ];

  /// Clones the current instance
  @override
  ObservationRangeCategory clone() => ObservationRangeCategory._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ObservationRangeCategory withElement(Element? newElement) {
    return ObservationRangeCategory._(
        validatedValue: value, element: newElement,);
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
  ObservationRangeCategory copyWith({
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
    return ObservationRangeCategory._(
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
