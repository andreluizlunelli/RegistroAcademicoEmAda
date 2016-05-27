with Disciplina_Crud; use Disciplina_Crud;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   D : Disciplina_Crud.Disciplina;
   D2 : Disciplina_Crud.Disciplina;
   D3 : Disciplina_Crud.Disciplina;
   D4 : Disciplina_Crud.Disciplina;

--     Crud : Disciplina_Crud;
begin
--     Incrementa(D);
--     Incrementa(D);
--     Put_Line(Item => Integer'Image(D.Codigo));

   D := Disciplina_Crud.Novo;
   Put_Line(Item => Integer'Image(D.Codigo));

   D2 := Disciplina_Crud.Novo;
   Put_Line(Item => Integer'Image(D2.Codigo));

   D3 := Disciplina_Crud.Novo;
   Put_Line(Item => Integer'Image(D3.Codigo));


end Main;

