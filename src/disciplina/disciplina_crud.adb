with Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO;

package body Disciplina_Crud is
--     procedure Add (V : Integer; To : in out Integer; Limited_To : Integer) is
--     begin
--        --  Check that the result wont be too large. This involves reading
--        --  the initial value of the 'in out' parameter To, which would be
--        --  wrong if To was a mere 'out' parameter (it would be
--        --  uninitialized).
--        if To + V > Limited_To then
--           To := Limited_To;
--        else
--           To := To + V;
--        end if;
--     end Add;

   function Novo return Disciplina is
      D : Disciplina;
   begin
      D.Codigo := Retorna_Proximo_Codigo_Disciplina;
      return D;
   end Novo;

   function Retorna_Proximo_Codigo_Disciplina return Integer is
   begin
      PK := PK + 1;
      return PK;
   end Retorna_Proximo_Codigo_Disciplina;


--     function Obter(Codigo : Integer) return Disciplina is
--     begin
--        --        return Array_Disciplinas(Codigo);
--        return null;
--     end Obter;

--     function Obter_Lista return Array_Disciplinas is
--     begin
--        --        return Array_Disciplinas;
--        return null;
--     end Obter_Lista;
--
   procedure Inserir(D : Disciplina) is
   begin
      null;
   end Inserir;

   procedure Alterar(D : in out Disciplina) is
   begin
      null;
   end Alterar;

   procedure Excluir(D : Disciplina) is
   begin
      null;
   end Excluir;

   procedure Imprimir_Console(D : Disciplina) is
   begin
      Ada.Text_IO.Put("{Codigo=");
      Ada.Text_IO.Put(Item => Integer'Image(D.Codigo));
      Ada.Text_IO.Put(", Nome=");
      Ada.Text_IO.Put(Item => Ada.Strings.Unbounded.To_String(D.Nome));
      Ada.Text_IO.Put(", Carga_Horaria=");
      Ada.Text_IO.Put(Item => Integer'Image(D.Carga_Horaria));
      Ada.Text_IO.Put(", Valor=");
      Ada.Text_IO.Put(Item => Float'Image(D.Valor));
      Ada.Text_IO.Put_Line("}");
   end Imprimir_Console;


end Disciplina_Crud;
