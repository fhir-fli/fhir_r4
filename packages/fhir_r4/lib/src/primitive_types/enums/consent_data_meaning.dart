// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How a resource reference is interpreted when testing consent
/// restrictions.
class ConsentDataMeaning extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ConsentDataMeaning._({
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
  factory ConsentDataMeaning(
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
    return ConsentDataMeaning._(
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

  /// Create empty [ConsentDataMeaning] with element only
  factory ConsentDataMeaning.empty() => ConsentDataMeaning._(valueString: '');

  /// Factory constructor to create [ConsentDataMeaning]
  /// from JSON.
  factory ConsentDataMeaning.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentDataMeaning.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentDataMeaning cannot be constructed from JSON.',
      );
    }
    return ConsentDataMeaning._(
      valueString: value,
      element: element,
    );
  }

  /// instance
  static final ConsentDataMeaning instance = ConsentDataMeaning._(
    valueString: 'instance',
    system: 'http://hl7.org/fhir/ValueSet/consent-data-meaning'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Instance'.toFhirString,
  );

  /// related
  static final ConsentDataMeaning related = ConsentDataMeaning._(
    valueString: 'related',
    system: 'http://hl7.org/fhir/ValueSet/consent-data-meaning'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Related'.toFhirString,
  );

  /// dependents
  static final ConsentDataMeaning dependents = ConsentDataMeaning._(
    valueString: 'dependents',
    system: 'http://hl7.org/fhir/ValueSet/consent-data-meaning'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Dependents'.toFhirString,
  );

  /// authoredby
  static final ConsentDataMeaning authoredby = ConsentDataMeaning._(
    valueString: 'authoredby',
    system: 'http://hl7.org/fhir/ValueSet/consent-data-meaning'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AuthoredBy'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ConsentDataMeaning elementOnly =
      ConsentDataMeaning._(valueString: '');

  /// List of all enum-like values
  static final List<ConsentDataMeaning> values = [
    instance,
    related,
    dependents,
    authoredby,
  ];

  /// Clones the current instance
  @override
  ConsentDataMeaning clone() => ConsentDataMeaning._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConsentDataMeaning withElement(Element? newElement) {
    return ConsentDataMeaning._(
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
  ConsentDataMeaning copyWith({
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
        'Invalid input for ConsentDataMeaning: $newValue',
      );
    }
    return ConsentDataMeaning._(
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
