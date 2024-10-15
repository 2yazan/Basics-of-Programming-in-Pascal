//The given integer n is a non-negative number. Determine whether this number n is a palindrome.

program lab3;
var 
  n, m, k: integer;
begin
  write('Enter a natural number:');
  readln(n);
  if n < 0
    then writeln('Not a natural number')
    else begin
      k := n;
      m := 0;
      while k > 0 do
        begin
          m := 10 * m + k mod 10;
          k := k div 10
        end;
      if m = n
        then writeln('number - Palindrome')
        else writeln('number - not Palindrome')
    end;
end.
