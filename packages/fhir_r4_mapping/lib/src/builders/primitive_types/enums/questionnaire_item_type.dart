// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for QuestionnaireItemType
enum QuestionnaireItemTypeBuilderEnum {
  /// group
  group,

  /// display
  display_,

  /// question
  question,

  /// boolean
  boolean,

  /// decimal
  decimal,

  /// integer
  integer,

  /// date
  date,

  /// dateTime
  dateTime,

  /// time
  time,

  /// string
  string,

  /// text
  text,

  /// url
  url,

  /// choice
  choice,

  /// open-choice
  openChoice,

  /// attachment
  attachment,

  /// reference
  reference,

  /// quantity
  quantity,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case QuestionnaireItemTypeBuilderEnum.group:
        return 'group';
      case QuestionnaireItemTypeBuilderEnum.display_:
        return 'display';
      case QuestionnaireItemTypeBuilderEnum.question:
        return 'question';
      case QuestionnaireItemTypeBuilderEnum.boolean:
        return 'boolean';
      case QuestionnaireItemTypeBuilderEnum.decimal:
        return 'decimal';
      case QuestionnaireItemTypeBuilderEnum.integer:
        return 'integer';
      case QuestionnaireItemTypeBuilderEnum.date:
        return 'date';
      case QuestionnaireItemTypeBuilderEnum.dateTime:
        return 'dateTime';
      case QuestionnaireItemTypeBuilderEnum.time:
        return 'time';
      case QuestionnaireItemTypeBuilderEnum.string:
        return 'string';
      case QuestionnaireItemTypeBuilderEnum.text:
        return 'text';
      case QuestionnaireItemTypeBuilderEnum.url:
        return 'url';
      case QuestionnaireItemTypeBuilderEnum.choice:
        return 'choice';
      case QuestionnaireItemTypeBuilderEnum.openChoice:
        return 'open-choice';
      case QuestionnaireItemTypeBuilderEnum.attachment:
        return 'attachment';
      case QuestionnaireItemTypeBuilderEnum.reference:
        return 'reference';
      case QuestionnaireItemTypeBuilderEnum.quantity:
        return 'quantity';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QuestionnaireItemTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return QuestionnaireItemTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QuestionnaireItemTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'group':
        return QuestionnaireItemTypeBuilderEnum.group;
      case 'display':
        return QuestionnaireItemTypeBuilderEnum.display_;
      case 'question':
        return QuestionnaireItemTypeBuilderEnum.question;
      case 'boolean':
        return QuestionnaireItemTypeBuilderEnum.boolean;
      case 'decimal':
        return QuestionnaireItemTypeBuilderEnum.decimal;
      case 'integer':
        return QuestionnaireItemTypeBuilderEnum.integer;
      case 'date':
        return QuestionnaireItemTypeBuilderEnum.date;
      case 'dateTime':
        return QuestionnaireItemTypeBuilderEnum.dateTime;
      case 'time':
        return QuestionnaireItemTypeBuilderEnum.time;
      case 'string':
        return QuestionnaireItemTypeBuilderEnum.string;
      case 'text':
        return QuestionnaireItemTypeBuilderEnum.text;
      case 'url':
        return QuestionnaireItemTypeBuilderEnum.url;
      case 'choice':
        return QuestionnaireItemTypeBuilderEnum.choice;
      case 'open-choice':
        return QuestionnaireItemTypeBuilderEnum.openChoice;
      case 'attachment':
        return QuestionnaireItemTypeBuilderEnum.attachment;
      case 'reference':
        return QuestionnaireItemTypeBuilderEnum.reference;
      case 'quantity':
        return QuestionnaireItemTypeBuilderEnum.quantity;
    }
    return null;
  }
}

