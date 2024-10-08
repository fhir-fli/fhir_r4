// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class ImagingStudySearch {
  final Map<String, String> parameters = <String, String>{};
  ImagingStudySearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImagingStudySearch bodysite(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}bodysite'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImagingStudySearch dicomClass(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}dicom_class'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImagingStudySearch instance(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}instance'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImagingStudySearch modality(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}modality'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImagingStudySearch reason(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}reason'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImagingStudySearch series(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}series'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImagingStudySearch started(FhirDateTime value, {SearchModifier? modifier}) {
    parameters['${modifier}started'] = value.toString();
    return this;
  }

  ImagingStudySearch status(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  ImagingStudySearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
