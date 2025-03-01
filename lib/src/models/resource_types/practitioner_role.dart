import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [PractitionerRole]
/// A specific set of Roles/Locations/specialties/services that a
/// practitioner may perform at an organization for a period of time.
class PractitionerRole extends DomainResource {
  /// Primary constructor for
  /// [PractitionerRole]

  const PractitionerRole({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.period,
    this.practitioner,
    this.organization,
    this.code,
    this.specialty,
    this.location,
    this.healthcareService,
    this.telecom,
    this.availableTime,
    this.notAvailable,
    this.availabilityExceptions,
    this.endpoint,
  }) : super(
          objectPath: 'PractitionerRole',
          resourceType: R4ResourceType.PractitionerRole,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PractitionerRole.empty() => const PractitionerRole();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PractitionerRole.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PractitionerRole';
    return PractitionerRole(
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
      active: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'active',
        FhirBoolean.fromJson,
        '$objectPath.active',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
      practitioner: JsonParser.parseObject<Reference>(
        json,
        'practitioner',
        Reference.fromJson,
        '$objectPath.practitioner',
      ),
      organization: JsonParser.parseObject<Reference>(
        json,
        'organization',
        Reference.fromJson,
        '$objectPath.organization',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialty',
              },
            ),
          )
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.location',
              },
            ),
          )
          .toList(),
      healthcareService: (json['healthcareService'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.healthcareService',
              },
            ),
          )
          .toList(),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.telecom',
              },
            ),
          )
          .toList(),
      availableTime: (json['availableTime'] as List<dynamic>?)
          ?.map<PractitionerRoleAvailableTime>(
            (v) => PractitionerRoleAvailableTime.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.availableTime',
              },
            ),
          )
          .toList(),
      notAvailable: (json['notAvailable'] as List<dynamic>?)
          ?.map<PractitionerRoleNotAvailable>(
            (v) => PractitionerRoleNotAvailable.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.notAvailable',
              },
            ),
          )
          .toList(),
      availabilityExceptions: JsonParser.parsePrimitive<FhirString>(
        json,
        'availabilityExceptions',
        FhirString.fromJson,
        '$objectPath.availabilityExceptions',
      ),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endpoint',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PractitionerRole]
  /// from a [String] or [YamlMap] object
  factory PractitionerRole.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PractitionerRole.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PractitionerRole.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PractitionerRole '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PractitionerRole]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PractitionerRole.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PractitionerRole.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PractitionerRole';

  /// [identifier]
  /// Business Identifiers that are specific to a role/location.
  final List<Identifier>? identifier;

  /// [active]
  /// Whether this practitioner role record is in active use.
  final FhirBoolean? active;

  /// [period]
  /// The period during which the person is authorized to act as a
  /// practitioner in these role(s) for the organization.
  final Period? period;

  /// [practitioner]
  /// Practitioner that is able to provide the defined services for the
  /// organization.
  final Reference? practitioner;

  /// [organization]
  /// The organization where the Practitioner performs the roles associated.
  final Reference? organization;

  /// [code]
  /// Roles which this practitioner is authorized to perform for the
  /// organization.
  final List<CodeableConcept>? code;

  /// [specialty]
  /// Specific specialty of the practitioner.
  final List<CodeableConcept>? specialty;

  /// [location]
  /// The location(s) at which this practitioner provides care.
  final List<Reference>? location;

  /// [healthcareService]
  /// The list of healthcare services that this worker provides for this
  /// role's Organization/Location(s).
  final List<Reference>? healthcareService;

  /// [telecom]
  /// Contact details that are specific to the role/location/service.
  final List<ContactPoint>? telecom;

  /// [availableTime]
  /// A collection of times the practitioner is available or performing this
  /// role at the location and/or healthcareservice.
  final List<PractitionerRoleAvailableTime>? availableTime;

  /// [notAvailable]
  /// The practitioner is not available or performing this role during this
  /// period of time due to the provided reason.
  final List<PractitionerRoleNotAvailable>? notAvailable;

  /// [availabilityExceptions]
  /// A description of site availability exceptions, e.g. public holiday
  /// availability. Succinctly describing all possible exceptions to normal
  /// site availability as details in the available Times and not available
  /// Times.
  final FhirString? availabilityExceptions;

  /// [endpoint]
  /// Technical endpoints providing access to services operated for the
  /// practitioner with this role.
  final List<Reference>? endpoint;
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
    addField('active', active);
    addField('period', period);
    addField('practitioner', practitioner);
    addField('organization', organization);
    addField('code', code);
    addField('specialty', specialty);
    addField('location', location);
    addField('healthcareService', healthcareService);
    addField('telecom', telecom);
    addField('availableTime', availableTime);
    addField('notAvailable', notAvailable);
    addField('availabilityExceptions', availabilityExceptions);
    addField('endpoint', endpoint);
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
      'active',
      'period',
      'practitioner',
      'organization',
      'code',
      'specialty',
      'location',
      'healthcareService',
      'telecom',
      'availableTime',
      'notAvailable',
      'availabilityExceptions',
      'endpoint',
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
      case 'active':
        if (active != null) {
          fields.add(active!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'practitioner':
        if (practitioner != null) {
          fields.add(practitioner!);
        }
      case 'organization':
        if (organization != null) {
          fields.add(organization!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'specialty':
        if (specialty != null) {
          fields.addAll(specialty!);
        }
      case 'location':
        if (location != null) {
          fields.addAll(location!);
        }
      case 'healthcareService':
        if (healthcareService != null) {
          fields.addAll(healthcareService!);
        }
      case 'telecom':
        if (telecom != null) {
          fields.addAll(telecom!);
        }
      case 'availableTime':
        if (availableTime != null) {
          fields.addAll(availableTime!);
        }
      case 'notAvailable':
        if (notAvailable != null) {
          fields.addAll(notAvailable!);
        }
      case 'availabilityExceptions':
        if (availabilityExceptions != null) {
          fields.add(availabilityExceptions!);
        }
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
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
      case 'active':
        {
          if (child is FhirBoolean) {
            return copyWith(active: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'period':
        {
          if (child is Period) {
            return copyWith(period: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'practitioner':
        {
          if (child is Reference) {
            return copyWith(practitioner: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'organization':
        {
          if (child is Reference) {
            return copyWith(organization: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'specialty':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(specialty: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'location':
        {
          if (child is List<Reference>) {
            return copyWith(location: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'healthcareService':
        {
          if (child is List<Reference>) {
            return copyWith(healthcareService: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'telecom':
        {
          if (child is List<ContactPoint>) {
            return copyWith(telecom: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'availableTime':
        {
          if (child is List<PractitionerRoleAvailableTime>) {
            return copyWith(availableTime: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'notAvailable':
        {
          if (child is List<PractitionerRoleNotAvailable>) {
            return copyWith(notAvailable: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'availabilityExceptions':
        {
          if (child is FhirString) {
            return copyWith(availabilityExceptions: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'endpoint':
        {
          if (child is List<Reference>) {
            return copyWith(endpoint: child);
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
      case 'active':
        return ['FhirBoolean'];
      case 'period':
        return ['Period'];
      case 'practitioner':
        return ['Reference'];
      case 'organization':
        return ['Reference'];
      case 'code':
        return ['CodeableConcept'];
      case 'specialty':
        return ['CodeableConcept'];
      case 'location':
        return ['Reference'];
      case 'healthcareService':
        return ['Reference'];
      case 'telecom':
        return ['ContactPoint'];
      case 'availableTime':
        return ['PractitionerRoleAvailableTime'];
      case 'notAvailable':
        return ['PractitionerRoleNotAvailable'];
      case 'availabilityExceptions':
        return ['FhirString'];
      case 'endpoint':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  @override
  PractitionerRole clone() => throw UnimplementedError();
  @override
  PractitionerRole copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirBoolean? active,
    Period? period,
    Reference? practitioner,
    Reference? organization,
    List<CodeableConcept>? code,
    List<CodeableConcept>? specialty,
    List<Reference>? location,
    List<Reference>? healthcareService,
    List<ContactPoint>? telecom,
    List<PractitionerRoleAvailableTime>? availableTime,
    List<PractitionerRoleNotAvailable>? notAvailable,
    FhirString? availabilityExceptions,
    List<Reference>? endpoint,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return PractitionerRole(
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
      active: active?.copyWith(
            objectPath: '$newObjectPath.active',
          ) ??
          this.active,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      practitioner: practitioner?.copyWith(
            objectPath: '$newObjectPath.practitioner',
          ) ??
          this.practitioner,
      organization: organization?.copyWith(
            objectPath: '$newObjectPath.organization',
          ) ??
          this.organization,
      code: code
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.code',
                ),
              )
              .toList() ??
          this.code,
      specialty: specialty
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.specialty',
                ),
              )
              .toList() ??
          this.specialty,
      location: location
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.location',
                ),
              )
              .toList() ??
          this.location,
      healthcareService: healthcareService
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.healthcareService',
                ),
              )
              .toList() ??
          this.healthcareService,
      telecom: telecom
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.telecom',
                ),
              )
              .toList() ??
          this.telecom,
      availableTime: availableTime
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.availableTime',
                ),
              )
              .toList() ??
          this.availableTime,
      notAvailable: notAvailable
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.notAvailable',
                ),
              )
              .toList() ??
          this.notAvailable,
      availabilityExceptions: availabilityExceptions?.copyWith(
            objectPath: '$newObjectPath.availabilityExceptions',
          ) ??
          this.availabilityExceptions,
      endpoint: endpoint
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.endpoint',
                ),
              )
              .toList() ??
          this.endpoint,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PractitionerRole) {
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
    if (!equalsDeepWithNull(active, o.active)) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    if (!equalsDeepWithNull(practitioner, o.practitioner)) {
      return false;
    }
    if (!equalsDeepWithNull(organization, o.organization)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      specialty,
      o.specialty,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      healthcareService,
      o.healthcareService,
    )) {
      return false;
    }
    if (!listEquals<ContactPoint>(
      telecom,
      o.telecom,
    )) {
      return false;
    }
    if (!listEquals<PractitionerRoleAvailableTime>(
      availableTime,
      o.availableTime,
    )) {
      return false;
    }
    if (!listEquals<PractitionerRoleNotAvailable>(
      notAvailable,
      o.notAvailable,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(availabilityExceptions, o.availabilityExceptions)) {
      return false;
    }
    if (!listEquals<Reference>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    return true;
  }
}

/// [PractitionerRoleAvailableTime]
/// A collection of times the practitioner is available or performing this
/// role at the location and/or healthcareservice.
class PractitionerRoleAvailableTime extends BackboneElement {
  /// Primary constructor for
  /// [PractitionerRoleAvailableTime]

  const PractitionerRoleAvailableTime({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.daysOfWeek,
    this.allDay,
    this.availableStartTime,
    this.availableEndTime,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PractitionerRole.availableTime',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PractitionerRoleAvailableTime.empty() =>
      const PractitionerRoleAvailableTime();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PractitionerRoleAvailableTime.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PractitionerRole.availableTime';
    return PractitionerRoleAvailableTime(
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
      daysOfWeek: JsonParser.parsePrimitiveList<DaysOfWeek>(
        json,
        'daysOfWeek',
        DaysOfWeek.fromJson,
        '$objectPath.daysOfWeek',
      ),
      allDay: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'allDay',
        FhirBoolean.fromJson,
        '$objectPath.allDay',
      ),
      availableStartTime: JsonParser.parsePrimitive<FhirTime>(
        json,
        'availableStartTime',
        FhirTime.fromJson,
        '$objectPath.availableStartTime',
      ),
      availableEndTime: JsonParser.parsePrimitive<FhirTime>(
        json,
        'availableEndTime',
        FhirTime.fromJson,
        '$objectPath.availableEndTime',
      ),
    );
  }

  /// Deserialize [PractitionerRoleAvailableTime]
  /// from a [String] or [YamlMap] object
  factory PractitionerRoleAvailableTime.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PractitionerRoleAvailableTime.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PractitionerRoleAvailableTime.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PractitionerRoleAvailableTime '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PractitionerRoleAvailableTime]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PractitionerRoleAvailableTime.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PractitionerRoleAvailableTime.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PractitionerRoleAvailableTime';

  /// [daysOfWeek]
  /// Indicates which days of the week are available between the start and
  /// end Times.
  final List<DaysOfWeek>? daysOfWeek;

  /// [allDay]
  /// Is this always available? (hence times are irrelevant) e.g. 24 hour
  /// service.
  final FhirBoolean? allDay;

  /// [availableStartTime]
  /// The opening time of day. Note: If the AllDay flag is set, then this
  /// time is ignored.
  final FhirTime? availableStartTime;

  /// [availableEndTime]
  /// The closing time of day. Note: If the AllDay flag is set, then this
  /// time is ignored.
  final FhirTime? availableEndTime;
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
    addField('daysOfWeek', daysOfWeek);
    addField('allDay', allDay);
    addField('availableStartTime', availableStartTime);
    addField('availableEndTime', availableEndTime);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'daysOfWeek',
      'allDay',
      'availableStartTime',
      'availableEndTime',
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
      case 'daysOfWeek':
        if (daysOfWeek != null) {
          fields.addAll(daysOfWeek!);
        }
      case 'allDay':
        if (allDay != null) {
          fields.add(allDay!);
        }
      case 'availableStartTime':
        if (availableStartTime != null) {
          fields.add(availableStartTime!);
        }
      case 'availableEndTime':
        if (availableEndTime != null) {
          fields.add(availableEndTime!);
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
      case 'daysOfWeek':
        {
          if (child is List<DaysOfWeek>) {
            return copyWith(daysOfWeek: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'allDay':
        {
          if (child is FhirBoolean) {
            return copyWith(allDay: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'availableStartTime':
        {
          if (child is FhirTime) {
            return copyWith(availableStartTime: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'availableEndTime':
        {
          if (child is FhirTime) {
            return copyWith(availableEndTime: child);
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
      case 'daysOfWeek':
        return ['FhirCode'];
      case 'allDay':
        return ['FhirBoolean'];
      case 'availableStartTime':
        return ['FhirTime'];
      case 'availableEndTime':
        return ['FhirTime'];
      default:
        return <String>[];
    }
  }

  @override
  PractitionerRoleAvailableTime clone() => throw UnimplementedError();
  @override
  PractitionerRoleAvailableTime copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<DaysOfWeek>? daysOfWeek,
    FhirBoolean? allDay,
    FhirTime? availableStartTime,
    FhirTime? availableEndTime,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PractitionerRoleAvailableTime(
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
      daysOfWeek: daysOfWeek
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.daysOfWeek',
                ),
              )
              .toList() ??
          this.daysOfWeek,
      allDay: allDay?.copyWith(
            objectPath: '$newObjectPath.allDay',
          ) ??
          this.allDay,
      availableStartTime: availableStartTime?.copyWith(
            objectPath: '$newObjectPath.availableStartTime',
          ) ??
          this.availableStartTime,
      availableEndTime: availableEndTime?.copyWith(
            objectPath: '$newObjectPath.availableEndTime',
          ) ??
          this.availableEndTime,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PractitionerRoleAvailableTime) {
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
    if (!listEquals<DaysOfWeek>(
      daysOfWeek,
      o.daysOfWeek,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(allDay, o.allDay)) {
      return false;
    }
    if (!equalsDeepWithNull(availableStartTime, o.availableStartTime)) {
      return false;
    }
    if (!equalsDeepWithNull(availableEndTime, o.availableEndTime)) {
      return false;
    }
    return true;
  }
}

/// [PractitionerRoleNotAvailable]
/// The practitioner is not available or performing this role during this
/// period of time due to the provided reason.
class PractitionerRoleNotAvailable extends BackboneElement {
  /// Primary constructor for
  /// [PractitionerRoleNotAvailable]

  const PractitionerRoleNotAvailable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.during,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PractitionerRole.notAvailable',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PractitionerRoleNotAvailable.empty() => PractitionerRoleNotAvailable(
        description: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PractitionerRoleNotAvailable.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PractitionerRole.notAvailable';
    return PractitionerRoleNotAvailable(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      )!,
      during: JsonParser.parseObject<Period>(
        json,
        'during',
        Period.fromJson,
        '$objectPath.during',
      ),
    );
  }

  /// Deserialize [PractitionerRoleNotAvailable]
  /// from a [String] or [YamlMap] object
  factory PractitionerRoleNotAvailable.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PractitionerRoleNotAvailable.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PractitionerRoleNotAvailable.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PractitionerRoleNotAvailable '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PractitionerRoleNotAvailable]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PractitionerRoleNotAvailable.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PractitionerRoleNotAvailable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PractitionerRoleNotAvailable';

  /// [description]
  /// The reason that can be presented to the user as to why this time is not
  /// available.
  final FhirString description;

  /// [during]
  /// Service is not available (seasonally or for a public holiday) from this
  /// date.
  final Period? during;
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
    addField('description', description);
    addField('during', during);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'during',
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
      case 'description':
        fields.add(description);
      case 'during':
        if (during != null) {
          fields.add(during!);
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
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'during':
        {
          if (child is Period) {
            return copyWith(during: child);
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
      case 'description':
        return ['FhirString'];
      case 'during':
        return ['Period'];
      default:
        return <String>[];
    }
  }

  @override
  PractitionerRoleNotAvailable clone() => throw UnimplementedError();
  @override
  PractitionerRoleNotAvailable copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Period? during,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PractitionerRoleNotAvailable(
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      during: during?.copyWith(
            objectPath: '$newObjectPath.during',
          ) ??
          this.during,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PractitionerRoleNotAvailable) {
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
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(during, o.during)) {
      return false;
    }
    return true;
  }
}
