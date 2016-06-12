with Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO;

package body CursoCrud is
   function Obter(Codigo : Integer) return Curso is
      C : Curso;
   begin
      for i in aArrayCurso'Range loop
         if aArrayCurso(i).Codigo = Codigo then
            C.Codigo := aArrayCurso(i).Codigo;
            C.Nome := aArrayCurso(i).Nome;
            C.QtdSemestres := aArrayCurso(i).QtdSemestres;
            -- adicionar o hashtable
            exit;
         end if;
      end loop;
      return C;
   end Obter;

   function ObterLista return ArrayCurso is
   begin
      return aArrayCurso;
   end ObterLista;

   function GetIncrementoPosicao return Integer is
   begin
      return incrementoPosicao;
   end GetIncrementoPosicao;

   procedure Inserir(C : Curso) is
   begin
      Ada.Text_IO.Put_Line("Inserindo a Curso..");
      incrementoPosicao := incrementoPosicao + 1;
      aArrayCurso(incrementoPosicao).Codigo := C.Codigo;
      aArrayCurso(incrementoPosicao).Nome := C.Nome;
      aArrayCurso(incrementoPosicao).QtdSemestres := C.QtdSemestres;
      -- adicionar o hashTable
   end Inserir;

   procedure Alterar(C : Curso) is
   begin
       Ada.Text_IO.Put_Line("Alterando a Curso..");
       for i in aArrayCurso'Range loop
         if aArrayCurso(i).Codigo = C.Codigo then
            aArrayCurso(i).Nome := C.Nome;
            aArrayCurso(i).QtdSemestres := C.QtdSemestres;
            -- adicionar hashTable
            exit;
         end if;
      end loop;
   end Alterar;

   procedure Excluir(Codigo : Integer) is
   begin
       Ada.Text_IO.Put_Line("Excluindo a Curso..");
       for i in aArrayCurso'Range loop
         if aArrayCurso(i).Codigo = Codigo then
            aArrayCurso(i).Codigo := 0;
            aArrayCurso(i).Nome := Ada.Strings.Unbounded.To_Unbounded_String("");
            aArrayCurso(i).QtdSemestres := 0;
            -- adicionar hashTable
            exit;
         end if;
      end loop;
   end Excluir;

   procedure ImprimirConsole(C : Curso) is
   begin
      Ada.Text_IO.Put("{Codigo=");
      Ada.Text_IO.Put(Item => Integer'Image(C.Codigo));
      Ada.Text_IO.Put(", Nome=");
      Ada.Text_IO.Put(Item => Ada.Strings.Unbounded.To_String(C.Nome));
      Ada.Text_IO.Put(", Qtd_Semestres=");
      Ada.Text_IO.Put(Item => Integer'Image(C.QtdSemestres));
      Ada.Text_IO.Put(", Disciplinas=");
      -- adicionar a hashTable de disciplinas
      Ada.Text_IO.Put_Line("}");
   end ImprimirConsole;


end CursoCrud;
