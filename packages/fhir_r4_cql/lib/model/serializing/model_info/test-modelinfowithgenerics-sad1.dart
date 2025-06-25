import 'package:fhir_r4_cql/fhir_r4_cql.dart';

final testmodelinfowithgenericssad1 = ModelInfo.fromJson({
  "name": "GENTEST",
  "url": "http://example.com/gentest",
  "schemaLocation":
      "urn:hl7-org:elm-modelinfo:r1 ../../../../../../../../../../cql-lm/schema/model/modelinfo.xsd",
  "targetQualifier": "gentest",
  "typeInfo": [
    {
      "type": "ClassInfo",
      "name": "MyGeneric",
      "baseType": "System.Any",
      "retrievable": false,
      "parameter": [
        {"name": "S", "constraint": "TYPE", "constraintType": "System.Any"},
        {"name": "T", "constraint": "TYPE", "constraintType": "System.Any"}
      ],
      "element": [
        {
          "name": "field1",
          "elementTypeSpecifier": {
            "parameterName": "S",
            "type": "ParameterTypeSpecifier"
          }
        },
        {
          "name": "field2",
          "elementTypeSpecifier": {
            "parameterName": "T",
            "type": "ParameterTypeSpecifier"
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MyQuantity",
      "baseType": "MyGeneric",
      "retrievable": false,
      "element": {
        "name": "field1",
        "elementTypeSpecifier": {
          "parameterName": "S",
          "boundType": "System.Quantity",
          "type": "BoundParameterTypeSpecifier"
        }
      }
    }
  ]
});
