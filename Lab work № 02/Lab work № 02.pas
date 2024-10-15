// The real numbers a, b, c, and d are given.
// If they are arranged in non-increasing order, 
// replace each number with the largest one among them;
// if they are arranged in non-decreasing order, 
// leave the numbers unchanged; otherwise, 
// replace all the numbers with their squares.

program lab2;
var
   A, B, C, D, max: real;
begin
   writeln('enter A, B, C, D');
   readln(A, B, C, D);

   if (A >= B) and (B >= C) and (C >= D) then
   begin
     max := A;  
     A := max;
     B := max;
     C := max;
     D := max;
   end
   else if (A <= B) and (B <= C) and (C <= D) then
   begin
     // Do nothing
   end
   else
   begin
     A := A * A;
     B := B * B;
     C := C * C;
     D := D * D;
   end;

   writeln('results: ', A:2:2, ' ', B:2:2, ' ', C:2:2, ' ', D:2:2);
end.

