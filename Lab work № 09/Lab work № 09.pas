//A text is given that ends with a period. Output the vowels that appear in more than one word.

program lab10;

const
  gl: set of char = ['a', 'e', 'i', 'o', 'u', 'y'];

function vh2(x: string; sim: char): boolean;
var
  i, k: integer;
  f: boolean;
begin
  k := 0;
  i := 1;
  f := false;
  while (k < 2) and (x[i] <> '.') do
  begin
    if x[i] = sim 
    then
    begin
      inc(k);
      while (x[i] <> ' ') and (x[i] <> ',') and (x[i] <> '.') do inc(i);
    end
    else inc(i)
  end;
  if k > 1 then f := true;
  vh2 := f;
end;

var
  s, rez: string;
  i: char;
  
begin
  writeln('Enter text consisting of words ending with a period');
  readln(s);
  writeln;
  rez := '';
  for i := 'a' to 'z' do
    if (i in gl) and (vh2(s, i)) then rez := rez + i;
  if rez = '' then writeln(' - ')
  else writeln(rez);
end.