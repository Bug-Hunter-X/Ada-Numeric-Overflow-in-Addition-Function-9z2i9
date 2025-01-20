```ada
function Add_Numbers(A, B: Integer) return Integer is
begin
  return A + B;
end Add_Numbers;

procedure Main is
   X : Integer := 10;
   Y : Integer := 5;
   Sum : Integer;
begin
   Sum := Add_Numbers(X, Y);
   Ada.Text_IO.Put_Line("Sum: " & Integer'Image(Sum));
end Main;
```