class Person {
  String name;
  String? fname;
  int age;

  Person({
    required this.name,
    required this.age,
    this.fname,
  });

  // Person({
  //   required this.name,
  //   required this.age,
  //   this.fname,
  // });
}

void create1Person(int age, String name) {}
void create2Person(
  int age1, {
  required int age,
  String? name,
  String fname = 'fname',
}) {}
void createPerson() {
  // Person person1 = Person(
  //   name: 'name',
  //   age: 10,
  // );
  // Person person2 = Person(name: 'name', age: 10, fname: 'fanme');

  create1Person(10, 'test');
  create2Person(11, age: 11, name: 'test', fname: 'heheh');
}
