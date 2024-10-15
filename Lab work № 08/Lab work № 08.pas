{Find the sum of \(n\) fractions in the form of an irreducible fraction.
Represent the fraction as two fields: numerator and denominator. 
Use subroutines for input, output, reducing the fraction,
and finding the sum of the fractions.}

program lab8;
type 
  drob = record 
    ch: integer;
    zn: integer; 
  end;
var
  a, b, c: drob;
  n, i: integer;
procedure vvod(var x: drob);
begin
  with x do 
    read(ch, zn);
end;
procedure vyvod(x: drob);
begin
  with x do
    write(ch, '/', zn);
end;
procedure add(a: drob; b: drob; var c: drob);
begin
  c.ch := a.ch * b.zn + b.ch * a.zn;
  c.zn := a.zn * b.zn;
end;
procedure sokr(a: drob; var b: drob);
var
  ch1, zn1: integer;
begin
  ch1 := a.ch;
  zn1 := a.zn;
  while ch1 <> zn1 do
    if ch1 > zn1 then ch1 := ch1 - zn1 else zn1 := zn1 - ch1;
  b.ch := a.ch div ch1;
  b.zn := a.zn div zn1;
end;
begin
  writeln('Enter the number of fractions:'); readln(n);
  writeln;
  writeln('Enter the numerators and denominators of the fractions, natural numbers:');
  vvod(a);
  for i := 2 to n do
  begin
    vvod(b);
    add(a, b, c);
    sokr(c, a);
  end;
  writeln;
  writeln('Result of the addition:');
  vyvod(a);
end.
