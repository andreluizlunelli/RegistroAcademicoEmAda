with Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO;

package body DisciplinaCrud is
   function Obter(Codigo : Integer) return Disciplina is
      D : Disciplina;
   begin
      for i in aArrayDisciplinas'Range loop
         if aArrayDisciplinas(i).Codigo = Codigo then
            D := aArrayDisciplinas(i);
            exit;
         end if;
      end loop;
      return D;
   end Obter;

   function ObterLista return ArrayDisciplinas is
   begin
      return aArrayDisciplinas;
   end ObterLista;

   function GetIncrementoPosicao return Integer is
   begin
      return incrementoPosicao;
   end GetIncrementoPosicao;

   procedure Inserir(D : Disciplina) is
   begin
      Ada.Text_IO.Put_Line("Inserindo a Disciplina..");
      incrementoPosicao := incrementoPosicao + 1;
      aArrayDisciplinas(incrementoPosicao).Codigo := D.Codigo;
      aArrayDisciplinas(incrementoPosicao).Nome := D.Nome;
      aArrayDisciplinas(incrementoPosicao).CargaHoraria := D.CargaHoraria;
      aArrayDisciplinas(incrementoPosicao).Valor := D.Valor;
   end Inserir;

   procedure Alterar(D : Disciplina) is
   begin
       Ada.Text_IO.Put_Line("Alterando a Disciplina..");
       for i in aArrayDisciplinas'Range loop
         if aArrayDisciplinas(i).Codigo = D.Codigo then
            aArrayDisciplinas(i).Nome := D.Nome;
            aArrayDisciplinas(i).CargaHoraria := D.CargaHoraria;
            aArrayDisciplinas(i).Valor := D.Valor;
            exit;
         end if;
      end loop;
   end Alterar;

   procedure Excluir(Codigo : Integer) is
   begin
       Ada.Text_IO.Put_Line("Excluindo a Disciplina..");
       for i in aArrayDisciplinas'Range loop
         if aArrayDisciplinas(i).Codigo = Codigo then
            aArrayDisciplinas(i).Codigo := 0;
            aArrayDisciplinas(i).Nome := Ada.Strings.Unbounded.To_Unbounded_String("");
            aArrayDisciplinas(i).CargaHoraria := 0;
            aArrayDisciplinas(i).Valor := 0.0;
            exit;
         end if;
      end loop;
   end Excluir;

   procedure ImprimirConsole(D : Disciplina) is
   begin
      Ada.Text_IO.Put("{Codigo=");
      Ada.Text_IO.Put(Item => Integer'Image(D.Codigo));
      Ada.Text_IO.Put(", Nome=");
      Ada.Text_IO.Put(Item => Ada.Strings.Unbounded.To_String(D.Nome));
      Ada.Text_IO.Put(", Carga_Horaria=");
      Ada.Text_IO.Put(Item => Integer'Image(D.CargaHoraria));
      Ada.Text_IO.Put(", Valor=");
      Ada.Text_IO.Put(Item => Float'Image(D.Valor));
      Ada.Text_IO.Put_Line("}");
   end ImprimirConsole;

end DisciplinaCrud;
