import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        Invoice,
        InvoiceParticipant,
        InvoiceLineItem,
        InvoicePriceComponent;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [InvoiceBuilder]
/// Invoice containing collected ChargeItems from an Account with
/// calculated individual and total price for Billing purpose.
class InvoiceBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [InvoiceBuilder]

  InvoiceBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.cancelledReason,
    this.type,
    this.subject,
    this.recipient,
    this.date,
    this.participant,
    this.issuer,
    this.account,
    this.lineItem,
    this.totalPriceComponent,
    this.totalNet,
    this.totalGross,
    this.paymentTerms,
    this.note,
  }) : super(
          objectPath: 'Invoice',
          resourceType: R4ResourceType.Invoice,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InvoiceBuilder.empty() => InvoiceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoiceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Invoice';
    return InvoiceBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<InvoiceStatusBuilder>(
        json,
        'status',
        InvoiceStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      cancelledReason: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'cancelledReason',
        FhirStringBuilder.fromJson,
        '$objectPath.cancelledReason',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      recipient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'recipient',
        ReferenceBuilder.fromJson,
        '$objectPath.recipient',
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<InvoiceParticipantBuilder>(
            (v) => InvoiceParticipantBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participant',
              },
            ),
          )
          .toList(),
      issuer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'issuer',
        ReferenceBuilder.fromJson,
        '$objectPath.issuer',
      ),
      account: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'account',
        ReferenceBuilder.fromJson,
        '$objectPath.account',
      ),
      lineItem: (json['lineItem'] as List<dynamic>?)
          ?.map<InvoiceLineItemBuilder>(
            (v) => InvoiceLineItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.lineItem',
              },
            ),
          )
          .toList(),
      totalPriceComponent: (json['totalPriceComponent'] as List<dynamic>?)
          ?.map<InvoicePriceComponentBuilder>(
            (v) => InvoicePriceComponentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.totalPriceComponent',
              },
            ),
          )
          .toList(),
      totalNet: JsonParser.parseObject<MoneyBuilder>(
        json,
        'totalNet',
        MoneyBuilder.fromJson,
        '$objectPath.totalNet',
      ),
      totalGross: JsonParser.parseObject<MoneyBuilder>(
        json,
        'totalGross',
        MoneyBuilder.fromJson,
        '$objectPath.totalGross',
      ),
      paymentTerms: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'paymentTerms',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.paymentTerms',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InvoiceBuilder]
  /// from a [String] or [YamlMap] object
  factory InvoiceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InvoiceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InvoiceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InvoiceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InvoiceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoiceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InvoiceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Invoice';

  /// [identifier]
  /// Identifier of this Invoice, often used for reference in correspondence
  /// about this invoice or for tracking of payments.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The current state of the Invoice.
  InvoiceStatusBuilder? status;

  /// [cancelledReason]
  /// In case of Invoice cancellation a reason must be given (entered in
  /// error, superseded by corrected invoice etc.).
  FhirStringBuilder? cancelledReason;

  /// [type]
  /// Type of Invoice depending on domain, realm an usage (e.g.
  /// internal/external, dental, preliminary).
  CodeableConceptBuilder? type;

  /// [subject]
  /// The individual or set of individuals receiving the goods and services
  /// billed in this invoice.
  ReferenceBuilder? subject;

  /// [recipient]
  /// The individual or Organization responsible for balancing of this
  /// invoice.
  ReferenceBuilder? recipient;

  /// [date]
  /// Date/time(s) of when this Invoice was posted.
  FhirDateTimeBuilder? date;

  /// [participant]
  /// Indicates who or what performed or participated in the charged service.
  List<InvoiceParticipantBuilder>? participant;

  /// [issuer]
  /// The organizationissuing the Invoice.
  ReferenceBuilder? issuer;

  /// [account]
  /// Account which is supposed to be balanced with this Invoice.
  ReferenceBuilder? account;

  /// [lineItem]
  /// Each line item represents one charge for goods and services rendered.
  /// Details such as date, code and amount are found in the referenced
  /// ChargeItem resource.
  List<InvoiceLineItemBuilder>? lineItem;

  /// [totalPriceComponent]
  /// The total amount for the Invoice may be calculated as the sum of the
  /// line items with surcharges/deductions that apply in certain conditions.
  /// The priceComponent element can be used to offer transparency to the
  /// recipient of the Invoice of how the total price was calculated.
  List<InvoicePriceComponentBuilder>? totalPriceComponent;

  /// [totalNet]
  /// Invoice total , taxes excluded.
  MoneyBuilder? totalNet;

  /// [totalGross]
  /// Invoice total, tax included.
  MoneyBuilder? totalGross;

  /// [paymentTerms]
  /// Payment details such as banking details, period of payment,
  /// deductibles, methods of payment.
  FhirMarkdownBuilder? paymentTerms;

  /// [note]
  /// Comments made about the invoice by the issuer, subject, or other
  /// participants.
  List<AnnotationBuilder>? note;

  /// Converts a InvoiceBuilder to [Invoice]
  Invoice build() => Invoice.fromJson(toJson());

  /// Converts a [InvoiceBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('status', status);
    addField('cancelledReason', cancelledReason);
    addField('type', type);
    addField('subject', subject);
    addField('recipient', recipient);
    addField('date', date);
    addField('participant', participant);
    addField('issuer', issuer);
    addField('account', account);
    addField('lineItem', lineItem);
    addField('totalPriceComponent', totalPriceComponent);
    addField('totalNet', totalNet);
    addField('totalGross', totalGross);
    addField('paymentTerms', paymentTerms);
    addField('note', note);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'status',
      'cancelledReason',
      'type',
      'subject',
      'recipient',
      'date',
      'participant',
      'issuer',
      'account',
      'lineItem',
      'totalPriceComponent',
      'totalNet',
      'totalGross',
      'paymentTerms',
      'note',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'cancelledReason':
        if (cancelledReason != null) {
          fields.add(cancelledReason!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'recipient':
        if (recipient != null) {
          fields.add(recipient!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'participant':
        if (participant != null) {
          fields.addAll(participant!);
        }
      case 'issuer':
        if (issuer != null) {
          fields.add(issuer!);
        }
      case 'account':
        if (account != null) {
          fields.add(account!);
        }
      case 'lineItem':
        if (lineItem != null) {
          fields.addAll(lineItem!);
        }
      case 'totalPriceComponent':
        if (totalPriceComponent != null) {
          fields.addAll(totalPriceComponent!);
        }
      case 'totalNet':
        if (totalNet != null) {
          fields.add(totalNet!);
        }
      case 'totalGross':
        if (totalGross != null) {
          fields.add(totalGross!);
        }
      case 'paymentTerms':
        if (paymentTerms != null) {
          fields.add(paymentTerms!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [...(contained ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is InvoiceStatusBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'cancelledReason':
        {
          if (child is FhirStringBuilder) {
            cancelledReason = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recipient':
        {
          if (child is ReferenceBuilder) {
            recipient = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participant':
        {
          if (child is List<InvoiceParticipantBuilder>) {
            // Replace or create new list
            participant = child;
            return;
          } else if (child is InvoiceParticipantBuilder) {
            // Add single element to existing list or create new list
            participant = [...(participant ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'issuer':
        {
          if (child is ReferenceBuilder) {
            issuer = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'account':
        {
          if (child is ReferenceBuilder) {
            account = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lineItem':
        {
          if (child is List<InvoiceLineItemBuilder>) {
            // Replace or create new list
            lineItem = child;
            return;
          } else if (child is InvoiceLineItemBuilder) {
            // Add single element to existing list or create new list
            lineItem = [...(lineItem ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'totalPriceComponent':
        {
          if (child is List<InvoicePriceComponentBuilder>) {
            // Replace or create new list
            totalPriceComponent = child;
            return;
          } else if (child is InvoicePriceComponentBuilder) {
            // Add single element to existing list or create new list
            totalPriceComponent = [...(totalPriceComponent ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'totalNet':
        {
          if (child is MoneyBuilder) {
            totalNet = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'totalGross':
        {
          if (child is MoneyBuilder) {
            totalGross = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'paymentTerms':
        {
          if (child is FhirMarkdownBuilder) {
            paymentTerms = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [...(note ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'cancelledReason':
        return ['FhirStringBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'recipient':
        return ['ReferenceBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'participant':
        return ['InvoiceParticipantBuilder'];
      case 'issuer':
        return ['ReferenceBuilder'];
      case 'account':
        return ['ReferenceBuilder'];
      case 'lineItem':
        return ['InvoiceLineItemBuilder'];
      case 'totalPriceComponent':
        return ['InvoicePriceComponentBuilder'];
      case 'totalNet':
        return ['MoneyBuilder'];
      case 'totalGross':
        return ['MoneyBuilder'];
      case 'paymentTerms':
        return ['FhirMarkdownBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InvoiceBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'status':
        {
          status = InvoiceStatusBuilder.empty();
          return;
        }
      case 'cancelledReason':
        {
          cancelledReason = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'recipient':
        {
          recipient = ReferenceBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'participant':
        {
          participant = <InvoiceParticipantBuilder>[];
          return;
        }
      case 'issuer':
        {
          issuer = ReferenceBuilder.empty();
          return;
        }
      case 'account':
        {
          account = ReferenceBuilder.empty();
          return;
        }
      case 'lineItem':
        {
          lineItem = <InvoiceLineItemBuilder>[];
          return;
        }
      case 'totalPriceComponent':
        {
          totalPriceComponent = <InvoicePriceComponentBuilder>[];
          return;
        }
      case 'totalNet':
        {
          totalNet = MoneyBuilder.empty();
          return;
        }
      case 'totalGross':
        {
          totalGross = MoneyBuilder.empty();
          return;
        }
      case 'paymentTerms':
        {
          paymentTerms = FhirMarkdownBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool status = false,
    bool cancelledReason = false,
    bool type = false,
    bool subject = false,
    bool recipient = false,
    bool date = false,
    bool participant = false,
    bool issuer = false,
    bool account = false,
    bool lineItem = false,
    bool totalPriceComponent = false,
    bool totalNet = false,
    bool totalGross = false,
    bool paymentTerms = false,
    bool note = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (status) this.status = null;
    if (cancelledReason) this.cancelledReason = null;
    if (type) this.type = null;
    if (subject) this.subject = null;
    if (recipient) this.recipient = null;
    if (date) this.date = null;
    if (participant) this.participant = null;
    if (issuer) this.issuer = null;
    if (account) this.account = null;
    if (lineItem) this.lineItem = null;
    if (totalPriceComponent) this.totalPriceComponent = null;
    if (totalNet) this.totalNet = null;
    if (totalGross) this.totalGross = null;
    if (paymentTerms) this.paymentTerms = null;
    if (note) this.note = null;
  }

  @override
  InvoiceBuilder clone() => throw UnimplementedError();
  @override
  InvoiceBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    InvoiceStatusBuilder? status,
    FhirStringBuilder? cancelledReason,
    CodeableConceptBuilder? type,
    ReferenceBuilder? subject,
    ReferenceBuilder? recipient,
    FhirDateTimeBuilder? date,
    List<InvoiceParticipantBuilder>? participant,
    ReferenceBuilder? issuer,
    ReferenceBuilder? account,
    List<InvoiceLineItemBuilder>? lineItem,
    List<InvoicePriceComponentBuilder>? totalPriceComponent,
    MoneyBuilder? totalNet,
    MoneyBuilder? totalGross,
    FhirMarkdownBuilder? paymentTerms,
    List<AnnotationBuilder>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = InvoiceBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      cancelledReason: cancelledReason ?? this.cancelledReason,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      recipient: recipient ?? this.recipient,
      date: date ?? this.date,
      participant: participant ?? this.participant,
      issuer: issuer ?? this.issuer,
      account: account ?? this.account,
      lineItem: lineItem ?? this.lineItem,
      totalPriceComponent: totalPriceComponent ?? this.totalPriceComponent,
      totalNet: totalNet ?? this.totalNet,
      totalGross: totalGross ?? this.totalGross,
      paymentTerms: paymentTerms ?? this.paymentTerms,
      note: note ?? this.note,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! InvoiceBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cancelledReason,
      o.cancelledReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recipient,
      o.recipient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!listEquals<InvoiceParticipantBuilder>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issuer,
      o.issuer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      account,
      o.account,
    )) {
      return false;
    }
    if (!listEquals<InvoiceLineItemBuilder>(
      lineItem,
      o.lineItem,
    )) {
      return false;
    }
    if (!listEquals<InvoicePriceComponentBuilder>(
      totalPriceComponent,
      o.totalPriceComponent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      totalNet,
      o.totalNet,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      totalGross,
      o.totalGross,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      paymentTerms,
      o.paymentTerms,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [InvoiceParticipantBuilder]
/// Indicates who or what performed or participated in the charged service.
class InvoiceParticipantBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InvoiceParticipantBuilder]

  InvoiceParticipantBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Invoice.participant',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InvoiceParticipantBuilder.empty() => InvoiceParticipantBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoiceParticipantBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Invoice.participant';
    return InvoiceParticipantBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'role',
        CodeableConceptBuilder.fromJson,
        '$objectPath.role',
      ),
      actor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'actor',
        ReferenceBuilder.fromJson,
        '$objectPath.actor',
      ),
    );
  }

  /// Deserialize [InvoiceParticipantBuilder]
  /// from a [String] or [YamlMap] object
  factory InvoiceParticipantBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InvoiceParticipantBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InvoiceParticipantBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InvoiceParticipantBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InvoiceParticipantBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoiceParticipantBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InvoiceParticipantBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InvoiceParticipant';

  /// [role]
  /// Describes the type of involvement (e.g. transcriptionist, creator
  /// etc.). If the invoice has been created automatically, the Participant
  /// may be a billing engine or another kind of device.
  CodeableConceptBuilder? role;

  /// [actor]
  /// The device, practitioner, etc. who performed or participated in the
  /// service.
  ReferenceBuilder? actor;

  /// Converts a InvoiceParticipantBuilder to [InvoiceParticipant]
  InvoiceParticipant build() => InvoiceParticipant.fromJson(toJson());

  /// Converts a [InvoiceParticipantBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('role', role);
    addField('actor', actor);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'role',
      'actor',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'actor':
        if (actor != null) {
          fields.add(actor!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'role':
        {
          if (child is CodeableConceptBuilder) {
            role = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'actor':
        {
          if (child is ReferenceBuilder) {
            actor = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      case 'actor':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InvoiceParticipantBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'role':
        {
          role = CodeableConceptBuilder.empty();
          return;
        }
      case 'actor':
        {
          actor = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool role = false,
    bool actor = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (role) this.role = null;
    if (actor) this.actor = null;
  }

  @override
  InvoiceParticipantBuilder clone() => throw UnimplementedError();
  @override
  InvoiceParticipantBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? role,
    ReferenceBuilder? actor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InvoiceParticipantBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      actor: actor ?? this.actor,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! InvoiceParticipantBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actor,
      o.actor,
    )) {
      return false;
    }
    return true;
  }
}

/// [InvoiceLineItemBuilder]
/// Each line item represents one charge for goods and services rendered.
/// Details such as date, code and amount are found in the referenced
/// ChargeItem resource.
class InvoiceLineItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InvoiceLineItemBuilder]

  InvoiceLineItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.chargeItemX,
    this.priceComponent,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Invoice.lineItem',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InvoiceLineItemBuilder.empty() => InvoiceLineItemBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoiceLineItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Invoice.lineItem';
    return InvoiceLineItemBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'sequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.sequence',
      ),
      chargeItemX:
          JsonParser.parsePolymorphic<ChargeItemXInvoiceLineItemBuilder>(
        json,
        {
          'chargeItemReference': ReferenceBuilder.fromJson,
          'chargeItemCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
      priceComponent: (json['priceComponent'] as List<dynamic>?)
          ?.map<InvoicePriceComponentBuilder>(
            (v) => InvoicePriceComponentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.priceComponent',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InvoiceLineItemBuilder]
  /// from a [String] or [YamlMap] object
  factory InvoiceLineItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InvoiceLineItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InvoiceLineItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InvoiceLineItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InvoiceLineItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoiceLineItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InvoiceLineItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InvoiceLineItem';

  /// [sequence]
  /// Sequence in which the items appear on the invoice.
  FhirPositiveIntBuilder? sequence;

  /// [chargeItemX]
  /// The ChargeItem contains information such as the billing code, date,
  /// amount etc. If no further details are required for the lineItem, inline
  /// billing codes can be added using the CodeableConcept data type instead
  /// of the Reference.
  ChargeItemXInvoiceLineItemBuilder? chargeItemX;

  /// Getter for [chargeItemReference] as a ReferenceBuilder
  ReferenceBuilder? get chargeItemReference =>
      chargeItemX?.isAs<ReferenceBuilder>();

  /// Getter for [chargeItemCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get chargeItemCodeableConcept =>
      chargeItemX?.isAs<CodeableConceptBuilder>();

  /// [priceComponent]
  /// The price for a ChargeItem may be calculated as a base price with
  /// surcharges/deductions that apply in certain conditions. A
  /// ChargeItemDefinition resource that defines the prices, factors and
  /// conditions that apply to a billing code is currently under development.
  /// The priceComponent element can be used to offer transparency to the
  /// recipient of the Invoice as to how the prices have been calculated.
  List<InvoicePriceComponentBuilder>? priceComponent;

  /// Converts a InvoiceLineItemBuilder to [InvoiceLineItem]
  InvoiceLineItem build() => InvoiceLineItem.fromJson(toJson());

  /// Converts a [InvoiceLineItemBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('sequence', sequence);
    if (chargeItemX != null) {
      final fhirType = chargeItemX!.fhirType;
      addField('chargeItem${fhirType.capitalize()}', chargeItemX);
    }

    addField('priceComponent', priceComponent);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequence',
      'chargeItemX',
      'priceComponent',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'chargeItem':
        if (chargeItemX != null) {
          fields.add(chargeItemX!);
        }
      case 'chargeItemX':
        if (chargeItemX != null) {
          fields.add(chargeItemX!);
        }
      case 'chargeItemReference':
        if (chargeItemX is ReferenceBuilder) {
          fields.add(chargeItemX!);
        }
      case 'chargeItemCodeableConcept':
        if (chargeItemX is CodeableConceptBuilder) {
          fields.add(chargeItemX!);
        }
      case 'priceComponent':
        if (priceComponent != null) {
          fields.addAll(priceComponent!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveIntBuilder) {
            sequence = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'chargeItemX':
        {
          if (child is ChargeItemXInvoiceLineItemBuilder) {
            chargeItemX = child;
            return;
          } else {
            if (child is ReferenceBuilder) {
              chargeItemX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              chargeItemX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'chargeItemReference':
        {
          if (child is ReferenceBuilder) {
            chargeItemX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'chargeItemCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            chargeItemX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'priceComponent':
        {
          if (child is List<InvoicePriceComponentBuilder>) {
            // Replace or create new list
            priceComponent = child;
            return;
          } else if (child is InvoicePriceComponentBuilder) {
            // Add single element to existing list or create new list
            priceComponent = [...(priceComponent ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'chargeItem':
      case 'chargeItemX':
        return ['ReferenceBuilder', 'CodeableConceptBuilder'];
      case 'chargeItemReference':
        return ['ReferenceBuilder'];
      case 'chargeItemCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'priceComponent':
        return ['InvoicePriceComponentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InvoiceLineItemBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'sequence':
        {
          sequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'chargeItem':
      case 'chargeItemX':
      case 'chargeItemReference':
        {
          chargeItemX = ReferenceBuilder.empty();
          return;
        }
      case 'chargeItemCodeableConcept':
        {
          chargeItemX = CodeableConceptBuilder.empty();
          return;
        }
      case 'priceComponent':
        {
          priceComponent = <InvoicePriceComponentBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool sequence = false,
    bool chargeItem = false,
    bool priceComponent = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (sequence) this.sequence = null;
    if (chargeItem) this.chargeItemX = null;
    if (priceComponent) this.priceComponent = null;
  }

  @override
  InvoiceLineItemBuilder clone() => throw UnimplementedError();
  @override
  InvoiceLineItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    ChargeItemXInvoiceLineItemBuilder? chargeItemX,
    List<InvoicePriceComponentBuilder>? priceComponent,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InvoiceLineItemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      chargeItemX: chargeItemX ?? this.chargeItemX,
      priceComponent: priceComponent ?? this.priceComponent,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! InvoiceLineItemBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      chargeItemX,
      o.chargeItemX,
    )) {
      return false;
    }
    if (!listEquals<InvoicePriceComponentBuilder>(
      priceComponent,
      o.priceComponent,
    )) {
      return false;
    }
    return true;
  }
}

/// [InvoicePriceComponentBuilder]
/// The price for a ChargeItem may be calculated as a base price with
/// surcharges/deductions that apply in certain conditions. A
/// ChargeItemDefinition resource that defines the prices, factors and
/// conditions that apply to a billing code is currently under development.
/// The priceComponent element can be used to offer transparency to the
/// recipient of the Invoice as to how the prices have been calculated.
class InvoicePriceComponentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InvoicePriceComponentBuilder]

  InvoicePriceComponentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.code,
    this.factor,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Invoice.lineItem.priceComponent',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InvoicePriceComponentBuilder.empty() =>
      InvoicePriceComponentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoicePriceComponentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Invoice.lineItem.priceComponent';
    return InvoicePriceComponentBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<InvoicePriceComponentTypeBuilder>(
        json,
        'type',
        InvoicePriceComponentTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'factor',
        FhirDecimalBuilder.fromJson,
        '$objectPath.factor',
      ),
      amount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'amount',
        MoneyBuilder.fromJson,
        '$objectPath.amount',
      ),
    );
  }

  /// Deserialize [InvoicePriceComponentBuilder]
  /// from a [String] or [YamlMap] object
  factory InvoicePriceComponentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InvoicePriceComponentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InvoicePriceComponentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InvoicePriceComponentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InvoicePriceComponentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoicePriceComponentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InvoicePriceComponentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InvoicePriceComponent';

  /// [type]
  /// This code identifies the type of the component.
  InvoicePriceComponentTypeBuilder? type;

  /// [code]
  /// A code that identifies the component. Codes may be used to
  /// differentiate between kinds of taxes, surcharges, discounts etc.
  CodeableConceptBuilder? code;

  /// [factor]
  /// The factor that has been applied on the base price for calculating this
  /// component.
  FhirDecimalBuilder? factor;

  /// [amount]
  /// The amount calculated for this component.
  MoneyBuilder? amount;

  /// Converts a InvoicePriceComponentBuilder to [InvoicePriceComponent]
  InvoicePriceComponent build() => InvoicePriceComponent.fromJson(toJson());

  /// Converts a [InvoicePriceComponentBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('code', code);
    addField('factor', factor);
    addField('amount', amount);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'code',
      'factor',
      'amount',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is InvoicePriceComponentTypeBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimalBuilder) {
            factor = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amount':
        {
          if (child is MoneyBuilder) {
            amount = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'factor':
        return ['FhirDecimalBuilder'];
      case 'amount':
        return ['MoneyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InvoicePriceComponentBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = InvoicePriceComponentTypeBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'factor':
        {
          factor = FhirDecimalBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = MoneyBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool code = false,
    bool factor = false,
    bool amount = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (code) this.code = null;
    if (factor) this.factor = null;
    if (amount) this.amount = null;
  }

  @override
  InvoicePriceComponentBuilder clone() => throw UnimplementedError();
  @override
  InvoicePriceComponentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    InvoicePriceComponentTypeBuilder? type,
    CodeableConceptBuilder? code,
    FhirDecimalBuilder? factor,
    MoneyBuilder? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InvoicePriceComponentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      code: code ?? this.code,
      factor: factor ?? this.factor,
      amount: amount ?? this.amount,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! InvoicePriceComponentBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    return true;
  }
}
