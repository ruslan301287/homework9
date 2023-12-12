import 'dart:io';
import 'dart:math';

void main() {
  Circle one = Circle(color: 'red', radius: 15);
  one.info();
  Student eldar = Student(name: 'Элдар', age: 30, ocenki: [5, 5, 4, 5, 5]);
  eldar.info();
  Auto lexus = Auto(marka: 'Lexus', model: 'is', age: 2013);
  lexus.info();
  Book bookOne =
      Book(name: 'Дневник памяти', writer: 'Николасом Спарком', age: 1966);
  bookOne.info();
  Pryamougolnik odin = Pryamougolnik(height: 15, weight: 25);
  odin.info();
  odin.perimetr();
  odin.ploshad();
  BankAccount userVlad = BankAccount(balance: 500, name: 'eldar', num: 125365);
  userVlad.info();
  userVlad.popolnenie();
  userVlad.snyatie();
  Product phone = Product(name: 'Iphone 14 pro max', price: 1000, count: 12);
  phone.info();
  phone.allValue();
  Employee dev = Employee(name: 'eldar', position: 'Junior', salary: 600);
  dev.info();
  dev.salaryUpd(12);
  Triangle two = Triangle(a: 15, b: 15, c: 10);
  two.info();
  two.geronSquare();
}

// Создайте класс "Круг" (Circle), у которого есть свойства радиус и цвет. Реализуйте методы для получения этих свойств.л
class Circle {
  String color;
  int radius;
  Circle({required this.color, required this.radius});
  void info() {
    print('Цвет курга - $color, Радиус круга - $radius');
  }
}

// Создайте класс "Студент" (Student), у которого есть свойства имя, возраст и средний балл. Реализуйте методы для получения  этих свойств.
class Student {
  String name;
  int age;
  List ocenki;
  Student({required this.name, required this.age, required this.ocenki});
  void info() {
    int summ = 0;
    for (int i = 0; i < ocenki.length; i++) {
      summ += ocenki.length;
    }
    print(
        'Студент: $name, Возраст: $age, Средний балл - ${summ / ocenki.length}');
  }
}

// Создайте класс "Автомобиль" (Car), у которого есть свойства марка, модель и год выпуска. Реализуйте методы для получения  этих свойств.
class Auto {
  String marka;
  String model;
  int age;
  Auto({required this.marka, required this.model, required this.age});
  void info() {
    print('Марка машины - $marka, Модель - $model, Год выпуска - $age');
  }
}

// Создайте класс "Книга" (Book), у которого есть свойства название, автор и год издания. Реализуйте методы для получения этих свойств.

class Book {
  String name;
  String writer;
  int age;
  Book({required this.name, required this.writer, required this.age});
  void info() {
    print('Книга $name написанная $writer в $age году ');
  }
}

// Создайте класс "Прямоугольник" (Rectangle), у которого есть свойства ширина и высота. Реализуйте методы для получения  этих свойств, а также методы для вычисления площади и периметра.

class Pryamougolnik {
  int height;
  int weight;
  Pryamougolnik({required this.height, required this.weight});
  void info() {
    print('Высота прямоугольника - $height, ширина прямоугольника - $weight');
  }

  void ploshad() {
    print('S = ${height / weight}');
  }

  void perimetr() {
    print('P = ${(height + weight) / 2}');
  }
}

// Создайте класс "Банковский счет" (BankAccount), у которого есть свойства номер счета, баланс и владелец. Реализуйте методы для получения этих свойств, а также методы для внесения и снятия денег.
class BankAccount {
  int num;
  int balance;
  String name;
  BankAccount({required this.balance, required this.name, required this.num});
  void info() {
    print('Владелец счета $name, номер счета $num, баланс счета $balance');
  }

  void popolnenie() {
    print('Введите сумму пополнения');
    int addCache = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    print(
        'Вы по полнили баланс на $addCache. Ваш баланс ${balance += addCache}');
  }

  void snyatie() {
    print('Введите сумму снятия');
    int takeCache = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    print('Вы сняли $takeCache. Ваш баланс ${balance -= takeCache}');
  }
}

// Создайте класс "Товар" (Product), у которого есть свойства название, цена и количество. Реализуйте методы для получения этих свойств, а также метод для вычисления общей стоимости товара (умножение цены на количество).
class Product {
  String name;
  int price;
  int count;
  Product({required this.name, required this.price, required this.count});
  void info() {
    print('На складе осталось $name по цене $price $count штук');
  }

  void allValue() {
    print('Общая стоимость товара на складе составляет ${price * count}');
  }
}

// Создайте класс "Сотрудник" (Employee), у которого есть свойства имя, должность и зарплата. Реализуйте методы для получения этих свойств, а также метод для увеличения зарплаты на определенный процент.
class Employee {
  String name;
  String position;

  double salary;
  Employee({required this.name, required this.position, required this.salary});
  void info() {
    print('Сотрудник $name, занимает должность $position c окладом $salary');
  }

  void salaryUpd(num procent) {
    salary = ((salary / 100) * procent) + salary;
  }
}

// Создайте класс "Треугольник" (Triangle), у которого есть свойства длина сторон. Реализуйте методы для получения этих свойств, а также метод для вычисления площади треугольника по формуле Герона.
class Triangle {
  int a;
  int b;
  int c;
  Triangle({required this.a, required this.b, required this.c});
  void info() {
    print('Длина стороны а - $a, длина стороны b - $b, длина стороны с - $c');
  }

  void geronSquare() {
    int p = a + b + c;
    print(
        'Площадь треугольника по формуле Герона составила ${sqrt(p * (p - a) * (p - b) * (p - c))}');
  }
}
