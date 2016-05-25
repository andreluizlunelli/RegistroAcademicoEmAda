with Ada.Text_IO;

package body Disciplina_Crud is
   -- tipo
   --type Disciplina is tagged record
    --  Codigo : Integer := 0;
   --end record;

   -- metodos
   procedure Diga_Ola is
   begin
      Ada.Text_IO.Put_Line("Ola");
   end Diga_Ola;

   function Incrementa(D : Disciplina) return Disciplina is
      RetVal : Disciplina;
   begin
      RetVal := D;
      RetVal.Codigo := RetVal.Codigo + 1;
      return RetVal;
   end Incrementa;

end Disciplina_Crud;
