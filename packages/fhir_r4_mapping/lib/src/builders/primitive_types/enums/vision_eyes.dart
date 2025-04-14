// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for VisionEyes
enum VisionEyesBuilderEnum {
  /// right
  right,

  /// left
  left,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case VisionEyesBuilderEnum.right:
        return 'right';
      case VisionEyesBuilderEnum.left:
        return 'left';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static VisionEyesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return VisionEyesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static VisionEyesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'right':
        return VisionEyesBuilderEnum.right;
      case 'left':
        return VisionEyesBuilderEnum.left;
    }
    return null;
  }
}

/// A coded concept listing the eye codes.
class VisionEyesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  VisionEyesBuilder._({
    required super.valueString,
    this.valueEnum,
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
  factory VisionEyesBuilder(
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
    final valueEnum = VisionEyesBuilderEnum.fromString(
      valueString,
    );
    return VisionEyesBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [VisionEyesBuilder]
  /// with element only
  factory VisionEyesBuilder.empty() => VisionEyesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [VisionEyesBuilder] from JSON.
  factory VisionEyesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionEyesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VisionEyesBuilder cannot be constructed from JSON.',
      );
    }
    return VisionEyesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for VisionEyesBuilder
  final VisionEyesBuilderEnum? valueEnum;

  /// right
  static VisionEyesBuilder right = VisionEyesBuilder._(
    valueString: 'right',
    valueEnum: VisionEyesBuilderEnum.right,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/vision-eye-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Right Eye',
    ),
  );

  /// left
  static VisionEyesBuilder left = VisionEyesBuilder._(
    valueString: 'left',
    valueEnum: VisionEyesBuilderEnum.left,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/vision-eye-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Left Eye',
    ),
  );

  /// For instances where an Element is present but not value
  static VisionEyesBuilder elementOnly = VisionEyesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<VisionEyesBuilder> values = [
    right,
    left,
  ];

  /// Returns the enum value with an element attached
  VisionEyesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return VisionEyesBuilder._(
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
}
