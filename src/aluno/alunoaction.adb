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
      A : AlunoCrud.Aluno;
      Ra : Integer := 0;
      Nome : String(1..255) := (others => ' ');
      Email : String(1..255) := (others => ' ');
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
         Ada.Text_IO.Get_Line(Email, Last);
         A.Email := Ada.Strings.Unbounded.To_Unbounded_String(Ada.Text_IO.Get_Line);

         Put("Digite o codigo do curso que ele vai cursar: ");
         Get(A.Curso);
         New_Line;

         AlunoCrud.Inserir(A);
         Put("Voce inseriu um aluno..");
         AlunoCrud.ImprimirConsole(A);

         Put("Você deseja adicionar um novo Aluno? sim[1]/não[0]: ");
         Get(flagAdd);
         New_Line;
         exit when flagAdd /= 1;
      end loop;
   end Cadastrar;

   procedure Alterar is
      Ra : Integer;
      A : AlunoCrud.Aluno;
      Nome : String(1..255) := (others => ' ');
      Email : String(1..255) := (others => ' ');
      Last: Integer;
      confirma: Integer := 0;
   begin
      -- digita o codigo
      Put("Digite o numero do Ra de aluno que deseja alterar: ");
      Get(Ra);
      A := AlunoCrud.Obter(Ra);

      Put("Alterando..");
      AlunoCrud.ImprimirConsole(A);

      Put("Digite o novo nome do aluno: ");
      Ada.Text_IO.Get_Line(Nome, Last);
      A.Nome := Ada.Strings.Unbounded.To_Unbounded_String(Ada.Text_IO.Get_Line);

      Put("Digite o novo email do aluno: ");
      Ada.Text_IO.Get_Line(Email, Last);
      A.Email := Ada.Strings.Unbounded.To_Unbounded_String(Ada.Text_IO.Get_Line);

      Put("Digite o novo curso do aluno: ");
      Get(A.Curso);
      New_Line;

      Put("Confirme a alteracao do registro? sim[1]/não[0]: ");
      Get(confirma);
      if (confirma = 0) then
         Put("Alteracao cancelada..");
      else
         AlunoCrud.Alterar(A);
      end if;
   end Alterar;

   procedure Excluir is
      Ra, opcao : Integer;
      A : Aluno;
   begin
      Put("Digite o Ra do aluno que deseja remover: ");
      Get(Ra);
      A := Obter(Ra);
      New_Line;
      Put("Confirme a remocao do registro? sim[1]/não[0]: ");
      ImprimirConsole(A);
      Get(opcao);
      if (opcao = 0) then
         Put("Remocao cancelada..");
      else
         Excluir(A.Ra);
      end if;
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
      for i in listaAlunos'First..incremento loop
         if (listaAlunos(i).Ra /= 0) then
            ImprimirConsole(listaAlunos(i));
         end if;
      end loop;
      New_Line;
   end Listar;

end AlunoAction;
