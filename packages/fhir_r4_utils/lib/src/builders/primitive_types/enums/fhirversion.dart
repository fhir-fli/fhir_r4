// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// All published FHIR Versions.
class FHIRVersionBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FHIRVersionBuilder._({
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
  factory FHIRVersionBuilder(
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
    return FHIRVersionBuilder._(
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

  /// Create empty [FHIRVersionBuilder] with element only
  factory FHIRVersionBuilder.empty() => FHIRVersionBuilder._(valueString: '');

  /// Factory constructor to create [FHIRVersionBuilder]
  /// from JSON.
  factory FHIRVersionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRVersionBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRVersionBuilder cannot be constructed from JSON.',
      );
    }
    return FHIRVersionBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// value0_01
  static FHIRVersionBuilder value0_01 = FHIRVersionBuilder._(
    valueString: '0.01',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '0.01'.toFhirStringBuilder,
  );

  /// value0_05
  static FHIRVersionBuilder value0_05 = FHIRVersionBuilder._(
    valueString: '0.05',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '0.05'.toFhirStringBuilder,
  );

  /// value0_06
  static FHIRVersionBuilder value0_06 = FHIRVersionBuilder._(
    valueString: '0.06',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '0.06'.toFhirStringBuilder,
  );

  /// value0_11
  static FHIRVersionBuilder value0_11 = FHIRVersionBuilder._(
    valueString: '0.11',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '0.11'.toFhirStringBuilder,
  );

  /// value0_0_80
  static FHIRVersionBuilder value0_0_80 = FHIRVersionBuilder._(
    valueString: '0.0.80',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '0.0.80'.toFhirStringBuilder,
  );

  /// value0_0_81
  static FHIRVersionBuilder value0_0_81 = FHIRVersionBuilder._(
    valueString: '0.0.81',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '0.0.81'.toFhirStringBuilder,
  );

  /// value0_0_82
  static FHIRVersionBuilder value0_0_82 = FHIRVersionBuilder._(
    valueString: '0.0.82',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '0.0.82'.toFhirStringBuilder,
  );

  /// value0_4_0
  static FHIRVersionBuilder value0_4_0 = FHIRVersionBuilder._(
    valueString: '0.4.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '0.4.0'.toFhirStringBuilder,
  );

  /// value0_5_0
  static FHIRVersionBuilder value0_5_0 = FHIRVersionBuilder._(
    valueString: '0.5.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '0.5.0'.toFhirStringBuilder,
  );

  /// value1_0_0
  static FHIRVersionBuilder value1_0_0 = FHIRVersionBuilder._(
    valueString: '1.0.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '1.0.0'.toFhirStringBuilder,
  );

  /// value1_0_1
  static FHIRVersionBuilder value1_0_1 = FHIRVersionBuilder._(
    valueString: '1.0.1',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '1.0.1'.toFhirStringBuilder,
  );

  /// value1_0_2
  static FHIRVersionBuilder value1_0_2 = FHIRVersionBuilder._(
    valueString: '1.0.2',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '1.0.2'.toFhirStringBuilder,
  );

  /// value1_1_0
  static FHIRVersionBuilder value1_1_0 = FHIRVersionBuilder._(
    valueString: '1.1.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '1.1.0'.toFhirStringBuilder,
  );

  /// value1_4_0
  static FHIRVersionBuilder value1_4_0 = FHIRVersionBuilder._(
    valueString: '1.4.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '1.4.0'.toFhirStringBuilder,
  );

  /// value1_6_0
  static FHIRVersionBuilder value1_6_0 = FHIRVersionBuilder._(
    valueString: '1.6.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '1.6.0'.toFhirStringBuilder,
  );

  /// value1_8_0
  static FHIRVersionBuilder value1_8_0 = FHIRVersionBuilder._(
    valueString: '1.8.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '1.8.0'.toFhirStringBuilder,
  );

  /// value3_0_0
  static FHIRVersionBuilder value3_0_0 = FHIRVersionBuilder._(
    valueString: '3.0.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '3.0.0'.toFhirStringBuilder,
  );

  /// value3_0_1
  static FHIRVersionBuilder value3_0_1 = FHIRVersionBuilder._(
    valueString: '3.0.1',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '3.0.1'.toFhirStringBuilder,
  );

  /// value3_0_2
  static FHIRVersionBuilder value3_0_2 = FHIRVersionBuilder._(
    valueString: '3.0.2',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '3.0.2'.toFhirStringBuilder,
  );

  /// value3_3_0
  static FHIRVersionBuilder value3_3_0 = FHIRVersionBuilder._(
    valueString: '3.3.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '3.3.0'.toFhirStringBuilder,
  );

  /// value3_5_0
  static FHIRVersionBuilder value3_5_0 = FHIRVersionBuilder._(
    valueString: '3.5.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '3.5.0'.toFhirStringBuilder,
  );

  /// value4_0_0
  static FHIRVersionBuilder value4_0_0 = FHIRVersionBuilder._(
    valueString: '4.0.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '4.0.0'.toFhirStringBuilder,
  );

  /// value4_0_1
  static FHIRVersionBuilder value4_0_1 = FHIRVersionBuilder._(
    valueString: '4.0.1',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '4.0.1'.toFhirStringBuilder,
  );

  /// value4_1_0
  static FHIRVersionBuilder value4_1_0 = FHIRVersionBuilder._(
    valueString: '4.1.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '4.1.0'.toFhirStringBuilder,
  );

  /// value4_3_0_cibuild
  static FHIRVersionBuilder value4_3_0_cibuild = FHIRVersionBuilder._(
    valueString: '4.3.0-cibuild',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '4.3.0-cibuild'.toFhirStringBuilder,
  );

  /// value4_3_0_snapshot1
  static FHIRVersionBuilder value4_3_0_snapshot1 = FHIRVersionBuilder._(
    valueString: '4.3.0-snapshot1',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '4.3.0-snapshot1'.toFhirStringBuilder,
  );

  /// value4_3_0
  static FHIRVersionBuilder value4_3_0 = FHIRVersionBuilder._(
    valueString: '4.3.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '4.3.0'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static FHIRVersionBuilder elementOnly = FHIRVersionBuilder._(valueString: '');

  /// List of all enum-like values
  static List<FHIRVersionBuilder> values = [
    value0_01,
    value0_05,
    value0_06,
    value0_11,
    value0_0_80,
    value0_0_81,
    value0_0_82,
    value0_4_0,
    value0_5_0,
    value1_0_0,
    value1_0_1,
    value1_0_2,
    value1_1_0,
    value1_4_0,
    value1_6_0,
    value1_8_0,
    value3_0_0,
    value3_0_1,
    value3_0_2,
    value3_3_0,
    value3_5_0,
    value4_0_0,
    value4_0_1,
    value4_1_0,
    value4_3_0_cibuild,
    value4_3_0_snapshot1,
    value4_3_0,
  ];

  /// Clones the current instance
  @override
  FHIRVersionBuilder clone() => FHIRVersionBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  FHIRVersionBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return FHIRVersionBuilder._(
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
  FHIRVersionBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for FHIRVersion: $newValue',
      );
    }
    return FHIRVersionBuilder._(
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
