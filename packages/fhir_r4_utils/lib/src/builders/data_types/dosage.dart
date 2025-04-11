import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        Dosage,
        DosageDoseAndRate,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [DosageBuilder]
/// Indicates how the medication is/was taken or should be taken by the
/// patient.
class DosageBuilder extends BackboneTypeBuilder
    implements
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Primary constructor for
  /// [DosageBuilder]

  DosageBuilder({
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
    super.objectPath = 'DosageBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DosageBuilder.empty() => DosageBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DosageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Dosage';
    return DosageBuilder(
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
      sequence: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'sequence',
        FhirIntegerBuilder.fromJson,
        '$objectPath.sequence',
      ),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
      additionalInstruction: (json['additionalInstruction'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.additionalInstruction',
              },
            ),
          )
          .toList(),
      patientInstruction: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'patientInstruction',
        FhirStringBuilder.fromJson,
        '$objectPath.patientInstruction',
      ),
      timing: JsonParser.parseObject<TimingBuilder>(
        json,
        'timing',
        TimingBuilder.fromJson,
        '$objectPath.timing',
      ),
      asNeededX: JsonParser.parsePolymorphic<AsNeededXDosageBuilder>(
        json,
        {
          'asNeededBoolean': FhirBooleanBuilder.fromJson,
          'asNeededCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
      site: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'site',
        CodeableConceptBuilder.fromJson,
        '$objectPath.site',
      ),
      route: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'route',
        CodeableConceptBuilder.fromJson,
        '$objectPath.route',
      ),
      method: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'method',
        CodeableConceptBuilder.fromJson,
        '$objectPath.method',
      ),
      doseAndRate: (json['doseAndRate'] as List<dynamic>?)
          ?.map<DosageDoseAndRateBuilder>(
            (v) => DosageDoseAndRateBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.doseAndRate',
              },
            ),
          )
          .toList(),
      maxDosePerPeriod: JsonParser.parseObject<RatioBuilder>(
        json,
        'maxDosePerPeriod',
        RatioBuilder.fromJson,
        '$objectPath.maxDosePerPeriod',
      ),
      maxDosePerAdministration: JsonParser.parseObject<QuantityBuilder>(
        json,
        'maxDosePerAdministration',
        QuantityBuilder.fromJson,
        '$objectPath.maxDosePerAdministration',
      ),
      maxDosePerLifetime: JsonParser.parseObject<QuantityBuilder>(
        json,
        'maxDosePerLifetime',
        QuantityBuilder.fromJson,
        '$objectPath.maxDosePerLifetime',
      ),
    );
  }

  /// Deserialize [DosageBuilder]
  /// from a [String] or [YamlMap] object
  factory DosageBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DosageBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DosageBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DosageBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DosageBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DosageBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DosageBuilder.fromJson(json);
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
  FhirIntegerBuilder? sequence;

  /// [text]
  /// Free text dosage instructions e.g. SIG.
  FhirStringBuilder? text;

  /// [additionalInstruction]
  /// Supplemental instructions to the patient on how to take the medication
  /// (e.g. "with meals" or"take half to one hour before food") or warnings
  /// for the patient about the medication (e.g. "may cause drowsiness" or
  /// "avoid exposure of skin to direct sunlight or sunlamps").
  List<CodeableConceptBuilder>? additionalInstruction;

  /// [patientInstruction]
  /// Instructions in terms that are understood by the patient or consumer.
  FhirStringBuilder? patientInstruction;

  /// [timing]
  /// When medication should be administered.
  TimingBuilder? timing;

  /// [asNeededX]
  /// Indicates whether the Medication is only taken when needed within a
  /// specific dosing schedule (Boolean option), or it indicates the
  /// precondition for taking the Medication (CodeableConcept).
  AsNeededXDosageBuilder? asNeededX;

  /// Getter for [asNeededBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get asNeededBoolean =>
      asNeededX?.isAs<FhirBooleanBuilder>();

  /// Getter for [asNeededCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get asNeededCodeableConcept =>
      asNeededX?.isAs<CodeableConceptBuilder>();

  /// [site]
  /// Body site to administer to.
  CodeableConceptBuilder? site;

  /// [route]
  /// How drug should enter body.
  CodeableConceptBuilder? route;

  /// [method]
  /// Technique for administering medication.
  CodeableConceptBuilder? method;

  /// [doseAndRate]
  /// The amount of medication administered.
  List<DosageDoseAndRateBuilder>? doseAndRate;

  /// [maxDosePerPeriod]
  /// Upper limit on medication per unit of time.
  RatioBuilder? maxDosePerPeriod;

  /// [maxDosePerAdministration]
  /// Upper limit on medication per administration.
  QuantityBuilder? maxDosePerAdministration;

  /// [maxDosePerLifetime]
  /// Upper limit on medication per lifetime of the patient.
  QuantityBuilder? maxDosePerLifetime;

  /// Converts a [DosageBuilder]
  /// to [Dosage]
  @override
  Dosage build() => Dosage.fromJson(toJson());

  /// Converts a [DosageBuilder]
  /// to a [Map<String, dynamic>]
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
    addField('text', text);
    addField('additionalInstruction', additionalInstruction);
    addField('patientInstruction', patientInstruction);
    addField('timing', timing);
    if (asNeededX != null) {
      final fhirType = asNeededX!.fhirType;
      addField('asNeeded${fhirType.capitalize()}', asNeededX);
    }

    addField('site', site);
    addField('route', route);
    addField('method', method);
    addField('doseAndRate', doseAndRate);
    addField('maxDosePerPeriod', maxDosePerPeriod);
    addField('maxDosePerAdministration', maxDosePerAdministration);
    addField('maxDosePerLifetime', maxDosePerLifetime);
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
        if (asNeededX != null) {
          fields.add(asNeededX!);
        }
      case 'asNeededX':
        if (asNeededX != null) {
          fields.add(asNeededX!);
        }
      case 'asNeededBoolean':
        if (asNeededX is FhirBooleanBuilder) {
          fields.add(asNeededX!);
        }
      case 'asNeededCodeableConcept':
        if (asNeededX is CodeableConceptBuilder) {
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sequence':
        {
          if (child is FhirIntegerBuilder) {
            sequence = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  sequence = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                text = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'additionalInstruction':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            additionalInstruction = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            additionalInstruction = [
              ...(additionalInstruction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'patientInstruction':
        {
          if (child is FhirStringBuilder) {
            patientInstruction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                patientInstruction = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timing':
        {
          if (child is TimingBuilder) {
            timing = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'asNeeded':
      case 'asNeededX':
        {
          if (child is AsNeededXDosageBuilder) {
            asNeededX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              asNeededX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              asNeededX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'asNeededBoolean':
        {
          if (child is FhirBooleanBuilder) {
            asNeededX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'asNeededCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            asNeededX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'site':
        {
          if (child is CodeableConceptBuilder) {
            site = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'route':
        {
          if (child is CodeableConceptBuilder) {
            route = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'method':
        {
          if (child is CodeableConceptBuilder) {
            method = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseAndRate':
        {
          if (child is List<DosageDoseAndRateBuilder>) {
            // Replace or create new list
            doseAndRate = child;
            return;
          } else if (child is DosageDoseAndRateBuilder) {
            // Add single element to existing list or create new list
            doseAndRate = [
              ...(doseAndRate ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxDosePerPeriod':
        {
          if (child is RatioBuilder) {
            maxDosePerPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxDosePerAdministration':
        {
          if (child is QuantityBuilder) {
            maxDosePerAdministration = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxDosePerLifetime':
        {
          if (child is QuantityBuilder) {
            maxDosePerLifetime = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirIntegerBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      case 'additionalInstruction':
        return ['CodeableConceptBuilder'];
      case 'patientInstruction':
        return ['FhirStringBuilder'];
      case 'timing':
        return ['TimingBuilder'];
      case 'asNeeded':
      case 'asNeededX':
        return [
          'FhirBooleanBuilder',
          'CodeableConceptBuilder',
        ];
      case 'asNeededBoolean':
        return ['FhirBooleanBuilder'];
      case 'asNeededCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'site':
        return ['CodeableConceptBuilder'];
      case 'route':
        return ['CodeableConceptBuilder'];
      case 'method':
        return ['CodeableConceptBuilder'];
      case 'doseAndRate':
        return ['DosageDoseAndRateBuilder'];
      case 'maxDosePerPeriod':
        return ['RatioBuilder'];
      case 'maxDosePerAdministration':
        return ['QuantityBuilder'];
      case 'maxDosePerLifetime':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DosageBuilder]
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
          sequence = FhirIntegerBuilder.empty();
          return;
        }
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      case 'additionalInstruction':
        {
          additionalInstruction = <CodeableConceptBuilder>[];
          return;
        }
      case 'patientInstruction':
        {
          patientInstruction = FhirStringBuilder.empty();
          return;
        }
      case 'timing':
        {
          timing = TimingBuilder.empty();
          return;
        }
      case 'asNeeded':
      case 'asNeededX':
      case 'asNeededBoolean':
        {
          asNeededX = FhirBooleanBuilder.empty();
          return;
        }
      case 'asNeededCodeableConcept':
        {
          asNeededX = CodeableConceptBuilder.empty();
          return;
        }
      case 'site':
        {
          site = CodeableConceptBuilder.empty();
          return;
        }
      case 'route':
        {
          route = CodeableConceptBuilder.empty();
          return;
        }
      case 'method':
        {
          method = CodeableConceptBuilder.empty();
          return;
        }
      case 'doseAndRate':
        {
          doseAndRate = <DosageDoseAndRateBuilder>[];
          return;
        }
      case 'maxDosePerPeriod':
        {
          maxDosePerPeriod = RatioBuilder.empty();
          return;
        }
      case 'maxDosePerAdministration':
        {
          maxDosePerAdministration = QuantityBuilder.empty();
          return;
        }
      case 'maxDosePerLifetime':
        {
          maxDosePerLifetime = QuantityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DosageBuilder clone() => throw UnimplementedError();
  @override
  DosageBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIntegerBuilder? sequence,
    FhirStringBuilder? text,
    List<CodeableConceptBuilder>? additionalInstruction,
    FhirStringBuilder? patientInstruction,
    TimingBuilder? timing,
    AsNeededXDosageBuilder? asNeededX,
    CodeableConceptBuilder? site,
    CodeableConceptBuilder? route,
    CodeableConceptBuilder? method,
    List<DosageDoseAndRateBuilder>? doseAndRate,
    RatioBuilder? maxDosePerPeriod,
    QuantityBuilder? maxDosePerAdministration,
    QuantityBuilder? maxDosePerLifetime,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = DosageBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      text: text ?? this.text,
      additionalInstruction:
          additionalInstruction ?? this.additionalInstruction,
      patientInstruction: patientInstruction ?? this.patientInstruction,
      timing: timing ?? this.timing,
      asNeededX: asNeededX ?? this.asNeededX,
      site: site ?? this.site,
      route: route ?? this.route,
      method: method ?? this.method,
      doseAndRate: doseAndRate ?? this.doseAndRate,
      maxDosePerPeriod: maxDosePerPeriod ?? this.maxDosePerPeriod,
      maxDosePerAdministration:
          maxDosePerAdministration ?? this.maxDosePerAdministration,
      maxDosePerLifetime: maxDosePerLifetime ?? this.maxDosePerLifetime,
    )..objectPath = newObjectPath;
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
    if (o is! DosageBuilder) {
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
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<DosageDoseAndRateBuilder>(
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

/// [DosageDoseAndRateBuilder]
/// The amount of medication administered.
class DosageDoseAndRateBuilder extends ElementBuilder {
  /// Primary constructor for
  /// [DosageDoseAndRateBuilder]

  DosageDoseAndRateBuilder({
    super.id,
    super.extension_,
    this.type,
    this.doseX,
    this.rateX,
    super.disallowExtensions,
    super.objectPath = 'DosageDoseAndRateBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DosageDoseAndRateBuilder.empty() => DosageDoseAndRateBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DosageDoseAndRateBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'DosageDoseAndRate';
    return DosageDoseAndRateBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      doseX: JsonParser.parsePolymorphic<DoseXDosageDoseAndRateBuilder>(
        json,
        {
          'doseRange': RangeBuilder.fromJson,
          'doseQuantity': QuantityBuilder.fromJson,
        },
        objectPath,
      ),
      rateX: JsonParser.parsePolymorphic<RateXDosageDoseAndRateBuilder>(
        json,
        {
          'rateRatio': RatioBuilder.fromJson,
          'rateRange': RangeBuilder.fromJson,
          'rateQuantity': QuantityBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [DosageDoseAndRateBuilder]
  /// from a [String] or [YamlMap] object
  factory DosageDoseAndRateBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DosageDoseAndRateBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DosageDoseAndRateBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DosageDoseAndRateBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DosageDoseAndRateBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DosageDoseAndRateBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DosageDoseAndRateBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DosageDoseAndRate';

  /// [type]
  /// The kind of dose or rate specified, for example, ordered or calculated.
  CodeableConceptBuilder? type;

  /// [doseX]
  /// Amount of medication per dose.
  DoseXDosageDoseAndRateBuilder? doseX;

  /// Getter for [doseRange] as a RangeBuilder
  RangeBuilder? get doseRange => doseX?.isAs<RangeBuilder>();

  /// Getter for [doseQuantity] as a QuantityBuilder
  QuantityBuilder? get doseQuantity => doseX?.isAs<QuantityBuilder>();

  /// [rateX]
  /// Amount of medication per unit of time.
  RateXDosageDoseAndRateBuilder? rateX;

  /// Getter for [rateRatio] as a RatioBuilder
  RatioBuilder? get rateRatio => rateX?.isAs<RatioBuilder>();

  /// Getter for [rateRange] as a RangeBuilder
  RangeBuilder? get rateRange => rateX?.isAs<RangeBuilder>();

  /// Getter for [rateQuantity] as a QuantityBuilder
  QuantityBuilder? get rateQuantity => rateX?.isAs<QuantityBuilder>();

  /// Converts a [DosageDoseAndRateBuilder]
  /// to [DosageDoseAndRate]
  @override
  DosageDoseAndRate build() => DosageDoseAndRate.fromJson(toJson());

  /// Converts a [DosageDoseAndRateBuilder]
  /// to a [Map<String, dynamic>]
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
    addField('type', type);
    if (doseX != null) {
      final fhirType = doseX!.fhirType;
      addField('dose${fhirType.capitalize()}', doseX);
    }

    if (rateX != null) {
      final fhirType = rateX!.fhirType;
      addField('rate${fhirType.capitalize()}', rateX);
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'dose':
        if (doseX != null) {
          fields.add(doseX!);
        }
      case 'doseX':
        if (doseX != null) {
          fields.add(doseX!);
        }
      case 'doseRange':
        if (doseX is RangeBuilder) {
          fields.add(doseX!);
        }
      case 'doseQuantity':
        if (doseX is QuantityBuilder) {
          fields.add(doseX!);
        }
      case 'rate':
        if (rateX != null) {
          fields.add(rateX!);
        }
      case 'rateX':
        if (rateX != null) {
          fields.add(rateX!);
        }
      case 'rateRatio':
        if (rateX is RatioBuilder) {
          fields.add(rateX!);
        }
      case 'rateRange':
        if (rateX is RangeBuilder) {
          fields.add(rateX!);
        }
      case 'rateQuantity':
        if (rateX is QuantityBuilder) {
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dose':
      case 'doseX':
        {
          if (child is DoseXDosageDoseAndRateBuilder) {
            doseX = child;
            return;
          } else {
            if (child is RangeBuilder) {
              doseX = child;
              return;
            }
            if (child is QuantityBuilder) {
              doseX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseRange':
        {
          if (child is RangeBuilder) {
            doseX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseQuantity':
        {
          if (child is QuantityBuilder) {
            doseX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rate':
      case 'rateX':
        {
          if (child is RateXDosageDoseAndRateBuilder) {
            rateX = child;
            return;
          } else {
            if (child is RatioBuilder) {
              rateX = child;
              return;
            }
            if (child is RangeBuilder) {
              rateX = child;
              return;
            }
            if (child is QuantityBuilder) {
              rateX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rateRatio':
        {
          if (child is RatioBuilder) {
            rateX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rateRange':
        {
          if (child is RangeBuilder) {
            rateX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rateQuantity':
        {
          if (child is QuantityBuilder) {
            rateX = child;
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'dose':
      case 'doseX':
        return [
          'RangeBuilder',
          'QuantityBuilder',
        ];
      case 'doseRange':
        return ['RangeBuilder'];
      case 'doseQuantity':
        return ['QuantityBuilder'];
      case 'rate':
      case 'rateX':
        return [
          'RatioBuilder',
          'RangeBuilder',
          'QuantityBuilder',
        ];
      case 'rateRatio':
        return ['RatioBuilder'];
      case 'rateRange':
        return ['RangeBuilder'];
      case 'rateQuantity':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DosageDoseAndRateBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'dose':
      case 'doseX':
      case 'doseRange':
        {
          doseX = RangeBuilder.empty();
          return;
        }
      case 'doseQuantity':
        {
          doseX = QuantityBuilder.empty();
          return;
        }
      case 'rate':
      case 'rateX':
      case 'rateRatio':
        {
          rateX = RatioBuilder.empty();
          return;
        }
      case 'rateRange':
        {
          rateX = RangeBuilder.empty();
          return;
        }
      case 'rateQuantity':
        {
          rateX = QuantityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DosageDoseAndRateBuilder clone() => throw UnimplementedError();
  @override
  DosageDoseAndRateBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    CodeableConceptBuilder? type,
    DoseXDosageDoseAndRateBuilder? doseX,
    RateXDosageDoseAndRateBuilder? rateX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = DosageDoseAndRateBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      doseX: doseX ?? this.doseX,
      rateX: rateX ?? this.rateX,
    )..objectPath = newObjectPath;
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
    if (o is! DosageDoseAndRateBuilder) {
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
