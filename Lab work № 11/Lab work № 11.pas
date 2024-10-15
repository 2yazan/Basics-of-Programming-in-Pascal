{A file is given, whose components are integers. Transform it by excluding
 duplicate occurrences of the same number.}

program lab11;

type 
tfile = file of integer;

procedure write_file(var f: tfile);
var
  n, i, a: integer;
begin
assign(f, 'input_11.txt');
rewrite(f);
write('enter the number of numbers n=');
readln(n);
for i := 1 to n do
 begin
  a := random(100);
  write(f, a);
 end;
 close(f);
end;
procedure del_povt(var f: tfile);
var
  k, i, j, l, a, b, c: integer;
begin
 reset(f);
 k := 0; i := 0;
while i <= filesize(f) - 1 do
 begin
  seek(f, i);
  read(f, a);
  j := i + 1;
  while j <= filesize(f) - 1 - k do
   begin
    seek(f, j);
    read(f, b);
    if b = a then
     begin
      k := k + 1;
      for l := j to filesize(f) - 2 do
       begin
        seek(f, l + 1);
        read(f, c);
        seek(f, l);
        write(f, c);
       end;
     end
    else j := j + 1;
   end;
   i := i + 1;
  end;
 seek(f, filesize(f) - k);
 truncate(f);
 close(f);
end;
procedure read_file(var f: tfile; s: string);
var
  a: integer;
begin
 writeln(s);
 reset(f);
 while not eof(f) do
  begin
   read(f, a);
   write(a, ' ');
  end;
  writeln;
  close(f);
end;
var
  f: tfile;
begin
write_file(f);
read_file(f, 'Source file'); writeln;
del_povt(f);
read_file(f, 'Modified file');
end.
