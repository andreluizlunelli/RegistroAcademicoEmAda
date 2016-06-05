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

   procedure Alterar(A : Aluno) is
   begin
       Ada.Text_IO.Put_Line("Alterando o Aluno..");
       for i in aArrayAluno'Range loop
         if aArrayAluno(i).Ra = A.Ra then
            aArrayAluno(i).Nome := A.Nome;
            aArrayAluno(i).Email := A.Email;
            aArrayAluno(i).Curso := A.Curso;
            exit;
         end if;
      end loop;
   end Alterar;

   procedure Excluir(Ra : Integer) is
   begin
       Ada.Text_IO.Put_Line("Excluindo o Aluno..");
       for i in aArrayAluno'Range loop
         if aArrayAluno(i).Ra = Ra then
            aArrayAluno(i).Ra := 0;
            aArrayAluno(i).Nome := Ada.Strings.Unbounded.To_Unbounded_String("");
            aArrayAluno(i).Email := Ada.Strings.Unbounded.To_Unbounded_String("");
            aArrayAluno(i).Curso := 0;
            exit;
         end if;
      end loop;
   end Excluir;

   procedure ImprimirConsole(A : Aluno) is
   begin
      Ada.Text_IO.Put("{Ra=");
      Ada.Text_IO.Put(Item => Integer'Image(A.Ra));
      Ada.Text_IO.Put(", Nome=");
      Ada.Text_IO.Put(Item => Ada.Strings.Unbounded.To_String(A.Nome));
      Ada.Text_IO.Put(", E-mail=");
      Ada.Text_IO.Put(Item => Ada.Strings.Unbounded.To_String(A.Email));
      Ada.Text_IO.Put(", Cod.Curso=");
      Ada.Text_IO.Put(Item => Integer'Image(A.Curso));
      Ada.Text_IO.Put_Line("}");
   end ImprimirConsole;

end AlunoCrud;
