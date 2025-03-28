import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Dosage]
/// Indicates how the medication is/was taken or should be taken by the
/// patient.
class Dosage extends BackboneType
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [Dosage]

  const Dosage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.text,
    this.additionalInstruction,
    this.patientInstruction,
    this.timing,
    this.asNeededX,
    this.site,
    this.route,
    this.method,
    this.doseAndRate,
    this.maxDosePerPeriod,
    this.maxDosePerAdministration,
    this.maxDosePerLifetime,
    super.disallowExtensions,
    super.objectPath = 'Dosage',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Dosage.empty() => const Dosage();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Dosage.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Dosage';
    return Dosage(
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
      sequence: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'sequence',
        FhirInteger.fromJson,
        '$objectPath.sequence',
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
      ),
      additionalInstruction: (json['additionalInstruction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.additionalInstruction',
              },
            ),
          )
          .toList(),
      patientInstruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'patientInstruction',
        FhirString.fromJson,
        '$objectPath.patientInstruction',
      ),
      timing: JsonParser.parseObject<Timing>(
        json,
        'timing',
        Timing.fromJson,
        '$objectPath.timing',
      ),
      asNeededX: JsonParser.parsePolymorphic<AsNeededXDosage>(
        json,
        {
          'asNeededBoolean': FhirBoolean.fromJson,
          'asNeededCodeableConcept': CodeableConcept.fromJson,
        },
        objectPath,
      ),
      site: JsonParser.parseObject<CodeableConcept>(
        json,
        'site',
        CodeableConcept.fromJson,
        '$objectPath.site',
      ),
      route: JsonParser.parseObject<CodeableConcept>(
        json,
        'route',
        CodeableConcept.fromJson,
        '$objectPath.route',
      ),
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
        '$objectPath.method',
      ),
      doseAndRate: (json['doseAndRate'] as List<dynamic>?)
          ?.map<DosageDoseAndRate>(
            (v) => DosageDoseAndRate.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.doseAndRate',
              },
            ),
          )
          .toList(),
      maxDosePerPeriod: JsonParser.parseObject<Ratio>(
        json,
        'maxDosePerPeriod',
        Ratio.fromJson,
        '$objectPath.maxDosePerPeriod',
      ),
      maxDosePerAdministration: JsonParser.parseObject<Quantity>(
        json,
        'maxDosePerAdministration',
        Quantity.fromJson,
        '$objectPath.maxDosePerAdministration',
      ),
      maxDosePerLifetime: JsonParser.parseObject<Quantity>(
        json,
        'maxDosePerLifetime',
        Quantity.fromJson,
        '$objectPath.maxDosePerLifetime',
      ),
    );
  }

  /// Deserialize [Dosage]
  /// from a [String] or [YamlMap] object
  factory Dosage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Dosage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Dosage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Dosage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Dosage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Dosage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Dosage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Dosage';

  /// [sequence]
  /// Indicates the order in which the dosage instructions should be applied
  /// or interpreted.
  final FhirInteger? sequence;

  /// [text]
  /// Free text dosage instructions e.g. SIG.
  final FhirString? text;

  /// [additionalInstruction]
  /// Supplemental instructions to the patient on how to take the medication
  /// (e.g. "with meals" or"take half to one hour before food") or warnings
  /// for the patient about the medication (e.g. "may cause drowsiness" or
  /// "avoid exposure of skin to direct sunlight or sunlamps").
  final List<CodeableConcept>? additionalInstruction;

  /// [patientInstruction]
  /// Instructions in terms that are understood by the patient or consumer.
  final FhirString? patientInstruction;

  /// [timing]
  /// When medication should be administered.
  final Timing? timing;

  /// [asNeededX]
  /// Indicates whether the Medication is only taken when needed within a
  /// specific dosing schedule (Boolean option), or it indicates the
  /// precondition for taking the Medication (CodeableConcept).
  final AsNeededXDosage? asNeededX;

  /// Getter for [asNeededBoolean] as a FhirBoolean
  FhirBoolean? get asNeededBoolean => asNeededX?.isAs<FhirBoolean>();

  /// Getter for [asNeededCodeableConcept] as a CodeableConcept
  CodeableConcept? get asNeededCodeableConcept =>
      asNeededX?.isAs<CodeableConcept>();

  /// [site]
  /// Body site to administer to.
  final CodeableConcept? site;

  /// [route]
  /// How drug should enter body.
  final CodeableConcept? route;

  /// [method]
  /// Technique for administering medication.
  final CodeableConcept? method;

  /// [doseAndRate]
  /// The amount of medication administered.
  final List<DosageDoseAndRate>? doseAndRate;

  /// [maxDosePerPeriod]
  /// Upper limit on medication per unit of time.
  final Ratio? maxDosePerPeriod;

  /// [maxDosePerAdministration]
  /// Upper limit on medication per administration.
  final Quantity? maxDosePerAdministration;

  /// [maxDosePerLifetime]
  /// Upper limit on medication per lifetime of the patient.
  final Quantity? maxDosePerLifetime;
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'sequence',
      sequence,
    );
    addField(
      'text',
      text,
    );
    addField(
      'additionalInstruction',
      additionalInstruction,
    );
    addField(
      'patientInstruction',
      patientInstruction,
    );
    addField(
      'timing',
      timing,
    );
    if (asNeededX != null) {
      final fhirType = asNeededX!.fhirType;
      addField(
        'asNeeded${fhirType.capitalize()}',
        asNeededX,
      );
    }

    addField(
      'site',
      site,
    );
    addField(
      'route',
      route,
    );
    addField(
      'method',
      method,
    );
    addField(
      'doseAndRate',
      doseAndRate,
    );
    addField(
      'maxDosePerPeriod',
      maxDosePerPeriod,
    );
    addField(
      'maxDosePerAdministration',
      maxDosePerAdministration,
    );
    addField(
      'maxDosePerLifetime',
      maxDosePerLifetime,
    );
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
      'text',
      'additionalInstruction',
      'patientInstruction',
      'timing',
      'asNeededX',
      'site',
      'route',
      'method',
      'doseAndRate',
      'maxDosePerPeriod',
      'maxDosePerAdministration',
      'maxDosePerLifetime',
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
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'additionalInstruction':
        if (additionalInstruction != null) {
          fields.addAll(additionalInstruction!);
        }
      case 'patientInstruction':
        if (patientInstruction != null) {
          fields.add(patientInstruction!);
        }
      case 'timing':
        if (timing != null) {
          fields.add(timing!);
        }
      case 'asNeeded':
        fields.add(asNeededX!);
      case 'asNeededX':
        fields.add(asNeededX!);
      case 'asNeededBoolean':
        if (asNeededX is FhirBoolean) {
          fields.add(asNeededX!);
        }
      case 'asNeededCodeableConcept':
        if (asNeededX is CodeableConcept) {
          fields.add(asNeededX!);
        }
      case 'site':
        if (site != null) {
          fields.add(site!);
        }
      case 'route':
        if (route != null) {
          fields.add(route!);
        }
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'doseAndRate':
        if (doseAndRate != null) {
          fields.addAll(doseAndRate!);
        }
      case 'maxDosePerPeriod':
        if (maxDosePerPeriod != null) {
          fields.add(maxDosePerPeriod!);
        }
      case 'maxDosePerAdministration':
        if (maxDosePerAdministration != null) {
          fields.add(maxDosePerAdministration!);
        }
      case 'maxDosePerLifetime':
        if (maxDosePerLifetime != null) {
          fields.add(maxDosePerLifetime!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirInteger) {
            return copyWith(sequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is FhirString) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'additionalInstruction':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?additionalInstruction, ...child];
            return copyWith(additionalInstruction: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?additionalInstruction, child];
            return copyWith(additionalInstruction: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patientInstruction':
        {
          if (child is FhirString) {
            return copyWith(patientInstruction: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timing':
        {
          if (child is Timing) {
            return copyWith(timing: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'asNeededX':
        {
          if (child is AsNeededXDosage) {
            return copyWith(asNeededX: child);
          } else {
            if (child is FhirBoolean) {
              return copyWith(asNeededX: child);
            }
            if (child is CodeableConcept) {
              return copyWith(asNeededX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'asNeededFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(asNeededX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'asNeededCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(asNeededX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'site':
        {
          if (child is CodeableConcept) {
            return copyWith(site: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'route':
        {
          if (child is CodeableConcept) {
            return copyWith(route: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'method':
        {
          if (child is CodeableConcept) {
            return copyWith(method: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseAndRate':
        {
          if (child is List<DosageDoseAndRate>) {
            // Add all elements from passed list
            final newList = [...?doseAndRate, ...child];
            return copyWith(doseAndRate: newList);
          } else if (child is DosageDoseAndRate) {
            // Add single element to existing list or create new list
            final newList = [...?doseAndRate, child];
            return copyWith(doseAndRate: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxDosePerPeriod':
        {
          if (child is Ratio) {
            return copyWith(maxDosePerPeriod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxDosePerAdministration':
        {
          if (child is Quantity) {
            return copyWith(maxDosePerAdministration: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxDosePerLifetime':
        {
          if (child is Quantity) {
            return copyWith(maxDosePerLifetime: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'sequence':
        return ['FhirInteger'];
      case 'text':
        return ['FhirString'];
      case 'additionalInstruction':
        return ['CodeableConcept'];
      case 'patientInstruction':
        return ['FhirString'];
      case 'timing':
        return ['Timing'];
      case 'asNeeded':
      case 'asNeededX':
        return ['FhirBoolean', 'CodeableConcept'];
      case 'asNeededBoolean':
        return ['FhirBoolean'];
      case 'asNeededCodeableConcept':
        return ['CodeableConcept'];
      case 'site':
        return ['CodeableConcept'];
      case 'route':
        return ['CodeableConcept'];
      case 'method':
        return ['CodeableConcept'];
      case 'doseAndRate':
        return ['DosageDoseAndRate'];
      case 'maxDosePerPeriod':
        return ['Ratio'];
      case 'maxDosePerAdministration':
        return ['Quantity'];
      case 'maxDosePerLifetime':
        return ['Quantity'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Dosage]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Dosage createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'sequence':
        {
          return copyWith(
            sequence: FhirInteger.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: FhirString.empty(),
          );
        }
      case 'additionalInstruction':
        {
          return copyWith(
            additionalInstruction: <CodeableConcept>[],
          );
        }
      case 'patientInstruction':
        {
          return copyWith(
            patientInstruction: FhirString.empty(),
          );
        }
      case 'timing':
        {
          return copyWith(
            timing: Timing.empty(),
          );
        }
      case 'asNeeded':
      case 'asNeededX':
      case 'asNeededBoolean':
        {
          return copyWith(
            asNeededX: FhirBoolean.empty(),
          );
        }
      case 'asNeededCodeableConcept':
        {
          return copyWith(
            asNeededX: CodeableConcept.empty(),
          );
        }
      case 'site':
        {
          return copyWith(
            site: CodeableConcept.empty(),
          );
        }
      case 'route':
        {
          return copyWith(
            route: CodeableConcept.empty(),
          );
        }
      case 'method':
        {
          return copyWith(
            method: CodeableConcept.empty(),
          );
        }
      case 'doseAndRate':
        {
          return copyWith(
            doseAndRate: <DosageDoseAndRate>[],
          );
        }
      case 'maxDosePerPeriod':
        {
          return copyWith(
            maxDosePerPeriod: Ratio.empty(),
          );
        }
      case 'maxDosePerAdministration':
        {
          return copyWith(
            maxDosePerAdministration: Quantity.empty(),
          );
        }
      case 'maxDosePerLifetime':
        {
          return copyWith(
            maxDosePerLifetime: Quantity.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Dosage clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool sequence = false,
    bool text = false,
    bool additionalInstruction = false,
    bool patientInstruction = false,
    bool timing = false,
    bool asNeeded = false,
    bool site = false,
    bool route = false,
    bool method = false,
    bool doseAndRate = false,
    bool maxDosePerPeriod = false,
    bool maxDosePerAdministration = false,
    bool maxDosePerLifetime = false,
  }) {
    return Dosage(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      sequence: sequence ? null : this.sequence,
      text: text ? null : this.text,
      additionalInstruction:
          additionalInstruction ? null : this.additionalInstruction,
      patientInstruction: patientInstruction ? null : this.patientInstruction,
      timing: timing ? null : this.timing,
      asNeededX: asNeeded ? null : asNeededX,
      site: site ? null : this.site,
      route: route ? null : this.route,
      method: method ? null : this.method,
      doseAndRate: doseAndRate ? null : this.doseAndRate,
      maxDosePerPeriod: maxDosePerPeriod ? null : this.maxDosePerPeriod,
      maxDosePerAdministration:
          maxDosePerAdministration ? null : this.maxDosePerAdministration,
      maxDosePerLifetime: maxDosePerLifetime ? null : this.maxDosePerLifetime,
    );
  }

  @override
  Dosage clone() => throw UnimplementedError();
  @override
  Dosage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? sequence,
    FhirString? text,
    List<CodeableConcept>? additionalInstruction,
    FhirString? patientInstruction,
    Timing? timing,
    AsNeededXDosage? asNeededX,
    CodeableConcept? site,
    CodeableConcept? route,
    CodeableConcept? method,
    List<DosageDoseAndRate>? doseAndRate,
    Ratio? maxDosePerPeriod,
    Quantity? maxDosePerAdministration,
    Quantity? maxDosePerLifetime,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Dosage(
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
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      additionalInstruction: additionalInstruction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.additionalInstruction',
                ),
              )
              .toList() ??
          this.additionalInstruction,
      patientInstruction: patientInstruction?.copyWith(
            objectPath: '$newObjectPath.patientInstruction',
          ) ??
          this.patientInstruction,
      timing: timing?.copyWith(
            objectPath: '$newObjectPath.timing',
          ) ??
          this.timing,
      asNeededX: asNeededX?.copyWith(
            objectPath: '$newObjectPath.asNeededX',
          ) as AsNeededXDosage? ??
          this.asNeededX,
      site: site?.copyWith(
            objectPath: '$newObjectPath.site',
          ) ??
          this.site,
      route: route?.copyWith(
            objectPath: '$newObjectPath.route',
          ) ??
          this.route,
      method: method?.copyWith(
            objectPath: '$newObjectPath.method',
          ) ??
          this.method,
      doseAndRate: doseAndRate
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.doseAndRate',
                ),
              )
              .toList() ??
          this.doseAndRate,
      maxDosePerPeriod: maxDosePerPeriod?.copyWith(
            objectPath: '$newObjectPath.maxDosePerPeriod',
          ) ??
          this.maxDosePerPeriod,
      maxDosePerAdministration: maxDosePerAdministration?.copyWith(
            objectPath: '$newObjectPath.maxDosePerAdministration',
          ) ??
          this.maxDosePerAdministration,
      maxDosePerLifetime: maxDosePerLifetime?.copyWith(
            objectPath: '$newObjectPath.maxDosePerLifetime',
          ) ??
          this.maxDosePerLifetime,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Dosage) {
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
    if (!equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      additionalInstruction,
      o.additionalInstruction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patientInstruction,
      o.patientInstruction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timing,
      o.timing,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      asNeededX,
      o.asNeededX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      site,
      o.site,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      route,
      o.route,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    if (!listEquals<DosageDoseAndRate>(
      doseAndRate,
      o.doseAndRate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxDosePerPeriod,
      o.maxDosePerPeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxDosePerAdministration,
      o.maxDosePerAdministration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxDosePerLifetime,
      o.maxDosePerLifetime,
    )) {
      return false;
    }
    return true;
  }
}

/// [DosageDoseAndRate]
/// The amount of medication administered.
class DosageDoseAndRate extends Element {
  /// Primary constructor for
  /// [DosageDoseAndRate]

  const DosageDoseAndRate({
    super.id,
    super.extension_,
    this.type,
    this.doseX,
    this.rateX,
    super.disallowExtensions,
    super.objectPath = 'DosageDoseAndRate',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DosageDoseAndRate.empty() => const DosageDoseAndRate();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DosageDoseAndRate.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'DosageDoseAndRate';
    return DosageDoseAndRate(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      doseX: JsonParser.parsePolymorphic<DoseXDosageDoseAndRate>(
        json,
        {
          'doseRange': Range.fromJson,
          'doseQuantity': Quantity.fromJson,
        },
        objectPath,
      ),
      rateX: JsonParser.parsePolymorphic<RateXDosageDoseAndRate>(
        json,
        {
          'rateRatio': Ratio.fromJson,
          'rateRange': Range.fromJson,
          'rateQuantity': Quantity.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [DosageDoseAndRate]
  /// from a [String] or [YamlMap] object
  factory DosageDoseAndRate.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DosageDoseAndRate.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DosageDoseAndRate.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DosageDoseAndRate '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DosageDoseAndRate]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DosageDoseAndRate.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DosageDoseAndRate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DosageDoseAndRate';

  /// [type]
  /// The kind of dose or rate specified, for example, ordered or calculated.
  final CodeableConcept? type;

  /// [doseX]
  /// Amount of medication per dose.
  final DoseXDosageDoseAndRate? doseX;

  /// Getter for [doseRange] as a Range
  Range? get doseRange => doseX?.isAs<Range>();

  /// Getter for [doseQuantity] as a Quantity
  Quantity? get doseQuantity => doseX?.isAs<Quantity>();

  /// [rateX]
  /// Amount of medication per unit of time.
  final RateXDosageDoseAndRate? rateX;

  /// Getter for [rateRatio] as a Ratio
  Ratio? get rateRatio => rateX?.isAs<Ratio>();

  /// Getter for [rateRange] as a Range
  Range? get rateRange => rateX?.isAs<Range>();

  /// Getter for [rateQuantity] as a Quantity
  Quantity? get rateQuantity => rateX?.isAs<Quantity>();
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'type',
      type,
    );
    if (doseX != null) {
      final fhirType = doseX!.fhirType;
      addField(
        'dose${fhirType.capitalize()}',
        doseX,
      );
    }

    if (rateX != null) {
      final fhirType = rateX!.fhirType;
      addField(
        'rate${fhirType.capitalize()}',
        rateX,
      );
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'type',
      'doseX',
      'rateX',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'dose':
        fields.add(doseX!);
      case 'doseX':
        fields.add(doseX!);
      case 'doseRange':
        if (doseX is Range) {
          fields.add(doseX!);
        }
      case 'doseQuantity':
        if (doseX is Quantity) {
          fields.add(doseX!);
        }
      case 'rate':
        fields.add(rateX!);
      case 'rateX':
        fields.add(rateX!);
      case 'rateRatio':
        if (rateX is Ratio) {
          fields.add(rateX!);
        }
      case 'rateRange':
        if (rateX is Range) {
          fields.add(rateX!);
        }
      case 'rateQuantity':
        if (rateX is Quantity) {
          fields.add(rateX!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseX':
        {
          if (child is DoseXDosageDoseAndRate) {
            return copyWith(doseX: child);
          } else {
            if (child is Range) {
              return copyWith(doseX: child);
            }
            if (child is Quantity) {
              return copyWith(doseX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseRange':
        {
          if (child is Range) {
            return copyWith(doseX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseQuantity':
        {
          if (child is Quantity) {
            return copyWith(doseX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rateX':
        {
          if (child is RateXDosageDoseAndRate) {
            return copyWith(rateX: child);
          } else {
            if (child is Ratio) {
              return copyWith(rateX: child);
            }
            if (child is Range) {
              return copyWith(rateX: child);
            }
            if (child is Quantity) {
              return copyWith(rateX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rateRatio':
        {
          if (child is Ratio) {
            return copyWith(rateX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rateRange':
        {
          if (child is Range) {
            return copyWith(rateX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rateQuantity':
        {
          if (child is Quantity) {
            return copyWith(rateX: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'dose':
      case 'doseX':
        return ['Range', 'Quantity'];
      case 'doseRange':
        return ['Range'];
      case 'doseQuantity':
        return ['Quantity'];
      case 'rate':
      case 'rateX':
        return ['Ratio', 'Range', 'Quantity'];
      case 'rateRatio':
        return ['Ratio'];
      case 'rateRange':
        return ['Range'];
      case 'rateQuantity':
        return ['Quantity'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DosageDoseAndRate]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DosageDoseAndRate createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'dose':
      case 'doseX':
      case 'doseRange':
        {
          return copyWith(
            doseX: Range.empty(),
          );
        }
      case 'doseQuantity':
        {
          return copyWith(
            doseX: Quantity.empty(),
          );
        }
      case 'rate':
      case 'rateX':
      case 'rateRatio':
        {
          return copyWith(
            rateX: Ratio.empty(),
          );
        }
      case 'rateRange':
        {
          return copyWith(
            rateX: Range.empty(),
          );
        }
      case 'rateQuantity':
        {
          return copyWith(
            rateX: Quantity.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DosageDoseAndRate clear({
    bool id = false,
    bool extension_ = false,
    bool type = false,
    bool dose = false,
    bool rate = false,
  }) {
    return DosageDoseAndRate(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      type: type ? null : this.type,
      doseX: dose ? null : doseX,
      rateX: rate ? null : rateX,
    );
  }

  @override
  DosageDoseAndRate clone() => throw UnimplementedError();
  @override
  DosageDoseAndRate copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    CodeableConcept? type,
    DoseXDosageDoseAndRate? doseX,
    RateXDosageDoseAndRate? rateX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return DosageDoseAndRate(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      doseX: doseX?.copyWith(
            objectPath: '$newObjectPath.doseX',
          ) as DoseXDosageDoseAndRate? ??
          this.doseX,
      rateX: rateX?.copyWith(
            objectPath: '$newObjectPath.rateX',
          ) as RateXDosageDoseAndRate? ??
          this.rateX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DosageDoseAndRate) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
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
      doseX,
      o.doseX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rateX,
      o.rateX,
    )) {
      return false;
    }
    return true;
  }
}
