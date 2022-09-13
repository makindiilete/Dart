class Employee {
  String name = '';
  String position = '';

  Employee(this.name, this.position);

  handlePrintEmployeeDetails() {
    print('Name = $name');
    print('Position = $position');
  }
}
