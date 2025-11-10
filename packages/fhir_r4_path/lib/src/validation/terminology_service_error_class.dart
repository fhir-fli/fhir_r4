// ignore_for_file: avoid_positional_boolean_parameters, avoid_returning_this
// ignore_for_file: avoid_print

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
class TerminologyServiceErrorClass extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  TerminologyServiceErrorClass._(
    String? valueString, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super(valueString: valueString);

  /// Factory constructor to create a new instance of
  /// [TerminologyServiceErrorClass] with the specified parameters.
  // ignore: sort_unnamed_constructors_first
  factory TerminologyServiceErrorClass(
    String? rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String? system,
    String? version,
    String? display,
  }) {
    return TerminologyServiceErrorClass._(
      rawValue,
      system: system?.toFhirUri,
      version: version?.toFhirString,
      display: display?.toFhirString,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [TerminologyServiceErrorClass] from JSON.
  factory TerminologyServiceErrorClass.fromJson(
    Map<String, dynamic> json,
  ) {
    final id = json['id'] as String?;
    final extension = json['extension'] is List<dynamic>
        ? (json['extension'] as List<dynamic>)
            .map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
            .toList()
        : null;
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TerminologyServiceErrorClass.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TerminologyServiceErrorClass cannot be constructed from JSON.',
      );
    }
    return TerminologyServiceErrorClass._(
      id: id?.toFhirString,
      extension_: extension,
      value,
      element: element,
    );
  }

  /// Unknown error type.
  static final TerminologyServiceErrorClass unknown =
      TerminologyServiceErrorClass._(
    'unknown',
  );

  /// Indicates no terminology service is available.
  static final TerminologyServiceErrorClass noservice =
      TerminologyServiceErrorClass._(
    'noservice',
  );

  /// An error occurred on the server.
  static final TerminologyServiceErrorClass serverError =
      TerminologyServiceErrorClass._(
    'serverError',
  );

  /// The value set is unsupported.
  static final TerminologyServiceErrorClass valueSetUnsupported =
      TerminologyServiceErrorClass._(
    'valueSetUnsupported',
  );

  /// The code system is unsupported.
  static final TerminologyServiceErrorClass codeSystemUnsupported =
      TerminologyServiceErrorClass._(
    'codeSystemUnsupported',
  );

  /// The operation is blocked by specific validation options.
  static final TerminologyServiceErrorClass blockedByOptions =
      TerminologyServiceErrorClass._(
    'blockedByOptions',
  );

  /// For instances where an Element is present but not value.
  static final TerminologyServiceErrorClass elementOnly =
      TerminologyServiceErrorClass._('');

  /// List of all enum-like values.
  static final List<TerminologyServiceErrorClass> values = [
    unknown,
    noservice,
    serverError,
    valueSetUnsupported,
    codeSystemUnsupported,
    blockedByOptions,
  ];

  /// Determines if the error type is related to infrastructure issues.
  bool isInfrastructure() {
    return this == TerminologyServiceErrorClass.noservice ||
        this == TerminologyServiceErrorClass.serverError ||
        this == TerminologyServiceErrorClass.valueSetUnsupported;
  }

  /// Clones the current instance.
  @override
  TerminologyServiceErrorClass clone() => TerminologyServiceErrorClass._(
        valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached.
  TerminologyServiceErrorClass withElement(Element? newElement) {
    return TerminologyServiceErrorClass._(
      valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation.
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  TerminologyServiceErrorClassCopyWithImpl<TerminologyServiceErrorClass>
      get copyWith => TerminologyServiceErrorClassCopyWithImpl<
              TerminologyServiceErrorClass>(
            this,
            (value) => value as TerminologyServiceErrorClass,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
