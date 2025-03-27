// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of response code to use for assertion.
class AssertionResponseTypes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AssertionResponseTypes._({
    required super.validatedValue,
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
  factory AssertionResponseTypes(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return AssertionResponseTypes._(
      validatedValue: validated,
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

  /// Create empty [AssertionResponseTypes] with element only
  factory AssertionResponseTypes.empty() =>
      AssertionResponseTypes._(validatedValue: '');

  /// Factory constructor to create [AssertionResponseTypes] from JSON.
  factory AssertionResponseTypes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionResponseTypes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'AssertionResponseTypes cannot be constructed from JSON.',);
    }
    return AssertionResponseTypes._(validatedValue: value, element: element);
  }

  /// okay
  static final AssertionResponseTypes okay = AssertionResponseTypes._(
    validatedValue: 'okay',
    system: 'http://hl7.org/fhir/ValueSet/assert-response-code-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'okay'.toFhirString,
  );

  /// created
  static final AssertionResponseTypes created = AssertionResponseTypes._(
    validatedValue: 'created',
    system: 'http://hl7.org/fhir/ValueSet/assert-response-code-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'created'.toFhirString,
  );

  /// noContent
  static final AssertionResponseTypes noContent = AssertionResponseTypes._(
    validatedValue: 'noContent',
    system: 'http://hl7.org/fhir/ValueSet/assert-response-code-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'noContent'.toFhirString,
  );

  /// notModified
  static final AssertionResponseTypes notModified = AssertionResponseTypes._(
    validatedValue: 'notModified',
    system: 'http://hl7.org/fhir/ValueSet/assert-response-code-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'notModified'.toFhirString,
  );

  /// bad
  static final AssertionResponseTypes bad = AssertionResponseTypes._(
    validatedValue: 'bad',
    system: 'http://hl7.org/fhir/ValueSet/assert-response-code-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'bad'.toFhirString,
  );

  /// forbidden
  static final AssertionResponseTypes forbidden = AssertionResponseTypes._(
    validatedValue: 'forbidden',
    system: 'http://hl7.org/fhir/ValueSet/assert-response-code-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'forbidden'.toFhirString,
  );

  /// notFound
  static final AssertionResponseTypes notFound = AssertionResponseTypes._(
    validatedValue: 'notFound',
    system: 'http://hl7.org/fhir/ValueSet/assert-response-code-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'notFound'.toFhirString,
  );

  /// methodNotAllowed
  static final AssertionResponseTypes methodNotAllowed =
      AssertionResponseTypes._(
    validatedValue: 'methodNotAllowed',
    system: 'http://hl7.org/fhir/ValueSet/assert-response-code-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'methodNotAllowed'.toFhirString,
  );

  /// conflict
  static final AssertionResponseTypes conflict = AssertionResponseTypes._(
    validatedValue: 'conflict',
    system: 'http://hl7.org/fhir/ValueSet/assert-response-code-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'conflict'.toFhirString,
  );

  /// gone
  static final AssertionResponseTypes gone = AssertionResponseTypes._(
    validatedValue: 'gone',
    system: 'http://hl7.org/fhir/ValueSet/assert-response-code-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'gone'.toFhirString,
  );

  /// preconditionFailed
  static final AssertionResponseTypes preconditionFailed =
      AssertionResponseTypes._(
    validatedValue: 'preconditionFailed',
    system: 'http://hl7.org/fhir/ValueSet/assert-response-code-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'preconditionFailed'.toFhirString,
  );

  /// unprocessable
  static final AssertionResponseTypes unprocessable = AssertionResponseTypes._(
    validatedValue: 'unprocessable',
    system: 'http://hl7.org/fhir/ValueSet/assert-response-code-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'unprocessable'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AssertionResponseTypes elementOnly =
      AssertionResponseTypes._(validatedValue: '');

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

  /// Clones the current instance
  @override
  AssertionResponseTypes clone() => AssertionResponseTypes._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AssertionResponseTypes withElement(Element? newElement) {
    return AssertionResponseTypes._(validatedValue: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  AssertionResponseTypes copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AssertionResponseTypes._(
      validatedValue: newValue ?? value,
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
