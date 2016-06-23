with Ada.Strings.Unbounded;

package MatriculaCrud is
   -- tipos
   type ArrayCursos is array(1..10) of Integer;
   aCursos: ArrayCursos;

   type Matricula is record
      Numero : Integer := 0;
      Aluno : Integer := 0;
      Periodo : Float := 0.0;
      aCursos: ArrayCursos;
      QtdCurso: Integer :=0;
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
