with GNAT.IO; use GNAT.IO;
with Ada.Text_IO;
with Ada.Float_Text_IO;
with AlunoCrud; use AlunoCrud;
with str;
with Ada.Strings;
with Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;

package body AlunoAction is

   procedure Cadastrar is
      flagAdd : Integer := 1;
      A : Aluno;
      Ra : Integer := 0;
      Nome : String(1..255) := (others => ' ');
      S: String(1 .. 10) := (others => ' ');
      Last: Integer;
   begin
      loop
         Put("Digite o RA do aluno: ");
         Get(A.Ra);

         Put("Digite o nome do aluno: ");
         Ada.Text_IO.Get_Line(Nome, Last);
         A.Nome := Ada.Strings.Unbounded.To_Unbounded_String(Ada.Text_IO.Get_Line);

         Put("Digite o email do aluno: ");
         Get(A.Email);

         Put("Digite o codigo do curso que ele vai cursar: ");
         Ada.Float_Text_IO.Get(A.Curso);
         New_Line;

         Inserir(A);
         Put("Voce inseriu um aluno..");
         ImprimirConsole(A);

         Put("Você deseja adicionar um novo Aluno? sim[1]/não[0]: ");
         Get(flagAdd);
         New_Line;
         exit when flagAdd /= 1;
      end loop;
   end Cadastrar;

   procedure Alterar is
   begin
      null;
   end Alterar;

   procedure Excluir is
   begin
      null;
   end Excluir;

   procedure Listar is
      listaAlunos : ArrayAluno;
      incremento : Integer;
   begin
      New_Line;
      Put("Listando alunos..");
      New_Line;
      listaAlunos := AlunoCrud.ObterLista;
      incremento := AlunoCrud.GetIncrementoPosicao;
      for i in listaDisciplinas'First..incremento loop
         if (listaDisciplinas(i).Codigo /= 0) then
            ImprimirConsole(listaDisciplinas(i));
         end if;
      end loop;
      New_Line;
   end Listar;

end AlunoAction;
