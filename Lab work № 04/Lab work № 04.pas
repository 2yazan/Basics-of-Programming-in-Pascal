{If the given sequence is neither in non-decreasing order nor in 
non-increasing order, find the geometric mean of the positive elements.}

program lab4;
const
  N = 5;
type t_range = 1..N;
t_arr = array [t_range] of integer;

procedure input_array(var a: t_arr);
var
  i: integer;

begin
  for i := 1 to N do
    read(a[i])
end;

function check_array(a: t_arr): boolean;
  var
    i: integer;
    c: boolean;
  begin
    i := 2;
    while (i <= N) and (a[i - 1] <= a[i]) do
      i := i + 1;
    c := i > N;
    if c then 
      check_array := c
    else
      begin
        i := 2;
        while (i <= N) and (a[i - 1] >= a[i]) do
          i := i + 1;
        c := i > N;
        if c  then    
          check_array := c;            
      end;
  end;

function average_geometry(a: t_arr): real;
var
  i, count: integer;
  g: real;
begin
    g := 1;
    count := 0;
    for i := 1 to N do
      begin
        if a[i] > 0 then
        begin
            count := count + 1;
            g := g * a[i];
        end;
      end;
    g := Exp(Ln(g) / count);
    average_geometry := g;
end;

var
  a: t_arr;
  g: real;

begin
  writeln('Enter the array');
  input_array(a);
  if not check_array(a) then
    write('Geometric mean of positive elements = ', average_geometry(a))
  else 
    write('The array is sorted in non-decreasing or non-increasing order')
end.
