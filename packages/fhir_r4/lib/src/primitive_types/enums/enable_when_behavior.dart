part of '../primitive_types.dart';

/// Actual enum for EnableWhenBehavior
enum EnableWhenBehaviorEnum {
  /// all
  all,

  /// any
  any,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case EnableWhenBehaviorEnum.all:
        return 'all';
      case EnableWhenBehaviorEnum.any:
        return 'any';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EnableWhenBehaviorEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return EnableWhenBehaviorEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EnableWhenBehaviorEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'all':
        return EnableWhenBehaviorEnum.all;
      case 'any':
        return EnableWhenBehaviorEnum.any;
    }
    return null;
  }
}

/// Controls how multiple enableWhen values are interpreted - whether all
/// or any must be true.
class EnableWhenBehavior extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const EnableWhenBehavior._({
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
  factory EnableWhenBehavior(
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
    final valueEnum = EnableWhenBehaviorEnum.fromString(valueString);
    return EnableWhenBehavior._(
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

  /// Factory constructor to create [EnableWhenBehavior]
  /// from JSON.
  factory EnableWhenBehavior.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = EnableWhenBehaviorEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnableWhenBehavior._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EnableWhenBehavior cannot be constructed from JSON.',
      );
    }
    return EnableWhenBehavior._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for EnableWhenBehavior
  final EnableWhenBehaviorEnum? valueEnum;

  /// all
  static const EnableWhenBehavior all = EnableWhenBehavior._(
    valueString: 'all',
    valueEnum: EnableWhenBehaviorEnum.all,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-behavior',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'All',
    ),
  );

  /// any
  static const EnableWhenBehavior any = EnableWhenBehavior._(
    valueString: 'any',
    valueEnum: EnableWhenBehaviorEnum.any,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-behavior',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Any',
    ),
  );

  /// List of all enum-like values
  static final List<EnableWhenBehavior> values = [
    all,
    any,
  ];

  /// Returns the enum value with an element attached
  EnableWhenBehavior withElement(Element? newElement) {
    return EnableWhenBehavior._(
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
  EnableWhenBehavior clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  EnableWhenBehaviorCopyWithImpl<EnableWhenBehavior> get copyWith =>
      EnableWhenBehaviorCopyWithImpl<EnableWhenBehavior>(
        this,
        (v) => v as EnableWhenBehavior,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class EnableWhenBehaviorCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  EnableWhenBehaviorCopyWithImpl(super._value, super._then);

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
      EnableWhenBehavior(
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
