// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'composition.freezed.dart';
part 'composition.g.dart';

/// [Composition] A set of healthcare-related information that is assembled
@freezed
class Composition with _$Composition implements DomainResource {
  /// [Composition] A set of healthcare-related information that is assembled
  const Composition._();

  /// [Composition] A set of healthcare-related information that is assembled
  /// together into a single logical package that provides a single coherent
  /// statement of meaning, establishes its own context and that has clinical
  /// attestation with regard to who is making the statement. A Composition
  /// defines the structure and narrative content necessary for a document.
  /// However, a Composition alone does not constitute a document. Rather, the
  /// Composition must be the first entry in a Bundle where
  /// Bundle.type=document, and any other resources referenced from Composition
  /// must be included as subsequent entries in the Bundle (for example Patient,
  ///  Practitioner, Encounter, etc.).
  ///
  /// [resourceType] This is a Composition resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] A version-independent identifier for the Composition. This
  ///  identifier stays constant as the composition is changed over time.
  ///
  /// [status] The workflow/clinical status of this composition. The status is
  ///  a marker for the clinical standing of the document.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [type] Specifies the particular kind of composition (e.g. History and
  /// Physical, Discharge Summary, Progress Note). This usually equates to the
  ///  purpose of making the composition.
  ///
  /// [category] A categorization for the type of the composition - helps for
  /// indexing and searching. This may be implied by or derived from the code
  ///  specified in the Composition Type.
  ///
  /// [subject] Who or what the composition is about. The composition can be
  /// about a person, (patient or healthcare practitioner), a device (e.g. a
  /// machine) or even a group of subjects (such as a document about a herd of
  ///  livestock, or a set of patients that share a common exposure).
  ///
  /// [encounter] Describes the clinical encounter or type of care this
  ///  documentation is associated with.
  ///
  /// [date] The composition editing time, when the composition was last
  ///  logically changed by the author.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [author] Identifies who is responsible for the information in the
  ///  composition, not necessarily who typed it in.
  ///
  /// [title] Official human-readable label for the composition.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [confidentiality] The code specifying the level of confidentiality of the
  ///  Composition.
  ///
  /// [confidentialityElement] Extensions for confidentiality
  ///
  /// [attester] A participant who has attested to the accuracy of the
  ///  composition/document.
  ///
  /// [custodian] Identifies the organization or group who is responsible for
  /// ongoing maintenance of and access to the composition/document
  ///  information.
  ///
  /// [relatesTo] Relationships that this composition has with other
  ///  compositions or documents that already exist.
  ///
  /// [event] The clinical service, such as a colonoscopy or an appendectomy,
  ///  being documented.
  ///
  /// [section] The root of the sections that make up the composition.
  const factory Composition({
    @Default(R4ResourceType.Composition)
    @JsonKey(unknownEnumValue: R4ResourceType.Composition)

    /// [resourceType] This is a Composition resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] A version-independent identifier for the Composition. This
    ///  identifier stays constant as the composition is changed over time.
    Identifier? identifier,

    /// [status] The workflow/clinical status of this composition. The status is
    ///  a marker for the clinical standing of the document.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [type] Specifies the particular kind of composition (e.g. History and
    /// Physical, Discharge Summary, Progress Note). This usually equates to the
    ///  purpose of making the composition.
    required CodeableConcept type,

    /// [category] A categorization for the type of the composition - helps for
    /// indexing and searching. This may be implied by or derived from the code
    ///  specified in the Composition Type.
    List<CodeableConcept>? category,

    /// [subject] Who or what the composition is about. The composition can be
    /// about a person, (patient or healthcare practitioner), a device (e.g. a
    /// machine) or even a group of subjects (such as a document about a herd of
    ///  livestock, or a set of patients that share a common exposure).
    Reference? subject,

    /// [encounter] Describes the clinical encounter or type of care this
    ///  documentation is associated with.
    Reference? encounter,

    /// [date] The composition editing time, when the composition was last
    ///  logically changed by the author.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [author] Identifies who is responsible for the information in the
    ///  composition, not necessarily who typed it in.
    required List<Reference> author,

    /// [title] Official human-readable label for the composition.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [confidentiality] The code specifying the level of confidentiality of the
    ///  Composition.
    FhirCode? confidentiality,

    /// [confidentialityElement] Extensions for confidentiality
    @JsonKey(name: '_confidentiality') PrimitiveElement? confidentialityElement,

    /// [attester] A participant who has attested to the accuracy of the
    ///  composition/document.
    List<CompositionAttester>? attester,

    /// [custodian] Identifies the organization or group who is responsible for
    /// ongoing maintenance of and access to the composition/document
    ///  information.
    Reference? custodian,

    /// [relatesTo] Relationships that this composition has with other
    ///  compositions or documents that already exist.
    List<CompositionRelatesTo>? relatesTo,

    /// [event] The clinical service, such as a colonoscopy or an appendectomy,
    ///  being documented.
    List<CompositionEvent>? event,

    /// [section] The root of the sections that make up the composition.
    List<CompositionSection>? section,
  }) = _Composition;

