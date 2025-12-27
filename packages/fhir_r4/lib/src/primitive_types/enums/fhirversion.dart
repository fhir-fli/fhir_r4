part of '../primitive_types.dart';

/// Actual enum for FHIRVersion
enum FHIRVersionEnum {
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
      case FHIRVersionEnum.value001:
        return '0.01';
      case FHIRVersionEnum.value005:
        return '0.05';
      case FHIRVersionEnum.value006:
        return '0.06';
      case FHIRVersionEnum.value011:
        return '0.11';
      case FHIRVersionEnum.value0080:
        return '0.0.80';
      case FHIRVersionEnum.value0081:
        return '0.0.81';
      case FHIRVersionEnum.value0082:
        return '0.0.82';
      case FHIRVersionEnum.value040:
        return '0.4.0';
      case FHIRVersionEnum.value050:
        return '0.5.0';
      case FHIRVersionEnum.value100:
        return '1.0.0';
      case FHIRVersionEnum.value101:
        return '1.0.1';
      case FHIRVersionEnum.value102:
        return '1.0.2';
      case FHIRVersionEnum.value110:
        return '1.1.0';
      case FHIRVersionEnum.value140:
        return '1.4.0';
      case FHIRVersionEnum.value160:
        return '1.6.0';
      case FHIRVersionEnum.value180:
        return '1.8.0';
      case FHIRVersionEnum.value300:
        return '3.0.0';
      case FHIRVersionEnum.value301:
        return '3.0.1';
      case FHIRVersionEnum.value302:
        return '3.0.2';
      case FHIRVersionEnum.value330:
        return '3.3.0';
      case FHIRVersionEnum.value350:
        return '3.5.0';
      case FHIRVersionEnum.value400:
        return '4.0.0';
      case FHIRVersionEnum.value401:
        return '4.0.1';
      case FHIRVersionEnum.value410:
        return '4.1.0';
      case FHIRVersionEnum.value430Cibuild:
        return '4.3.0-cibuild';
      case FHIRVersionEnum.value430Snapshot1:
        return '4.3.0-snapshot1';
      case FHIRVersionEnum.value430:
        return '4.3.0';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FHIRVersionEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return FHIRVersionEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FHIRVersionEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case '0.01':
        return FHIRVersionEnum.value001;
      case '0.05':
        return FHIRVersionEnum.value005;
      case '0.06':
        return FHIRVersionEnum.value006;
      case '0.11':
        return FHIRVersionEnum.value011;
      case '0.0.80':
        return FHIRVersionEnum.value0080;
      case '0.0.81':
        return FHIRVersionEnum.value0081;
      case '0.0.82':
        return FHIRVersionEnum.value0082;
      case '0.4.0':
        return FHIRVersionEnum.value040;
      case '0.5.0':
        return FHIRVersionEnum.value050;
      case '1.0.0':
        return FHIRVersionEnum.value100;
      case '1.0.1':
        return FHIRVersionEnum.value101;
      case '1.0.2':
        return FHIRVersionEnum.value102;
      case '1.1.0':
        return FHIRVersionEnum.value110;
      case '1.4.0':
        return FHIRVersionEnum.value140;
      case '1.6.0':
        return FHIRVersionEnum.value160;
      case '1.8.0':
        return FHIRVersionEnum.value180;
      case '3.0.0':
        return FHIRVersionEnum.value300;
      case '3.0.1':
        return FHIRVersionEnum.value301;
      case '3.0.2':
        return FHIRVersionEnum.value302;
      case '3.3.0':
        return FHIRVersionEnum.value330;
      case '3.5.0':
        return FHIRVersionEnum.value350;
      case '4.0.0':
        return FHIRVersionEnum.value400;
      case '4.0.1':
        return FHIRVersionEnum.value401;
      case '4.1.0':
        return FHIRVersionEnum.value410;
      case '4.3.0-cibuild':
        return FHIRVersionEnum.value430Cibuild;
      case '4.3.0-snapshot1':
        return FHIRVersionEnum.value430Snapshot1;
      case '4.3.0':
        return FHIRVersionEnum.value430;
    }
    return null;
  }
}

