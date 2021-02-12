class Readings {
  double activePower;
  double activePower1;
  double reactivePower1;
  // String name;
  double reactivePower;
  double activePowerCode1 = 660.0;
  double activePowerCode2 = 1980.0;
  double result;
  double result2;
  double result3;
  Readings({this.activePower, this.reactivePower});

  String getActivePower({double activePower, double activePower1}) {
    result = ((activePower - activePower1) * activePowerCode1);
    //print(result);
    result.toStringAsFixed(2);

    return result.toString();

    //print(result);
  }

  String getReactivePower({double activePower, double activePower1}) {
    result2 = ((reactivePower - reactivePower1) * activePowerCode2);
    //print(result);
    result2.toStringAsFixed(2);

    return result2.toString();
  }

  void getactivePower() {
    result = reactivePower * 660;
  }

  String getPowerConsumed({double activePower, double activePower1}) {
    result3 = activePower - activePower1;
    result3.toStringAsFixed(2);
    return result3.toString();
  }
}
