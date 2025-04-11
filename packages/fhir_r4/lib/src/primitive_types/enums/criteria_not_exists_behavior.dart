// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CriteriaNotExistsBehavior
enum CriteriaNotExistsBehaviorEnum {
  /// test-passes
  testPasses,

  /// test-fails
  testFails,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CriteriaNotExistsBehaviorEnum.testPasses:
        return 'test-passes';
      case CriteriaNotExistsBehaviorEnum.testFails:
        return 'test-fails';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CriteriaNotExistsBehaviorEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CriteriaNotExistsBehaviorEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CriteriaNotExistsBehaviorEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'test-passes':
        return CriteriaNotExistsBehaviorEnum.testPasses;
      case 'test-fails':
        return CriteriaNotExistsBehaviorEnum.testFails;
    }
    return null;
  }
}

/// Behavior a server can exhibit when a criteria state does not exist
/// (e.g., state prior to a create or after a delete).
class CriteriaNotExistsBehavior extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CriteriaNotExistsBehavior._({
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
  factory CriteriaNotExistsBehavior(
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
    final valueEnum = CriteriaNotExistsBehaviorEnum.fromString(valueString);
    return CriteriaNotExistsBehavior._(
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

  /// Factory constructor to create [CriteriaNotExistsBehavior]
  /// from JSON.
  factory CriteriaNotExistsBehavior.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CriteriaNotExistsBehaviorEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CriteriaNotExistsBehavior._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CriteriaNotExistsBehavior cannot be constructed from JSON.',
      );
    }
    return CriteriaNotExistsBehavior._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CriteriaNotExistsBehavior
  final CriteriaNotExistsBehaviorEnum? valueEnum;

  /// test_passes
  static const CriteriaNotExistsBehavior testPasses =
      CriteriaNotExistsBehavior._(
    valueString: 'test-passes',
    valueEnum: CriteriaNotExistsBehaviorEnum.testPasses,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscriptiontopic-cr-behavior',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'test passes',
    ),
  );

  /// test_fails
  static const CriteriaNotExistsBehavior testFails =
      CriteriaNotExistsBehavior._(
    valueString: 'test-fails',
    valueEnum: CriteriaNotExistsBehaviorEnum.testFails,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscriptiontopic-cr-behavior',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'test fails',
    ),
  );

  /// List of all enum-like values
  static final List<CriteriaNotExistsBehavior> values = [
    testPasses,
    testFails,
  ];

  /// Returns the enum value with an element attached
  CriteriaNotExistsBehavior withElement(Element? newElement) {
    return CriteriaNotExistsBehavior._(
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
  CriteriaNotExistsBehavior clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CriteriaNotExistsBehaviorCopyWithImpl<CriteriaNotExistsBehavior>
      get copyWith =>
          CriteriaNotExistsBehaviorCopyWithImpl<CriteriaNotExistsBehavior>(
            this,
            (v) => v as CriteriaNotExistsBehavior,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CriteriaNotExistsBehaviorCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CriteriaNotExistsBehaviorCopyWithImpl(super._value, super._then);

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
      CriteriaNotExistsBehavior(
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
