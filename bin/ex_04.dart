// Import library
import 'dart:math' as math;

//1.
Fibonacci(t){
    var a = 0;
    var b = 1;
    var f = 1;
    String o='0 1';
    for(var i = 1; i < t - 1; i++){
      var f = a + b; 
      o = '$o $f';
      a = b;
      b = f;
    }
    return o;
  }

//2.
Coordinates(l, d){
  var x = 0;
  var y = 0;
  var width = 980;
  var height = 660;
  var yendofline = height / 2 + math.cos( 90 - d ) * l;
  var xendofline= width / 2 + math.sin( 90 - d ) * l;
  var coordinates_start = '(${width / 2}; ${height / 2})';
  var coordinates_end = '(${xendofline.toStringAsFixed(2)}; ${yendofline.toStringAsFixed(2)})';
  var o = '$coordinates_start et $coordinates_end';
  return o;
}

//3.
Birthday(y, m, d){
  int birthyear = 1992;
  int birthmonth = 4;
  int birthday = 13;
  var o = '';
  int days = 0;
  int months = 0;
  int years = 0;
  if(d >= birthday){
    days = d-birthday;//on suppose qu'il y a 30 jours dans un mois
  }
  else{
    days = 30 - birthday + d;
    }
  if(m >= birthmonth){
    months = m - birthmonth;
    years = y - birthyear;
  }
  if(m < birthmonth && d < birthday){
    months = 12 - birthmonth + m - 1;
    years = y - birthyear - 1;
    }
  return  o = '$o${years} années, ${months} mois et ${days} jours';
}

//4.
Interest(c, t, r){
  var o = "\n";
  var interest_i = c;
  for(var i = 0; i < t + 1; i++){
    o = '$o ${i} : ${interest_i - 1000} dollars accumulés.\n';
    interest_i = interest_i * (1 + r);
  }
  return o;
}

//5.
Table(n, s){
  var o = "\n";
  var t = n;
  for(var i = 1; i < s + 1; i++){
    var z = n * i;
    o = '$o $i. 12 x $i = $z. \n';
  }
  return o;
}

void main () {
  print('Tom Anthony Olesen \n\nSIO Exercice 4\n');
  
  //1.
  int count = 11;
  String sequence = Fibonacci(count);
  print('1. La séquence Fibonacci des ${count} premiers nombres est : $sequence.\n');
  
  //2.
  var length = 120;
  var degrees = 33;
  String coord = Coordinates(length, degrees);
  print('2. Les coordonnées des points x et y en début et fin de ligne sont : $coord.\n');
  
  //3.
  int year = 2013;
  int month = 9;
  int day = 28;
  String tom = Birthday(year, month, day);
  print("3. Depuis ma naissance jusqu'à aujourd'hui, $tom sont passés.\n");
  
  //4.
  var capital = 1000;
  var years = 10;
  var rate = 0.033;
  String bankrevenue = Interest(capital, years, rate);
  print('4. Si nous avons un capital de $capital dollars, les intérêts des périodes sont : $bankrevenue.\n');
  
  //5.
  int number_n = 12;
  int number_s = 20;
  String timestable = Table(number_n, number_s);
  print('5. La table de multiplication de $number_n est : $timestable\n');
}

