// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';
import '../enums/search_modifier.dart';

class MolecularSequenceSearch {
  final Map<String, String> parameters = <String, String>{};
  MolecularSequenceSearch chromosome(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}chromosome'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MolecularSequenceSearch identifier(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MolecularSequenceSearch referenceseqid(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}referenceseqid'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MolecularSequenceSearch type(FhirString value,
      {FhirUri? system, SearchModifier? modifier}) {
    parameters['${modifier}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  MolecularSequenceSearch variantEnd(FhirDecimal value,
      {SearchModifier? modifier}) {
    parameters['${modifier}variant_end'] = value.toString();
    return this;
  }

  MolecularSequenceSearch variantStart(FhirDecimal value,
      {SearchModifier? modifier}) {
    parameters['${modifier}variant_start'] = value.toString();
    return this;
  }

  MolecularSequenceSearch windowEnd(FhirDecimal value,
      {SearchModifier? modifier}) {
    parameters['${modifier}window_end'] = value.toString();
    return this;
  }

  MolecularSequenceSearch windowStart(FhirDecimal value,
      {SearchModifier? modifier}) {
    parameters['${modifier}window_start'] = value.toString();
    return this;
  }

  MolecularSequenceSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
