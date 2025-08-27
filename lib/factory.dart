Map<String, dynamic> data = {
  "persons": [
    {"name": "amr", "age": 20},
    {"name": "Ali", "age": 21},
    {"name": "Ahmed", "age": 22},
    {"name": "Khaled", "age": 23},
    {"name": "Samy", "age": 24},
  ],
  "Ainmals": [
    {"name": "Cow", "age": 21},
  ],
};
class Person {
  String name;
  int age ;
  Person ({required this.name, required this.age});
  factory Person.mapData(Person){
    return Person(name: Persons["name"], age: ["age"]);
  }
  void PrentData (){
    print ("this is person his name = $name , age = $age " ) ;
  }


}
