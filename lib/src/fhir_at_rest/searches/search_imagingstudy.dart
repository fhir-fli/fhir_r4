// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchImagingStudy extends SearchResource {
  SearchImagingStudy identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImagingStudy bodysite(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}bodysite'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImagingStudy dicomClass(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}dicom_class'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImagingStudy instance(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}instance'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImagingStudy modality(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}modality'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImagingStudy reason(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}reason'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImagingStudy series(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}series'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  SearchImagingStudy started(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}started'] =
        value.toString();
    return this;
  }

  SearchImagingStudy status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
