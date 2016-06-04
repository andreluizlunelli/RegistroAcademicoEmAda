with Ada.Text_IO;

package body AlunoCrud is

   function Obter(Ra : Integer) return Aluno is
      A : Aluno;
   begin
      for i in aArrayAluno'Range loop
         if aArrayAluno(i).Ra = Ra then
            A.Ra := aArrayAluno(i).Ra;
            A.Nome := aArrayAluno(i).Nome;
            A.Email := aArrayAluno(i).Email;
            A.Curso := aArrayAluno(i).Curso;
            exit;
         end if;
      end loop;
      return A;
   end Obter;

   function ObterLista return ArrayAluno is
   begin
      return aArrayAluno;
   end ObterLista;

   function GetIncrementoPosicao return Integer is
   begin
      return incrementoPosicao;
   end GetIncrementoPosicao;

   procedure Inserir(A : Aluno) is
   begin
      Ada.Text_IO.Put_Line("Inserindo o Aluno..");
      incrementoPosicao := incrementoPosicao + 1;
      aArrayAluno(incrementoPosicao).Ra := A.Ra;
      aArrayAluno(incrementoPosicao).Nome := A.Nome;
      aArrayAluno(incrementoPosicao).Email := A.Email;
      aArrayAluno(incrementoPosicao).Curso := A.Curso;
   end Inserir;

   procedure ImprimirConsole(A : Aluno) is
   begin
      -- CONTINUAR AQUI
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

end AlunoCrud;
