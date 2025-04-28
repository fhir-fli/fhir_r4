// ignore_for_file: file_names

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


final testmodelinfowithgenericshappy = ModelInfo.fromJson({
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
      "parameter": {
        "name": "T",
        "constraint": "TYPE",
        "constraintType": "System.Any"
      },
      "element": {
        "name": "field1",
        "elementTypeSpecifier": {
          "parameterName": "T",
          "type": "ParameterTypeSpecifier"
        }
      }
    },
    {
      "type": "ClassInfo",
      "name": "MyQuantity",
      "baseType": "MyGeneric",
      "retrievable": false,
      "element": {
        "name": "field1",
        "elementTypeSpecifier": {
          "parameterName": "T",
          "boundType": "System.Quantity",
          "type": "BoundParameterTypeSpecifier"
        }
      }
    },
    {
      "type": "ClassInfo",
      "name": "Map<S,T extends System.Integer>",
      "baseType": "System.Any",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "MyInteger",
      "baseType": "MyGeneric<System.Integer>",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "MyOtherGeneric",
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
      "name": "MyOtherQuantity1",
      "baseType": "MyOtherGeneric",
      "retrievable": false,
      "parameter": {
        "name": "T",
        "constraint": "TYPE",
        "constraintType": "System.Any"
      },
      "element": {
        "name": "field1",
        "elementTypeSpecifier": {
          "parameterName": "S",
          "boundType": "System.Quantity",
          "type": "BoundParameterTypeSpecifier"
        }
      }
    },
    {
      "type": "ClassInfo",
      "name": "MyOtherQuantity2",
      "baseType": "MyOtherGeneric",
      "retrievable": false,
      "parameter": {
        "name": "S",
        "constraint": "TYPE",
        "constraintType": "System.Any"
      },
      "element": {
        "name": "field1",
        "elementTypeSpecifier": {
          "parameterName": "T",
          "boundType": "System.Quantity",
          "type": "BoundParameterTypeSpecifier"
        }
      }
    },
    {
      "type": "ClassInfo",
      "name": "MyOtherQuantity3",
      "baseType": "MyOtherGeneric",
      "retrievable": false,
      "element": [
        {
          "name": "field1",
          "elementTypeSpecifier": {
            "parameterName": "S",
            "boundType": "System.Quantity",
            "type": "BoundParameterTypeSpecifier"
          }
        },
        {
          "name": "field2",
          "elementTypeSpecifier": {
            "parameterName": "T",
            "boundType": "System.Quantity",
            "type": "BoundParameterTypeSpecifier"
          }
        }
      ]
    }
  ]
});
