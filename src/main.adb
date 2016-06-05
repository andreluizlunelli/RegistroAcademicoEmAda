with DisciplinaCrud; use DisciplinaCrud;
with Ada.Text_IO;
with GNAT.IO; use GNAT.IO;
with Ada.Strings.Unbounded;
with DisciplinaAction;
with AlunoAction;
with Ada.IO_Exceptions;
with Ada.Integer_Text_IO;

procedure Main is
   opcaoString : String(1..2);
   opcaoInt : Integer := 0;
   flagMenu: Boolean := True;

   function IsNumeric (Item : in String) return Boolean is
      Dummy : Integer;
   begin
      Dummy := Integer'Value(Item);
      return True;
   exception
      when others =>
         return False;
   end IsNumeric;

   procedure ExibirMenu is
   begin
     Ada.Text_IO.Put_Line("#################################");
     Ada.Text_IO.Put_Line("### Registro Academico Em Ada ###");
     Ada.Text_IO.Put_Line("#################################");
     Ada.Text_IO.Put_Line("Menu, escolha uma das opcoes: ");
     Ada.Text_IO.Put_Line("  [00] Sair");

     Ada.Text_IO.Put_Line("  [10] Disciplina - Listar");
     Ada.Text_IO.Put_Line("  [11] Disciplina - Cadastrar");
     Ada.Text_IO.Put_Line("  [12] Disciplina - Alterar");
     Ada.Text_IO.Put_Line("  [13] Disciplina - Excluir");

     Ada.Text_IO.Put_Line("  [20] Aluno - Listar");
     Ada.Text_IO.Put_Line("  [21] Aluno - Cadastrar");
     Ada.Text_IO.Put_Line("  [22] Aluno - Alterar");
     Ada.Text_IO.Put_Line("  [22] Aluno - Excluir");
   end;

   procedure ExecutaEscolhaMenu(opcao : Integer) is
   begin
      case opcao is
         when 0 => flagMenu := False;
         when 10 => DisciplinaAction.Listar;
         when 11 => DisciplinaAction.Cadastrar;
         when 12 => DisciplinaAction.Alterar;
         when 13 => DisciplinaAction.Excluir;
         when 20 => AlunoAction.Listar;
         when 21 => AlunoAction.Cadastrar;
         when 22 => AlunoAction.Alterar;
         when 23 => AlunoAction.Excluir;
         when others =>
            Ada.Text_IO.Put_Line("");
            Ada.Text_IO.Put_Line("Ops! Essa opcao nao existe.");
            Ada.Text_IO.Put_Line("");
      end case;
   end;

begin
   while flagMenu loop
      begin
         ExibirMenu;
         Ada.Text_IO.Get(opcaoString);
         if IsNumeric(opcaoString) then
            opcaoInt := Integer'Value(opcaoString);
         else
            Ada.Text_IO.Put_Line("'" & opcaoString & "' nao e uma opcao valida.");
         end if;
         ExecutaEscolhaMenu(opcaoInt);
      exception
         when Ada.IO_Exceptions.Data_Error =>
            Ada.Text_IO.Put_Line ("Ops! Ocorreu algo de errado.");
      end;
   end loop;

end Main;

