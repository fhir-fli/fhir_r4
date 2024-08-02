// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'administrable_product_definition.freezed.dart';
part 'administrable_product_definition.g.dart';

@freezed
class AdministrableProductDefinition
    with _$AdministrableProductDefinition
    implements DomainResource {
  const AdministrableProductDefinition._();

  ///
  /// [AdministrableProductDefinition] A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).",
  ///
  /// [resourceType] This is a AdministrableProductDefinition resource",
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.",
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] The identifier(s) of this Ingredient that are assigned by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate.;
  ///
  /// [status] The status of this ingredient. Enables tracking the life-cycle of the content.;
  ///
  /// [statusElement] (_status): Extensions for status;
  ///
  const factory AdministrableProductDefinition({
    @Default(R4ResourceType.AdministrableProductDefinition)

    /// [resourceType] This is a AdministrableProductDefinition resource",
    R4ResourceType resourceType,
    String? id,

    /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
    FhirUri? implicitRules,

    /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.;
    FhirCode? language,

    /// [languageElement] (_language): Extensions for language;
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] The identifier(s) of this Ingredient that are assigned by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate.;
    List<Identifier>? identifier,

    /// [status] The status of this ingredient. Enables tracking the life-cycle of the content.;
    FhirCode? status,

    /// [statusElement] (_status): Extensions for status;
    @JsonKey(name: '_status') PrimitiveElement? statusElement,
    List<Reference>? formOf,
    CodeableConcept? administrableDoseForm,
    CodeableConcept? unitOfPresentation,
    List<Reference>? producedFrom,
    List<CodeableConcept>? ingredient,
    Reference? device,
    List<AdministrableProductDefinitionProperty>? property,
    required List<AdministrableProductDefinitionRouteOfAdministration>
        routeOfAdministration,
  }) = _AdministrableProductDefinition;

  @override
  String get fhirType => 'AdministrableProductDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AdministrableProductDefinition.fromYaml(dynamic yaml) => yaml
          is String
      ? AdministrableProductDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AdministrableProductDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AdministrableProductDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinition.fromJson(Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionFromJson(json);

  /// Acts like a constructor, returns a [AdministrableProductDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AdministrableProductDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdministrableProductDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

@freezed
class AdministrableProductDefinitionProperty
    with _$AdministrableProductDefinitionProperty
    implements BackboneElement {
  const AdministrableProductDefinitionProperty._();

  /// [AdministrableProductDefinitionProperty] A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] A code expressing the type of characteristic.;
  ///
  /// [valueCodeableConcept] A value for the characteristic.;
  ///
  /// [valueQuantity] A value for the characteristic.;
  ///
  /// [valueDate] A value for the characteristic.;
  ///
  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  ///
  /// [valueBoolean] A value for the characteristic.;
  ///
  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  ///
  /// [valueAttachment] A value for the characteristic.;
  ///
  /// [status] The status of characteristic e.g. assigned or pending.;
  const factory AdministrableProductDefinitionProperty({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] A code expressing the type of characteristic.;
    required CodeableConcept type,

    /// [valueCodeableConcept] A value for the characteristic.;
    CodeableConcept? valueCodeableConcept,

    /// [valueQuantity] A value for the characteristic.;
    Quantity? valueQuantity,

    /// [valueDate] A value for the characteristic.;
    FhirDate? valueDate,

    /// [valueDateElement] (_valueDate): Extensions for valueDate;
    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,

    /// [valueBoolean] A value for the characteristic.;
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,

    /// [valueAttachment] A value for the characteristic.;
    Attachment? valueAttachment,

    /// [status] The status of characteristic e.g. assigned or pending.;
    CodeableConcept? status,
  }) = _AdministrableProductDefinitionProperty;

  @override
  String get fhirType => 'AdministrableProductDefinitionProperty';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AdministrableProductDefinitionProperty.fromYaml(dynamic yaml) => yaml
          is String
      ? AdministrableProductDefinitionProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AdministrableProductDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AdministrableProductDefinitionProperty cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionProperty.fromJson(
          Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionPropertyFromJson(json);

  /// Acts like a constructor, returns a [AdministrableProductDefinitionProperty], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AdministrableProductDefinitionProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdministrableProductDefinitionPropertyFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
class AdministrableProductDefinitionRouteOfAdministration
    with _$AdministrableProductDefinitionRouteOfAdministration
    implements BackboneElement {
  const AdministrableProductDefinitionRouteOfAdministration._();

  /// [AdministrableProductDefinitionRouteOfAdministration] A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [code] Coded expression for the route.;
  ///
  /// [firstDose] The first dose (dose quantity) administered can be specified for the product, using a numerical value and its unit of measurement.;
  ///
  /// [maxSingleDose] The maximum single dose that can be administered, specified using a numerical value and its unit of measurement.;
  ///
  /// [maxDosePerDay] The maximum dose per day (maximum dose quantity to be administered in any one 24-h period) that can be administered.;
  ///
  /// [maxDosePerTreatmentPeriod] The maximum dose per treatment period that can be administered.;
  ///
  /// [maxTreatmentPeriod] The maximum treatment period during which the product can be administered.;
  ///
  /// [targetSpecies] A species for which this route applies.;
  const factory AdministrableProductDefinitionRouteOfAdministration({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [code] Coded expression for the route.;
    required CodeableConcept code,

    /// [firstDose] The first dose (dose quantity) administered can be specified for the product, using a numerical value and its unit of measurement.;
    Quantity? firstDose,

    /// [maxSingleDose] The maximum single dose that can be administered, specified using a numerical value and its unit of measurement.;
    Quantity? maxSingleDose,

    /// [maxDosePerDay] The maximum dose per day (maximum dose quantity to be administered in any one 24-h period) that can be administered.;
    Quantity? maxDosePerDay,

    /// [maxDosePerTreatmentPeriod] The maximum dose per treatment period that can be administered.;
    Ratio? maxDosePerTreatmentPeriod,

    /// [maxTreatmentPeriod] The maximum treatment period during which the product can be administered.;
    FhirDuration? maxTreatmentPeriod,

    /// [targetSpecies] A species for which this route applies.;
    List<AdministrableProductDefinitionTargetSpecies>? targetSpecies,
  }) = _AdministrableProductDefinitionRouteOfAdministration;

  @override
  String get fhirType => 'AdministrableProductDefinitionRouteOfAdministration';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AdministrableProductDefinitionRouteOfAdministration.fromYaml(
          dynamic yaml) =>
      yaml is String
          ? AdministrableProductDefinitionRouteOfAdministration.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
          : yaml is YamlMap
              ? AdministrableProductDefinitionRouteOfAdministration.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
              : throw ArgumentError(
                  'AdministrableProductDefinitionRouteOfAdministration cannot be constructed from input provided,'
                  ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionRouteOfAdministration.fromJson(
          Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionRouteOfAdministrationFromJson(json);

  /// Acts like a constructor, returns a [AdministrableProductDefinitionRouteOfAdministration], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AdministrableProductDefinitionRouteOfAdministration.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdministrableProductDefinitionRouteOfAdministrationFromJson(
          json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
class AdministrableProductDefinitionTargetSpecies
    with _$AdministrableProductDefinitionTargetSpecies
    implements BackboneElement {
  const AdministrableProductDefinitionTargetSpecies._();

  /// [AdministrableProductDefinitionTargetSpecies] A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [code] Coded expression for the species.;
  ///
  /// [withdrawalPeriod] A species specific time during which consumption of animal product is not appropriate.;
  const factory AdministrableProductDefinitionTargetSpecies({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [code] Coded expression for the species.;
    required CodeableConcept code,

    /// [withdrawalPeriod] A species specific time during which consumption of animal product is not appropriate.;
    List<AdministrableProductDefinitionWithdrawalPeriod>? withdrawalPeriod,
  }) = _AdministrableProductDefinitionTargetSpecies;

  @override
  String get fhirType => 'AdministrableProductDefinitionTargetSpecies';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AdministrableProductDefinitionTargetSpecies.fromYaml(dynamic yaml) =>
      yaml is String
          ? AdministrableProductDefinitionTargetSpecies.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
          : yaml is YamlMap
              ? AdministrableProductDefinitionTargetSpecies.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
              : throw ArgumentError(
                  'AdministrableProductDefinitionTargetSpecies cannot be constructed from input provided,'
                  ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionTargetSpecies.fromJson(
          Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionTargetSpeciesFromJson(json);

  /// Acts like a constructor, returns a [AdministrableProductDefinitionTargetSpecies], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AdministrableProductDefinitionTargetSpecies.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdministrableProductDefinitionTargetSpeciesFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
class AdministrableProductDefinitionWithdrawalPeriod
    with _$AdministrableProductDefinitionWithdrawalPeriod
    implements BackboneElement {
  const AdministrableProductDefinitionWithdrawalPeriod._();

  /// [AdministrableProductDefinitionWithdrawalPeriod] A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [tissue] Coded expression for the type of tissue for which the withdrawal period applies, e.g. meat, milk.;
  ///
  /// [value] A value for the time.;
  ///
  /// [supportingInformation] Extra information about the withdrawal period.;
  ///
  /// [supportingInformationElement] (_supportingInformation): Extensions for supportingInformation;
  const factory AdministrableProductDefinitionWithdrawalPeriod({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [tissue] Coded expression for the type of tissue for which the withdrawal period applies, e.g. meat, milk.;
    required CodeableConcept tissue,

    /// [value] A value for the time.;
    required Quantity value,

    /// [supportingInformation] Extra information about the withdrawal period.;
    String? supportingInformation,
    @JsonKey(name: '_supportingInformation')

    /// [supportingInformationElement] (_supportingInformation): Extensions for supportingInformation;
    PrimitiveElement? supportingInformationElement,
  }) = _AdministrableProductDefinitionWithdrawalPeriod;

  @override
  String get fhirType => 'AdministrableProductDefinitionWithdrawalPeriod';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AdministrableProductDefinitionWithdrawalPeriod.fromYaml(
          dynamic yaml) =>
      yaml is String
          ? AdministrableProductDefinitionWithdrawalPeriod.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
          : yaml is YamlMap
              ? AdministrableProductDefinitionWithdrawalPeriod.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
              : throw ArgumentError(
                  'AdministrableProductDefinitionWithdrawalPeriod cannot be constructed from input provided,'
                  ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionWithdrawalPeriod.fromJson(
          Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionWithdrawalPeriodFromJson(json);

  /// Acts like a constructor, returns a [AdministrableProductDefinitionWithdrawalPeriod], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AdministrableProductDefinitionWithdrawalPeriod.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdministrableProductDefinitionWithdrawalPeriodFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
