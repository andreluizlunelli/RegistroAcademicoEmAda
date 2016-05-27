with Disciplina_Crud; use Disciplina_Crud;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   D : Disciplina;
begin
   Incrementa(D);
   Incrementa(D);
   Put_Line(Item => Integer'Image(D.Codigo));


end Main;

