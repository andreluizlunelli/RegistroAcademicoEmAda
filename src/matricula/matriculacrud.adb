with Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO;

package body MatriculaCrud is
   function Obter(Numero : Integer) return Matricula is
      M : Matricula;
   begin
      for i in aArrayMatriculas'Range loop
         if aArrayMatriculas(i).Numero = Numero then
            M.Numero := aArrayMatriculas(i).Numero;
            M.Aluno := aArrayMatriculas(i).Aluno;
            M.Periodo := aArrayMatriculas(i).Periodo;
            exit;
         end if;
      end loop;
      return M;
   end Obter;

   function ObterLista return ArrayMatriculas is
   begin
      return aArrayMatriculas;
   end ObterLista;

   function GetIncrementoPosicao return Integer is
   begin
      return incrementoPosicao;
   end GetIncrementoPosicao;

   procedure Inserir(M : Matricula) is
   begin
      Ada.Text_IO.Put_Line("Inserindo a Matricula..");
      incrementoPosicao := incrementoPosicao + 1;
      aArrayMatriculas(incrementoPosicao).Numero := M.Numero;
      aArrayMatriculas(incrementoPosicao).Aluno := M.Aluno;
      aArrayMatriculas(incrementoPosicao).Periodo := M.Periodo;
   end Inserir;

   procedure Alterar(M : Matricula) is
   begin
       Ada.Text_IO.Put_Line("Alterando a Matricula..");
       for i in aArrayMatriculas'Range loop
         if aArrayMatriculas(i).Numero = M.Numero then
            aArrayMatriculas(i).Aluno := M.Aluno;
            aArrayMatriculas(i).Periodo := M.Periodo;
            exit;
         end if;
      end loop;
   end Alterar;

   procedure Excluir(Numero : Integer) is
   begin
       Ada.Text_IO.Put_Line("Excluindo a Disciplina..");
       for i in aArrayMatriculas'Range loop
         if aArrayMatriculas(i).Numero = Numero then
            aArrayMatriculas(i).Numero := 0;
            aArrayMatriculas(i).Aluno := Ada.Strings.Unbounded.To_Unbounded_String("");
            aArrayMatriculas(i).Periodo := 0.0;
            exit;
         end if;
      end loop;
   end Excluir;

   procedure ImprimirConsole(M : Matricula) is
   begin
      Ada.Text_IO.Put("{Numero=");
      Ada.Text_IO.Put(Item => Integer'Image(M.Numero));
      Ada.Text_IO.Put(", Aluno=");
      Ada.Text_IO.Put(Item => Ada.Strings.Unbounded.To_String(M.Aluno));
      Ada.Text_IO.Put(", Periodo=");
      Ada.Text_IO.Put(Item => Float'Image(M.Periodo));
      Ada.Text_IO.Put_Line("}");
   end ImprimirConsole;

end MatriculaCrud;
