with GNAT.IO; use GNAT.IO;
with Ada.Text_IO;
with Ada.Float_Text_IO;
with DisciplinaCrud; use DisciplinaCrud;
with str;
with Ada.Strings;
with Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;

package body DisciplinaAction is
   procedure Cadastrar is
      flagAdd : Integer := 1;
      D : Disciplina;
      Codigo : Integer := 0;
      Nome : String(1..255) := (others => ' ');
      S: String(1 .. 10) := (others => ' ');
      Last: Integer;
   begin
      loop
         Put("Digite o codigo da disciplina:        ");
         Get(D.Codigo);

         Put("Digite o nome da disciplina:          ");
         Ada.Text_IO.Get_Line(Nome, Last);
         D.Nome := Ada.Strings.Unbounded.To_Unbounded_String(Ada.Text_IO.Get_Line);

         Put("Digite a carga horaria da disciplina: ");
         Get(D.CargaHoraria);

         Put("Digite o valor da disciplina, ex:'000.00': ");
         Ada.Float_Text_IO.Get(D.Valor);
         New_Line;

         Inserir(D);
         Put("Voce inseriu um registro..");
         ImprimirConsole(D);

         Put("Você deseja adicionar uma nova Disciplina? sim[1]/não[0]: ");
         Get(flagAdd);
         New_Line;
         exit when flagAdd /= 1;
      end loop;
   end Cadastrar;

   procedure Alterar is
      Codigo : Integer;
      D : Disciplina;
      Nome : String(1..255) := (others => ' ');
      Last: Integer;
      confirma: Integer := 0;
   begin
      -- digita o codigo
      Put("Digite o codigo da disciplina que deseja alterar: ");
      Get(Codigo);
      D := Obter(Codigo);

      Put("Alterando..");
      ImprimirConsole(D);

      Put("Digite o novo nome da disciplina: ");
      Ada.Text_IO.Get_Line(Nome, Last);
      D.Nome := Ada.Strings.Unbounded.To_Unbounded_String(Ada.Text_IO.Get_Line);

      Put("Digite a nova carga horaria da disciplina: ");
      Get(D.CargaHoraria);

      Put("Digite o novo valor da disciplina, ex:'000.00': ");
      Ada.Float_Text_IO.Get(D.Valor);
      New_Line;

      Put("Confirme a alteracao do registro? sim[1]/não[0]: ");
      Get(confirma);
      if (confirma = 0) then
         Put("Alteracao cancelada..");
      else
         Alterar(D);
      end if;
   end Alterar;

   procedure Excluir is
   begin
      null;
   end Excluir;

   procedure Listar is
      listaDisciplinas : ArrayDisciplinas;
      incremento : Integer;
   begin
      New_Line;
      Put("Listando disciplinas..");
      New_Line;
      listaDisciplinas := DisciplinaCrud.ObterLista;
      incremento := DisciplinaCrud.GetIncrementoPosicao;
      for i in listaDisciplinas'First..incremento loop
         ImprimirConsole(listaDisciplinas(i));
      end loop;
      New_Line;
   end Listar;

end DisciplinaAction;
