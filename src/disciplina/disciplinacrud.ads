with Ada.Strings.Unbounded;

package DisciplinaCrud is
   -- tipos
   type Disciplina is record
      Codigo : Integer := 0;
      Nome : Ada.Strings.Unbounded.Unbounded_String;
      CargaHoraria : Integer := 0;
      Valor : Float := 0.0;
   end record;
   type ArrayDisciplinas is array (1..100) of Disciplina;

   -- metodos
   function Obter(Codigo : Integer) return Disciplina;
   function ObterLista return ArrayDisciplinas;
   procedure Inserir(D : Disciplina);
   procedure Alterar(D : Disciplina);
   procedure Excluir(Codigo : Integer);
   procedure ImprimirConsole(D : Disciplina);

private
   incrementoPosicao : Integer := 1;
   aArrayDisciplinas : ArrayDisciplinas;
end DisciplinaCrud;
