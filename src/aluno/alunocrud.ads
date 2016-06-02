
package AlunoCrud is
   -- tipos
   type Aluno is record
      ra : Integer := 0;
      Nome : Ada.Strings.Unbounded.Unbounded_String;
      Email : Ada.Strings.Unbounded.Unbounded_String;
      -- CONTINUAR AQUI

   end record;
--     type ArrayDisciplinas is array (1..100) of Disciplina;

   -- metodos
--     function Obter(Codigo : Integer) return Disciplina;
--     function ObterLista return ArrayDisciplinas;
--     function GetIncrementoPosicao return Integer;
--     procedure Inserir(D : Disciplina);
--     procedure Alterar(D : Disciplina);
--     procedure Excluir(Codigo : Integer);
--     procedure ImprimirConsole(D : Disciplina);

private
--     incrementoPosicao : Integer := 0;
--     aArrayDisciplinas : ArrayDisciplinas;
end AlunoCrud;
