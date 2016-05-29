with GNAT.IO; use GNAT.IO;
with Ada.Text_IO;
with Ada.Float_Text_IO;
with DisciplinaCrud; use DisciplinaCrud;
with str;
with Ada.Strings;
with Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;

procedure MainDisciplina is
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

--        Ada.Text_IO.Put("Enter a string: ");
--        D.Nome := Ada.Strings.Unbounded.To_Unbounded_String(Ada.Text_IO.Get_Line);
--        Ada.Text_IO.Put_Line(Ada.Strings.Unbounded.To_String(D.Nome));
--        Ada.Text_IO.Unbounded_IO.Put_Line(D.Nome);

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


end MainDisciplina;