/// All published FHIR Versions.
class FHIRVersion extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const FHIRVersion._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
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
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = FHIRVersionEnum.fromString(valueString);
    return FHIRVersion._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [FHIRVersion]
  /// from JSON.
  factory FHIRVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = FHIRVersionEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRVersion._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRVersion cannot be constructed from JSON.',
      );
    }
    return FHIRVersion._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for FHIRVersion
  final FHIRVersionEnum? valueEnum;

  /// value0_01
  static const FHIRVersion value001 = FHIRVersion._(
    valueString: '0.01',
    valueEnum: FHIRVersionEnum.value001,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '0.01',
    ),
  );

  /// value0_05
  static const FHIRVersion value005 = FHIRVersion._(
    valueString: '0.05',
    valueEnum: FHIRVersionEnum.value005,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '0.05',
    ),
  );

  /// value0_06
  static const FHIRVersion value006 = FHIRVersion._(
    valueString: '0.06',
    valueEnum: FHIRVersionEnum.value006,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '0.06',
    ),
  );

  /// value0_11
  static const FHIRVersion value011 = FHIRVersion._(
    valueString: '0.11',
    valueEnum: FHIRVersionEnum.value011,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '0.11',
    ),
  );

  /// value0_0_80
  static const FHIRVersion value0080 = FHIRVersion._(
    valueString: '0.0.80',
    valueEnum: FHIRVersionEnum.value0080,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '0.0.80',
    ),
  );

  /// value0_0_81
  static const FHIRVersion value0081 = FHIRVersion._(
    valueString: '0.0.81',
    valueEnum: FHIRVersionEnum.value0081,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '0.0.81',
    ),
  );

  /// value0_0_82
  static const FHIRVersion value0082 = FHIRVersion._(
    valueString: '0.0.82',
    valueEnum: FHIRVersionEnum.value0082,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '0.0.82',
    ),
  );

  /// value0_4_0
  static const FHIRVersion value040 = FHIRVersion._(
    valueString: '0.4.0',
    valueEnum: FHIRVersionEnum.value040,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '0.4.0',
    ),
  );

  /// value0_5_0
  static const FHIRVersion value050 = FHIRVersion._(
    valueString: '0.5.0',
    valueEnum: FHIRVersionEnum.value050,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '0.5.0',
    ),
  );

  /// value1_0_0
  static const FHIRVersion value100 = FHIRVersion._(
    valueString: '1.0.0',
    valueEnum: FHIRVersionEnum.value100,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '1.0.0',
    ),
  );

  /// value1_0_1
  static const FHIRVersion value101 = FHIRVersion._(
    valueString: '1.0.1',
    valueEnum: FHIRVersionEnum.value101,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '1.0.1',
    ),
  );

  /// value1_0_2
  static const FHIRVersion value102 = FHIRVersion._(
    valueString: '1.0.2',
    valueEnum: FHIRVersionEnum.value102,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '1.0.2',
    ),
  );

  /// value1_1_0
  static const FHIRVersion value110 = FHIRVersion._(
    valueString: '1.1.0',
    valueEnum: FHIRVersionEnum.value110,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '1.1.0',
    ),
  );

  /// value1_4_0
  static const FHIRVersion value140 = FHIRVersion._(
    valueString: '1.4.0',
    valueEnum: FHIRVersionEnum.value140,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '1.4.0',
    ),
  );

  /// value1_6_0
  static const FHIRVersion value160 = FHIRVersion._(
    valueString: '1.6.0',
    valueEnum: FHIRVersionEnum.value160,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '1.6.0',
    ),
  );

  /// value1_8_0
  static const FHIRVersion value180 = FHIRVersion._(
    valueString: '1.8.0',
    valueEnum: FHIRVersionEnum.value180,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '1.8.0',
    ),
  );

  /// value3_0_0
  static const FHIRVersion value300 = FHIRVersion._(
    valueString: '3.0.0',
    valueEnum: FHIRVersionEnum.value300,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '3.0.0',
    ),
  );

  /// value3_0_1
  static const FHIRVersion value301 = FHIRVersion._(
    valueString: '3.0.1',
    valueEnum: FHIRVersionEnum.value301,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '3.0.1',
    ),
  );

  /// value3_0_2
  static const FHIRVersion value302 = FHIRVersion._(
    valueString: '3.0.2',
    valueEnum: FHIRVersionEnum.value302,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '3.0.2',
    ),
  );

  /// value3_3_0
  static const FHIRVersion value330 = FHIRVersion._(
    valueString: '3.3.0',
    valueEnum: FHIRVersionEnum.value330,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '3.3.0',
    ),
  );

  /// value3_5_0
  static const FHIRVersion value350 = FHIRVersion._(
    valueString: '3.5.0',
    valueEnum: FHIRVersionEnum.value350,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '3.5.0',
    ),
  );

  /// value4_0_0
  static const FHIRVersion value400 = FHIRVersion._(
    valueString: '4.0.0',
    valueEnum: FHIRVersionEnum.value400,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '4.0.0',
    ),
  );

  /// value4_0_1
  static const FHIRVersion value401 = FHIRVersion._(
    valueString: '4.0.1',
    valueEnum: FHIRVersionEnum.value401,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '4.0.1',
    ),
  );

  /// value4_1_0
  static const FHIRVersion value410 = FHIRVersion._(
    valueString: '4.1.0',
    valueEnum: FHIRVersionEnum.value410,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '4.1.0',
    ),
  );

  /// value4_3_0_cibuild
  static const FHIRVersion value430Cibuild = FHIRVersion._(
    valueString: '4.3.0-cibuild',
    valueEnum: FHIRVersionEnum.value430Cibuild,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '4.3.0-cibuild',
    ),
  );

  /// value4_3_0_snapshot1
  static const FHIRVersion value430Snapshot1 = FHIRVersion._(
    valueString: '4.3.0-snapshot1',
    valueEnum: FHIRVersionEnum.value430Snapshot1,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '4.3.0-snapshot1',
    ),
  );

  /// value4_3_0
  static const FHIRVersion value430 = FHIRVersion._(
    valueString: '4.3.0',
    valueEnum: FHIRVersionEnum.value430,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '4.3.0',
    ),
  );

  /// List of all enum-like values
  static final List<FHIRVersion> values = [
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

  @override
  FHIRVersion clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  FHIRVersionCopyWithImpl<FHIRVersion> get copyWith =>
      FHIRVersionCopyWithImpl<FHIRVersion>(
        this,
        (v) => v as FHIRVersion,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class FHIRVersionCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  FHIRVersionCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      FHIRVersion(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
