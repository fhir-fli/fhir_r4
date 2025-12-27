part of '../primitive_types.dart';

/// Actual enum for MedicationKnowledgeStatusCodes
enum MedicationKnowledgeStatusCodesEnum {
  /// active
  active,

  /// inactive
  inactive,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MedicationKnowledgeStatusCodesEnum.active:
        return 'active';
      case MedicationKnowledgeStatusCodesEnum.inactive:
        return 'inactive';
      case MedicationKnowledgeStatusCodesEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationKnowledgeStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationKnowledgeStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationKnowledgeStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return MedicationKnowledgeStatusCodesEnum.active;
      case 'inactive':
        return MedicationKnowledgeStatusCodesEnum.inactive;
      case 'entered-in-error':
        return MedicationKnowledgeStatusCodesEnum.enteredInError;
    }
    return null;
  }
}

/// MedicationKnowledge Status Codes
class MedicationKnowledgeStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const MedicationKnowledgeStatusCodes._({
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
  factory MedicationKnowledgeStatusCodes(
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
    final valueEnum =
        MedicationKnowledgeStatusCodesEnum.fromString(valueString);
    return MedicationKnowledgeStatusCodes._(
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

  /// Factory constructor to create [MedicationKnowledgeStatusCodes]
  /// from JSON.
  factory MedicationKnowledgeStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = MedicationKnowledgeStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgeStatusCodes._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationKnowledgeStatusCodes cannot be constructed from JSON.',
      );
    }
    return MedicationKnowledgeStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for MedicationKnowledgeStatusCodes
  final MedicationKnowledgeStatusCodesEnum? valueEnum;

  /// active
  static const MedicationKnowledgeStatusCodes active =
      MedicationKnowledgeStatusCodes._(
    valueString: 'active',
    valueEnum: MedicationKnowledgeStatusCodesEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationknowledge-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static const MedicationKnowledgeStatusCodes inactive =
      MedicationKnowledgeStatusCodes._(
    valueString: 'inactive',
    valueEnum: MedicationKnowledgeStatusCodesEnum.inactive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationknowledge-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static const MedicationKnowledgeStatusCodes enteredInError =
      MedicationKnowledgeStatusCodes._(
    valueString: 'entered-in-error',
    valueEnum: MedicationKnowledgeStatusCodesEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationknowledge-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// List of all enum-like values
  static final List<MedicationKnowledgeStatusCodes> values = [
    active,
    inactive,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  MedicationKnowledgeStatusCodes withElement(Element? newElement) {
    return MedicationKnowledgeStatusCodes._(
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
  MedicationKnowledgeStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  MedicationKnowledgeStatusCodesCopyWithImpl<MedicationKnowledgeStatusCodes>
      get copyWith => MedicationKnowledgeStatusCodesCopyWithImpl<
              MedicationKnowledgeStatusCodes>(
            this,
            (v) => v as MedicationKnowledgeStatusCodes,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class MedicationKnowledgeStatusCodesCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  MedicationKnowledgeStatusCodesCopyWithImpl(super._value, super._then);

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
      MedicationKnowledgeStatusCodes(
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
