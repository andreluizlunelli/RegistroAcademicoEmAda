with DisciplinaCrud; use DisciplinaCrud;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded;

procedure Main is
   D : Disciplina;
   outraDisciplina : Disciplina;
   barray : ArrayDisciplinas;
begin
   D.Codigo := 1234;
   D.Nome := Ada.Strings.Unbounded.To_Unbounded_String("lala");
   D.CargaHoraria := 6;
   D.Valor := 150.99;
   Inserir(D);

   D.Codigo := 1235;
   D.Nome := Ada.Strings.Unbounded.To_Unbounded_String("lolo");
   D.CargaHoraria := 8;
   D.Valor := 200.00;
   Inserir(D);
   barray := ObterLista;
   for i in barray'Range loop
      ImprimirConsole(barray(i));
   end loop;



end Main;

