// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// All published FHIR Versions.
class FHIRVersion extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  FHIRVersion._({
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
  factory FHIRVersion(
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
    return FHIRVersion._(
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

  /// Create empty [FHIRVersion] with element only
  factory FHIRVersion.empty() => FHIRVersion._(valueString: '');

  /// Factory constructor to create [FHIRVersion] from JSON.
  factory FHIRVersion.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRVersion.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRVersion cannot be constructed from JSON.',
      );
    }
    return FHIRVersion._(
      valueString: value,
      element: element,
    );
  }

  /// value0_01
  static final FHIRVersion value0_01 = FHIRVersion._(
    valueString: '0.01',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '0.01'.toFhirString,
  );

  /// value0_05
  static final FHIRVersion value0_05 = FHIRVersion._(
    valueString: '0.05',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '0.05'.toFhirString,
  );

  /// value0_06
  static final FHIRVersion value0_06 = FHIRVersion._(
    valueString: '0.06',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '0.06'.toFhirString,
  );

  /// value0_11
  static final FHIRVersion value0_11 = FHIRVersion._(
    valueString: '0.11',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '0.11'.toFhirString,
  );

  /// value0_0_80
  static final FHIRVersion value0_0_80 = FHIRVersion._(
    valueString: '0.0.80',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '0.0.80'.toFhirString,
  );

  /// value0_0_81
  static final FHIRVersion value0_0_81 = FHIRVersion._(
    valueString: '0.0.81',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '0.0.81'.toFhirString,
  );

  /// value0_0_82
  static final FHIRVersion value0_0_82 = FHIRVersion._(
    valueString: '0.0.82',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '0.0.82'.toFhirString,
  );

  /// value0_4_0
  static final FHIRVersion value0_4_0 = FHIRVersion._(
    valueString: '0.4.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '0.4.0'.toFhirString,
  );

  /// value0_5_0
  static final FHIRVersion value0_5_0 = FHIRVersion._(
    valueString: '0.5.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '0.5.0'.toFhirString,
  );

  /// value1_0_0
  static final FHIRVersion value1_0_0 = FHIRVersion._(
    valueString: '1.0.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '1.0.0'.toFhirString,
  );

  /// value1_0_1
  static final FHIRVersion value1_0_1 = FHIRVersion._(
    valueString: '1.0.1',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '1.0.1'.toFhirString,
  );

  /// value1_0_2
  static final FHIRVersion value1_0_2 = FHIRVersion._(
    valueString: '1.0.2',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '1.0.2'.toFhirString,
  );

  /// value1_1_0
  static final FHIRVersion value1_1_0 = FHIRVersion._(
    valueString: '1.1.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '1.1.0'.toFhirString,
  );

  /// value1_4_0
  static final FHIRVersion value1_4_0 = FHIRVersion._(
    valueString: '1.4.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '1.4.0'.toFhirString,
  );

  /// value1_6_0
  static final FHIRVersion value1_6_0 = FHIRVersion._(
    valueString: '1.6.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '1.6.0'.toFhirString,
  );

  /// value1_8_0
  static final FHIRVersion value1_8_0 = FHIRVersion._(
    valueString: '1.8.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '1.8.0'.toFhirString,
  );

  /// value3_0_0
  static final FHIRVersion value3_0_0 = FHIRVersion._(
    valueString: '3.0.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '3.0.0'.toFhirString,
  );

  /// value3_0_1
  static final FHIRVersion value3_0_1 = FHIRVersion._(
    valueString: '3.0.1',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '3.0.1'.toFhirString,
  );

  /// value3_0_2
  static final FHIRVersion value3_0_2 = FHIRVersion._(
    valueString: '3.0.2',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '3.0.2'.toFhirString,
  );

  /// value3_3_0
  static final FHIRVersion value3_3_0 = FHIRVersion._(
    valueString: '3.3.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '3.3.0'.toFhirString,
  );

  /// value3_5_0
  static final FHIRVersion value3_5_0 = FHIRVersion._(
    valueString: '3.5.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '3.5.0'.toFhirString,
  );

  /// value4_0_0
  static final FHIRVersion value4_0_0 = FHIRVersion._(
    valueString: '4.0.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '4.0.0'.toFhirString,
  );

  /// value4_0_1
  static final FHIRVersion value4_0_1 = FHIRVersion._(
    valueString: '4.0.1',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '4.0.1'.toFhirString,
  );

  /// value4_1_0
  static final FHIRVersion value4_1_0 = FHIRVersion._(
    valueString: '4.1.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '4.1.0'.toFhirString,
  );

  /// value4_3_0_cibuild
  static final FHIRVersion value4_3_0_cibuild = FHIRVersion._(
    valueString: '4.3.0-cibuild',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '4.3.0-cibuild'.toFhirString,
  );

  /// value4_3_0_snapshot1
  static final FHIRVersion value4_3_0_snapshot1 = FHIRVersion._(
    valueString: '4.3.0-snapshot1',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '4.3.0-snapshot1'.toFhirString,
  );

  /// value4_3_0
  static final FHIRVersion value4_3_0 = FHIRVersion._(
    valueString: '4.3.0',
    system: 'http://hl7.org/fhir/ValueSet/FHIR-version'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '4.3.0'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final FHIRVersion elementOnly = FHIRVersion._(valueString: '');

  /// List of all enum-like values
  static final List<FHIRVersion> values = [
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
  FHIRVersion clone() => FHIRVersion._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FHIRVersion withElement(Element? newElement) {
    return FHIRVersion._(
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
  FHIRVersion copyWith({
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
      throw ArgumentError('Invalid input for FHIRVersion: $newValue');
    }
    return FHIRVersion._(
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
