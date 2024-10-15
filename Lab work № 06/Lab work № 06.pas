{In the string, adjacent words are separated by commas and spaces.
Determine the number of palindrome words that start with the letter "a".}

program lab6;

function palindrom(s: string): boolean;
var
  t: String; 
  i: Integer;
begin
  t := s; 
  for i := 1 to Length(s) do 
    t[i] := s[Length(s) - i + 1];
  if s = t then palindrom := true
  else palindrom := false;
end;

function kol(s: string): integer;
var
  i, j, k: integer;
  s1: string;
begin
  s := ' ' + s; 
  k := 0; 
  i := 2; 
  while i < length(s) do
    if (s[i] <> ' ') and (s[i - 1] = ' ') and ((s[i] = 'а') or (s[i] = 'А')) then
    begin
      j := i; 
      s1 := ''; 
      while(j <= length(s)) and (s[j] <> ' ') do
      begin
        s1 := s1 + s[j]; 
        inc(j); 
      end;
      j := 1;
      while(j <= length(s1)) and not (s1[j] in ['0'..'9']) do inc(j);
      if (j > length(s1)) and (palindrom(s1) = true) then inc(k);
      i := i + length(s1); 
    end
    else inc(i); 
  kol := k; 
end;

var
  s: string;
  k: integer;

begin
  writeln('enter a string:'); readln(s); 
  k:=kol(s);
  if k <> 0 then 
    writeln('number of palindromic words:',k)
  else
    write('There are no palindromic words starting with A or a')
end.
