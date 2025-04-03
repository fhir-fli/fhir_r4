// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Behavior a server can exhibit when a criteria state does not exist
/// (e.g., state prior to a create or after a delete).
class CriteriaNotExistsBehavior extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  CriteriaNotExistsBehavior._({
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
  factory CriteriaNotExistsBehavior(
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
    return CriteriaNotExistsBehavior._(
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

  /// Create empty [CriteriaNotExistsBehavior] with element only
  factory CriteriaNotExistsBehavior.empty() =>
      CriteriaNotExistsBehavior._(valueString: '');

  /// Factory constructor to create [CriteriaNotExistsBehavior] from JSON.
  factory CriteriaNotExistsBehavior.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CriteriaNotExistsBehavior.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CriteriaNotExistsBehavior cannot be constructed from JSON.',
      );
    }
    return CriteriaNotExistsBehavior._(
      valueString: value,
      element: element,
    );
  }

  /// test_passes
  static final CriteriaNotExistsBehavior test_passes =
      CriteriaNotExistsBehavior._(
    valueString: 'test-passes',
    system:
        'http://hl7.org/fhir/ValueSet/subscriptiontopic-cr-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'test passes'.toFhirString,
  );

  /// test_fails
  static final CriteriaNotExistsBehavior test_fails =
      CriteriaNotExistsBehavior._(
    valueString: 'test-fails',
    system:
        'http://hl7.org/fhir/ValueSet/subscriptiontopic-cr-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'test fails'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final CriteriaNotExistsBehavior elementOnly =
      CriteriaNotExistsBehavior._(valueString: '');

  /// List of all enum-like values
  static final List<CriteriaNotExistsBehavior> values = [
    test_passes,
    test_fails,
  ];

  /// Clones the current instance
  @override
  CriteriaNotExistsBehavior clone() => CriteriaNotExistsBehavior._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CriteriaNotExistsBehavior withElement(Element? newElement) {
    return CriteriaNotExistsBehavior._(
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
  CriteriaNotExistsBehavior copyWith({
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
          'Invalid input for CriteriaNotExistsBehavior: $newValue');
    }
    return CriteriaNotExistsBehavior._(
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
