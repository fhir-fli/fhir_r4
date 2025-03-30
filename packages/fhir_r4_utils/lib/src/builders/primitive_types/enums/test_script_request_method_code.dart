// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The allowable request method or HTTP operation codes.
class TestScriptRequestMethodCodeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TestScriptRequestMethodCodeBuilder._({
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
  factory TestScriptRequestMethodCodeBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return TestScriptRequestMethodCodeBuilder._(
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

  /// Create empty [TestScriptRequestMethodCodeBuilder] with element only
  factory TestScriptRequestMethodCodeBuilder.empty() =>
      TestScriptRequestMethodCodeBuilder._(validatedValue: '');

  /// Factory constructor to create [TestScriptRequestMethodCodeBuilder]
  /// from JSON.
  factory TestScriptRequestMethodCodeBuilder.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptRequestMethodCodeBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestScriptRequestMethodCodeBuilder cannot be constructed from JSON.',
      );
    }
    return TestScriptRequestMethodCodeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// delete
  static TestScriptRequestMethodCodeBuilder delete =
      TestScriptRequestMethodCodeBuilder._(
    validatedValue: 'delete',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DELETE'.toFhirStringBuilder,
  );

  /// get_
  static TestScriptRequestMethodCodeBuilder get_ =
      TestScriptRequestMethodCodeBuilder._(
    validatedValue: 'get',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GET'.toFhirStringBuilder,
  );

  /// options
  static TestScriptRequestMethodCodeBuilder options =
      TestScriptRequestMethodCodeBuilder._(
    validatedValue: 'options',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OPTIONS'.toFhirStringBuilder,
  );

  /// patch
  static TestScriptRequestMethodCodeBuilder patch =
      TestScriptRequestMethodCodeBuilder._(
    validatedValue: 'patch',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PATCH'.toFhirStringBuilder,
  );

  /// post
  static TestScriptRequestMethodCodeBuilder post =
      TestScriptRequestMethodCodeBuilder._(
    validatedValue: 'post',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'POST'.toFhirStringBuilder,
  );

  /// put
  static TestScriptRequestMethodCodeBuilder put =
      TestScriptRequestMethodCodeBuilder._(
    validatedValue: 'put',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PUT'.toFhirStringBuilder,
  );

  /// head
  static TestScriptRequestMethodCodeBuilder head =
      TestScriptRequestMethodCodeBuilder._(
    validatedValue: 'head',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'HEAD'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static TestScriptRequestMethodCodeBuilder elementOnly =
      TestScriptRequestMethodCodeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<TestScriptRequestMethodCodeBuilder> values = [
    delete,
    get_,
    options,
    patch,
    post,
    put,
    head,
  ];

  /// Clones the current instance
  @override
  TestScriptRequestMethodCodeBuilder clone() =>
      TestScriptRequestMethodCodeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  TestScriptRequestMethodCodeBuilder withElement(ElementBuilder? newElement) {
    return TestScriptRequestMethodCodeBuilder._(
        validatedValue: value, element: newElement);
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
  TestScriptRequestMethodCodeBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return TestScriptRequestMethodCodeBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
