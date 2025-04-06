// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Distinguishes groups from questions and display text and indicates data
/// type for questions.
class QuestionnaireItemTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  QuestionnaireItemTypeBuilder._({
    required super.valueString,
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
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return QuestionnaireItemTypeBuilder._(
      valueString: valueString,
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
      QuestionnaireItemTypeBuilder._(valueString: '');

  /// Factory constructor to create [QuestionnaireItemTypeBuilder]
  /// from JSON.
  factory QuestionnaireItemTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
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
      valueString: value,
      element: element,
    );
  }

  /// group
  static QuestionnaireItemTypeBuilder group = QuestionnaireItemTypeBuilder._(
    valueString: 'group',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Group'.toFhirStringBuilder,
  );

  /// display_
  static QuestionnaireItemTypeBuilder display_ = QuestionnaireItemTypeBuilder._(
    valueString: 'display',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Display'.toFhirStringBuilder,
  );

  /// question
  static QuestionnaireItemTypeBuilder question = QuestionnaireItemTypeBuilder._(
    valueString: 'question',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Question'.toFhirStringBuilder,
  );

  /// boolean
  static QuestionnaireItemTypeBuilder boolean = QuestionnaireItemTypeBuilder._(
    valueString: 'boolean',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Boolean'.toFhirStringBuilder,
  );

  /// decimal
  static QuestionnaireItemTypeBuilder decimal = QuestionnaireItemTypeBuilder._(
    valueString: 'decimal',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Decimal'.toFhirStringBuilder,
  );

  /// integer
  static QuestionnaireItemTypeBuilder integer = QuestionnaireItemTypeBuilder._(
    valueString: 'integer',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Integer'.toFhirStringBuilder,
  );

  /// date
  static QuestionnaireItemTypeBuilder date = QuestionnaireItemTypeBuilder._(
    valueString: 'date',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Date'.toFhirStringBuilder,
  );

  /// dateTime
  static QuestionnaireItemTypeBuilder dateTime = QuestionnaireItemTypeBuilder._(
    valueString: 'dateTime',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Date Time'.toFhirStringBuilder,
  );

  /// time
  static QuestionnaireItemTypeBuilder time = QuestionnaireItemTypeBuilder._(
    valueString: 'time',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Time'.toFhirStringBuilder,
  );

  /// string
  static QuestionnaireItemTypeBuilder string = QuestionnaireItemTypeBuilder._(
    valueString: 'string',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'String'.toFhirStringBuilder,
  );

  /// text
  static QuestionnaireItemTypeBuilder text = QuestionnaireItemTypeBuilder._(
    valueString: 'text',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Text'.toFhirStringBuilder,
  );

  /// url
  static QuestionnaireItemTypeBuilder url = QuestionnaireItemTypeBuilder._(
    valueString: 'url',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Url'.toFhirStringBuilder,
  );

  /// choice
  static QuestionnaireItemTypeBuilder choice = QuestionnaireItemTypeBuilder._(
    valueString: 'choice',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Choice'.toFhirStringBuilder,
  );

  /// open_choice
  static QuestionnaireItemTypeBuilder open_choice =
      QuestionnaireItemTypeBuilder._(
    valueString: 'open-choice',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open Choice'.toFhirStringBuilder,
  );

  /// attachment
  static QuestionnaireItemTypeBuilder attachment =
      QuestionnaireItemTypeBuilder._(
    valueString: 'attachment',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Attachment'.toFhirStringBuilder,
  );

  /// reference
  static QuestionnaireItemTypeBuilder reference =
      QuestionnaireItemTypeBuilder._(
    valueString: 'reference',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Reference'.toFhirStringBuilder,
  );

  /// quantity
  static QuestionnaireItemTypeBuilder quantity = QuestionnaireItemTypeBuilder._(
    valueString: 'quantity',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Quantity'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static QuestionnaireItemTypeBuilder elementOnly =
      QuestionnaireItemTypeBuilder._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  QuestionnaireItemTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return QuestionnaireItemTypeBuilder._(
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

  /// Creates a modified copy with updated properties.
  @override
  QuestionnaireItemTypeBuilder copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for QuestionnaireItemType: $newValue',
      );
    }
    return QuestionnaireItemTypeBuilder._(
      valueString: newValue ?? valueString,
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
