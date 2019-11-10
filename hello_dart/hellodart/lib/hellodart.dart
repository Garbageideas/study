int calculate() {
  return 6 * 7;
}

int test () {

var name = 'Voyager I';
var year = 1977;
var samjjeomchil = 3.7;
var list = ['junsik','hyeondong','junhoo'];
var image = {'name': ['junsik'], 'url': 'naver.com/babo'};

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

list.where((x) => x.contains('jun')).forEach(print);

var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
voyager.describe();

var voyager3 = Spacecraft.unlaunched('Voyager III');
voyager3.describe();

// getUserOrder();
createOrderMessage();

var s = 'string interpolation';

assert('Dart has $s, which is very handy.' ==
    'Dart has string interpolation, ' +
        'which is very handy.');
assert('That deserves all caps. ' +
        '${s.toUpperCase()} is very handy!' ==
    'That deserves all caps. ' +
        'STRING INTERPOLATION is very handy!');

//raw string good!
      var rowS = r'In a raw string, not even \n gets special treatment.';

var nobleGases2 = Map();
nobleGases2[2] = 'helium';
nobleGases2[10] = 'neon';
nobleGases2[18] = 'argon';

Symbol obj = new Symbol('Spacecraft');  
// expects a name of class or function or library to reflect 



}





class Spacecraft {
  String name;
  DateTime launchDate;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear => launchDate?.year; // read-only non-final property

  // Method.
  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

class Orbiter extends Spacecraft {
  num altitude;
  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
}

Future<String> getUserOrder() {
  return Future.delayed(Duration(seconds: 3), () => '3sec delayed');
}

Future<void> createOrderMessage() async {
  var order = await getUserOrder();
  print( 'Your order is : $order');
}


// Valid compile-time constants as of Dart 2.5.
const Object i = 3; // Where i is a const Object with an int value...
const list = [i as int]; // Use a typecast.
const map = {if (i is int) i: "int"}; // Use is and collection if.
const set = {if (list is List<int>) ...list}; // ...and a spread.


var promoActive  = true;
var nav = [
  'Home',
  'Furniture',
  'Plants',
  if (promoActive) 'Outlet'
];

var listOfInts = [1, 2, 3];
var listOfStrings = [
  '#0',
  for (var i in listOfInts) '#$i'
];

var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};


var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

