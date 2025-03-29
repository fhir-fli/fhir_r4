// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A coded concept listing the base codes.
class VisionBase extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  VisionBase._({
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
  factory VisionBase(
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
    return VisionBase._(
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

  /// Create empty [VisionBase] with element only
  factory VisionBase.empty() => VisionBase._(validatedValue: '');

  /// Factory constructor to create [VisionBase] from JSON.
  factory VisionBase.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionBase.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VisionBase cannot be constructed from JSON.',
      );
    }
    return VisionBase._(
      validatedValue: value,
      element: element,
    );
  }

  /// up
  static final VisionBase up = VisionBase._(
    validatedValue: 'up',
    system: 'http://hl7.org/fhir/ValueSet/vision-base-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Up'.toFhirString,
  );

  /// down
  static final VisionBase down = VisionBase._(
    validatedValue: 'down',
    system: 'http://hl7.org/fhir/ValueSet/vision-base-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Down'.toFhirString,
  );

  /// in_
  static final VisionBase in_ = VisionBase._(
    validatedValue: 'in',
    system: 'http://hl7.org/fhir/ValueSet/vision-base-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In'.toFhirString,
  );

  /// out
  static final VisionBase out = VisionBase._(
    validatedValue: 'out',
    system: 'http://hl7.org/fhir/ValueSet/vision-base-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Out'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final VisionBase elementOnly = VisionBase._(validatedValue: '');

  /// List of all enum-like values
  static final List<VisionBase> values = [
    up,
    down,
    in_,
    out,
  ];

  /// Clones the current instance
  @override
  VisionBase clone() => VisionBase._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  VisionBase withElement(Element? newElement) {
    return VisionBase._(
      validatedValue: value,
      element: newElement,
    );
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
  VisionBase copyWith({
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
    return VisionBase._(
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
