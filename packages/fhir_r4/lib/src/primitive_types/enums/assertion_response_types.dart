// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AssertionResponseTypes
enum AssertionResponseTypesEnum {
  /// okay
  okay,

  /// created
  created,

  /// noContent
  noContent,

  /// notModified
  notModified,

  /// bad
  bad,

  /// forbidden
  forbidden,

  /// notFound
  notFound,

  /// methodNotAllowed
  methodNotAllowed,

  /// conflict
  conflict,

  /// gone
  gone,

  /// preconditionFailed
  preconditionFailed,

  /// unprocessable
  unprocessable,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AssertionResponseTypesEnum.okay:
        return 'okay';
      case AssertionResponseTypesEnum.created:
        return 'created';
      case AssertionResponseTypesEnum.noContent:
        return 'noContent';
      case AssertionResponseTypesEnum.notModified:
        return 'notModified';
      case AssertionResponseTypesEnum.bad:
        return 'bad';
      case AssertionResponseTypesEnum.forbidden:
        return 'forbidden';
      case AssertionResponseTypesEnum.notFound:
        return 'notFound';
      case AssertionResponseTypesEnum.methodNotAllowed:
        return 'methodNotAllowed';
      case AssertionResponseTypesEnum.conflict:
        return 'conflict';
      case AssertionResponseTypesEnum.gone:
        return 'gone';
      case AssertionResponseTypesEnum.preconditionFailed:
        return 'preconditionFailed';
      case AssertionResponseTypesEnum.unprocessable:
        return 'unprocessable';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AssertionResponseTypesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AssertionResponseTypesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AssertionResponseTypesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'okay':
        return AssertionResponseTypesEnum.okay;
      case 'created':
        return AssertionResponseTypesEnum.created;
      case 'noContent':
        return AssertionResponseTypesEnum.noContent;
      case 'notModified':
        return AssertionResponseTypesEnum.notModified;
      case 'bad':
        return AssertionResponseTypesEnum.bad;
      case 'forbidden':
        return AssertionResponseTypesEnum.forbidden;
      case 'notFound':
        return AssertionResponseTypesEnum.notFound;
      case 'methodNotAllowed':
        return AssertionResponseTypesEnum.methodNotAllowed;
      case 'conflict':
        return AssertionResponseTypesEnum.conflict;
      case 'gone':
        return AssertionResponseTypesEnum.gone;
      case 'preconditionFailed':
        return AssertionResponseTypesEnum.preconditionFailed;
      case 'unprocessable':
        return AssertionResponseTypesEnum.unprocessable;
    }
    return null;
  }
}

/// The type of response code to use for assertion.
class AssertionResponseTypes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AssertionResponseTypes._({
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
  factory AssertionResponseTypes(
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
    final valueEnum = AssertionResponseTypesEnum.fromString(valueString);
    return AssertionResponseTypes._(
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

  /// Factory constructor to create [AssertionResponseTypes]
  /// from JSON.
  factory AssertionResponseTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AssertionResponseTypesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionResponseTypes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AssertionResponseTypes cannot be constructed from JSON.',
      );
    }
    return AssertionResponseTypes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AssertionResponseTypes
  final AssertionResponseTypesEnum? valueEnum;

  /// okay
  static const AssertionResponseTypes okay = AssertionResponseTypes._(
    valueString: 'okay',
    valueEnum: AssertionResponseTypesEnum.okay,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'okay',
    ),
  );

  /// created
  static const AssertionResponseTypes created = AssertionResponseTypes._(
    valueString: 'created',
    valueEnum: AssertionResponseTypesEnum.created,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'created',
    ),
  );

  /// noContent
  static const AssertionResponseTypes noContent = AssertionResponseTypes._(
    valueString: 'noContent',
    valueEnum: AssertionResponseTypesEnum.noContent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'noContent',
    ),
  );

  /// notModified
  static const AssertionResponseTypes notModified = AssertionResponseTypes._(
    valueString: 'notModified',
    valueEnum: AssertionResponseTypesEnum.notModified,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'notModified',
    ),
  );

  /// bad
  static const AssertionResponseTypes bad = AssertionResponseTypes._(
    valueString: 'bad',
    valueEnum: AssertionResponseTypesEnum.bad,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'bad',
    ),
  );

  /// forbidden
  static const AssertionResponseTypes forbidden = AssertionResponseTypes._(
    valueString: 'forbidden',
    valueEnum: AssertionResponseTypesEnum.forbidden,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'forbidden',
    ),
  );

  /// notFound
  static const AssertionResponseTypes notFound = AssertionResponseTypes._(
    valueString: 'notFound',
    valueEnum: AssertionResponseTypesEnum.notFound,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'notFound',
    ),
  );

  /// methodNotAllowed
  static const AssertionResponseTypes methodNotAllowed =
      AssertionResponseTypes._(
    valueString: 'methodNotAllowed',
    valueEnum: AssertionResponseTypesEnum.methodNotAllowed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'methodNotAllowed',
    ),
  );

  /// conflict
  static const AssertionResponseTypes conflict = AssertionResponseTypes._(
    valueString: 'conflict',
    valueEnum: AssertionResponseTypesEnum.conflict,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'conflict',
    ),
  );

  /// gone
  static const AssertionResponseTypes gone = AssertionResponseTypes._(
    valueString: 'gone',
    valueEnum: AssertionResponseTypesEnum.gone,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'gone',
    ),
  );

  /// preconditionFailed
  static const AssertionResponseTypes preconditionFailed =
      AssertionResponseTypes._(
    valueString: 'preconditionFailed',
    valueEnum: AssertionResponseTypesEnum.preconditionFailed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'preconditionFailed',
    ),
  );

  /// unprocessable
  static const AssertionResponseTypes unprocessable = AssertionResponseTypes._(
    valueString: 'unprocessable',
    valueEnum: AssertionResponseTypesEnum.unprocessable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'unprocessable',
    ),
  );

  /// List of all enum-like values
  static final List<AssertionResponseTypes> values = [
    okay,
    created,
    noContent,
    notModified,
    bad,
    forbidden,
    notFound,
    methodNotAllowed,
    conflict,
    gone,
    preconditionFailed,
    unprocessable,
  ];

  /// Returns the enum value with an element attached
  AssertionResponseTypes withElement(Element? newElement) {
    return AssertionResponseTypes._(
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
  AssertionResponseTypes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AssertionResponseTypesCopyWithImpl<AssertionResponseTypes> get copyWith =>
      AssertionResponseTypesCopyWithImpl<AssertionResponseTypes>(
        this,
        (v) => v as AssertionResponseTypes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AssertionResponseTypesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AssertionResponseTypesCopyWithImpl(super._value, super._then);

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
      AssertionResponseTypes(
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
