with Disciplina_Crud; use Disciplina_Crud;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   D : Disciplina;
   Int_Test : Integer;
begin
   D := Incrementa(D);
   Int_Test := D.Codigo;
--   Int_Test := Integer'Value(Int_Test);
   Put_Line(Item => Integer'Image(Int_Test));

   --Put(D.Codigo);
--   Ada.Text_IO.Integer_IO.Put(D.Codigo);
 --   Disciplina_Crud.Incrementa;

end Main;
