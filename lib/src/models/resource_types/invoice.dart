import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Invoice]
/// Invoice containing collected ChargeItems from an Account with
/// calculated individual and total price for Billing purpose.
class Invoice extends DomainResource {
  /// Primary constructor for
  /// [Invoice]

  const Invoice({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Invoice.empty() => Invoice(
        status: InvoiceStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Invoice.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Invoice';
    return Invoice(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<InvoiceStatus>(
        json,
        'status',
        InvoiceStatus.fromJson,
        '$objectPath.status',
      )!,
      cancelledReason: JsonParser.parsePrimitive<FhirString>(
        json,
        'cancelledReason',
        FhirString.fromJson,
        '$objectPath.cancelledReason',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      ),
      recipient: JsonParser.parseObject<Reference>(
        json,
        'recipient',
        Reference.fromJson,
        '$objectPath.recipient',
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<InvoiceParticipant>(
            (v) => InvoiceParticipant.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participant',
              },
            ),
          )
          .toList(),
      issuer: JsonParser.parseObject<Reference>(
        json,
        'issuer',
        Reference.fromJson,
        '$objectPath.issuer',
      ),
      account: JsonParser.parseObject<Reference>(
        json,
        'account',
        Reference.fromJson,
        '$objectPath.account',
      ),
      lineItem: (json['lineItem'] as List<dynamic>?)
          ?.map<InvoiceLineItem>(
            (v) => InvoiceLineItem.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.lineItem',
              },
            ),
          )
          .toList(),
      totalPriceComponent: (json['totalPriceComponent'] as List<dynamic>?)
          ?.map<InvoicePriceComponent>(
            (v) => InvoicePriceComponent.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.totalPriceComponent',
              },
            ),
          )
          .toList(),
      totalNet: JsonParser.parseObject<Money>(
        json,
        'totalNet',
        Money.fromJson,
        '$objectPath.totalNet',
      ),
      totalGross: JsonParser.parseObject<Money>(
        json,
        'totalGross',
        Money.fromJson,
        '$objectPath.totalGross',
      ),
      paymentTerms: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'paymentTerms',
        FhirMarkdown.fromJson,
        '$objectPath.paymentTerms',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Invoice]
  /// from a [String] or [YamlMap] object
  factory Invoice.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Invoice.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Invoice.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Invoice '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Invoice]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Invoice.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Invoice.fromJson(json);
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
  final List<Identifier>? identifier;

  /// [status]
  /// The current state of the Invoice.
  final InvoiceStatus status;

  /// [cancelledReason]
  /// In case of Invoice cancellation a reason must be given (entered in
  /// error, superseded by corrected invoice etc.).
  final FhirString? cancelledReason;

  /// [type]
  /// Type of Invoice depending on domain, realm an usage (e.g.
  /// internal/external, dental, preliminary).
  final CodeableConcept? type;

  /// [subject]
  /// The individual or set of individuals receiving the goods and services
  /// billed in this invoice.
  final Reference? subject;

  /// [recipient]
  /// The individual or Organization responsible for balancing of this
  /// invoice.
  final Reference? recipient;

  /// [date]
  /// Date/time(s) of when this Invoice was posted.
  final FhirDateTime? date;

  /// [participant]
  /// Indicates who or what performed or participated in the charged service.
  final List<InvoiceParticipant>? participant;

  /// [issuer]
  /// The organizationissuing the Invoice.
  final Reference? issuer;

  /// [account]
  /// Account which is supposed to be balanced with this Invoice.
  final Reference? account;

  /// [lineItem]
  /// Each line item represents one charge for goods and services rendered.
  /// Details such as date, code and amount are found in the referenced
  /// ChargeItem resource.
  final List<InvoiceLineItem>? lineItem;

  /// [totalPriceComponent]
  /// The total amount for the Invoice may be calculated as the sum of the
  /// line items with surcharges/deductions that apply in certain conditions.
  /// The priceComponent element can be used to offer transparency to the
  /// recipient of the Invoice of how the total price was calculated.
  final List<InvoicePriceComponent>? totalPriceComponent;

  /// [totalNet]
  /// Invoice total , taxes excluded.
  final Money? totalNet;

  /// [totalGross]
  /// Invoice total, tax included.
  final Money? totalGross;

  /// [paymentTerms]
  /// Payment details such as banking details, period of payment,
  /// deductibles, methods of payment.
  final FhirMarkdown? paymentTerms;

  /// [note]
  /// Comments made about the invoice by the issuer, subject, or other
  /// participants.
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(status);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is InvoiceStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'cancelledReason':
        {
          if (child is FhirString) {
            return copyWith(cancelledReason: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subject':
        {
          if (child is Reference) {
            return copyWith(subject: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'recipient':
        {
          if (child is Reference) {
            return copyWith(recipient: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'participant':
        {
          if (child is List<InvoiceParticipant>) {
            return copyWith(participant: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'issuer':
        {
          if (child is Reference) {
            return copyWith(issuer: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'account':
        {
          if (child is Reference) {
            return copyWith(account: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'lineItem':
        {
          if (child is List<InvoiceLineItem>) {
            return copyWith(lineItem: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'totalPriceComponent':
        {
          if (child is List<InvoicePriceComponent>) {
            return copyWith(totalPriceComponent: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'totalNet':
        {
          if (child is Money) {
            return copyWith(totalNet: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'totalGross':
        {
          if (child is Money) {
            return copyWith(totalGross: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'paymentTerms':
        {
          if (child is FhirMarkdown) {
            return copyWith(paymentTerms: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            return copyWith(note: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'status':
        return ['FhirCode'];
      case 'cancelledReason':
        return ['FhirString'];
      case 'type':
        return ['CodeableConcept'];
      case 'subject':
        return ['Reference'];
      case 'recipient':
        return ['Reference'];
      case 'date':
        return ['FhirDateTime'];
      case 'participant':
        return ['InvoiceParticipant'];
      case 'issuer':
        return ['Reference'];
      case 'account':
        return ['Reference'];
      case 'lineItem':
        return ['InvoiceLineItem'];
      case 'totalPriceComponent':
        return ['InvoicePriceComponent'];
      case 'totalNet':
        return ['Money'];
      case 'totalGross':
        return ['Money'];
      case 'paymentTerms':
        return ['FhirMarkdown'];
      case 'note':
        return ['Annotation'];
      default:
        return <String>[];
    }
  }

  @override
  Invoice clone() => throw UnimplementedError();
  @override
  Invoice copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    InvoiceStatus? status,
    FhirString? cancelledReason,
    CodeableConcept? type,
    Reference? subject,
    Reference? recipient,
    FhirDateTime? date,
    List<InvoiceParticipant>? participant,
    Reference? issuer,
    Reference? account,
    List<InvoiceLineItem>? lineItem,
    List<InvoicePriceComponent>? totalPriceComponent,
    Money? totalNet,
    Money? totalGross,
    FhirMarkdown? paymentTerms,
    List<Annotation>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Invoice(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      cancelledReason: cancelledReason?.copyWith(
            objectPath: '$newObjectPath.cancelledReason',
          ) ??
          this.cancelledReason,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      recipient: recipient?.copyWith(
            objectPath: '$newObjectPath.recipient',
          ) ??
          this.recipient,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      participant: participant
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.participant',
                ),
              )
              .toList() ??
          this.participant,
      issuer: issuer?.copyWith(
            objectPath: '$newObjectPath.issuer',
          ) ??
          this.issuer,
      account: account?.copyWith(
            objectPath: '$newObjectPath.account',
          ) ??
          this.account,
      lineItem: lineItem
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.lineItem',
                ),
              )
              .toList() ??
          this.lineItem,
      totalPriceComponent: totalPriceComponent
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.totalPriceComponent',
                ),
              )
              .toList() ??
          this.totalPriceComponent,
      totalNet: totalNet?.copyWith(
            objectPath: '$newObjectPath.totalNet',
          ) ??
          this.totalNet,
      totalGross: totalGross?.copyWith(
            objectPath: '$newObjectPath.totalGross',
          ) ??
          this.totalGross,
      paymentTerms: paymentTerms?.copyWith(
            objectPath: '$newObjectPath.paymentTerms',
          ) ??
          this.paymentTerms,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Invoice) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(cancelledReason, o.cancelledReason)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(subject, o.subject)) {
      return false;
    }
    if (!equalsDeepWithNull(recipient, o.recipient)) {
      return false;
    }
    if (!equalsDeepWithNull(date, o.date)) {
      return false;
    }
    if (!listEquals<InvoiceParticipant>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(issuer, o.issuer)) {
      return false;
    }
    if (!equalsDeepWithNull(account, o.account)) {
      return false;
    }
    if (!listEquals<InvoiceLineItem>(
      lineItem,
      o.lineItem,
    )) {
      return false;
    }
    if (!listEquals<InvoicePriceComponent>(
      totalPriceComponent,
      o.totalPriceComponent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(totalNet, o.totalNet)) {
      return false;
    }
    if (!equalsDeepWithNull(totalGross, o.totalGross)) {
      return false;
    }
    if (!equalsDeepWithNull(paymentTerms, o.paymentTerms)) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [InvoiceParticipant]
/// Indicates who or what performed or participated in the charged service.
class InvoiceParticipant extends BackboneElement {
  /// Primary constructor for
  /// [InvoiceParticipant]

  const InvoiceParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    required this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Invoice.participant',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory InvoiceParticipant.empty() => InvoiceParticipant(
        actor: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoiceParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Invoice.participant';
    return InvoiceParticipant(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
        '$objectPath.role',
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
        '$objectPath.actor',
      )!,
    );
  }

  /// Deserialize [InvoiceParticipant]
  /// from a [String] or [YamlMap] object
  factory InvoiceParticipant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InvoiceParticipant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InvoiceParticipant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InvoiceParticipant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InvoiceParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoiceParticipant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InvoiceParticipant.fromJson(json);
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
  final CodeableConcept? role;

  /// [actor]
  /// The device, practitioner, etc. who performed or participated in the
  /// service.
  final Reference actor;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(actor);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'role':
        {
          if (child is CodeableConcept) {
            return copyWith(role: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'actor':
        {
          if (child is Reference) {
            return copyWith(actor: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'role':
        return ['CodeableConcept'];
      case 'actor':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  @override
  InvoiceParticipant clone() => throw UnimplementedError();
  @override
  InvoiceParticipant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? role,
    Reference? actor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return InvoiceParticipant(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      role: role?.copyWith(
            objectPath: '$newObjectPath.role',
          ) ??
          this.role,
      actor: actor?.copyWith(
            objectPath: '$newObjectPath.actor',
          ) ??
          this.actor,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InvoiceParticipant) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(role, o.role)) {
      return false;
    }
    if (!equalsDeepWithNull(actor, o.actor)) {
      return false;
    }
    return true;
  }
}

/// [InvoiceLineItem]
/// Each line item represents one charge for goods and services rendered.
/// Details such as date, code and amount are found in the referenced
/// ChargeItem resource.
class InvoiceLineItem extends BackboneElement {
  /// Primary constructor for
  /// [InvoiceLineItem]

  const InvoiceLineItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    required this.chargeItemX,
    this.priceComponent,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Invoice.lineItem',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory InvoiceLineItem.empty() => InvoiceLineItem(
        chargeItemX: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoiceLineItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Invoice.lineItem';
    return InvoiceLineItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
        '$objectPath.sequence',
      ),
      chargeItemX: JsonParser.parsePolymorphic<ChargeItemXInvoiceLineItem>(
        json,
        {
          'chargeItemReference': Reference.fromJson,
          'chargeItemCodeableConcept': CodeableConcept.fromJson,
        },
        objectPath,
      )!,
      priceComponent: (json['priceComponent'] as List<dynamic>?)
          ?.map<InvoicePriceComponent>(
            (v) => InvoicePriceComponent.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.priceComponent',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InvoiceLineItem]
  /// from a [String] or [YamlMap] object
  factory InvoiceLineItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InvoiceLineItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InvoiceLineItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InvoiceLineItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InvoiceLineItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoiceLineItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InvoiceLineItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InvoiceLineItem';

  /// [sequence]
  /// Sequence in which the items appear on the invoice.
  final FhirPositiveInt? sequence;

  /// [chargeItemX]
  /// The ChargeItem contains information such as the billing code, date,
  /// amount etc. If no further details are required for the lineItem, inline
  /// billing codes can be added using the CodeableConcept data type instead
  /// of the Reference.
  final ChargeItemXInvoiceLineItem chargeItemX;

  /// Getter for [chargeItemReference] as a Reference
  Reference? get chargeItemReference => chargeItemX.isAs<Reference>();

  /// Getter for [chargeItemCodeableConcept] as a CodeableConcept
  CodeableConcept? get chargeItemCodeableConcept =>
      chargeItemX.isAs<CodeableConcept>();

  /// [priceComponent]
  /// The price for a ChargeItem may be calculated as a base price with
  /// surcharges/deductions that apply in certain conditions. A
  /// ChargeItemDefinition resource that defines the prices, factors and
  /// conditions that apply to a billing code is currently under development.
  /// The priceComponent element can be used to offer transparency to the
  /// recipient of the Invoice as to how the prices have been calculated.
  final List<InvoicePriceComponent>? priceComponent;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('sequence', sequence);
    final chargeItemXFhirType = chargeItemX.fhirType;
    addField('chargeItem${chargeItemXFhirType.capitalize()}', chargeItemX);

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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(chargeItemX);
      case 'chargeItemX':
        fields.add(chargeItemX);
      case 'chargeItemReference':
        if (chargeItemX is Reference) {
          fields.add(chargeItemX);
        }
      case 'chargeItemCodeableConcept':
        if (chargeItemX is CodeableConcept) {
          fields.add(chargeItemX);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(sequence: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'chargeItemX':
        {
          if (child is ChargeItemXInvoiceLineItem) {
            // child is e.g. SubjectX union
            return copyWith(chargeItemX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'chargeItemReference':
        {
          if (child is Reference) {
            return copyWith(chargeItemX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'chargeItemCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(chargeItemX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'priceComponent':
        {
          if (child is List<InvoicePriceComponent>) {
            return copyWith(priceComponent: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'sequence':
        return ['FhirPositiveInt'];
      case 'chargeItem':
      case 'chargeItemX':
        return ['Reference', 'CodeableConcept'];
      case 'chargeItemReference':
        return ['Reference'];
      case 'chargeItemCodeableConcept':
        return ['CodeableConcept'];
      case 'priceComponent':
        return ['InvoicePriceComponent'];
      default:
        return <String>[];
    }
  }

  @override
  InvoiceLineItem clone() => throw UnimplementedError();
  @override
  InvoiceLineItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    ChargeItemXInvoiceLineItem? chargeItemX,
    List<InvoicePriceComponent>? priceComponent,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return InvoiceLineItem(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      sequence: sequence?.copyWith(
            objectPath: '$newObjectPath.sequence',
          ) ??
          this.sequence,
      chargeItemX: chargeItemX?.copyWith(
            objectPath: '$newObjectPath.chargeItemX',
          ) as ChargeItemXInvoiceLineItem? ??
          this.chargeItemX,
      priceComponent: priceComponent
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.priceComponent',
                ),
              )
              .toList() ??
          this.priceComponent,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InvoiceLineItem) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(sequence, o.sequence)) {
      return false;
    }
    if (!equalsDeepWithNull(chargeItemX, o.chargeItemX)) {
      return false;
    }
    if (!listEquals<InvoicePriceComponent>(
      priceComponent,
      o.priceComponent,
    )) {
      return false;
    }
    return true;
  }
}

/// [InvoicePriceComponent]
/// The price for a ChargeItem may be calculated as a base price with
/// surcharges/deductions that apply in certain conditions. A
/// ChargeItemDefinition resource that defines the prices, factors and
/// conditions that apply to a billing code is currently under development.
/// The priceComponent element can be used to offer transparency to the
/// recipient of the Invoice as to how the prices have been calculated.
class InvoicePriceComponent extends BackboneElement {
  /// Primary constructor for
  /// [InvoicePriceComponent]

  const InvoicePriceComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.code,
    this.factor,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Invoice.lineItem.priceComponent',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory InvoicePriceComponent.empty() => InvoicePriceComponent(
        type: InvoicePriceComponentType.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoicePriceComponent.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Invoice.lineItem.priceComponent';
    return InvoicePriceComponent(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<InvoicePriceComponentType>(
        json,
        'type',
        InvoicePriceComponentType.fromJson,
        '$objectPath.type',
      )!,
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
        '$objectPath.factor',
      ),
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
        '$objectPath.amount',
      ),
    );
  }

  /// Deserialize [InvoicePriceComponent]
  /// from a [String] or [YamlMap] object
  factory InvoicePriceComponent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InvoicePriceComponent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InvoicePriceComponent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InvoicePriceComponent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InvoicePriceComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoicePriceComponent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InvoicePriceComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InvoicePriceComponent';

  /// [type]
  /// This code identifies the type of the component.
  final InvoicePriceComponentType type;

  /// [code]
  /// A code that identifies the component. Codes may be used to
  /// differentiate between kinds of taxes, surcharges, discounts etc.
  final CodeableConcept? code;

  /// [factor]
  /// The factor that has been applied on the base price for calculating this
  /// component.
  final FhirDecimal? factor;

  /// [amount]
  /// The amount calculated for this component.
  final Money? amount;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(type);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is InvoicePriceComponentType) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimal) {
            return copyWith(factor: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'amount':
        {
          if (child is Money) {
            return copyWith(amount: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['FhirCode'];
      case 'code':
        return ['CodeableConcept'];
      case 'factor':
        return ['FhirDecimal'];
      case 'amount':
        return ['Money'];
      default:
        return <String>[];
    }
  }

  @override
  InvoicePriceComponent clone() => throw UnimplementedError();
  @override
  InvoicePriceComponent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    InvoicePriceComponentType? type,
    CodeableConcept? code,
    FhirDecimal? factor,
    Money? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return InvoicePriceComponent(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      factor: factor?.copyWith(
            objectPath: '$newObjectPath.factor',
          ) ??
          this.factor,
      amount: amount?.copyWith(
            objectPath: '$newObjectPath.amount',
          ) ??
          this.amount,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InvoicePriceComponent) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(factor, o.factor)) {
      return false;
    }
    if (!equalsDeepWithNull(amount, o.amount)) {
      return false;
    }
    return true;
  }
}
