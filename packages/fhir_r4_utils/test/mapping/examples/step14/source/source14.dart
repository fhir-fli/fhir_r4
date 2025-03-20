// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

final source14 = {
  "resourceType": "QuestionnaireResponse",
  "id": "SDOHCC-QuestionnaireResponseHungerVitalSignExample",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse",
    ],
  },
  "questionnaire":
      "http://hl7.org/fhir/us/sdoh-clinicalcare/Questionnaire/SDOHCC-QuestionnaireHungerVitalSign",
  "_questionnaire": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/display",
        "valueString": "SDOHCC Questionnaire Hunger Vital Sign",
      }
    ],
  },
  "status": "completed",
  "subject": {"reference": "Patient/pat-53234", "display": "COLIN ABBAS"},
  "authored": "2020-09-10T21:56:54.671Z",
  "source": {"reference": "Patient/pat-53234", "display": "COLIN ABBAS"},
  "item": [
    {
      "linkId": "/88122-7",
      "text":
          // ignore: lines_longer_than_80_chars
          "Within the past 12 months we worried whether our food would run out before we got money to buy more.",
      "answer": [
        {
          "valueCoding": {
            "system": "http://loinc.org",
            "code": "LA28397-0",
            "display": "Often true",
          },
        }
      ],
    },
    {
      "linkId": "/88123-5",
      "text":
          // ignore: lines_longer_than_80_chars
          "Within the past 12 months the food we bought just didn't last and we didn't have money to get more",
      "answer": [
        {
          "valueCoding": {
            "system": "http://loinc.org",
            "code": "LA28397-0",
            "display": "Often true",
          },
        }
      ],
    },
    {
      "linkId": "/88124-3",
      "text": "Food insecurity risk",
      "answer": [
        {
          "valueCoding": {
            "system": "http://loinc.org",
            "code": "LA19952-3",
            "display": "At risk",
          },
        }
      ],
    }
  ],
};
