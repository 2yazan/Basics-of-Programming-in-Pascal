
//finding the domain of admissible values (ОДЗ)

program lab1;
var 
  x, y, z, lg, tg_z, a, b: Real;
begin
  writeln('enter x, y, z:');
  write('x = ');
  read(x);
  write('y = ');
  read(y);
  write('z = ');
  read(z);
  tg_z := sin(z) / cos(z) ;
  lg := ln(1 + abs(((tg_z ))) ) / ln(10);
  a := (lg*lg + 0.95*x) / (1+(Sqr(sin(y-(3.14)/5))-0.01*x )) ;
  b := lg*lg*lg +3 ;
  writeln('At x = ', x:0:3, ', y = ', y:0:3, ', z = ', z:0:3);
  writeln('a = ', a:0:10);
  writeln('b = ', b:0:10);
end.
