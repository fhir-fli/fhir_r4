/// /// [ImagingSelection] A selection of DICOM SOP instances and/or frames
/// within a single Study and Series. This might include additional specifics
/// such as an image region, an Observation UID or a Segmentation Number,
/// allowing linkage to an Observation Resource or transferring this
/// information along with the ImagingStudy Resource.

@freezed
class ImagingSelection with _$ImagingSelection {
  const ImagingSelection._();

  const factory ImagingSelection({
/// /// [resourceType] This is a ImagingSelection resource

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
/// /// [identifier] A unique identifier assigned to this imaging selection.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [status] The current state of the ImagingSelection resource. This is
/// not the status of any ImagingStudy, ServiceRequest, or Task resources
/// associated with the ImagingSelection.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [category] Classifies the imaging selection.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// /// [code] Reason for referencing the selected content.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [subject] The patient, or group of patients, location, device,
/// organization, procedure or practitioner this imaging selection is about and
/// into whose or what record the imaging selection is placed.

    @JsonKey(name: 'subject') Reference? subject,
/// /// [issued] The date and time this imaging selection was created.

    @JsonKey(name: 'issued') FhirInstant? issued,
/// /// [_issued] Extensions for issued

    @JsonKey(name: '_issued') FhirElement? issuedElement,
/// /// [performer] Selector of the instances – human or machine.

    @JsonKey(name: 'performer') List<List<ImagingSelection_Performer>>? performer,
/// /// [basedOn] A list of the diagnostic requests that resulted in this
/// imaging selection being performed.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// /// [studyUid] The Study Instance UID for the DICOM Study from which the
/// images were selected.

    @JsonKey(name: 'studyUid') FhirId? studyUid,
/// /// [_studyUid] Extensions for studyUid

    @JsonKey(name: '_studyUid') FhirElement? studyUidElement,
/// /// [derivedFrom] The imaging study from which the imaging selection is
/// made.

    @JsonKey(name: 'derivedFrom') List<List<Reference>>? derivedFrom,
/// /// [endpoint] The network service providing retrieval access to the
/// selected images, frames, etc. See implementation notes for information
/// about using DICOM endpoints.

    @JsonKey(name: 'endpoint') List<List<Reference>>? endpoint,
/// /// [seriesUid] The Series Instance UID for the DICOM Series from which the
/// images were selected.

    @JsonKey(name: 'seriesUid') FhirId? seriesUid,
/// /// [_seriesUid] Extensions for seriesUid

    @JsonKey(name: '_seriesUid') FhirElement? seriesUidElement,
/// /// [seriesNumber] The Series Number for the DICOM Series from which the
/// images were selected.

    @JsonKey(name: 'seriesNumber') FhirUnsignedInt? seriesNumber,
/// /// [_seriesNumber] Extensions for seriesNumber

    @JsonKey(name: '_seriesNumber') FhirElement? seriesNumberElement,
/// /// [frameOfReferenceUid] The Frame of Reference UID identifying the
/// coordinate system that conveys spatial and/or temporal information for the
/// selected images or frames.

    @JsonKey(name: 'frameOfReferenceUid') FhirId? frameOfReferenceUid,
/// /// [_frameOfReferenceUid] Extensions for frameOfReferenceUid

    @JsonKey(name: '_frameOfReferenceUid') FhirElement? frameOfReferenceUidElement,
/// /// [bodySite] The anatomic structures examined. See DICOM Part 16 Annex L
/// (http://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html)
/// for DICOM to SNOMED-CT mappings.

    @JsonKey(name: 'bodySite') CodeableReference? bodySite,
/// /// [focus] The actual focus of an observation when it is not the patient
/// of record representing something or someone associated with the patient
/// such as a spouse, parent, fetus, or donor. For example, fetus observations
/// in a mother's record.  The focus of an observation could also be an
/// existing condition,  an intervention, the subject's diet,  another
/// observation of the subject,  or a body structure such as tumor or implanted
/// device.   An example use case would be using the Observation resource to
/// capture whether the mother is trained to change her child's tracheostomy
/// tube. In this example, the child is the patient of record and the mother is
/// the focus.

    @JsonKey(name: 'focus') List<List<Reference>>? focus,
/// /// [instance] Each imaging selection includes one or more selected DICOM
/// SOP instances.

    @JsonKey(name: 'instance') List<List<ImagingSelection_Instance>>? instance,
/// /// [imageRegion3D] Each imaging selection might includes a 3D image
/// region, specified by a region type and a set of 3D coordinates.

    @JsonKey(name: 'imageRegion3D') List<List<ImagingSelection_ImageRegion3D>>? imageRegion3D,
  }) = _$ImagingSelection;

  @override
  String get fhirType => 'ImagingSelection';

  factory ImagingSelection.fromJson(Map<String, dynamic> json) =>
      _$ImagingSelectionFromJson(json);

  factory ImagingSelection.fromYaml(dynamic yaml) => yaml is String
      ? ImagingSelection.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImagingSelection.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImagingSelection cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImagingSelection.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImagingSelectionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
