// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A coded concept listing the eye codes.
class VisionEyes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  VisionEyes._({
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
  factory VisionEyes(
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
    return VisionEyes._(
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

  /// Create empty [VisionEyes] with element only
  factory VisionEyes.empty() => VisionEyes._(valueString: '');

  /// Factory constructor to create [VisionEyes]
  /// from JSON.
  factory VisionEyes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionEyes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VisionEyes cannot be constructed from JSON.',
      );
    }
    return VisionEyes._(
      valueString: value,
      element: element,
    );
  }

  /// right
  static final VisionEyes right = VisionEyes._(
    valueString: 'right',
    system: 'http://hl7.org/fhir/ValueSet/vision-eye-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Right Eye'.toFhirString,
  );

  /// left
  static final VisionEyes left = VisionEyes._(
    valueString: 'left',
    system: 'http://hl7.org/fhir/ValueSet/vision-eye-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Left Eye'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final VisionEyes elementOnly = VisionEyes._(valueString: '');

  /// List of all enum-like values
  static final List<VisionEyes> values = [
    right,
    left,
  ];

  /// Clones the current instance
  @override
  VisionEyes clone() => VisionEyes._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  VisionEyes withElement(Element? newElement) {
    return VisionEyes._(
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
  VisionEyes copyWith({
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
        'Invalid input for VisionEyes: $newValue',
      );
    }
    return VisionEyes._(
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
