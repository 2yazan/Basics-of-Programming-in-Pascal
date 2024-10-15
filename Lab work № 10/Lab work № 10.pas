//In a text file, replace several consecutive identical characters with one.

program lab10;

procedure prn(s, s1: string);
var
  f: file of char;
  c: char;
begin
  writeln(s1);
  writeln;
  assign(f, s);
  reset(f);
  while not eof(f)
    do
  begin
    read(f, c); 
    write(c);
  end;
  close(f);
  writeln;
end;
 
function del(s: string): boolean;
var
  f: file of char;
  c1, c2: char;
  p1, p2: longint;
  b: boolean;
begin
  assign(f, s);
  reset(f);
  if filesize(f) < 2
    then del := false 
  else begin
    p1 := 0;
    p2 := 1;
    repeat
      seek(f, p2); 
      read(f, c2); 
      seek(f, p1); 
      read(f, c1);
      if c1 <> c2 
      then begin
        inc(p1); 
        write(f, c2)
      end;
      inc(p2);
    until p2 = FileSize(f);
    b := p1 + 1 < p2; 
    if b
    then begin
      seek(f, p1 + 1);
      truncate(f);
    end;
    del := b; 
  end;
  close(f);
end;

var
  fname: string;

begin
  fname := 'input_10.txt';
  prn(fname, 'Source file'); writeln;
  if del(fname) 
    then prn(fname, 'Transformed file')
  else writeln('No transformation of the file was needed');
end.
