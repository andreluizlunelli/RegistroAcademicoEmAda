with DisciplinaCrud; use DisciplinaCrud;
with Ada.Text_IO;
with GNAT.IO; use GNAT.IO;
with Ada.Strings.Unbounded;
with DisciplinaAction;

procedure Main is
   opcao : Integer;
begin
   Ada.Text_IO.Put_Line("#################################");
   Ada.Text_IO.Put_Line("### Registro Academico Em Ada ###");
   Ada.Text_IO.Put_Line("#################################");
   Ada.Text_IO.Put_Line("Menu, escolha uma das opcoes: ");
   Ada.Text_IO.Put_Line("  [0] Sair");
   Ada.Text_IO.Put_Line("  [10] Disciplina - Listar");
   Ada.Text_IO.Put_Line("  [11] Disciplina - Cadastrar");
   Ada.Text_IO.Put_Line("  [12] Disciplina - Alterar");
   Ada.Text_IO.Put_Line("  [13] Disciplina - Excluir");
   Ada.Text_IO.Put_Line("  [2] Alunos");
   Ada.Text_IO.Put_Line("  [3] Cursos");
   Ada.Text_IO.Put_Line("  [4] Matricula");
   Get(opcao);
   case opcao is
      when 0 => null;
      when 11 => DisciplinaAction.Cadastrar;
      when 12 => DisciplinaAction.Alterar;
      when 2..3 => Ada.Text_IO.Put_Line("Nao implementado");
      when others => Ada.Text_IO.Put_Line("Opcao invalida");
   end case;

end Main;

