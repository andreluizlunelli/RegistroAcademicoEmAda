with GNAT.IO; use GNAT.IO;
with Ada.Text_IO;
with Ada.Float_Text_IO;
with CursoCrud; use CursoCrud;
with str;
with Ada.Strings;
with Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;

package body CursoAction is
   procedure Cadastrar is
      flagAdd : Integer := 1;
      C : Curso;
      Codigo : Integer := 0;
      Nome : String(1..255) := (others => ' ');
      S: String(1 .. 10) := (others => ' ');
      Last: Integer;
   begin
      loop
         Put("Digite o codigo do curso:        ");
         Get(C.Codigo);

         Put("Digite o nome do curso:          ");
         Ada.Text_IO.Get_Line(Nome, Last);
         C.Nome := Ada.Strings.Unbounded.To_Unbounded_String(Ada.Text_IO.Get_Line);

         Put("Digite a quantidade de semestres do curso: ");
         Get(C.QtdSemestres);
         New_Line;

         Inserir(C);
         Put("Voce inseriu um registro..");
         ImprimirConsole(C);

         Put("Você deseja adicionar uma novo Curso? sim[1]/não[0]: ");
         Get(flagAdd);
         New_Line;
         exit when flagAdd /= 1;
      end loop;
   end Cadastrar;

   procedure Alterar is
      Codigo : Integer;
      C : Curso;
      Nome : String(1..255) := (others => ' ');
      Last: Integer;
      confirma: Integer := 0;
   begin
      Put("Digite o codigo do curso que deseja alterar: ");
      Get(Codigo);
      C := Obter(Codigo);

      Put("Alterando..");
      ImprimirConsole(C);

      Put("Digite o novo nome do Curso: ");
      Ada.Text_IO.Get_Line(Nome, Last);
      C.Nome := Ada.Strings.Unbounded.To_Unbounded_String(Ada.Text_IO.Get_Line);

      Put("Digite a nova quantidade de semestres do curso: ");
      Get(C.QtdSemestres);
      New_Line;

      Put("Confirme a alteracao do registro? sim[1]/não[0]: ");
      Get(confirma);
      if (confirma = 0) then
         Put("Alteracao cancelada..");
      else
         Alterar(C);
      end if;
   end Alterar;

   procedure Excluir is
      Codigo, opcao : Integer;
      C : Curso;
   begin
      Put("Digite o codigo do curso que deseja remover: ");
      Get(Codigo);
      C := Obter(Codigo);
      New_Line;
      Put("Confirme a remocao do registro? sim[1]/não[0]: ");
      ImprimirConsole(C);
      Get(opcao);
      if (opcao = 0) then
         Put("Remocao cancelada..");
      else
         Excluir(C.Codigo);
      end if;
   end Excluir;

   procedure Listar is
      listaCursos : ArrayCurso;
      incremento : Integer;
   begin
      New_Line;
      Put("Listando cursos..");
      New_Line;
      listaCursos := CursoCrud.ObterLista;
      incremento := CursoCrud.GetIncrementoPosicao;
      for i in listaCursos'First..incremento loop
         if (listaCursos(i).Codigo /= 0) then
            ImprimirConsole(listaCursos(i));
         end if;
      end loop;
      New_Line;
   end Listar;

end CursoAction;
