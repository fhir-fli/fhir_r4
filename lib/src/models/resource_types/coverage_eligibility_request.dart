import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CoverageEligibilityRequest]
/// The CoverageEligibilityRequest provides patient and insurance coverage
/// information to an insurer for them to respond, in the form of an
/// CoverageEligibilityResponse, with information regarding whether the
/// stated coverage is valid and in-force and optionally to provide the
/// insurance details of the policy.
class CoverageEligibilityRequest extends DomainResource {
  /// Primary constructor for
  /// [CoverageEligibilityRequest]

  const CoverageEligibilityRequest({
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
    this.priority,
    required this.purpose,
    required this.patient,
    this.servicedX,
    required this.created,
    this.enterer,
    this.provider,
    required this.insurer,
    this.facility,
    this.supportingInfo,
    this.insurance,
    this.item,
  }) : super(
          objectPath: 'CoverageEligibilityRequest',
          resourceType: R4ResourceType.CoverageEligibilityRequest,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CoverageEligibilityRequest.empty() => CoverageEligibilityRequest(
        status: FinancialResourceStatusCodes.values.first,
        purpose: <EligibilityRequestPurpose>[],
        patient: Reference.empty(),
        created: FhirDateTime.empty(),
        insurer: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityRequest';
    return CoverageEligibilityRequest(
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
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodes>(
        json,
        'status',
        FinancialResourceStatusCodes.fromJson,
        '$objectPath.status',
      )!,
      priority: JsonParser.parseObject<CodeableConcept>(
        json,
        'priority',
        CodeableConcept.fromJson,
        '$objectPath.priority',
      ),
      purpose: JsonParser.parsePrimitiveList<EligibilityRequestPurpose>(
        json,
        'purpose',
        EligibilityRequestPurpose.fromJson,
        '$objectPath.purpose',
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      )!,
      servicedX:
          JsonParser.parsePolymorphic<ServicedXCoverageEligibilityRequest>(
        json,
        {
          'servicedDate': FhirDate.fromJson,
          'servicedPeriod': Period.fromJson,
        },
        objectPath,
      ),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
        '$objectPath.created',
      )!,
      enterer: JsonParser.parseObject<Reference>(
        json,
        'enterer',
        Reference.fromJson,
        '$objectPath.enterer',
      ),
      provider: JsonParser.parseObject<Reference>(
        json,
        'provider',
        Reference.fromJson,
        '$objectPath.provider',
      ),
      insurer: JsonParser.parseObject<Reference>(
        json,
        'insurer',
        Reference.fromJson,
        '$objectPath.insurer',
      )!,
      facility: JsonParser.parseObject<Reference>(
        json,
        'facility',
        Reference.fromJson,
        '$objectPath.facility',
      ),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<CoverageEligibilityRequestSupportingInfo>(
            (v) => CoverageEligibilityRequestSupportingInfo.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInfo',
              },
            ),
          )
          .toList(),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<CoverageEligibilityRequestInsurance>(
            (v) => CoverageEligibilityRequestInsurance.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
              },
            ),
          )
          .toList(),
      item: (json['item'] as List<dynamic>?)
          ?.map<CoverageEligibilityRequestItem>(
            (v) => CoverageEligibilityRequestItem.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CoverageEligibilityRequest]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityRequest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityRequest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityRequest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityRequest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityRequest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityRequest';

  /// [identifier]
  /// A unique identifier assigned to this coverage eligiblity request.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the resource instance.
  final FinancialResourceStatusCodes status;

  /// [priority]
  /// When the requestor expects the processor to complete processing.
  final CodeableConcept? priority;

  /// [purpose]
  /// Code to specify whether requesting: prior authorization requirements
  /// for some service categories or billing codes; benefits for coverages
  /// specified or discovered; discovery and return of coverages for the
  /// patient; and/or validation that the specified coverage is in-force at
  /// the date/period specified or 'now' if not specified.
  final List<EligibilityRequestPurpose> purpose;

  /// [patient]
  /// The party who is the beneficiary of the supplied coverage and for whom
  /// eligibility is sought.
  final Reference patient;

  /// [servicedX]
  /// The date or dates when the enclosed suite of services were performed or
  /// completed.
  final ServicedXCoverageEligibilityRequest? servicedX;

  /// Getter for [servicedDate] as a FhirDate
  FhirDate? get servicedDate => servicedX?.isAs<FhirDate>();

  /// Getter for [servicedPeriod] as a Period
  Period? get servicedPeriod => servicedX?.isAs<Period>();

  /// [created]
  /// The date when this resource was created.
  final FhirDateTime created;

  /// [enterer]
  /// Person who created the request.
  final Reference? enterer;

  /// [provider]
  /// The provider which is responsible for the request.
  final Reference? provider;

  /// [insurer]
  /// The Insurer who issued the coverage in question and is the recipient of
  /// the request.
  final Reference insurer;

  /// [facility]
  /// Facility where the services are intended to be provided.
  final Reference? facility;

  /// [supportingInfo]
  /// Additional information codes regarding exceptions, special
  /// considerations, the condition, situation, prior or concurrent issues.
  final List<CoverageEligibilityRequestSupportingInfo>? supportingInfo;

  /// [insurance]
  /// Financial instruments for reimbursement for the health care products
  /// and services.
  final List<CoverageEligibilityRequestInsurance>? insurance;

  /// [item]
  /// Service categories or billable services for which benefit details
  /// and/or an authorization prior to service delivery may be required by
  /// the payor.
  final List<CoverageEligibilityRequestItem>? item;
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
    addField('priority', priority);
    addField('purpose', purpose);
    addField('patient', patient);
    if (servicedX != null) {
      final fhirType = servicedX!.fhirType;
      addField('serviced${fhirType.capitalize()}', servicedX);
    }

    addField('created', created);
    addField('enterer', enterer);
    addField('provider', provider);
    addField('insurer', insurer);
    addField('facility', facility);
    addField('supportingInfo', supportingInfo);
    addField('insurance', insurance);
    addField('item', item);
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
      'priority',
      'purpose',
      'patient',
      'servicedX',
      'created',
      'enterer',
      'provider',
      'insurer',
      'facility',
      'supportingInfo',
      'insurance',
      'item',
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
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'purpose':
        fields.addAll(purpose);
      case 'patient':
        fields.add(patient);
      case 'serviced':
        fields.add(servicedX!);
      case 'servicedX':
        fields.add(servicedX!);
      case 'servicedDate':
        if (servicedX is FhirDate) {
          fields.add(servicedX!);
        }
      case 'servicedPeriod':
        if (servicedX is Period) {
          fields.add(servicedX!);
        }
      case 'created':
        fields.add(created);
      case 'enterer':
        if (enterer != null) {
          fields.add(enterer!);
        }
      case 'provider':
        if (provider != null) {
          fields.add(provider!);
        }
      case 'insurer':
        fields.add(insurer);
      case 'facility':
        if (facility != null) {
          fields.add(facility!);
        }
      case 'supportingInfo':
        if (supportingInfo != null) {
          fields.addAll(supportingInfo!);
        }
      case 'insurance':
        if (insurance != null) {
          fields.addAll(insurance!);
        }
      case 'item':
        if (item != null) {
          fields.addAll(item!);
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
          if (child is FinancialResourceStatusCodes) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'priority':
        {
          if (child is CodeableConcept) {
            return copyWith(priority: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'purpose':
        {
          if (child is List<EligibilityRequestPurpose>) {
            return copyWith(purpose: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'patient':
        {
          if (child is Reference) {
            return copyWith(patient: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'servicedX':
        {
          if (child is ServicedXCoverageEligibilityRequest) {
            // child is e.g. SubjectX union
            return copyWith(servicedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'servicedFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(servicedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'servicedPeriod':
        {
          if (child is Period) {
            return copyWith(servicedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'created':
        {
          if (child is FhirDateTime) {
            return copyWith(created: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'enterer':
        {
          if (child is Reference) {
            return copyWith(enterer: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'provider':
        {
          if (child is Reference) {
            return copyWith(provider: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'insurer':
        {
          if (child is Reference) {
            return copyWith(insurer: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'facility':
        {
          if (child is Reference) {
            return copyWith(facility: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'supportingInfo':
        {
          if (child is List<CoverageEligibilityRequestSupportingInfo>) {
            return copyWith(supportingInfo: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'insurance':
        {
          if (child is List<CoverageEligibilityRequestInsurance>) {
            return copyWith(insurance: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'item':
        {
          if (child is List<CoverageEligibilityRequestItem>) {
            return copyWith(item: child);
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
      case 'priority':
        return ['CodeableConcept'];
      case 'purpose':
        return ['FhirCode'];
      case 'patient':
        return ['Reference'];
      case 'serviced':
      case 'servicedX':
        return ['FhirDate', 'Period'];
      case 'servicedDate':
        return ['FhirDate'];
      case 'servicedPeriod':
        return ['Period'];
      case 'created':
        return ['FhirDateTime'];
      case 'enterer':
        return ['Reference'];
      case 'provider':
        return ['Reference'];
      case 'insurer':
        return ['Reference'];
      case 'facility':
        return ['Reference'];
      case 'supportingInfo':
        return ['CoverageEligibilityRequestSupportingInfo'];
      case 'insurance':
        return ['CoverageEligibilityRequestInsurance'];
      case 'item':
        return ['CoverageEligibilityRequestItem'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CoverageEligibilityRequest]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CoverageEligibilityRequest createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'meta':
        {
          return copyWith(meta: FhirMeta.empty());
        }
      case 'implicitRules':
        {
          return copyWith(implicitRules: FhirUri.empty());
        }
      case 'language':
        {
          return copyWith(language: CommonLanguages.empty());
        }
      case 'text':
        {
          return copyWith(text: Narrative.empty());
        }
      case 'contained':
        {
          return copyWith(contained: <Resource>[]);
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'status':
        {
          return copyWith(status: FinancialResourceStatusCodes.empty());
        }
      case 'priority':
        {
          return copyWith(priority: CodeableConcept.empty());
        }
      case 'purpose':
        {
          return copyWith(purpose: <EligibilityRequestPurpose>[]);
        }
      case 'patient':
        {
          return copyWith(patient: Reference.empty());
        }
      case 'serviced':
      case 'servicedX':
      case 'servicedDate':
        {
          return copyWith(servicedX: FhirDate.empty());
        }
      case 'servicedPeriod':
        {
          return copyWith(servicedX: Period.empty());
        }
      case 'created':
        {
          return copyWith(created: FhirDateTime.empty());
        }
      case 'enterer':
        {
          return copyWith(enterer: Reference.empty());
        }
      case 'provider':
        {
          return copyWith(provider: Reference.empty());
        }
      case 'insurer':
        {
          return copyWith(insurer: Reference.empty());
        }
      case 'facility':
        {
          return copyWith(facility: Reference.empty());
        }
      case 'supportingInfo':
        {
          return copyWith(
              supportingInfo: <CoverageEligibilityRequestSupportingInfo>[],);
        }
      case 'insurance':
        {
          return copyWith(insurance: <CoverageEligibilityRequestInsurance>[]);
        }
      case 'item':
        {
          return copyWith(item: <CoverageEligibilityRequestItem>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CoverageEligibilityRequest clone() => throw UnimplementedError();
  @override
  CoverageEligibilityRequest copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
    CodeableConcept? priority,
    List<EligibilityRequestPurpose>? purpose,
    Reference? patient,
    ServicedXCoverageEligibilityRequest? servicedX,
    FhirDateTime? created,
    Reference? enterer,
    Reference? provider,
    Reference? insurer,
    Reference? facility,
    List<CoverageEligibilityRequestSupportingInfo>? supportingInfo,
    List<CoverageEligibilityRequestInsurance>? insurance,
    List<CoverageEligibilityRequestItem>? item,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return CoverageEligibilityRequest(
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
      priority: priority?.copyWith(
            objectPath: '$newObjectPath.priority',
          ) ??
          this.priority,
      purpose: purpose
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.purpose',
                ),
              )
              .toList() ??
          this.purpose,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      servicedX: servicedX?.copyWith(
            objectPath: '$newObjectPath.servicedX',
          ) as ServicedXCoverageEligibilityRequest? ??
          this.servicedX,
      created: created?.copyWith(
            objectPath: '$newObjectPath.created',
          ) ??
          this.created,
      enterer: enterer?.copyWith(
            objectPath: '$newObjectPath.enterer',
          ) ??
          this.enterer,
      provider: provider?.copyWith(
            objectPath: '$newObjectPath.provider',
          ) ??
          this.provider,
      insurer: insurer?.copyWith(
            objectPath: '$newObjectPath.insurer',
          ) ??
          this.insurer,
      facility: facility?.copyWith(
            objectPath: '$newObjectPath.facility',
          ) ??
          this.facility,
      supportingInfo: supportingInfo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportingInfo',
                ),
              )
              .toList() ??
          this.supportingInfo,
      insurance: insurance
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.insurance',
                ),
              )
              .toList() ??
          this.insurance,
      item: item
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.item',
                ),
              )
              .toList() ??
          this.item,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CoverageEligibilityRequest) {
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
    if (!equalsDeepWithNull(priority, o.priority)) {
      return false;
    }
    if (!listEquals<EligibilityRequestPurpose>(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(patient, o.patient)) {
      return false;
    }
    if (!equalsDeepWithNull(servicedX, o.servicedX)) {
      return false;
    }
    if (!equalsDeepWithNull(created, o.created)) {
      return false;
    }
    if (!equalsDeepWithNull(enterer, o.enterer)) {
      return false;
    }
    if (!equalsDeepWithNull(provider, o.provider)) {
      return false;
    }
    if (!equalsDeepWithNull(insurer, o.insurer)) {
      return false;
    }
    if (!equalsDeepWithNull(facility, o.facility)) {
      return false;
    }
    if (!listEquals<CoverageEligibilityRequestSupportingInfo>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    if (!listEquals<CoverageEligibilityRequestInsurance>(
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!listEquals<CoverageEligibilityRequestItem>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}

/// [CoverageEligibilityRequestSupportingInfo]
/// Additional information codes regarding exceptions, special
/// considerations, the condition, situation, prior or concurrent issues.
class CoverageEligibilityRequestSupportingInfo extends BackboneElement {
  /// Primary constructor for
  /// [CoverageEligibilityRequestSupportingInfo]

  const CoverageEligibilityRequestSupportingInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.information,
    this.appliesToAll,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CoverageEligibilityRequest.supportingInfo',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CoverageEligibilityRequestSupportingInfo.empty() =>
      CoverageEligibilityRequestSupportingInfo(
        sequence: FhirPositiveInt.empty(),
        information: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityRequestSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityRequest.supportingInfo';
    return CoverageEligibilityRequestSupportingInfo(
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
      )!,
      information: JsonParser.parseObject<Reference>(
        json,
        'information',
        Reference.fromJson,
        '$objectPath.information',
      )!,
      appliesToAll: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'appliesToAll',
        FhirBoolean.fromJson,
        '$objectPath.appliesToAll',
      ),
    );
  }

  /// Deserialize [CoverageEligibilityRequestSupportingInfo]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityRequestSupportingInfo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityRequestSupportingInfo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityRequestSupportingInfo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityRequestSupportingInfo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityRequestSupportingInfo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityRequestSupportingInfo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityRequestSupportingInfo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityRequestSupportingInfo';

  /// [sequence]
  /// A number to uniquely identify supporting information entries.
  final FhirPositiveInt sequence;

  /// [information]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  final Reference information;

  /// [appliesToAll]
  /// The supporting materials are applicable for all detail items,
  /// product/servce categories and specific billing codes.
  final FhirBoolean? appliesToAll;
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
    addField('information', information);
    addField('appliesToAll', appliesToAll);
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
      'information',
      'appliesToAll',
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
        fields.add(sequence);
      case 'information':
        fields.add(information);
      case 'appliesToAll':
        if (appliesToAll != null) {
          fields.add(appliesToAll!);
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
      case 'information':
        {
          if (child is Reference) {
            return copyWith(information: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'appliesToAll':
        {
          if (child is FhirBoolean) {
            return copyWith(appliesToAll: child);
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
      case 'information':
        return ['Reference'];
      case 'appliesToAll':
        return ['FhirBoolean'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CoverageEligibilityRequestSupportingInfo]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CoverageEligibilityRequestSupportingInfo createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'sequence':
        {
          return copyWith(sequence: FhirPositiveInt.empty());
        }
      case 'information':
        {
          return copyWith(information: Reference.empty());
        }
      case 'appliesToAll':
        {
          return copyWith(appliesToAll: FhirBoolean.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CoverageEligibilityRequestSupportingInfo clone() =>
      throw UnimplementedError();
  @override
  CoverageEligibilityRequestSupportingInfo copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Reference? information,
    FhirBoolean? appliesToAll,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CoverageEligibilityRequestSupportingInfo(
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
      information: information?.copyWith(
            objectPath: '$newObjectPath.information',
          ) ??
          this.information,
      appliesToAll: appliesToAll?.copyWith(
            objectPath: '$newObjectPath.appliesToAll',
          ) ??
          this.appliesToAll,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CoverageEligibilityRequestSupportingInfo) {
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
    if (!equalsDeepWithNull(information, o.information)) {
      return false;
    }
    if (!equalsDeepWithNull(appliesToAll, o.appliesToAll)) {
      return false;
    }
    return true;
  }
}

/// [CoverageEligibilityRequestInsurance]
/// Financial instruments for reimbursement for the health care products
/// and services.
class CoverageEligibilityRequestInsurance extends BackboneElement {
  /// Primary constructor for
  /// [CoverageEligibilityRequestInsurance]

  const CoverageEligibilityRequestInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.focal,
    required this.coverage,
    this.businessArrangement,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CoverageEligibilityRequest.insurance',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CoverageEligibilityRequestInsurance.empty() =>
      CoverageEligibilityRequestInsurance(
        coverage: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityRequestInsurance.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityRequest.insurance';
    return CoverageEligibilityRequestInsurance(
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
      focal: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'focal',
        FhirBoolean.fromJson,
        '$objectPath.focal',
      ),
      coverage: JsonParser.parseObject<Reference>(
        json,
        'coverage',
        Reference.fromJson,
        '$objectPath.coverage',
      )!,
      businessArrangement: JsonParser.parsePrimitive<FhirString>(
        json,
        'businessArrangement',
        FhirString.fromJson,
        '$objectPath.businessArrangement',
      ),
    );
  }

  /// Deserialize [CoverageEligibilityRequestInsurance]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityRequestInsurance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityRequestInsurance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityRequestInsurance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityRequestInsurance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityRequestInsurance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityRequestInsurance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityRequestInsurance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityRequestInsurance';

  /// [focal]
  /// A flag to indicate that this Coverage is to be used for evaluation of
  /// this request when set to true.
  final FhirBoolean? focal;

  /// [coverage]
  /// Reference to the insurance card level information contained in the
  /// Coverage resource. The coverage issuing insurer will use these details
  /// to locate the patient's actual coverage within the insurer's
  /// information system.
  final Reference coverage;

  /// [businessArrangement]
  /// A business agreement number established between the provider and the
  /// insurer for special business processing purposes.
  final FhirString? businessArrangement;
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
    addField('focal', focal);
    addField('coverage', coverage);
    addField('businessArrangement', businessArrangement);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'focal',
      'coverage',
      'businessArrangement',
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
      case 'focal':
        if (focal != null) {
          fields.add(focal!);
        }
      case 'coverage':
        fields.add(coverage);
      case 'businessArrangement':
        if (businessArrangement != null) {
          fields.add(businessArrangement!);
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
      case 'focal':
        {
          if (child is FhirBoolean) {
            return copyWith(focal: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'coverage':
        {
          if (child is Reference) {
            return copyWith(coverage: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'businessArrangement':
        {
          if (child is FhirString) {
            return copyWith(businessArrangement: child);
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
      case 'focal':
        return ['FhirBoolean'];
      case 'coverage':
        return ['Reference'];
      case 'businessArrangement':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CoverageEligibilityRequestInsurance]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CoverageEligibilityRequestInsurance createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'focal':
        {
          return copyWith(focal: FhirBoolean.empty());
        }
      case 'coverage':
        {
          return copyWith(coverage: Reference.empty());
        }
      case 'businessArrangement':
        {
          return copyWith(businessArrangement: FhirString.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CoverageEligibilityRequestInsurance clone() => throw UnimplementedError();
  @override
  CoverageEligibilityRequestInsurance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? focal,
    Reference? coverage,
    FhirString? businessArrangement,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CoverageEligibilityRequestInsurance(
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
      focal: focal?.copyWith(
            objectPath: '$newObjectPath.focal',
          ) ??
          this.focal,
      coverage: coverage?.copyWith(
            objectPath: '$newObjectPath.coverage',
          ) ??
          this.coverage,
      businessArrangement: businessArrangement?.copyWith(
            objectPath: '$newObjectPath.businessArrangement',
          ) ??
          this.businessArrangement,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CoverageEligibilityRequestInsurance) {
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
    if (!equalsDeepWithNull(focal, o.focal)) {
      return false;
    }
    if (!equalsDeepWithNull(coverage, o.coverage)) {
      return false;
    }
    if (!equalsDeepWithNull(businessArrangement, o.businessArrangement)) {
      return false;
    }
    return true;
  }
}

/// [CoverageEligibilityRequestItem]
/// Service categories or billable services for which benefit details
/// and/or an authorization prior to service delivery may be required by
/// the payor.
class CoverageEligibilityRequestItem extends BackboneElement {
  /// Primary constructor for
  /// [CoverageEligibilityRequestItem]

  const CoverageEligibilityRequestItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.supportingInfoSequence,
    this.category,
    this.productOrService,
    this.modifier,
    this.provider,
    this.quantity,
    this.unitPrice,
    this.facility,
    this.diagnosis,
    this.detail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CoverageEligibilityRequest.item',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CoverageEligibilityRequestItem.empty() =>
      const CoverageEligibilityRequestItem();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityRequestItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityRequest.item';
    return CoverageEligibilityRequestItem(
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
      supportingInfoSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'supportingInfoSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.supportingInfoSequence',
      ),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      ),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
        '$objectPath.productOrService',
      ),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      provider: JsonParser.parseObject<Reference>(
        json,
        'provider',
        Reference.fromJson,
        '$objectPath.provider',
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
        '$objectPath.unitPrice',
      ),
      facility: JsonParser.parseObject<Reference>(
        json,
        'facility',
        Reference.fromJson,
        '$objectPath.facility',
      ),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map<CoverageEligibilityRequestDiagnosis>(
            (v) => CoverageEligibilityRequestDiagnosis.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.diagnosis',
              },
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CoverageEligibilityRequestItem]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityRequestItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityRequestItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityRequestItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityRequestItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityRequestItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityRequestItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityRequestItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityRequestItem';

  /// [supportingInfoSequence]
  /// Exceptions, special conditions and supporting information applicable
  /// for this service or product line.
  final List<FhirPositiveInt>? supportingInfoSequence;

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  final CodeableConcept? category;

  /// [productOrService]
  /// This contains the product, service, drug or other billing code for the
  /// item.
  final CodeableConcept? productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  final List<CodeableConcept>? modifier;

  /// [provider]
  /// The practitioner who is responsible for the product or service to be
  /// rendered to the patient.
  final Reference? provider;

  /// [quantity]
  /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice]
  /// The amount charged to the patient by the provider for a single unit.
  final Money? unitPrice;

  /// [facility]
  /// Facility where the services will be provided.
  final Reference? facility;

  /// [diagnosis]
  /// Patient diagnosis for which care is sought.
  final List<CoverageEligibilityRequestDiagnosis>? diagnosis;

  /// [detail]
  /// The plan/proposal/order describing the proposed service in detail.
  final List<Reference>? detail;
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
    addField('supportingInfoSequence', supportingInfoSequence);
    addField('category', category);
    addField('productOrService', productOrService);
    addField('modifier', modifier);
    addField('provider', provider);
    addField('quantity', quantity);
    addField('unitPrice', unitPrice);
    addField('facility', facility);
    addField('diagnosis', diagnosis);
    addField('detail', detail);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'supportingInfoSequence',
      'category',
      'productOrService',
      'modifier',
      'provider',
      'quantity',
      'unitPrice',
      'facility',
      'diagnosis',
      'detail',
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
      case 'supportingInfoSequence':
        if (supportingInfoSequence != null) {
          fields.addAll(supportingInfoSequence!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'productOrService':
        if (productOrService != null) {
          fields.add(productOrService!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'provider':
        if (provider != null) {
          fields.add(provider!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'unitPrice':
        if (unitPrice != null) {
          fields.add(unitPrice!);
        }
      case 'facility':
        if (facility != null) {
          fields.add(facility!);
        }
      case 'diagnosis':
        if (diagnosis != null) {
          fields.addAll(diagnosis!);
        }
      case 'detail':
        if (detail != null) {
          fields.addAll(detail!);
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
      case 'supportingInfoSequence':
        {
          if (child is List<FhirPositiveInt>) {
            return copyWith(supportingInfoSequence: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConcept) {
            return copyWith(productOrService: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(modifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'provider':
        {
          if (child is Reference) {
            return copyWith(provider: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'unitPrice':
        {
          if (child is Money) {
            return copyWith(unitPrice: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'facility':
        {
          if (child is Reference) {
            return copyWith(facility: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'diagnosis':
        {
          if (child is List<CoverageEligibilityRequestDiagnosis>) {
            return copyWith(diagnosis: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'detail':
        {
          if (child is List<Reference>) {
            return copyWith(detail: child);
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
      case 'supportingInfoSequence':
        return ['FhirPositiveInt'];
      case 'category':
        return ['CodeableConcept'];
      case 'productOrService':
        return ['CodeableConcept'];
      case 'modifier':
        return ['CodeableConcept'];
      case 'provider':
        return ['Reference'];
      case 'quantity':
        return ['Quantity'];
      case 'unitPrice':
        return ['Money'];
      case 'facility':
        return ['Reference'];
      case 'diagnosis':
        return ['CoverageEligibilityRequestDiagnosis'];
      case 'detail':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CoverageEligibilityRequestItem]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CoverageEligibilityRequestItem createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'supportingInfoSequence':
        {
          return copyWith(supportingInfoSequence: <FhirPositiveInt>[]);
        }
      case 'category':
        {
          return copyWith(category: CodeableConcept.empty());
        }
      case 'productOrService':
        {
          return copyWith(productOrService: CodeableConcept.empty());
        }
      case 'modifier':
        {
          return copyWith(modifier: <CodeableConcept>[]);
        }
      case 'provider':
        {
          return copyWith(provider: Reference.empty());
        }
      case 'quantity':
        {
          return copyWith(quantity: Quantity.empty());
        }
      case 'unitPrice':
        {
          return copyWith(unitPrice: Money.empty());
        }
      case 'facility':
        {
          return copyWith(facility: Reference.empty());
        }
      case 'diagnosis':
        {
          return copyWith(diagnosis: <CoverageEligibilityRequestDiagnosis>[]);
        }
      case 'detail':
        {
          return copyWith(detail: <Reference>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CoverageEligibilityRequestItem clone() => throw UnimplementedError();
  @override
  CoverageEligibilityRequestItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirPositiveInt>? supportingInfoSequence,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Reference? provider,
    Quantity? quantity,
    Money? unitPrice,
    Reference? facility,
    List<CoverageEligibilityRequestDiagnosis>? diagnosis,
    List<Reference>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CoverageEligibilityRequestItem(
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
      supportingInfoSequence: supportingInfoSequence
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportingInfoSequence',
                ),
              )
              .toList() ??
          this.supportingInfoSequence,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      productOrService: productOrService?.copyWith(
            objectPath: '$newObjectPath.productOrService',
          ) ??
          this.productOrService,
      modifier: modifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifier',
                ),
              )
              .toList() ??
          this.modifier,
      provider: provider?.copyWith(
            objectPath: '$newObjectPath.provider',
          ) ??
          this.provider,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      unitPrice: unitPrice?.copyWith(
            objectPath: '$newObjectPath.unitPrice',
          ) ??
          this.unitPrice,
      facility: facility?.copyWith(
            objectPath: '$newObjectPath.facility',
          ) ??
          this.facility,
      diagnosis: diagnosis
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.diagnosis',
                ),
              )
              .toList() ??
          this.diagnosis,
      detail: detail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.detail',
                ),
              )
              .toList() ??
          this.detail,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CoverageEligibilityRequestItem) {
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
    if (!listEquals<FhirPositiveInt>(
      supportingInfoSequence,
      o.supportingInfoSequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(category, o.category)) {
      return false;
    }
    if (!equalsDeepWithNull(productOrService, o.productOrService)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(provider, o.provider)) {
      return false;
    }
    if (!equalsDeepWithNull(quantity, o.quantity)) {
      return false;
    }
    if (!equalsDeepWithNull(unitPrice, o.unitPrice)) {
      return false;
    }
    if (!equalsDeepWithNull(facility, o.facility)) {
      return false;
    }
    if (!listEquals<CoverageEligibilityRequestDiagnosis>(
      diagnosis,
      o.diagnosis,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [CoverageEligibilityRequestDiagnosis]
/// Patient diagnosis for which care is sought.
class CoverageEligibilityRequestDiagnosis extends BackboneElement {
  /// Primary constructor for
  /// [CoverageEligibilityRequestDiagnosis]

  const CoverageEligibilityRequestDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.diagnosisX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CoverageEligibilityRequest.item.diagnosis',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CoverageEligibilityRequestDiagnosis.empty() =>
      const CoverageEligibilityRequestDiagnosis();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityRequestDiagnosis.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityRequest.item.diagnosis';
    return CoverageEligibilityRequestDiagnosis(
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
      diagnosisX: JsonParser.parsePolymorphic<
          DiagnosisXCoverageEligibilityRequestDiagnosis>(
        json,
        {
          'diagnosisCodeableConcept': CodeableConcept.fromJson,
          'diagnosisReference': Reference.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [CoverageEligibilityRequestDiagnosis]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityRequestDiagnosis.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityRequestDiagnosis.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityRequestDiagnosis.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityRequestDiagnosis '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityRequestDiagnosis]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityRequestDiagnosis.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityRequestDiagnosis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityRequestDiagnosis';

  /// [diagnosisX]
  /// The nature of illness or problem in a coded form or as a reference to
  /// an external defined Condition.
  final DiagnosisXCoverageEligibilityRequestDiagnosis? diagnosisX;

  /// Getter for [diagnosisCodeableConcept] as a CodeableConcept
  CodeableConcept? get diagnosisCodeableConcept =>
      diagnosisX?.isAs<CodeableConcept>();

  /// Getter for [diagnosisReference] as a Reference
  Reference? get diagnosisReference => diagnosisX?.isAs<Reference>();
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
    if (diagnosisX != null) {
      final fhirType = diagnosisX!.fhirType;
      addField('diagnosis${fhirType.capitalize()}', diagnosisX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'diagnosisX',
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
      case 'diagnosis':
        fields.add(diagnosisX!);
      case 'diagnosisX':
        fields.add(diagnosisX!);
      case 'diagnosisCodeableConcept':
        if (diagnosisX is CodeableConcept) {
          fields.add(diagnosisX!);
        }
      case 'diagnosisReference':
        if (diagnosisX is Reference) {
          fields.add(diagnosisX!);
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
      case 'diagnosisX':
        {
          if (child is DiagnosisXCoverageEligibilityRequestDiagnosis) {
            // child is e.g. SubjectX union
            return copyWith(diagnosisX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'diagnosisCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(diagnosisX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'diagnosisReference':
        {
          if (child is Reference) {
            return copyWith(diagnosisX: child);
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
      case 'diagnosis':
      case 'diagnosisX':
        return ['CodeableConcept', 'Reference'];
      case 'diagnosisCodeableConcept':
        return ['CodeableConcept'];
      case 'diagnosisReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CoverageEligibilityRequestDiagnosis]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CoverageEligibilityRequestDiagnosis createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'diagnosis':
      case 'diagnosisX':
      case 'diagnosisCodeableConcept':
        {
          return copyWith(diagnosisX: CodeableConcept.empty());
        }
      case 'diagnosisReference':
        {
          return copyWith(diagnosisX: Reference.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  CoverageEligibilityRequestDiagnosis clone() => throw UnimplementedError();
  @override
  CoverageEligibilityRequestDiagnosis copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DiagnosisXCoverageEligibilityRequestDiagnosis? diagnosisX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CoverageEligibilityRequestDiagnosis(
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
      diagnosisX: diagnosisX?.copyWith(
            objectPath: '$newObjectPath.diagnosisX',
          ) as DiagnosisXCoverageEligibilityRequestDiagnosis? ??
          this.diagnosisX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CoverageEligibilityRequestDiagnosis) {
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
    if (!equalsDeepWithNull(diagnosisX, o.diagnosisX)) {
      return false;
    }
    return true;
  }
}
