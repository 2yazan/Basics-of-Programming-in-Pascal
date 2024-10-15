{Determine whether the given integer square matrix is orthonormal, i.e.,
a matrix in which the dot product of each pair of different rows is 0,
and the dot product of each row with itself is 1.}

program lab5;

const
  n = 3;

var
  m: array[1..n, 1..n] of integer;
  i, j, k: integer;
  f: boolean;
  s: integer;

procedure vvod(length: integer);
var
  i, j: integer;
begin
  writeln('enter the matrix elements:');
  for i := 1 to length do
    for j := 1 to length do
      readln(m[i, j]);
end;

procedure vyvod(length: integer);
var
  i, j: integer;
begin
  writeln('current matrix:');
  for i := 1 to length do
  begin
    for j := 1 to length do
      write(m[i, j]:3);
    writeln;
  end;
end;

procedure ortonorm(length: integer; var f: boolean);
var
  i, j, k: integer;
begin
  i := 1; 
  f := true;
  repeat 
    j := 1; 
    repeat 
      s := 0;
      for k := 1 to length do 
        s := s + m[i, k] * m[j, k]; 
      if ((i = j) and (s <> 1)) or ((i <> j) and (s <> 0)) then f := false;
      j := j + 1 
    until not (f) or (j = length + 1);
    i := i + 1 
  until not (f) or (i = length + 1);
  if f = true then writeln('orthonormal matrix')
  else writeln('not orthonormal matrix');
end;

begin
  vvod(n);writeln; 
  vyvod(n);writeln; 
  ortonorm(n, f); 

end. 
