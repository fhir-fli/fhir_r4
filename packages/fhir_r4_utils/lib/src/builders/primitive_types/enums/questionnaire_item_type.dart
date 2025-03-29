// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Distinguishes groups from questions and display text and indicates data
/// type for questions.
class QuestionnaireItemTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  QuestionnaireItemTypeBuilder._({
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
  factory QuestionnaireItemTypeBuilder(
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
    return QuestionnaireItemTypeBuilder._(
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

  /// Create empty [QuestionnaireItemTypeBuilder] with element only
  factory QuestionnaireItemTypeBuilder.empty() =>
      QuestionnaireItemTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [QuestionnaireItemTypeBuilder] from JSON.
  factory QuestionnaireItemTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireItemTypeBuilder cannot be constructed from JSON.',
      );
    }
    return QuestionnaireItemTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// group
  static QuestionnaireItemTypeBuilder group = QuestionnaireItemTypeBuilder._(
    validatedValue: 'group',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Group'.toFhirStringBuilder,
  );

  /// display_
  static QuestionnaireItemTypeBuilder display_ = QuestionnaireItemTypeBuilder._(
    validatedValue: 'display',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Display'.toFhirStringBuilder,
  );

  /// question
  static QuestionnaireItemTypeBuilder question = QuestionnaireItemTypeBuilder._(
    validatedValue: 'question',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Question'.toFhirStringBuilder,
  );

  /// boolean
  static QuestionnaireItemTypeBuilder boolean = QuestionnaireItemTypeBuilder._(
    validatedValue: 'boolean',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Boolean'.toFhirStringBuilder,
  );

  /// decimal
  static QuestionnaireItemTypeBuilder decimal = QuestionnaireItemTypeBuilder._(
    validatedValue: 'decimal',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Decimal'.toFhirStringBuilder,
  );

  /// integer
  static QuestionnaireItemTypeBuilder integer = QuestionnaireItemTypeBuilder._(
    validatedValue: 'integer',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Integer'.toFhirStringBuilder,
  );

  /// date
  static QuestionnaireItemTypeBuilder date = QuestionnaireItemTypeBuilder._(
    validatedValue: 'date',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Date'.toFhirStringBuilder,
  );

  /// dateTime
  static QuestionnaireItemTypeBuilder dateTime = QuestionnaireItemTypeBuilder._(
    validatedValue: 'dateTime',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Date Time'.toFhirStringBuilder,
  );

  /// time
  static QuestionnaireItemTypeBuilder time = QuestionnaireItemTypeBuilder._(
    validatedValue: 'time',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Time'.toFhirStringBuilder,
  );

  /// string
  static QuestionnaireItemTypeBuilder string = QuestionnaireItemTypeBuilder._(
    validatedValue: 'string',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'String'.toFhirStringBuilder,
  );

  /// text
  static QuestionnaireItemTypeBuilder text = QuestionnaireItemTypeBuilder._(
    validatedValue: 'text',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Text'.toFhirStringBuilder,
  );

  /// url
  static QuestionnaireItemTypeBuilder url = QuestionnaireItemTypeBuilder._(
    validatedValue: 'url',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Url'.toFhirStringBuilder,
  );

  /// choice
  static QuestionnaireItemTypeBuilder choice = QuestionnaireItemTypeBuilder._(
    validatedValue: 'choice',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Choice'.toFhirStringBuilder,
  );

  /// open_choice
  static QuestionnaireItemTypeBuilder open_choice =
      QuestionnaireItemTypeBuilder._(
    validatedValue: 'open-choice',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open Choice'.toFhirStringBuilder,
  );

  /// attachment
  static QuestionnaireItemTypeBuilder attachment =
      QuestionnaireItemTypeBuilder._(
    validatedValue: 'attachment',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Attachment'.toFhirStringBuilder,
  );

  /// reference
  static QuestionnaireItemTypeBuilder reference =
      QuestionnaireItemTypeBuilder._(
    validatedValue: 'reference',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Reference'.toFhirStringBuilder,
  );

  /// quantity
  static QuestionnaireItemTypeBuilder quantity = QuestionnaireItemTypeBuilder._(
    validatedValue: 'quantity',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Quantity'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static QuestionnaireItemTypeBuilder elementOnly =
      QuestionnaireItemTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<QuestionnaireItemTypeBuilder> values = [
    group,
    display_,
    question,
    boolean,
    decimal,
    integer,
    date,
    dateTime,
    time,
    string,
    text,
    url,
    choice,
    open_choice,
    attachment,
    reference,
    quantity,
  ];

  /// Clones the current instance
  @override
  QuestionnaireItemTypeBuilder clone() => QuestionnaireItemTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  QuestionnaireItemTypeBuilder withElement(ElementBuilder? newElement) {
    return QuestionnaireItemTypeBuilder._(
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
  QuestionnaireItemTypeBuilder copyWith({
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
    return QuestionnaireItemTypeBuilder._(
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
