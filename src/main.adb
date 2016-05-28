with Disciplina_Crud; use Disciplina_Crud;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded;

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
   D.Nome := Ada.Strings.Unbounded.To_Unbounded_String("lala");
   D.Carga_Horaria := 6;
   D.Valor := 150.99;
   Disciplina_Crud.Imprimir_Console(D);


   D2 := Disciplina_Crud.Novo;
   Put_Line(Item => Integer'Image(D2.Codigo));

   D3 := Disciplina_Crud.Novo;
   Put_Line(Item => Integer'Image(D3.Codigo));

--     Disciplina_Crud.

end Main;

