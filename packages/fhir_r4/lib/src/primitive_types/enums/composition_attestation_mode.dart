// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The way in which a person authenticated a composition.
class CompositionAttestationMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  CompositionAttestationMode._({
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
  factory CompositionAttestationMode(
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
    return CompositionAttestationMode._(
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

  /// Create empty [CompositionAttestationMode] with element only
  factory CompositionAttestationMode.empty() =>
      CompositionAttestationMode._(valueString: '');

  /// Factory constructor to create [CompositionAttestationMode]
  /// from JSON.
  factory CompositionAttestationMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionAttestationMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CompositionAttestationMode cannot be constructed from JSON.',
      );
    }
    return CompositionAttestationMode._(
      valueString: value,
      element: element,
    );
  }

  /// personal
  static final CompositionAttestationMode personal =
      CompositionAttestationMode._(
    valueString: 'personal',
    system:
        'http://hl7.org/fhir/ValueSet/composition-attestation-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Personal'.toFhirString,
  );

  /// professional
  static final CompositionAttestationMode professional =
      CompositionAttestationMode._(
    valueString: 'professional',
    system:
        'http://hl7.org/fhir/ValueSet/composition-attestation-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Professional'.toFhirString,
  );

  /// legal
  static final CompositionAttestationMode legal = CompositionAttestationMode._(
    valueString: 'legal',
    system:
        'http://hl7.org/fhir/ValueSet/composition-attestation-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Legal'.toFhirString,
  );

  /// official
  static final CompositionAttestationMode official =
      CompositionAttestationMode._(
    valueString: 'official',
    system:
        'http://hl7.org/fhir/ValueSet/composition-attestation-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Official'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final CompositionAttestationMode elementOnly =
      CompositionAttestationMode._(valueString: '');

  /// List of all enum-like values
  static final List<CompositionAttestationMode> values = [
    personal,
    professional,
    legal,
    official,
  ];

  /// Clones the current instance
  @override
  CompositionAttestationMode clone() => CompositionAttestationMode._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CompositionAttestationMode withElement(Element? newElement) {
    return CompositionAttestationMode._(
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
  CompositionAttestationMode copyWith({
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
        'Invalid input for CompositionAttestationMode: $newValue',
      );
    }
    return CompositionAttestationMode._(
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
