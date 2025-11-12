// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

class FunctionDetails {
  FunctionDetails(this.description, this.minParameters, this.maxParameters);

  String description;
  int minParameters;
  int maxParameters;

  String getDescription() {
    return description;
  }

  int getMinParameters() {
    return minParameters;
  }

  int getMaxParameters() {
    return maxParameters;
  }
}
