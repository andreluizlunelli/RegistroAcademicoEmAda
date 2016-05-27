with Ada.Text_IO;

package body Disciplina_Crud is

   procedure Add (V : Integer; To : in out Integer; Limited_To : Integer) is
   begin
      --  Check that the result wont be too large. This involves reading
      --  the initial value of the 'in out' parameter To, which would be
      --  wrong if To was a mere 'out' parameter (it would be
      --  uninitialized).
      if To + V > Limited_To then
         To := Limited_To;
      else
         To := To + V;
      end if;
   end Add;

end Disciplina_Crud;
