```ada
function Add_Numbers(A, B: Integer) return Integer is
   Sum : Integer;
begin
   -- Check for potential overflow before addition
   if (B > 0 and A > Integer'Last - B) then
      raise Constraint_Error with "Integer overflow";
   elsif (B < 0 and A < Integer'First - B) then
      raise Constraint_Error with "Integer overflow";
   end if;
   Sum := A + B;
   return Sum;
exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Error: Integer overflow occurred");
      return 0; -- Or handle the error in a more appropriate way
end Add_Numbers;

procedure Main is
   X : Integer := 10;
   Y : Integer := Integer'Last - 5;
   Sum : Integer;
begin
   Sum := Add_Numbers(X, Y);
   Ada.Text_IO.Put_Line("Sum: " & Integer'Image(Sum));
end Main;
```