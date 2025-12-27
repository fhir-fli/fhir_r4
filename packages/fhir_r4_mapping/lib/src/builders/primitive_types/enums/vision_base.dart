part of '../primitive_types.dart';

/// Actual enum for VisionBase
enum VisionBaseBuilderEnum {
  /// up
  up,

  /// down
  down,

  /// in
  in_,

  /// out
  out,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case VisionBaseBuilderEnum.up:
        return 'up';
      case VisionBaseBuilderEnum.down:
        return 'down';
      case VisionBaseBuilderEnum.in_:
        return 'in';
      case VisionBaseBuilderEnum.out:
        return 'out';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static VisionBaseBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return VisionBaseBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static VisionBaseBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'up':
        return VisionBaseBuilderEnum.up;
      case 'down':
        return VisionBaseBuilderEnum.down;
      case 'in':
        return VisionBaseBuilderEnum.in_;
      case 'out':
        return VisionBaseBuilderEnum.out;
    }
    return null;
  }
}

/// A coded concept listing the base codes.
class VisionBaseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  VisionBaseBuilder._({
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
  factory VisionBaseBuilder(
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
    final valueEnum = VisionBaseBuilderEnum.fromString(
      valueString,
    );
    return VisionBaseBuilder._(
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

  /// Create empty [VisionBaseBuilder]
  /// with element only
  factory VisionBaseBuilder.empty() => VisionBaseBuilder._(valueString: null);

  /// Factory constructor to create
  /// [VisionBaseBuilder] from JSON.
  factory VisionBaseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionBaseBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VisionBaseBuilder cannot be constructed from JSON.',
      );
    }
    return VisionBaseBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for VisionBaseBuilder
  final VisionBaseBuilderEnum? valueEnum;

  /// up
  static VisionBaseBuilder up = VisionBaseBuilder._(
    valueString: 'up',
    valueEnum: VisionBaseBuilderEnum.up,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/vision-base-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Up',
    ),
  );

  /// down
  static VisionBaseBuilder down = VisionBaseBuilder._(
    valueString: 'down',
    valueEnum: VisionBaseBuilderEnum.down,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/vision-base-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Down',
    ),
  );

  /// in_
  static VisionBaseBuilder in_ = VisionBaseBuilder._(
    valueString: 'in',
    valueEnum: VisionBaseBuilderEnum.in_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/vision-base-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In',
    ),
  );

  /// out
  static VisionBaseBuilder out = VisionBaseBuilder._(
    valueString: 'out',
    valueEnum: VisionBaseBuilderEnum.out,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/vision-base-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Out',
    ),
  );

  /// For instances where an Element is present but not value
  static VisionBaseBuilder elementOnly = VisionBaseBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<VisionBaseBuilder> values = [
    up,
    down,
    in_,
    out,
  ];

  /// Returns the enum value with an element attached
  VisionBaseBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return VisionBaseBuilder._(
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
