with Ada.Strings.Unbounded;

package CursoCrud is
   -- tipos
   type ArrayDisciplinas is array(1..10) of Integer;
   aDisciplinas: ArrayDisciplinas;

   type Curso is record
      Codigo : Integer := 0;
      Nome : Ada.Strings.Unbounded.Unbounded_String;
      QtdSemestres : Integer := 0;
      aDisciplinas : ArrayDisciplinas;
   end record;
   type ArrayCurso is array (1..100) of Curso;

   -- metodos
   function Obter(Codigo : Integer) return Curso;
   function ObterLista return ArrayCurso;
   function GetIncrementoPosicao return Integer;
   procedure Inserir(C : Curso);
   procedure Alterar(C : Curso);
   procedure Excluir(Codigo : Integer);
   procedure ImprimirConsole(C : Curso);

private
   incrementoPosicao : Integer := 0;
   aArrayCurso : ArrayCurso;
end CursoCrud;
