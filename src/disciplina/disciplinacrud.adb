with Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO;

package body DisciplinaCrud is
   function Obter(Codigo : Integer) return Disciplina is
      D : Disciplina;
   begin
      for i in aArrayDisciplinas'Range loop
         if aArrayDisciplinas(i).Codigo = Codigo then
            D.Codigo := aArrayDisciplinas(i).Codigo;
            D.Nome := aArrayDisciplinas(i).Nome;
            D.CargaHoraria := aArrayDisciplinas(i).CargaHoraria;
            D.Valor := aArrayDisciplinas(i).Valor;
            exit;
         end if;
      end loop;
      return D;
   end Obter;

   function ObterLista return ArrayDisciplinas is
   begin
      return aArrayDisciplinas;
   end ObterLista;

   procedure Inserir(D : in Disciplina) is
   begin
      Ada.Text_IO.Put_Line("Inserindo a Disciplina..");
      ImprimirConsole(D);
      aArrayDisciplinas(incrementoPosicao).Codigo := D.Codigo;
      aArrayDisciplinas(incrementoPosicao).Nome := D.Nome;
      aArrayDisciplinas(incrementoPosicao).CargaHoraria := D.CargaHoraria;
      aArrayDisciplinas(incrementoPosicao).Valor := D.Valor;
      incrementoPosicao := incrementoPosicao + 1;
   end Inserir;

   procedure Alterar(D : in out Disciplina) is
   begin
      null;
   end Alterar;

   procedure Excluir(D : Disciplina) is
   begin
      null;
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
