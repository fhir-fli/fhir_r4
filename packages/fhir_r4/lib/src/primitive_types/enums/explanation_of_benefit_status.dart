// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ExplanationOfBenefitStatus
enum ExplanationOfBenefitStatusEnum {
  /// active
  active,

  /// cancelled
  cancelled,

  /// draft
  draft,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ExplanationOfBenefitStatusEnum.active:
        return 'active';
      case ExplanationOfBenefitStatusEnum.cancelled:
        return 'cancelled';
      case ExplanationOfBenefitStatusEnum.draft:
        return 'draft';
      case ExplanationOfBenefitStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ExplanationOfBenefitStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ExplanationOfBenefitStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ExplanationOfBenefitStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return ExplanationOfBenefitStatusEnum.active;
      case 'cancelled':
        return ExplanationOfBenefitStatusEnum.cancelled;
      case 'draft':
        return ExplanationOfBenefitStatusEnum.draft;
      case 'entered-in-error':
        return ExplanationOfBenefitStatusEnum.enteredInError;
    }
    return null;
  }
}

/// A code specifying the state of the resource instance.
class ExplanationOfBenefitStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ExplanationOfBenefitStatus._({
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
  factory ExplanationOfBenefitStatus(
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
    final valueEnum = ExplanationOfBenefitStatusEnum.fromString(valueString);
    return ExplanationOfBenefitStatus._(
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

  /// Factory constructor to create [ExplanationOfBenefitStatus]
  /// from JSON.
  factory ExplanationOfBenefitStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ExplanationOfBenefitStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExplanationOfBenefitStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExplanationOfBenefitStatus cannot be constructed from JSON.',
      );
    }
    return ExplanationOfBenefitStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ExplanationOfBenefitStatus
  final ExplanationOfBenefitStatusEnum? valueEnum;

  /// active
  static const ExplanationOfBenefitStatus active = ExplanationOfBenefitStatus._(
    valueString: 'active',
    valueEnum: ExplanationOfBenefitStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/explanationofbenefit-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// cancelled
  static const ExplanationOfBenefitStatus cancelled =
      ExplanationOfBenefitStatus._(
    valueString: 'cancelled',
    valueEnum: ExplanationOfBenefitStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/explanationofbenefit-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// draft
  static const ExplanationOfBenefitStatus draft = ExplanationOfBenefitStatus._(
    valueString: 'draft',
    valueEnum: ExplanationOfBenefitStatusEnum.draft,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/explanationofbenefit-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Draft',
    ),
  );

  /// entered_in_error
  static const ExplanationOfBenefitStatus enteredInError =
      ExplanationOfBenefitStatus._(
    valueString: 'entered-in-error',
    valueEnum: ExplanationOfBenefitStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/explanationofbenefit-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered In Error',
    ),
  );

  /// List of all enum-like values
  static final List<ExplanationOfBenefitStatus> values = [
    active,
    cancelled,
    draft,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  ExplanationOfBenefitStatus withElement(Element? newElement) {
    return ExplanationOfBenefitStatus._(
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
  ExplanationOfBenefitStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ExplanationOfBenefitStatusCopyWithImpl<ExplanationOfBenefitStatus>
      get copyWith =>
          ExplanationOfBenefitStatusCopyWithImpl<ExplanationOfBenefitStatus>(
            this,
            (v) => v as ExplanationOfBenefitStatus,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ExplanationOfBenefitStatusCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ExplanationOfBenefitStatusCopyWithImpl(super._value, super._then);

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
      ExplanationOfBenefitStatus(
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
