// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Distinguishes groups from questions and display text and indicates data
/// type for questions.
class QuestionnaireItemType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  QuestionnaireItemType._({
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
  factory QuestionnaireItemType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return QuestionnaireItemType._(
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

  /// Create empty [QuestionnaireItemType] with element only
  factory QuestionnaireItemType.empty() =>
      QuestionnaireItemType._(valueString: '');

  /// Factory constructor to create [QuestionnaireItemType]
  /// from JSON.
  factory QuestionnaireItemType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireItemType cannot be constructed from JSON.',
      );
    }
    return QuestionnaireItemType._(
      valueString: value,
      element: element,
    );
  }

  /// group
  static final QuestionnaireItemType group = QuestionnaireItemType._(
    valueString: 'group',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Group'.toFhirString,
  );

  /// display_
  static final QuestionnaireItemType display_ = QuestionnaireItemType._(
    valueString: 'display',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Display'.toFhirString,
  );

  /// question
  static final QuestionnaireItemType question = QuestionnaireItemType._(
    valueString: 'question',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Question'.toFhirString,
  );

  /// boolean
  static final QuestionnaireItemType boolean = QuestionnaireItemType._(
    valueString: 'boolean',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Boolean'.toFhirString,
  );

  /// decimal
  static final QuestionnaireItemType decimal = QuestionnaireItemType._(
    valueString: 'decimal',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Decimal'.toFhirString,
  );

  /// integer
  static final QuestionnaireItemType integer = QuestionnaireItemType._(
    valueString: 'integer',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Integer'.toFhirString,
  );

  /// date
  static final QuestionnaireItemType date = QuestionnaireItemType._(
    valueString: 'date',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Date'.toFhirString,
  );

  /// dateTime
  static final QuestionnaireItemType dateTime = QuestionnaireItemType._(
    valueString: 'dateTime',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Date Time'.toFhirString,
  );

  /// time
  static final QuestionnaireItemType time = QuestionnaireItemType._(
    valueString: 'time',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Time'.toFhirString,
  );

  /// string
  static final QuestionnaireItemType string = QuestionnaireItemType._(
    valueString: 'string',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'String'.toFhirString,
  );

  /// text
  static final QuestionnaireItemType text = QuestionnaireItemType._(
    valueString: 'text',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Text'.toFhirString,
  );

  /// url
  static final QuestionnaireItemType url = QuestionnaireItemType._(
    valueString: 'url',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Url'.toFhirString,
  );

  /// choice
  static final QuestionnaireItemType choice = QuestionnaireItemType._(
    valueString: 'choice',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Choice'.toFhirString,
  );

  /// open_choice
  static final QuestionnaireItemType open_choice = QuestionnaireItemType._(
    valueString: 'open-choice',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open Choice'.toFhirString,
  );

  /// attachment
  static final QuestionnaireItemType attachment = QuestionnaireItemType._(
    valueString: 'attachment',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Attachment'.toFhirString,
  );

  /// reference
  static final QuestionnaireItemType reference = QuestionnaireItemType._(
    valueString: 'reference',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Reference'.toFhirString,
  );

  /// quantity
  static final QuestionnaireItemType quantity = QuestionnaireItemType._(
    valueString: 'quantity',
    system: 'http://hl7.org/fhir/ValueSet/item-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Quantity'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final QuestionnaireItemType elementOnly =
      QuestionnaireItemType._(valueString: '');

  /// List of all enum-like values
  static final List<QuestionnaireItemType> values = [
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
  QuestionnaireItemType clone() => QuestionnaireItemType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  QuestionnaireItemType withElement(Element? newElement) {
    return QuestionnaireItemType._(
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
  QuestionnaireItemType copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for QuestionnaireItemType: $newValue',
      );
    }
    return QuestionnaireItemType._(
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
