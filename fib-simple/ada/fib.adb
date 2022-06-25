with Ada.Text_IO; use Ada.Text_IO;

procedure fib is
   type my_int is range 0 .. 13_000_000_000;
   
   function rfib (n : my_int) return my_int is
   begin
      if (n < 2) then
         return n;
      else
         return rfib (n - 1) + rfib (n - 2);
      end if;
   end rfib;

begin
   Put_Line (Item => "fib(42) = " & my_int'Image (rfib (n => 42)));
end fib;
