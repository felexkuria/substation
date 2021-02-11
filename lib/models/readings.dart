class Readings {
  double activePower;
  double activePower1;
  double reactivePower1;
  String name;
  double reactivePower;
  double activePowerCode1 = 660.0;
  double activePowerCode2 = 1980.0;
  double result;
  Readings({this.name, this.activePower, this.reactivePower});
  List<Readings> readings = [
    Readings(
      name: 'N1',
    ),
    Readings(
      name: 'N2',
    ),
    Readings(
      name: 'N3',
    ),
    Readings(
      name: 'N6',
    ),
    Readings(
      name: 'N8',
    ),
    Readings(
      name: 'N9',
    ),
    Readings(
      name: 'N10',
    ),
  ];

  String getActivePower({double activePower, double activePower1}) {
    result = ((activePower - activePower1) * activePowerCode1);
    //print(result);
    result.toStringAsFixed(2);

    return result.toString();

    //print(result);
  }

  String getReactivePower() {
    result = ((reactivePower - reactivePower1) * activePowerCode1);
    //print(result);
    result.toStringAsFixed(2);

    return result.toString();
  }

  void getactivePower() {
    result = reactivePower * 660;
  }

  String getPowerConsumed(double activePower, double activePower1) {
    result = activePower - activePower;
    result.toStringAsFixed(2);
    return result.toString();
  }
}
