import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ChargeItem]
/// The resource ChargeItem describes the provision of healthcare provider
/// products for a certain patient, therefore referring not only to the
/// product, but containing in addition details of the provision, like
/// date, time, amounts and participating organizations and persons. Main
/// Usage of the ChargeItem is to enable the billing process and internal
/// cost allocation.
class ChargeItem extends DomainResource {
  /// Primary constructor for
  /// [ChargeItem]

  const ChargeItem({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.definitionUri,
    this.definitionCanonical,
    required this.status,
    this.partOf,
    required this.code,
    required this.subject,
    this.context,
    this.occurrenceX,
    this.performer,
    this.performingOrganization,
    this.requestingOrganization,
    this.costCenter,
    this.quantity,
    this.bodysite,
    this.factorOverride,
    this.priceOverride,
    this.overrideReason,
    this.enterer,
    this.enteredDate,
    this.reason,
    this.service,
    this.productX,
    this.account,
    this.note,
    this.supportingInformation,
  }) : super(
          objectPath: 'ChargeItem',
          resourceType: R4ResourceType.ChargeItem,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ChargeItem';
    return ChargeItem(
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
      definitionUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'definitionUri',
        FhirUri.fromJson,
        '$objectPath.definitionUri',
      ),
      definitionCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'definitionCanonical',
        FhirCanonical.fromJson,
        '$objectPath.definitionCanonical',
      ),
      status: JsonParser.parsePrimitive<ChargeItemStatus>(
        json,
        'status',
        ChargeItemStatus.fromJson,
        '$objectPath.status',
      )!,
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      )!,
      context: JsonParser.parseObject<Reference>(
        json,
        'context',
        Reference.fromJson,
        '$objectPath.context',
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXChargeItem>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
          'occurrenceTiming': Timing.fromJson,
        },
        objectPath,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ChargeItemPerformer>(
            (v) => ChargeItemPerformer.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      performingOrganization: JsonParser.parseObject<Reference>(
        json,
        'performingOrganization',
        Reference.fromJson,
        '$objectPath.performingOrganization',
      ),
      requestingOrganization: JsonParser.parseObject<Reference>(
        json,
        'requestingOrganization',
        Reference.fromJson,
        '$objectPath.requestingOrganization',
      ),
      costCenter: JsonParser.parseObject<Reference>(
        json,
        'costCenter',
        Reference.fromJson,
        '$objectPath.costCenter',
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      bodysite: (json['bodysite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.bodysite',
              },
            ),
          )
          .toList(),
      factorOverride: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factorOverride',
        FhirDecimal.fromJson,
        '$objectPath.factorOverride',
      ),
      priceOverride: JsonParser.parseObject<Money>(
        json,
        'priceOverride',
        Money.fromJson,
        '$objectPath.priceOverride',
      ),
      overrideReason: JsonParser.parsePrimitive<FhirString>(
        json,
        'overrideReason',
        FhirString.fromJson,
        '$objectPath.overrideReason',
      ),
      enterer: JsonParser.parseObject<Reference>(
        json,
        'enterer',
        Reference.fromJson,
        '$objectPath.enterer',
      ),
      enteredDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'enteredDate',
        FhirDateTime.fromJson,
        '$objectPath.enteredDate',
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
              },
            ),
          )
          .toList(),
      service: (json['service'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.service',
              },
            ),
          )
          .toList(),
      productX: JsonParser.parsePolymorphic<ProductXChargeItem>(
        json,
        {
          'productReference': Reference.fromJson,
          'productCodeableConcept': CodeableConcept.fromJson,
        },
        objectPath,
      ),
      account: (json['account'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.account',
              },
            ),
          )
          .toList(),
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
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInformation',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ChargeItem]
  /// from a [String] or [YamlMap] object
  factory ChargeItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ChargeItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ChargeItem';

  /// [identifier]
  /// Identifiers assigned to this event performer or other systems.
  final List<Identifier>? identifier;

  /// [definitionUri]
  /// References the (external) source of pricing information, rules of
  /// application for the code this ChargeItem uses.
  final List<FhirUri>? definitionUri;

  /// [definitionCanonical]
  /// References the source of pricing information, rules of application for
  /// the code this ChargeItem uses.
  final List<FhirCanonical>? definitionCanonical;

  /// [status]
  /// The current state of the ChargeItem.
  final ChargeItemStatus status;

  /// [partOf]
  /// ChargeItems can be grouped to larger ChargeItems covering the whole
  /// set.
  final List<Reference>? partOf;

  /// [code]
  /// A code that identifies the charge, like a billing code.
  final CodeableConcept code;

  /// [subject]
  /// The individual or set of individuals the action is being or was
  /// performed on.
  final Reference subject;

  /// [context]
  /// The encounter or episode of care that establishes the context for this
  /// event.
  final Reference? context;

  /// [occurrenceX]
  /// Date/time(s) or duration when the charged service was applied.
  final OccurrenceXChargeItem? occurrenceX;

  /// [performer]
  /// Indicates who or what performed or participated in the charged service.
  final List<ChargeItemPerformer>? performer;

  /// [performingOrganization]
  /// The organization requesting the service.
  final Reference? performingOrganization;

  /// [requestingOrganization]
  /// The organization performing the service.
  final Reference? requestingOrganization;

  /// [costCenter]
  /// The financial cost center permits the tracking of charge attribution.
  final Reference? costCenter;

  /// [quantity]
  /// Quantity of which the charge item has been serviced.
  final Quantity? quantity;

  /// [bodysite]
  /// The anatomical location where the related service has been applied.
  final List<CodeableConcept>? bodysite;

  /// [factorOverride]
  /// Factor overriding the factor determined by the rules associated with
  /// the code.
  final FhirDecimal? factorOverride;

  /// [priceOverride]
  /// Total price of the charge overriding the list price associated with the
  /// code.
  final Money? priceOverride;

  /// [overrideReason]
  /// If the list price or the rule-based factor associated with the code is
  /// overridden, this attribute can capture a text to indicate the reason
  /// for this action.
  final FhirString? overrideReason;

  /// [enterer]
  /// The device, practitioner, etc. who entered the charge item.
  final Reference? enterer;

  /// [enteredDate]
  /// Date the charge item was entered.
  final FhirDateTime? enteredDate;

  /// [reason]
  /// Describes why the event occurred in coded or textual form.
  final List<CodeableConcept>? reason;

  /// [service]
  /// Indicated the rendered service that caused this charge.
  final List<Reference>? service;

  /// [productX]
  /// Identifies the device, food, drug or other product being charged either
  /// by type code or reference to an instance.
  final ProductXChargeItem? productX;

  /// [account]
  /// Account into which this ChargeItems belongs.
  final List<Reference>? account;

  /// [note]
  /// Comments made about the event by the performer, subject or other
  /// participants.
  final List<Annotation>? note;

  /// [supportingInformation]
  /// Further information supporting this charge.
  final List<Reference>? supportingInformation;
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
    addField('definitionUri', definitionUri);
    addField('definitionCanonical', definitionCanonical);
    addField('status', status);
    addField('partOf', partOf);
    addField('code', code);
    addField('subject', subject);
    addField('context', context);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalize()}', occurrenceX);
    }

    addField('performer', performer);
    addField('performingOrganization', performingOrganization);
    addField('requestingOrganization', requestingOrganization);
    addField('costCenter', costCenter);
    addField('quantity', quantity);
    addField('bodysite', bodysite);
    addField('factorOverride', factorOverride);
    addField('priceOverride', priceOverride);
    addField('overrideReason', overrideReason);
    addField('enterer', enterer);
    addField('enteredDate', enteredDate);
    addField('reason', reason);
    addField('service', service);
    if (productX != null) {
      final fhirType = productX!.fhirType;
      addField('product${fhirType.capitalize()}', productX);
    }

    addField('account', account);
    addField('note', note);
    addField('supportingInformation', supportingInformation);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
      'definitionUri',
      'definitionCanonical',
      'status',
      'partOf',
      'code',
      'subject',
      'context',
      'occurrenceX',
      'performer',
      'performingOrganization',
      'requestingOrganization',
      'costCenter',
      'quantity',
      'bodysite',
      'factorOverride',
      'priceOverride',
      'overrideReason',
      'enterer',
      'enteredDate',
      'reason',
      'service',
      'productX',
      'account',
      'note',
      'supportingInformation',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'definitionUri':
        if (definitionUri != null) {
          fields.addAll(definitionUri!);
        }
      case 'definitionCanonical':
        if (definitionCanonical != null) {
          fields.addAll(definitionCanonical!);
        }
      case 'status':
        fields.add(status);
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'code':
        fields.add(code);
      case 'subject':
        fields.add(subject);
      case 'context':
        if (context != null) {
          fields.add(context!);
        }
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTime) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is Period) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceTiming':
        if (occurrenceX is Timing) {
          fields.add(occurrenceX!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'performingOrganization':
        if (performingOrganization != null) {
          fields.add(performingOrganization!);
        }
      case 'requestingOrganization':
        if (requestingOrganization != null) {
          fields.add(requestingOrganization!);
        }
      case 'costCenter':
        if (costCenter != null) {
          fields.add(costCenter!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'bodysite':
        if (bodysite != null) {
          fields.addAll(bodysite!);
        }
      case 'factorOverride':
        if (factorOverride != null) {
          fields.add(factorOverride!);
        }
      case 'priceOverride':
        if (priceOverride != null) {
          fields.add(priceOverride!);
        }
      case 'overrideReason':
        if (overrideReason != null) {
          fields.add(overrideReason!);
        }
      case 'enterer':
        if (enterer != null) {
          fields.add(enterer!);
        }
      case 'enteredDate':
        if (enteredDate != null) {
          fields.add(enteredDate!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'service':
        if (service != null) {
          fields.addAll(service!);
        }
      case 'productReference':
        if (productX is Reference) {
          fields.add(productX!);
        }
      case 'productCodeableConcept':
        if (productX is CodeableConcept) {
          fields.add(productX!);
        }
      case 'account':
        if (account != null) {
          fields.addAll(account!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ChargeItem clone() => throw UnimplementedError();
  @override
  ChargeItem copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirUri>? definitionUri,
    List<FhirCanonical>? definitionCanonical,
    ChargeItemStatus? status,
    List<Reference>? partOf,
    CodeableConcept? code,
    Reference? subject,
    Reference? context,
    OccurrenceXChargeItem? occurrenceX,
    List<ChargeItemPerformer>? performer,
    Reference? performingOrganization,
    Reference? requestingOrganization,
    Reference? costCenter,
    Quantity? quantity,
    List<CodeableConcept>? bodysite,
    FhirDecimal? factorOverride,
    Money? priceOverride,
    FhirString? overrideReason,
    Reference? enterer,
    FhirDateTime? enteredDate,
    List<CodeableConcept>? reason,
    List<Reference>? service,
    ProductXChargeItem? productX,
    List<Reference>? account,
    List<Annotation>? note,
    List<Reference>? supportingInformation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return ChargeItem(
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
      definitionUri: definitionUri
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.definitionUri',
                ),
              )
              .toList() ??
          this.definitionUri,
      definitionCanonical: definitionCanonical
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.definitionCanonical',
                ),
              )
              .toList() ??
          this.definitionCanonical,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      partOf: partOf
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.partOf',
                ),
              )
              .toList() ??
          this.partOf,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      context: context?.copyWith(
            objectPath: '$newObjectPath.context',
          ) ??
          this.context,
      occurrenceX: occurrenceX?.copyWith(
            objectPath: '$newObjectPath.occurrenceX',
          ) as OccurrenceXChargeItem? ??
          this.occurrenceX,
      performer: performer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.performer',
                ),
              )
              .toList() ??
          this.performer,
      performingOrganization: performingOrganization?.copyWith(
            objectPath: '$newObjectPath.performingOrganization',
          ) ??
          this.performingOrganization,
      requestingOrganization: requestingOrganization?.copyWith(
            objectPath: '$newObjectPath.requestingOrganization',
          ) ??
          this.requestingOrganization,
      costCenter: costCenter?.copyWith(
            objectPath: '$newObjectPath.costCenter',
          ) ??
          this.costCenter,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      bodysite: bodysite
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.bodysite',
                ),
              )
              .toList() ??
          this.bodysite,
      factorOverride: factorOverride?.copyWith(
            objectPath: '$newObjectPath.factorOverride',
          ) ??
          this.factorOverride,
      priceOverride: priceOverride?.copyWith(
            objectPath: '$newObjectPath.priceOverride',
          ) ??
          this.priceOverride,
      overrideReason: overrideReason?.copyWith(
            objectPath: '$newObjectPath.overrideReason',
          ) ??
          this.overrideReason,
      enterer: enterer?.copyWith(
            objectPath: '$newObjectPath.enterer',
          ) ??
          this.enterer,
      enteredDate: enteredDate?.copyWith(
            objectPath: '$newObjectPath.enteredDate',
          ) ??
          this.enteredDate,
      reason: reason
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reason',
                ),
              )
              .toList() ??
          this.reason,
      service: service
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.service',
                ),
              )
              .toList() ??
          this.service,
      productX: productX?.copyWith(
            objectPath: '$newObjectPath.productX',
          ) as ProductXChargeItem? ??
          this.productX,
      account: account
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.account',
                ),
              )
              .toList() ??
          this.account,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      supportingInformation: supportingInformation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportingInformation',
                ),
              )
              .toList() ??
          this.supportingInformation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ChargeItem) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (id != o.id) {
      return false;
    }
    if (meta != o.meta) {
      return false;
    }
    if (implicitRules != o.implicitRules) {
      return false;
    }
    if (language != o.language) {
      return false;
    }
    if (text != o.text) {
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
    if (!listEquals<FhirUri>(
      definitionUri,
      o.definitionUri,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      definitionCanonical,
      o.definitionCanonical,
    )) {
      return false;
    }
    if (status != o.status) {
      return false;
    }
    if (!listEquals<Reference>(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (code != o.code) {
      return false;
    }
    if (subject != o.subject) {
      return false;
    }
    if (context != o.context) {
      return false;
    }
    if (occurrenceX != o.occurrenceX) {
      return false;
    }
    if (!listEquals<ChargeItemPerformer>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (performingOrganization != o.performingOrganization) {
      return false;
    }
    if (requestingOrganization != o.requestingOrganization) {
      return false;
    }
    if (costCenter != o.costCenter) {
      return false;
    }
    if (quantity != o.quantity) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      bodysite,
      o.bodysite,
    )) {
      return false;
    }
    if (factorOverride != o.factorOverride) {
      return false;
    }
    if (priceOverride != o.priceOverride) {
      return false;
    }
    if (overrideReason != o.overrideReason) {
      return false;
    }
    if (enterer != o.enterer) {
      return false;
    }
    if (enteredDate != o.enteredDate) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      service,
      o.service,
    )) {
      return false;
    }
    if (productX != o.productX) {
      return false;
    }
    if (!listEquals<Reference>(
      account,
      o.account,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      supportingInformation,
      o.supportingInformation,
    )) {
      return false;
    }
    return true;
  }
}

