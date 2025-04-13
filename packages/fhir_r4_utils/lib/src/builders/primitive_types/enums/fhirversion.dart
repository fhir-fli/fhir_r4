// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for FHIRVersion
enum FHIRVersionBuilderEnum {
  /// 0.01
  value001,

  /// 0.05
  value005,

  /// 0.06
  value006,

  /// 0.11
  value011,

  /// 0.0.80
  value0080,

  /// 0.0.81
  value0081,

  /// 0.0.82
  value0082,

  /// 0.4.0
  value040,

  /// 0.5.0
  value050,

  /// 1.0.0
  value100,

  /// 1.0.1
  value101,

  /// 1.0.2
  value102,

  /// 1.1.0
  value110,

  /// 1.4.0
  value140,

  /// 1.6.0
  value160,

  /// 1.8.0
  value180,

  /// 3.0.0
  value300,

  /// 3.0.1
  value301,

  /// 3.0.2
  value302,

  /// 3.3.0
  value330,

  /// 3.5.0
  value350,

  /// 4.0.0
  value400,

  /// 4.0.1
  value401,

  /// 4.1.0
  value410,

  /// 4.3.0-cibuild
  value430Cibuild,

  /// 4.3.0-snapshot1
  value430Snapshot1,

  /// 4.3.0
  value430,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case FHIRVersionBuilderEnum.value001:
        return '0.01';
      case FHIRVersionBuilderEnum.value005:
        return '0.05';
      case FHIRVersionBuilderEnum.value006:
        return '0.06';
      case FHIRVersionBuilderEnum.value011:
        return '0.11';
      case FHIRVersionBuilderEnum.value0080:
        return '0.0.80';
      case FHIRVersionBuilderEnum.value0081:
        return '0.0.81';
      case FHIRVersionBuilderEnum.value0082:
        return '0.0.82';
      case FHIRVersionBuilderEnum.value040:
        return '0.4.0';
      case FHIRVersionBuilderEnum.value050:
        return '0.5.0';
      case FHIRVersionBuilderEnum.value100:
        return '1.0.0';
      case FHIRVersionBuilderEnum.value101:
        return '1.0.1';
      case FHIRVersionBuilderEnum.value102:
        return '1.0.2';
      case FHIRVersionBuilderEnum.value110:
        return '1.1.0';
      case FHIRVersionBuilderEnum.value140:
        return '1.4.0';
      case FHIRVersionBuilderEnum.value160:
        return '1.6.0';
      case FHIRVersionBuilderEnum.value180:
        return '1.8.0';
      case FHIRVersionBuilderEnum.value300:
        return '3.0.0';
      case FHIRVersionBuilderEnum.value301:
        return '3.0.1';
      case FHIRVersionBuilderEnum.value302:
        return '3.0.2';
      case FHIRVersionBuilderEnum.value330:
        return '3.3.0';
      case FHIRVersionBuilderEnum.value350:
        return '3.5.0';
      case FHIRVersionBuilderEnum.value400:
        return '4.0.0';
      case FHIRVersionBuilderEnum.value401:
        return '4.0.1';
      case FHIRVersionBuilderEnum.value410:
        return '4.1.0';
      case FHIRVersionBuilderEnum.value430Cibuild:
        return '4.3.0-cibuild';
      case FHIRVersionBuilderEnum.value430Snapshot1:
        return '4.3.0-snapshot1';
      case FHIRVersionBuilderEnum.value430:
        return '4.3.0';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FHIRVersionBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return FHIRVersionBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FHIRVersionBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case '0.01':
        return FHIRVersionBuilderEnum.value001;
      case '0.05':
        return FHIRVersionBuilderEnum.value005;
      case '0.06':
        return FHIRVersionBuilderEnum.value006;
      case '0.11':
        return FHIRVersionBuilderEnum.value011;
      case '0.0.80':
        return FHIRVersionBuilderEnum.value0080;
      case '0.0.81':
        return FHIRVersionBuilderEnum.value0081;
      case '0.0.82':
        return FHIRVersionBuilderEnum.value0082;
      case '0.4.0':
        return FHIRVersionBuilderEnum.value040;
      case '0.5.0':
        return FHIRVersionBuilderEnum.value050;
      case '1.0.0':
        return FHIRVersionBuilderEnum.value100;
      case '1.0.1':
        return FHIRVersionBuilderEnum.value101;
      case '1.0.2':
        return FHIRVersionBuilderEnum.value102;
      case '1.1.0':
        return FHIRVersionBuilderEnum.value110;
      case '1.4.0':
        return FHIRVersionBuilderEnum.value140;
      case '1.6.0':
        return FHIRVersionBuilderEnum.value160;
      case '1.8.0':
        return FHIRVersionBuilderEnum.value180;
      case '3.0.0':
        return FHIRVersionBuilderEnum.value300;
      case '3.0.1':
        return FHIRVersionBuilderEnum.value301;
      case '3.0.2':
        return FHIRVersionBuilderEnum.value302;
      case '3.3.0':
        return FHIRVersionBuilderEnum.value330;
      case '3.5.0':
        return FHIRVersionBuilderEnum.value350;
      case '4.0.0':
        return FHIRVersionBuilderEnum.value400;
      case '4.0.1':
        return FHIRVersionBuilderEnum.value401;
      case '4.1.0':
        return FHIRVersionBuilderEnum.value410;
      case '4.3.0-cibuild':
        return FHIRVersionBuilderEnum.value430Cibuild;
      case '4.3.0-snapshot1':
        return FHIRVersionBuilderEnum.value430Snapshot1;
      case '4.3.0':
        return FHIRVersionBuilderEnum.value430;
    }
    return null;
  }
}

