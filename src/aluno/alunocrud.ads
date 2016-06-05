with Ada.Strings.Unbounded;

package AlunoCrud is
   -- tipos
   type Aluno is record
      Ra : Integer := 0;
      Nome : Ada.Strings.Unbounded.Unbounded_String;
      Email : Ada.Strings.Unbounded.Unbounded_String;
      Curso : Integer := 0;
   end record;
   type ArrayAluno is array (1..100) of Aluno;

   -- metodos
   function Obter(Ra : Integer) return Aluno;
   function ObterLista return ArrayAluno;
   function GetIncrementoPosicao return Integer;
   procedure Inserir(A : Aluno);
   procedure Alterar(A : Aluno);
   procedure Excluir(Ra : Integer);
   procedure ImprimirConsole(A : Aluno);

private
   incrementoPosicao : Integer := 0;
   aArrayAluno : ArrayAluno;
end AlunoCrud;
