import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [RegulatedAuthorization]
/// Regulatory approval, clearance or licencing related to a regulated
/// product, treatment, facility or activity that is cited in a guidance,
/// regulation, rule or legislative act. An example is Market Authorization
/// relating to a Medicinal Product.
class RegulatedAuthorization extends DomainResource {
  /// Primary constructor for
  /// [RegulatedAuthorization]

  const RegulatedAuthorization({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.subject,
    this.type,
    this.description,
    this.region,
    this.status,
    this.statusDate,
    this.validityPeriod,
    this.indication,
    this.intendedUse,
    this.basis,
    this.holder,
    this.regulator,
    this.case_,
  }) : super(
          objectPath: 'RegulatedAuthorization',
          resourceType: R4ResourceType.RegulatedAuthorization,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory RegulatedAuthorization.empty() => const RegulatedAuthorization();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RegulatedAuthorization.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RegulatedAuthorization';
    return RegulatedAuthorization(
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
      subject: (json['subject'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subject',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
      ),
      region: (json['region'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.region',
              },
            ),
          )
          .toList(),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
        '$objectPath.status',
      ),
      statusDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'statusDate',
        FhirDateTime.fromJson,
        '$objectPath.statusDate',
      ),
      validityPeriod: JsonParser.parseObject<Period>(
        json,
        'validityPeriod',
        Period.fromJson,
        '$objectPath.validityPeriod',
      ),
      indication: JsonParser.parseObject<CodeableReference>(
        json,
        'indication',
        CodeableReference.fromJson,
        '$objectPath.indication',
      ),
      intendedUse: JsonParser.parseObject<CodeableConcept>(
        json,
        'intendedUse',
        CodeableConcept.fromJson,
        '$objectPath.intendedUse',
      ),
      basis: (json['basis'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basis',
              },
            ),
          )
          .toList(),
      holder: JsonParser.parseObject<Reference>(
        json,
        'holder',
        Reference.fromJson,
        '$objectPath.holder',
      ),
      regulator: JsonParser.parseObject<Reference>(
        json,
        'regulator',
        Reference.fromJson,
        '$objectPath.regulator',
      ),
      case_: JsonParser.parseObject<RegulatedAuthorizationCase>(
        json,
        'case',
        RegulatedAuthorizationCase.fromJson,
        '$objectPath.case',
      ),
    );
  }

  /// Deserialize [RegulatedAuthorization]
  /// from a [String] or [YamlMap] object
  factory RegulatedAuthorization.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RegulatedAuthorization.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RegulatedAuthorization.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RegulatedAuthorization '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RegulatedAuthorization]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RegulatedAuthorization.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RegulatedAuthorization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RegulatedAuthorization';

  /// [identifier]
  /// Business identifier for the authorization, typically assigned by the
  /// authorizing body.
  final List<Identifier>? identifier;

  /// [subject]
  /// The product type, treatment, facility or activity that is being
  /// authorized.
  final List<Reference>? subject;

  /// [type]
  /// Overall type of this authorization, for example drug marketing
  /// approval, orphan drug designation.
  final CodeableConcept? type;

  /// [description]
  /// General textual supporting information.
  final FhirMarkdown? description;

  /// [region]
  /// The territory (e.g., country, jurisdiction etc.) in which the
  /// authorization has been granted.
  final List<CodeableConcept>? region;

  /// [status]
  /// The status that is authorised e.g. approved. Intermediate states and
  /// actions can be tracked with cases and applications.
  final CodeableConcept? status;

  /// [statusDate]
  /// The date at which the current status was assigned.
  final FhirDateTime? statusDate;

  /// [validityPeriod]
  /// The time period in which the regulatory approval, clearance or
  /// licencing is in effect. As an example, a Marketing Authorization
  /// includes the date of authorization and/or an expiration date.
  final Period? validityPeriod;

  /// [indication]
  /// Condition for which the use of the regulated product applies.
  final CodeableReference? indication;

  /// [intendedUse]
  /// The intended use of the product, e.g. prevention, treatment, diagnosis.
  final CodeableConcept? intendedUse;

  /// [basis]
  /// The legal or regulatory framework against which this authorization is
  /// granted, or other reasons for it.
  final List<CodeableConcept>? basis;

  /// [holder]
  /// The organization that has been granted this authorization, by some
  /// authoritative body (the 'regulator').
  final Reference? holder;

  /// [regulator]
  /// The regulatory authority or authorizing body granting the
  /// authorization. For example, European Medicines Agency (EMA), Food and
  /// Drug Administration (FDA), Health Canada (HC), etc.
  final Reference? regulator;

  /// [case_]
  /// The case or regulatory procedure for granting or amending a regulated
  /// authorization. An authorization is granted in response to
  /// submissions/applications by those seeking authorization. A case is the
  /// administrative process that deals with the application(s) that relate
  /// to this and assesses them. Note: This area is subject to ongoing review
  /// and the workgroup is seeking implementer feedback on its use (see link
  /// at bottom of page).
  final RegulatedAuthorizationCase? case_;
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
    addField('subject', subject);
    addField('type', type);
    addField('description', description);
    addField('region', region);
    addField('status', status);
    addField('statusDate', statusDate);
    addField('validityPeriod', validityPeriod);
    addField('indication', indication);
    addField('intendedUse', intendedUse);
    addField('basis', basis);
    addField('holder', holder);
    addField('regulator', regulator);
    addField('case', case_);
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
      'subject',
      'type',
      'description',
      'region',
      'status',
      'statusDate',
      'validityPeriod',
      'indication',
      'intendedUse',
      'basis',
      'holder',
      'regulator',
      'case',
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
      case 'subject':
        if (subject != null) {
          fields.addAll(subject!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'region':
        if (region != null) {
          fields.addAll(region!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusDate':
        if (statusDate != null) {
          fields.add(statusDate!);
        }
      case 'validityPeriod':
        if (validityPeriod != null) {
          fields.add(validityPeriod!);
        }
      case 'indication':
        if (indication != null) {
          fields.add(indication!);
        }
      case 'intendedUse':
        if (intendedUse != null) {
          fields.add(intendedUse!);
        }
      case 'basis':
        if (basis != null) {
          fields.addAll(basis!);
        }
      case 'holder':
        if (holder != null) {
          fields.add(holder!);
        }
      case 'regulator':
        if (regulator != null) {
          fields.add(regulator!);
        }
      case 'case':
        if (case_ != null) {
          fields.add(case_!);
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
      case 'subject':
        {
          if (child is List<Reference>) {
            return copyWith(subject: child);
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
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'region':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(region: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is CodeableConcept) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'statusDate':
        {
          if (child is FhirDateTime) {
            return copyWith(statusDate: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'validityPeriod':
        {
          if (child is Period) {
            return copyWith(validityPeriod: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'indication':
        {
          if (child is CodeableReference) {
            return copyWith(indication: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'intendedUse':
        {
          if (child is CodeableConcept) {
            return copyWith(intendedUse: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'basis':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(basis: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'holder':
        {
          if (child is Reference) {
            return copyWith(holder: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'regulator':
        {
          if (child is Reference) {
            return copyWith(regulator: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'case':
        {
          if (child is RegulatedAuthorizationCase) {
            return copyWith(case_: child);
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
      case 'subject':
        return ['Reference'];
      case 'type':
        return ['CodeableConcept'];
      case 'description':
        return ['FhirMarkdown'];
      case 'region':
        return ['CodeableConcept'];
      case 'status':
        return ['CodeableConcept'];
      case 'statusDate':
        return ['FhirDateTime'];
      case 'validityPeriod':
        return ['Period'];
      case 'indication':
        return ['CodeableReference'];
      case 'intendedUse':
        return ['CodeableConcept'];
      case 'basis':
        return ['CodeableConcept'];
      case 'holder':
        return ['Reference'];
      case 'regulator':
        return ['Reference'];
      case 'case':
        return ['RegulatedAuthorizationCase'];
      default:
        return <String>[];
    }
  }

  @override
  RegulatedAuthorization clone() => throw UnimplementedError();
  @override
  RegulatedAuthorization copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? subject,
    CodeableConcept? type,
    FhirMarkdown? description,
    List<CodeableConcept>? region,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    Period? validityPeriod,
    CodeableReference? indication,
    CodeableConcept? intendedUse,
    List<CodeableConcept>? basis,
    Reference? holder,
    Reference? regulator,
    RegulatedAuthorizationCase? case_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return RegulatedAuthorization(
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
      subject: subject
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subject',
                ),
              )
              .toList() ??
          this.subject,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      region: region
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.region',
                ),
              )
              .toList() ??
          this.region,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      statusDate: statusDate?.copyWith(
            objectPath: '$newObjectPath.statusDate',
          ) ??
          this.statusDate,
      validityPeriod: validityPeriod?.copyWith(
            objectPath: '$newObjectPath.validityPeriod',
          ) ??
          this.validityPeriod,
      indication: indication?.copyWith(
            objectPath: '$newObjectPath.indication',
          ) ??
          this.indication,
      intendedUse: intendedUse?.copyWith(
            objectPath: '$newObjectPath.intendedUse',
          ) ??
          this.intendedUse,
      basis: basis
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basis',
                ),
              )
              .toList() ??
          this.basis,
      holder: holder?.copyWith(
            objectPath: '$newObjectPath.holder',
          ) ??
          this.holder,
      regulator: regulator?.copyWith(
            objectPath: '$newObjectPath.regulator',
          ) ??
          this.regulator,
      case_: case_?.copyWith(
            objectPath: '$newObjectPath.case',
          ) ??
          this.case_,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RegulatedAuthorization) {
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
    if (!listEquals<Reference>(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      region,
      o.region,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(statusDate, o.statusDate)) {
      return false;
    }
    if (!equalsDeepWithNull(validityPeriod, o.validityPeriod)) {
      return false;
    }
    if (!equalsDeepWithNull(indication, o.indication)) {
      return false;
    }
    if (!equalsDeepWithNull(intendedUse, o.intendedUse)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      basis,
      o.basis,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(holder, o.holder)) {
      return false;
    }
    if (!equalsDeepWithNull(regulator, o.regulator)) {
      return false;
    }
    if (!equalsDeepWithNull(case_, o.case_)) {
      return false;
    }
    return true;
  }
}

/// [RegulatedAuthorizationCase]
/// The case or regulatory procedure for granting or amending a regulated
/// authorization. An authorization is granted in response to
/// submissions/applications by those seeking authorization. A case is the
/// administrative process that deals with the application(s) that relate
/// to this and assesses them. Note: This area is subject to ongoing review
/// and the workgroup is seeking implementer feedback on its use (see link
/// at bottom of page).
class RegulatedAuthorizationCase extends BackboneElement {
  /// Primary constructor for
  /// [RegulatedAuthorizationCase]

  const RegulatedAuthorizationCase({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.status,
    this.dateX,
    this.application,
    super.disallowExtensions,
  }) : super(
          objectPath: 'RegulatedAuthorization.case',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory RegulatedAuthorizationCase.empty() => const RegulatedAuthorizationCase();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RegulatedAuthorizationCase.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RegulatedAuthorization.case';
    return RegulatedAuthorizationCase(
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
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
        '$objectPath.status',
      ),
      dateX: JsonParser.parsePolymorphic<DateXRegulatedAuthorizationCase>(
        json,
        {
          'datePeriod': Period.fromJson,
          'dateDateTime': FhirDateTime.fromJson,
        },
        objectPath,
      ),
      application: (json['application'] as List<dynamic>?)
          ?.map<RegulatedAuthorizationCase>(
            (v) => RegulatedAuthorizationCase.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.application',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [RegulatedAuthorizationCase]
  /// from a [String] or [YamlMap] object
  factory RegulatedAuthorizationCase.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RegulatedAuthorizationCase.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RegulatedAuthorizationCase.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RegulatedAuthorizationCase '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RegulatedAuthorizationCase]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RegulatedAuthorizationCase.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RegulatedAuthorizationCase.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RegulatedAuthorizationCase';

  /// [identifier]
  /// Identifier by which this case can be referenced.
  final Identifier? identifier;

  /// [type]
  /// The defining type of case.
  final CodeableConcept? type;

  /// [status]
  /// The status associated with the case.
  final CodeableConcept? status;

  /// [dateX]
  /// Relevant date for this case.
  final DateXRegulatedAuthorizationCase? dateX;

  /// Getter for [datePeriod] as a Period
  Period? get datePeriod => dateX?.isAs<Period>();

  /// Getter for [dateDateTime] as a FhirDateTime
  FhirDateTime? get dateDateTime => dateX?.isAs<FhirDateTime>();

  /// [application]
  /// A regulatory submission from an organization to a regulator, as part of
  /// an assessing case. Multiple applications may occur over time, with more
  /// or different information to support or modify the submission or the
  /// authorization. The applications can be considered as steps within the
  /// longer running case or procedure for this authorization process.
  final List<RegulatedAuthorizationCase>? application;
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
    addField('identifier', identifier);
    addField('type', type);
    addField('status', status);
    if (dateX != null) {
      final fhirType = dateX!.fhirType;
      addField('date${fhirType.capitalize()}', dateX);
    }

    addField('application', application);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'identifier',
      'type',
      'status',
      'dateX',
      'application',
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
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'date':
        fields.add(dateX!);
      case 'dateX':
        fields.add(dateX!);
      case 'datePeriod':
        if (dateX is Period) {
          fields.add(dateX!);
        }
      case 'dateDateTime':
        if (dateX is FhirDateTime) {
          fields.add(dateX!);
        }
      case 'application':
        if (application != null) {
          fields.addAll(application!);
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
      case 'identifier':
        {
          if (child is Identifier) {
            return copyWith(identifier: child);
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
      case 'status':
        {
          if (child is CodeableConcept) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'dateX':
        {
          if (child is DateXRegulatedAuthorizationCase) {
            // child is e.g. SubjectX union
            return copyWith(dateX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'datePeriod':
        {
          if (child is Period) {
            return copyWith(dateX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'dateFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(dateX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'application':
        {
          if (child is List<RegulatedAuthorizationCase>) {
            return copyWith(application: child);
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
      case 'identifier':
        return ['Identifier'];
      case 'type':
        return ['CodeableConcept'];
      case 'status':
        return ['CodeableConcept'];
      case 'date':
      case 'dateX':
        return ['Period', 'FhirDateTime'];
      case 'datePeriod':
        return ['Period'];
      case 'dateDateTime':
        return ['FhirDateTime'];
      case 'application':
        return ['RegulatedAuthorizationCase'];
      default:
        return <String>[];
    }
  }

  @override
  RegulatedAuthorizationCase clone() => throw UnimplementedError();
  @override
  RegulatedAuthorizationCase copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    CodeableConcept? type,
    CodeableConcept? status,
    DateXRegulatedAuthorizationCase? dateX,
    List<RegulatedAuthorizationCase>? application,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return RegulatedAuthorizationCase(
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
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      dateX: dateX?.copyWith(
            objectPath: '$newObjectPath.dateX',
          ) as DateXRegulatedAuthorizationCase? ??
          this.dateX,
      application: application
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.application',
                ),
              )
              .toList() ??
          this.application,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RegulatedAuthorizationCase) {
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
    if (!equalsDeepWithNull(identifier, o.identifier)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(dateX, o.dateX)) {
      return false;
    }
    if (!listEquals<RegulatedAuthorizationCase>(
      application,
      o.application,
    )) {
      return false;
    }
    return true;
  }
}
