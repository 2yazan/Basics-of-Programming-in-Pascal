{The denominator (common ratio) and the first term of a geometric progression are given.
 Calculate the n-th term of the progression.}
 // Note this code is with a recursive function

program lab7;
function geometric_progression(var bn: real; q: real; n: integer):real;
begin
 if (n <> 1) then
  begin
   bn := bn * q;
   geometric_progression(bn, q, n - 1);
  end;
geometric_progression := bn
end;
function chlen(bn: real; q: real; n: integer):real;
begin
 chlen := geometric_progression(bn, q, n);
end;
var
  bn, q: real;
  n: integer;
begin
  writeln('Enter the known term of the progression');
  readln(bn);
  writeln('Denominator of the progression q');
  readln(q);
  writeln('Calculate for n equal to');
  readln(n);
  writeln('The term of the geometric progression is equal to = ', chlen(bn, q, n));
end.