/// [ChargeItemPerformer]
/// Indicates who or what performed or participated in the charged service.
class ChargeItemPerformer extends BackboneElement {
  /// Primary constructor for
  /// [ChargeItemPerformer]

  const ChargeItemPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ChargeItem.performer',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemPerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ChargeItem.performer';
    return ChargeItemPerformer(
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
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
        '$objectPath.function',
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
        '$objectPath.actor',
      )!,
    );
  }

  /// Deserialize [ChargeItemPerformer]
  /// from a [String] or [YamlMap] object
  factory ChargeItemPerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItemPerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItemPerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItemPerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItemPerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemPerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ChargeItemPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemPerformer';

  /// [function_]
  /// Describes the type of performance or participation(e.g. primary
  /// surgeon, anesthesiologiest, etc.).
  final CodeableConcept? function_;

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
    addField('function', function_);
    addField('actor', actor);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'function',
      'actor',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ChargeItemPerformer clone() => throw UnimplementedError();
  @override
  ChargeItemPerformer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ChargeItemPerformer(
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
      function_: function_?.copyWith(
            objectPath: '$newObjectPath.function',
          ) ??
          this.function_,
      actor: actor?.copyWith(
            objectPath: '$newObjectPath.actor',
          ) ??
          this.actor,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ChargeItemPerformer) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (id != o.id) {
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
    if (function_ != o.function_) {
      return false;
    }
    if (actor != o.actor) {
      return false;
    }
    return true;
  }
}
