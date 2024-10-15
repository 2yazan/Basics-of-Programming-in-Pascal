{The denominator (common ratio) and the first term of a geometric progression are given.
 Calculate the n-th term of the progression.}

program lab7;
function geometric_progression(var bn: real; q: real; n: integer):real;
var
  i: integer;
  q2:real;
begin
 q2:=q;
 if n <> 1 then
   begin
   for i := 1 to n-2 do
     q:=q*q2;
     bn:=bn*q;
   end;
  geometric_progression := bn
end;
var
  n: integer;
  bn, q: real;
begin
  writeln('Enter the known term of the progression');
  readln(bn);
  writeln('Denominator of the progression q');
  readln(q);
  writeln('Calculate for n equal to');
  readln(n);
  geometric_progression(bn, q, n);
  write('The term of the geometric progression is equal to = ', bn);
end.