/// All published FHIR Versions.
class FHIRVersionBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FHIRVersionBuilder._({
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
    final valueEnum = FHIRVersionBuilderEnum.fromString(
      valueString,
    );
    return FHIRVersionBuilder._(
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

  /// Create empty [FHIRVersionBuilder]
  /// with element only
  factory FHIRVersionBuilder.empty() => FHIRVersionBuilder._(valueString: null);

  /// Factory constructor to create
  /// [FHIRVersionBuilder] from JSON.
  factory FHIRVersionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRVersionBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for FHIRVersionBuilder
  final FHIRVersionBuilderEnum? valueEnum;

  /// value0_01
  static FHIRVersionBuilder value001 = FHIRVersionBuilder._(
    valueString: '0.01',
    valueEnum: FHIRVersionBuilderEnum.value001,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '0.01',
    ),
  );

  /// value0_05
  static FHIRVersionBuilder value005 = FHIRVersionBuilder._(
    valueString: '0.05',
    valueEnum: FHIRVersionBuilderEnum.value005,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '0.05',
    ),
  );

  /// value0_06
  static FHIRVersionBuilder value006 = FHIRVersionBuilder._(
    valueString: '0.06',
    valueEnum: FHIRVersionBuilderEnum.value006,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '0.06',
    ),
  );

  /// value0_11
  static FHIRVersionBuilder value011 = FHIRVersionBuilder._(
    valueString: '0.11',
    valueEnum: FHIRVersionBuilderEnum.value011,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '0.11',
    ),
  );

  /// value0_0_80
  static FHIRVersionBuilder value0080 = FHIRVersionBuilder._(
    valueString: '0.0.80',
    valueEnum: FHIRVersionBuilderEnum.value0080,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '0.0.80',
    ),
  );

  /// value0_0_81
  static FHIRVersionBuilder value0081 = FHIRVersionBuilder._(
    valueString: '0.0.81',
    valueEnum: FHIRVersionBuilderEnum.value0081,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '0.0.81',
    ),
  );

  /// value0_0_82
  static FHIRVersionBuilder value0082 = FHIRVersionBuilder._(
    valueString: '0.0.82',
    valueEnum: FHIRVersionBuilderEnum.value0082,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '0.0.82',
    ),
  );

  /// value0_4_0
  static FHIRVersionBuilder value040 = FHIRVersionBuilder._(
    valueString: '0.4.0',
    valueEnum: FHIRVersionBuilderEnum.value040,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '0.4.0',
    ),
  );

  /// value0_5_0
  static FHIRVersionBuilder value050 = FHIRVersionBuilder._(
    valueString: '0.5.0',
    valueEnum: FHIRVersionBuilderEnum.value050,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '0.5.0',
    ),
  );

  /// value1_0_0
  static FHIRVersionBuilder value100 = FHIRVersionBuilder._(
    valueString: '1.0.0',
    valueEnum: FHIRVersionBuilderEnum.value100,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '1.0.0',
    ),
  );

  /// value1_0_1
  static FHIRVersionBuilder value101 = FHIRVersionBuilder._(
    valueString: '1.0.1',
    valueEnum: FHIRVersionBuilderEnum.value101,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '1.0.1',
    ),
  );

  /// value1_0_2
  static FHIRVersionBuilder value102 = FHIRVersionBuilder._(
    valueString: '1.0.2',
    valueEnum: FHIRVersionBuilderEnum.value102,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '1.0.2',
    ),
  );

  /// value1_1_0
  static FHIRVersionBuilder value110 = FHIRVersionBuilder._(
    valueString: '1.1.0',
    valueEnum: FHIRVersionBuilderEnum.value110,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '1.1.0',
    ),
  );

  /// value1_4_0
  static FHIRVersionBuilder value140 = FHIRVersionBuilder._(
    valueString: '1.4.0',
    valueEnum: FHIRVersionBuilderEnum.value140,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '1.4.0',
    ),
  );

  /// value1_6_0
  static FHIRVersionBuilder value160 = FHIRVersionBuilder._(
    valueString: '1.6.0',
    valueEnum: FHIRVersionBuilderEnum.value160,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '1.6.0',
    ),
  );

  /// value1_8_0
  static FHIRVersionBuilder value180 = FHIRVersionBuilder._(
    valueString: '1.8.0',
    valueEnum: FHIRVersionBuilderEnum.value180,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '1.8.0',
    ),
  );

  /// value3_0_0
  static FHIRVersionBuilder value300 = FHIRVersionBuilder._(
    valueString: '3.0.0',
    valueEnum: FHIRVersionBuilderEnum.value300,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '3.0.0',
    ),
  );

  /// value3_0_1
  static FHIRVersionBuilder value301 = FHIRVersionBuilder._(
    valueString: '3.0.1',
    valueEnum: FHIRVersionBuilderEnum.value301,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '3.0.1',
    ),
  );

  /// value3_0_2
  static FHIRVersionBuilder value302 = FHIRVersionBuilder._(
    valueString: '3.0.2',
    valueEnum: FHIRVersionBuilderEnum.value302,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '3.0.2',
    ),
  );

  /// value3_3_0
  static FHIRVersionBuilder value330 = FHIRVersionBuilder._(
    valueString: '3.3.0',
    valueEnum: FHIRVersionBuilderEnum.value330,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '3.3.0',
    ),
  );

  /// value3_5_0
  static FHIRVersionBuilder value350 = FHIRVersionBuilder._(
    valueString: '3.5.0',
    valueEnum: FHIRVersionBuilderEnum.value350,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '3.5.0',
    ),
  );

  /// value4_0_0
  static FHIRVersionBuilder value400 = FHIRVersionBuilder._(
    valueString: '4.0.0',
    valueEnum: FHIRVersionBuilderEnum.value400,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '4.0.0',
    ),
  );

  /// value4_0_1
  static FHIRVersionBuilder value401 = FHIRVersionBuilder._(
    valueString: '4.0.1',
    valueEnum: FHIRVersionBuilderEnum.value401,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '4.0.1',
    ),
  );

  /// value4_1_0
  static FHIRVersionBuilder value410 = FHIRVersionBuilder._(
    valueString: '4.1.0',
    valueEnum: FHIRVersionBuilderEnum.value410,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '4.1.0',
    ),
  );

  /// value4_3_0_cibuild
  static FHIRVersionBuilder value430Cibuild = FHIRVersionBuilder._(
    valueString: '4.3.0-cibuild',
    valueEnum: FHIRVersionBuilderEnum.value430Cibuild,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '4.3.0-cibuild',
    ),
  );

  /// value4_3_0_snapshot1
  static FHIRVersionBuilder value430Snapshot1 = FHIRVersionBuilder._(
    valueString: '4.3.0-snapshot1',
    valueEnum: FHIRVersionBuilderEnum.value430Snapshot1,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '4.3.0-snapshot1',
    ),
  );

  /// value4_3_0
  static FHIRVersionBuilder value430 = FHIRVersionBuilder._(
    valueString: '4.3.0',
    valueEnum: FHIRVersionBuilderEnum.value430,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '4.3.0',
    ),
  );

  /// For instances where an Element is present but not value
  static FHIRVersionBuilder elementOnly = FHIRVersionBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<FHIRVersionBuilder> values = [
    value001,
    value005,
    value006,
    value011,
    value0080,
    value0081,
    value0082,
    value040,
    value050,
    value100,
    value101,
    value102,
    value110,
    value140,
    value160,
    value180,
    value300,
    value301,
    value302,
    value330,
    value350,
    value400,
    value401,
    value410,
    value430Cibuild,
    value430Snapshot1,
    value430,
  ];

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
}
