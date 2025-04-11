// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ReferenceHandlingPolicy
enum ReferenceHandlingPolicyEnum {
  /// literal
  literal,

  /// logical
  logical,

  /// resolves
  resolves,

  /// enforced
  enforced,

  /// local
  local,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ReferenceHandlingPolicyEnum.literal:
        return 'literal';
      case ReferenceHandlingPolicyEnum.logical:
        return 'logical';
      case ReferenceHandlingPolicyEnum.resolves:
        return 'resolves';
      case ReferenceHandlingPolicyEnum.enforced:
        return 'enforced';
      case ReferenceHandlingPolicyEnum.local:
        return 'local';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ReferenceHandlingPolicyEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ReferenceHandlingPolicyEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ReferenceHandlingPolicyEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'literal':
        return ReferenceHandlingPolicyEnum.literal;
      case 'logical':
        return ReferenceHandlingPolicyEnum.logical;
      case 'resolves':
        return ReferenceHandlingPolicyEnum.resolves;
      case 'enforced':
        return ReferenceHandlingPolicyEnum.enforced;
      case 'local':
        return ReferenceHandlingPolicyEnum.local;
    }
    return null;
  }
}

/// A set of flags that defines how references are supported.
class ReferenceHandlingPolicy extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ReferenceHandlingPolicy._({
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
  factory ReferenceHandlingPolicy(
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
    final valueEnum = ReferenceHandlingPolicyEnum.fromString(valueString);
    return ReferenceHandlingPolicy._(
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

  /// Factory constructor to create [ReferenceHandlingPolicy]
  /// from JSON.
  factory ReferenceHandlingPolicy.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ReferenceHandlingPolicyEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceHandlingPolicy._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ReferenceHandlingPolicy cannot be constructed from JSON.',
      );
    }
    return ReferenceHandlingPolicy._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ReferenceHandlingPolicy
  final ReferenceHandlingPolicyEnum? valueEnum;

  /// literal
  static const ReferenceHandlingPolicy literal = ReferenceHandlingPolicy._(
    valueString: 'literal',
    valueEnum: ReferenceHandlingPolicyEnum.literal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-handling-policy',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Literal References',
    ),
  );

  /// logical
  static const ReferenceHandlingPolicy logical = ReferenceHandlingPolicy._(
    valueString: 'logical',
    valueEnum: ReferenceHandlingPolicyEnum.logical,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-handling-policy',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Logical References',
    ),
  );

  /// resolves
  static const ReferenceHandlingPolicy resolves = ReferenceHandlingPolicy._(
    valueString: 'resolves',
    valueEnum: ReferenceHandlingPolicyEnum.resolves,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-handling-policy',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Resolves References',
    ),
  );

  /// enforced
  static const ReferenceHandlingPolicy enforced = ReferenceHandlingPolicy._(
    valueString: 'enforced',
    valueEnum: ReferenceHandlingPolicyEnum.enforced,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-handling-policy',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Reference Integrity Enforced',
    ),
  );

  /// local
  static const ReferenceHandlingPolicy local = ReferenceHandlingPolicy._(
    valueString: 'local',
    valueEnum: ReferenceHandlingPolicyEnum.local,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-handling-policy',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Local References Only',
    ),
  );

  /// List of all enum-like values
  static final List<ReferenceHandlingPolicy> values = [
    literal,
    logical,
    resolves,
    enforced,
    local,
  ];

  /// Returns the enum value with an element attached
  ReferenceHandlingPolicy withElement(Element? newElement) {
    return ReferenceHandlingPolicy._(
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
  ReferenceHandlingPolicy clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ReferenceHandlingPolicyCopyWithImpl<ReferenceHandlingPolicy> get copyWith =>
      ReferenceHandlingPolicyCopyWithImpl<ReferenceHandlingPolicy>(
        this,
        (v) => v as ReferenceHandlingPolicy,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ReferenceHandlingPolicyCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ReferenceHandlingPolicyCopyWithImpl(super._value, super._then);

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
      ReferenceHandlingPolicy(
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
