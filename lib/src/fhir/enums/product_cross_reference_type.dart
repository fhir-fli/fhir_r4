import 'package:json_annotation/json_annotation.dart';

/// Relationship to another Medicinal Product.
enum ProductCrossReferenceType {
  /// Display: Link to Investigational Product
  /// Definition: Link to Investigational (Development) Product
  @JsonValue('InvestigationalProduct')
  InvestigationalProduct,

  /// Display: Link Actual to Virtual Product
  /// Definition: Link Actual to Virtual Product
  @JsonValue('VirtualProduct')
  VirtualProduct,

  /// Display: Link Virtual to Actual Product
  /// Definition: Link Virtual to Actual Product
  @JsonValue('ActualProduct')
  ActualProduct,

  /// Display: Link Generic to Branded Product
  /// Definition: Link Generic to Branded Product
  @JsonValue('BrandedProduct')
  BrandedProduct,

  /// Display: Link Branded to Generic Product
  /// Definition: Link Branded to Generic Product
  @JsonValue('GenericProduct')
  GenericProduct,

  /// Display: Link to Parallel Import Product
  /// Definition: Link to Parallel Import Product
  @JsonValue('Parallel')
  Parallel,
  ;

  @override
  String toString() {
    switch (this) {
      case InvestigationalProduct:
        return 'InvestigationalProduct';
      case VirtualProduct:
        return 'VirtualProduct';
      case ActualProduct:
        return 'ActualProduct';
      case BrandedProduct:
        return 'BrandedProduct';
      case GenericProduct:
        return 'GenericProduct';
      case Parallel:
        return 'Parallel';
    }
  }

  String toJson() => toString();
  ProductCrossReferenceType fromString(String str) {
    switch (str) {
      case 'InvestigationalProduct':
        return ProductCrossReferenceType.InvestigationalProduct;
      case 'VirtualProduct':
        return ProductCrossReferenceType.VirtualProduct;
      case 'ActualProduct':
        return ProductCrossReferenceType.ActualProduct;
      case 'BrandedProduct':
        return ProductCrossReferenceType.BrandedProduct;
      case 'GenericProduct':
        return ProductCrossReferenceType.GenericProduct;
      case 'Parallel':
        return ProductCrossReferenceType.Parallel;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ProductCrossReferenceType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