/// Distinguishes groups from questions and display text and indicates data
/// type for questions.
class QuestionnaireItemTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  QuestionnaireItemTypeBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = QuestionnaireItemTypeBuilderEnum.fromString(
      valueString,
    );
    return QuestionnaireItemTypeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [QuestionnaireItemTypeBuilder]
  /// with element only
  factory QuestionnaireItemTypeBuilder.empty() =>
      QuestionnaireItemTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [QuestionnaireItemTypeBuilder] from JSON.
  factory QuestionnaireItemTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemTypeBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for QuestionnaireItemTypeBuilder
  final QuestionnaireItemTypeBuilderEnum? valueEnum;

  /// group
  static QuestionnaireItemTypeBuilder group = QuestionnaireItemTypeBuilder._(
    valueString: 'group',
    valueEnum: QuestionnaireItemTypeBuilderEnum.group,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Group',
    ),
  );

  /// display_
  static QuestionnaireItemTypeBuilder display_ = QuestionnaireItemTypeBuilder._(
    valueString: 'display',
    valueEnum: QuestionnaireItemTypeBuilderEnum.display_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Display',
    ),
  );

  /// question
  static QuestionnaireItemTypeBuilder question = QuestionnaireItemTypeBuilder._(
    valueString: 'question',
    valueEnum: QuestionnaireItemTypeBuilderEnum.question,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Question',
    ),
  );

  /// boolean
  static QuestionnaireItemTypeBuilder boolean = QuestionnaireItemTypeBuilder._(
    valueString: 'boolean',
    valueEnum: QuestionnaireItemTypeBuilderEnum.boolean,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Boolean',
    ),
  );

  /// decimal
  static QuestionnaireItemTypeBuilder decimal = QuestionnaireItemTypeBuilder._(
    valueString: 'decimal',
    valueEnum: QuestionnaireItemTypeBuilderEnum.decimal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Decimal',
    ),
  );

  /// integer
  static QuestionnaireItemTypeBuilder integer = QuestionnaireItemTypeBuilder._(
    valueString: 'integer',
    valueEnum: QuestionnaireItemTypeBuilderEnum.integer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Integer',
    ),
  );

  /// date
  static QuestionnaireItemTypeBuilder date = QuestionnaireItemTypeBuilder._(
    valueString: 'date',
    valueEnum: QuestionnaireItemTypeBuilderEnum.date,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Date',
    ),
  );

  /// dateTime
  static QuestionnaireItemTypeBuilder dateTime = QuestionnaireItemTypeBuilder._(
    valueString: 'dateTime',
    valueEnum: QuestionnaireItemTypeBuilderEnum.dateTime,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Date Time',
    ),
  );

  /// time
  static QuestionnaireItemTypeBuilder time = QuestionnaireItemTypeBuilder._(
    valueString: 'time',
    valueEnum: QuestionnaireItemTypeBuilderEnum.time,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Time',
    ),
  );

  /// string
  static QuestionnaireItemTypeBuilder string = QuestionnaireItemTypeBuilder._(
    valueString: 'string',
    valueEnum: QuestionnaireItemTypeBuilderEnum.string,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'String',
    ),
  );

  /// text
  static QuestionnaireItemTypeBuilder text = QuestionnaireItemTypeBuilder._(
    valueString: 'text',
    valueEnum: QuestionnaireItemTypeBuilderEnum.text,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Text',
    ),
  );

  /// url
  static QuestionnaireItemTypeBuilder url = QuestionnaireItemTypeBuilder._(
    valueString: 'url',
    valueEnum: QuestionnaireItemTypeBuilderEnum.url,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Url',
    ),
  );

  /// choice
  static QuestionnaireItemTypeBuilder choice = QuestionnaireItemTypeBuilder._(
    valueString: 'choice',
    valueEnum: QuestionnaireItemTypeBuilderEnum.choice,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Choice',
    ),
  );

  /// open_choice
  static QuestionnaireItemTypeBuilder openChoice =
      QuestionnaireItemTypeBuilder._(
    valueString: 'open-choice',
    valueEnum: QuestionnaireItemTypeBuilderEnum.openChoice,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Open Choice',
    ),
  );

  /// attachment
  static QuestionnaireItemTypeBuilder attachment =
      QuestionnaireItemTypeBuilder._(
    valueString: 'attachment',
    valueEnum: QuestionnaireItemTypeBuilderEnum.attachment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Attachment',
    ),
  );

  /// reference
  static QuestionnaireItemTypeBuilder reference =
      QuestionnaireItemTypeBuilder._(
    valueString: 'reference',
    valueEnum: QuestionnaireItemTypeBuilderEnum.reference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Reference',
    ),
  );

  /// quantity
  static QuestionnaireItemTypeBuilder quantity = QuestionnaireItemTypeBuilder._(
    valueString: 'quantity',
    valueEnum: QuestionnaireItemTypeBuilderEnum.quantity,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Quantity',
    ),
  );

  /// For instances where an Element is present but not value
  static QuestionnaireItemTypeBuilder elementOnly =
      QuestionnaireItemTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

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
    openChoice,
    attachment,
    reference,
    quantity,
  ];

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
}
