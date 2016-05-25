package Disciplina_Crud is
   type Disciplina is tagged record
      Codigo : Integer := 0;
   end record;
   -- metodos de interface
   procedure Diga_Ola;
   function Incrementa(D : Disciplina) return Disciplina;
end Disciplina_Crud;
