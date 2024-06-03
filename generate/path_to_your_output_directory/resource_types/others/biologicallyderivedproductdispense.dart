/// /// [BiologicallyDerivedProductDispense] This resource reflects an instance
/// of a biologically derived product dispense. The supply or dispense of a
/// biologically derived product from the supply organization or department
/// (e.g. hospital transfusion laboratory) to the clinical team responsible for
/// clinical application.

@freezed
class BiologicallyDerivedProductDispense with _$BiologicallyDerivedProductDispense {
  const BiologicallyDerivedProductDispense._();

  const factory BiologicallyDerivedProductDispense({
/// /// [resourceType] This is a BiologicallyDerivedProductDispense resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// /// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [identifier] Unique instance identifiers assigned to a biologically
/// derived product dispense. Note: This is a business identifier, not a
/// resource identifier.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [basedOn] The order or request that the dispense is fulfilling. This is
/// a reference to a ServiceRequest resource.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// /// [partOf] A larger event of which this particular event is a component.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// /// [status] A code specifying the state of the dispense event.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [originRelationshipType] Indicates the relationship between the donor
/// of the biologically derived product and the intended recipient.

    @JsonKey(name: 'originRelationshipType') CodeableConcept? originRelationshipType,
/// /// [product] A link to a resource identifying the biologically derived
/// product that is being dispensed.

    @JsonKey(name: 'product') Reference? product,
/// /// [patient] A link to a resource representing the patient that the
/// product is dispensed for.

    @JsonKey(name: 'patient') Reference? patient,
/// /// [matchStatus] Indicates the type of matching associated with the
/// dispense.

    @JsonKey(name: 'matchStatus') CodeableConcept? matchStatus,
/// /// [performer] Indicates who or what performed an action.

    @JsonKey(name: 'performer') List<List<BiologicallyDerivedProductDispense_Performer>>? performer,
/// /// [location] The physical location where the dispense was performed.

    @JsonKey(name: 'location') Reference? location,
/// /// [quantity] The amount of product in the dispense. Quantity will depend
/// on the product being dispensed. Examples are: volume; cell count;
/// concentration.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// /// [preparedDate] When the product was selected/ matched.

    @JsonKey(name: 'preparedDate') FhirDateTime? preparedDate,
/// /// [_preparedDate] Extensions for preparedDate

    @JsonKey(name: '_preparedDate') FhirElement? preparedDateElement,
/// /// [whenHandedOver] When the product was dispatched for clinical use.

    @JsonKey(name: 'whenHandedOver') FhirDateTime? whenHandedOver,
/// /// [_whenHandedOver] Extensions for whenHandedOver

    @JsonKey(name: '_whenHandedOver') FhirElement? whenHandedOverElement,
/// /// [destination] Link to a resource identifying the physical location that
/// the product was dispatched to.

    @JsonKey(name: 'destination') Reference? destination,
/// /// [note] Additional notes.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// /// [usageInstruction] Specific instructions for use.

    @JsonKey(name: 'usageInstruction') String? usageInstruction,
/// /// [_usageInstruction] Extensions for usageInstruction

    @JsonKey(name: '_usageInstruction') FhirElement? usageInstructionElement,
  }) = _$BiologicallyDerivedProductDispense;

  @override
  String get fhirType => 'BiologicallyDerivedProductDispense';

  factory BiologicallyDerivedProductDispense.fromJson(Map<String, dynamic> json) =>
      _$BiologicallyDerivedProductDispenseFromJson(json);

  factory BiologicallyDerivedProductDispense.fromYaml(dynamic yaml) => yaml is String
      ? BiologicallyDerivedProductDispense.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BiologicallyDerivedProductDispense.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BiologicallyDerivedProductDispense cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory BiologicallyDerivedProductDispense.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BiologicallyDerivedProductDispenseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