  @override
  String get fhirType => 'Composition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Composition.fromYaml(dynamic yaml) => yaml is String
      ? Composition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Composition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Composition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Composition.fromJson(Map<String, dynamic> json) =>
      _$CompositionFromJson(json);

  /// Acts like a constructor, returns a [Composition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Composition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CompositionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
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

/// [CompositionAttester] A set of healthcare-related information that is
@freezed

/// [CompositionAttester] A set of healthcare-related information that is
@freezed
class CompositionAttester
    with _$CompositionAttester
    implements BackboneElement {
  /// [CompositionAttester] A set of healthcare-related information that is
  const CompositionAttester._();

  /// [CompositionAttester] A set of healthcare-related information that is
  /// assembled together into a single logical package that provides a single
  /// coherent statement of meaning, establishes its own context and that has
  /// clinical attestation with regard to who is making the statement. A
  /// Composition defines the structure and narrative content necessary for a
  /// document. However, a Composition alone does not constitute a document.
  /// Rather, the Composition must be the first entry in a Bundle where
  /// Bundle.type=document, and any other resources referenced from Composition
  /// must be included as subsequent entries in the Bundle (for example Patient,
  ///  Practitioner, Encounter, etc.).
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [mode] The type of attestation the authenticator offers.
  ///
  /// [modeElement] Extensions for mode
  ///
  /// [time] When the composition was attested by the party.
  ///
  /// [timeElement] Extensions for time
  ///
  /// [party] Who attested the composition in the specified way.
  const factory CompositionAttester({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [mode] The type of attestation the authenticator offers.
    FhirCode? mode,

    /// [modeElement] Extensions for mode
    @JsonKey(name: '_mode') PrimitiveElement? modeElement,

    /// [time] When the composition was attested by the party.
    FhirDateTime? time,

    /// [timeElement] Extensions for time
    @JsonKey(name: '_time') PrimitiveElement? timeElement,

    /// [party] Who attested the composition in the specified way.
    Reference? party,
  }) = _CompositionAttester;

  @override
  String get fhirType => 'CompositionAttester';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CompositionAttester.fromYaml(dynamic yaml) => yaml is String
      ? CompositionAttester.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CompositionAttester.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CompositionAttester cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CompositionAttester.fromJson(Map<String, dynamic> json) =>
      _$CompositionAttesterFromJson(json);

  /// Acts like a constructor, returns a [CompositionAttester], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CompositionAttester.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CompositionAttesterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [CompositionRelatesTo] A set of healthcare-related information that is
@freezed

/// [CompositionRelatesTo] A set of healthcare-related information that is
@freezed
class CompositionRelatesTo
    with _$CompositionRelatesTo
    implements BackboneElement {
  /// [CompositionRelatesTo] A set of healthcare-related information that is
  const CompositionRelatesTo._();

  /// [CompositionRelatesTo] A set of healthcare-related information that is
  /// assembled together into a single logical package that provides a single
  /// coherent statement of meaning, establishes its own context and that has
  /// clinical attestation with regard to who is making the statement. A
  /// Composition defines the structure and narrative content necessary for a
  /// document. However, a Composition alone does not constitute a document.
  /// Rather, the Composition must be the first entry in a Bundle where
  /// Bundle.type=document, and any other resources referenced from Composition
  /// must be included as subsequent entries in the Bundle (for example Patient,
  ///  Practitioner, Encounter, etc.).
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [code] The type of relationship that this composition has with anther
  ///  composition or document.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [targetIdentifier] The target composition/document of this relationship.
  ///
  /// [targetReference] The target composition/document of this relationship.
  const factory CompositionRelatesTo({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [code] The type of relationship that this composition has with anther
    ///  composition or document.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [targetIdentifier] The target composition/document of this relationship.
    Identifier? targetIdentifier,

    /// [targetReference] The target composition/document of this relationship.
    Reference? targetReference,
  }) = _CompositionRelatesTo;

  @override
  String get fhirType => 'CompositionRelatesTo';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CompositionRelatesTo.fromYaml(dynamic yaml) => yaml is String
      ? CompositionRelatesTo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CompositionRelatesTo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CompositionRelatesTo cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CompositionRelatesTo.fromJson(Map<String, dynamic> json) =>
      _$CompositionRelatesToFromJson(json);

  /// Acts like a constructor, returns a [CompositionRelatesTo], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CompositionRelatesTo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CompositionRelatesToFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [CompositionEvent] A set of healthcare-related information that is
@freezed

/// [CompositionEvent] A set of healthcare-related information that is
@freezed
class CompositionEvent with _$CompositionEvent implements BackboneElement {
  /// [CompositionEvent] A set of healthcare-related information that is
  const CompositionEvent._();

  /// [CompositionEvent] A set of healthcare-related information that is
  /// assembled together into a single logical package that provides a single
  /// coherent statement of meaning, establishes its own context and that has
  /// clinical attestation with regard to who is making the statement. A
  /// Composition defines the structure and narrative content necessary for a
  /// document. However, a Composition alone does not constitute a document.
  /// Rather, the Composition must be the first entry in a Bundle where
  /// Bundle.type=document, and any other resources referenced from Composition
  /// must be included as subsequent entries in the Bundle (for example Patient,
  ///  Practitioner, Encounter, etc.).
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [code] This list of codes represents the main clinical acts, such as a
  /// colonoscopy or an appendectomy, being documented. In some cases, the event
  /// is inherent in the typeCode, such as a "History and Physical Report" in
  /// which the procedure being documented is necessarily a "History and
  ///  Physical" act.
  ///
  /// [period] The period of time covered by the documentation. There is no
  /// assertion that the documentation is a complete representation for this
  ///  period, only that it documents events during this time.
  ///
  /// [detail] The description and/or reference of the event(s) being
  /// documented. For example, this could be used to document such a colonoscopy
  ///  or an appendectomy.
  const factory CompositionEvent({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [code] This list of codes represents the main clinical acts, such as a
    /// colonoscopy or an appendectomy, being documented. In some cases, the event
    /// is inherent in the typeCode, such as a "History and Physical Report" in
    /// which the procedure being documented is necessarily a "History and
    ///  Physical" act.
    List<CodeableConcept>? code,

    /// [period] The period of time covered by the documentation. There is no
    /// assertion that the documentation is a complete representation for this
    ///  period, only that it documents events during this time.
    Period? period,

    /// [detail] The description and/or reference of the event(s) being
    /// documented. For example, this could be used to document such a colonoscopy
    ///  or an appendectomy.
    List<Reference>? detail,
  }) = _CompositionEvent;

  @override
  String get fhirType => 'CompositionEvent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CompositionEvent.fromYaml(dynamic yaml) => yaml is String
      ? CompositionEvent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CompositionEvent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CompositionEvent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CompositionEvent.fromJson(Map<String, dynamic> json) =>
      _$CompositionEventFromJson(json);

  /// Acts like a constructor, returns a [CompositionEvent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CompositionEvent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CompositionEventFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [CompositionSection] A set of healthcare-related information that is
@freezed

/// [CompositionSection] A set of healthcare-related information that is
@freezed
class CompositionSection with _$CompositionSection implements BackboneElement {
  /// [CompositionSection] A set of healthcare-related information that is
  const CompositionSection._();

  /// [CompositionSection] A set of healthcare-related information that is
  /// assembled together into a single logical package that provides a single
  /// coherent statement of meaning, establishes its own context and that has
  /// clinical attestation with regard to who is making the statement. A
  /// Composition defines the structure and narrative content necessary for a
  /// document. However, a Composition alone does not constitute a document.
  /// Rather, the Composition must be the first entry in a Bundle where
  /// Bundle.type=document, and any other resources referenced from Composition
  /// must be included as subsequent entries in the Bundle (for example Patient,
  ///  Practitioner, Encounter, etc.).
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [title] The label for this particular section.  This will be part of the
  /// rendered content for the document, and is often used to build a table of
  ///  contents.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [code] A code identifying the kind of content contained within the
  ///  section. This must be consistent with the section title.
  ///
  /// [author] Identifies who is responsible for the information in this
  ///  section, not necessarily who typed it in.
  ///
  /// [focus] The actual focus of the section when it is not the subject of the
  /// composition, but instead represents something or someone associated with
  /// the subject such as (for a patient subject) a spouse, parent, fetus, or
  /// donor. If not focus is specified, the focus is assumed to be focus of the
  /// parent section, or, for a section in the Composition itself, the subject
  /// of the composition. Sections with a focus SHALL only include resources
  /// where the logical subject (patient, subject, focus, etc.) matches the
  ///  section focus, or the resources have no logical subject (few resources).
  ///
  /// [text] A human-readable narrative that contains the attested content of
  /// the section, used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  ///  read the narrative.
  ///
  /// [mode] How the entry list was prepared - whether it is a working list
  /// that is suitable for being maintained on an ongoing basis, or if it
  /// represents a snapshot of a list of items from another source, or whether
  /// it is a prepared list where items may be marked as added, modified or
  ///  deleted.
  ///
  /// [modeElement] Extensions for mode
  ///
  /// [orderedBy] Specifies the order applied to the items in the section
  ///  entries.
  ///
  /// [entry] A reference to the actual resource from which the narrative in
  ///  the section is derived.
  ///
  /// [emptyReason] If the section is empty, why the list is empty. An empty
  ///  section typically has some text explaining the empty reason.
  ///
  /// [section] A nested sub-section within this section.
  const factory CompositionSection({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [title] The label for this particular section.  This will be part of the
    /// rendered content for the document, and is often used to build a table of
    ///  contents.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [code] A code identifying the kind of content contained within the
    ///  section. This must be consistent with the section title.
    CodeableConcept? code,

    /// [author] Identifies who is responsible for the information in this
    ///  section, not necessarily who typed it in.
    List<Reference>? author,

    /// [focus] The actual focus of the section when it is not the subject of the
    /// composition, but instead represents something or someone associated with
    /// the subject such as (for a patient subject) a spouse, parent, fetus, or
    /// donor. If not focus is specified, the focus is assumed to be focus of the
    /// parent section, or, for a section in the Composition itself, the subject
    /// of the composition. Sections with a focus SHALL only include resources
    /// where the logical subject (patient, subject, focus, etc.) matches the
    ///  section focus, or the resources have no logical subject (few resources).
    Reference? focus,

    /// [text] A human-readable narrative that contains the attested content of
    /// the section, used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    ///  read the narrative.
    Narrative? text,

    /// [mode] How the entry list was prepared - whether it is a working list
    /// that is suitable for being maintained on an ongoing basis, or if it
    /// represents a snapshot of a list of items from another source, or whether
    /// it is a prepared list where items may be marked as added, modified or
    ///  deleted.
    FhirCode? mode,

    /// [modeElement] Extensions for mode
    @JsonKey(name: '_mode') PrimitiveElement? modeElement,

    /// [orderedBy] Specifies the order applied to the items in the section
    ///  entries.
    CodeableConcept? orderedBy,

    /// [entry] A reference to the actual resource from which the narrative in
    ///  the section is derived.
    List<Reference>? entry,

    /// [emptyReason] If the section is empty, why the list is empty. An empty
    ///  section typically has some text explaining the empty reason.
    CodeableConcept? emptyReason,

    /// [section] A nested sub-section within this section.
    List<CompositionSection>? section,
  }) = _CompositionSection;

  @override
  String get fhirType => 'CompositionSection';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CompositionSection.fromYaml(dynamic yaml) => yaml is String
      ? CompositionSection.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CompositionSection.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CompositionSection cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CompositionSection.fromJson(Map<String, dynamic> json) =>
      _$CompositionSectionFromJson(json);

  /// Acts like a constructor, returns a [CompositionSection], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CompositionSection.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CompositionSectionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
