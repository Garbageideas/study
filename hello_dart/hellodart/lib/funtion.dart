var _nobleGases = [1,2];

bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

isNoble2(atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

bool isNoble3(int atomicNumber) => _nobleGases[atomicNumber] != null;


int excute () {

    var wf = new WannabeFunction();
  var out = wf("Hi","there,","gang");
  print('$out');

    Adder myAdder = new Adder();
  Incrementer myIncrementer = new Incrementer(2);
  
  print(myAdder(10, 3));
  print(myIncrementer(40));

  int a = Function.apply(f, [10,3]);
  print(a);
  int b = Function.apply(f, [10,3], {new Symbol("operation"): "subtract"});
  print(b);

  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
assert(loudify('hello') == '!!! HELLO !!!');

var list = ['apples', 'bananas', 'oranges'];
list.forEach((item) {
  print('${list.indexOf(item)}: $item');
});

}

class WannabeFunction {
  call(String a, String b, String c) => '$a $b $c!';
}


class Adder implements Function { 
   call(int a, int b) => a + b;
}

class Incrementer implements Function {
  int _amt;
  Incrementer(this._amt);
  call(int a) => a + _amt; 
}

Function f = (int n, int m, {operation: "add"}) {
  if (operation == "add") {
    return n + m;
  } else {
    return n - m;
  }
};

// []는 optional
String say(String from, String msg,
    [String device = 'carrier pigeon', String mood]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }
  return result;
}

/*
assert(say('Bob', 'Howdy') ==
    'Bob says Howdy with a carrier pigeon');
*/

void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
  print('list:  $list');
  print('gifts: $gifts');
}