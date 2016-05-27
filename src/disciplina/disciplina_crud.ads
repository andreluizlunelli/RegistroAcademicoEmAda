with Ada.Strings.Unbounded;

package Disciplina_Crud is
   -- tipos
   type Disciplina is tagged record
      Codigo : Integer := 0;
      Nome : Ada.Strings.Unbounded.Unbounded_String;
      Carga_Horaria : Integer := 0;
      Valor : Float := 0.0;
   end record;
   type Array_Disciplinas is array (0..1000) of Disciplina;
   type PK is new Integer;


   function Obter(Codigo : Integer) return Disciplina;
   function Obter_Lista return Array_Disciplinas;
   procedure Inserir(D : Disciplina);
   procedure Alterar(D : in out Disciplina);
   procedure Excluir(D : Disciplina);

private
   function Retorna_Codigo_Disciplina return PK;

end Disciplina_Crud;
