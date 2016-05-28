with DisciplinaCrud; use DisciplinaCrud;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded;

procedure Main is
   D, outra, excluido : Disciplina;

   function str(s : String) return Ada.Strings.Unbounded.Unbounded_String is
   begin
      return Ada.Strings.Unbounded.To_Unbounded_String(s);
   end str;
begin
   D.Codigo := 1234;
   D.Nome := str("lala");
   D.CargaHoraria := 6;
   D.Valor := 150.99;
   Inserir(D);

   D.Nome := str("Linguagens de Programação");
   Alterar(D);

   outra := Obter(D.Codigo);
   ImprimirConsole(outra);

   Excluir(outra.Codigo);

   excluido := Obter(outra.Codigo);
   Put_Line("Imprimindo o excluido..");
   ImprimirConsole(excluido);


end Main;

