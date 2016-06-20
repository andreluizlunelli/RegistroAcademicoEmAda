with Ada.Strings.Unbounded;

package MatriculaCrud is
   -- tipos
   type Matricula is record
      Numero : Integer := 0;
      Aluno : Ada.Strings.Unbounded.Unbounded_String;
      Periodo : Float := 0.0;
   end record;
   type ArrayMatriculas is array (1..100) of Matricula;

   -- metodos
   function Obter(Numero : Integer) return Matricula;
   function ObterLista return ArrayMatriculas;
   function GetIncrementoPosicao return Integer;
   procedure Inserir(M : Matricula);
   procedure Alterar(M : Matricula);
   procedure Excluir(Numero : Integer);
   procedure ImprimirConsole(M : Matricula);

private
   incrementoPosicao : Integer := 0;
   aArrayMatriculas : ArrayMatriculas;
end MatriculaCrud;
