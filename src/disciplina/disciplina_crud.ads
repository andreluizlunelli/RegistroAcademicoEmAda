with Ada.Strings.Unbounded;

package Disciplina_Crud is
   -- tipos
   type Array_Disciplinas is private;
   type Disciplina is tagged record
      Codigo : Integer := 0;
      Nome : Ada.Strings.Unbounded.Unbounded_String;
      Carga_Horaria : Integer := 0;
      Valor : Float := 0.0;
   end record;


   -- metodos
   function Novo return Disciplina;
--     function Obter(Codigo : Integer) return Disciplina;
--     function Obter_Lista return Array_Disciplinas;
   procedure Inserir(D : Disciplina);
   procedure Alterar(D : in out Disciplina);
   procedure Excluir(D : Disciplina);
   procedure Imprimir_Console(D : Disciplina);

private
   PK : Integer := 0;
   type Array_Disciplinas is array (1..1000) of Disciplina;
   function Retorna_Proximo_Codigo_Disciplina return Integer;

end Disciplina_Crud;
