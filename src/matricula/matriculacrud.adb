with Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO;
with CursoCrud;
with GNAT.IO;

package body MatriculaCrud is
   function Obter(Numero : Integer) return Matricula is
      M : Matricula;
   begin
      for i in aArrayMatriculas'Range loop
         if aArrayMatriculas(i).Numero = Numero then
            M := aArrayMatriculas(i);
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
      for i in aArrayMatriculas'Range loop
          aArrayMatriculas(incrementoPosicao).aCursos(i) := M.aCursos(i);
      end loop;
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

       Ada.Text_IO.Put_Line("Excluindo a Matricula..");
       for i in aArrayMatriculas'Range loop
         if aArrayMatriculas(i).Numero = Numero then
            aArrayMatriculas(i).Numero := 0;
            aArrayMatriculas(i).Aluno := 0;
            aArrayMatriculas(i).Periodo := 0.0;
            for i in aArrayMatriculas'Range loop
            aArrayMatriculas(incrementoPosicao).aCursos(i) := 0;
            end loop;
            exit;
         end if;
      end loop;
   end Excluir;

   procedure ImprimirConsole(M : Matricula) is
      C: CursoCrud.Curso;
   begin

      Ada.Text_IO.Put("{Numero=");
      Ada.Text_IO.Put(Item => Integer'Image(M.Numero));
      Ada.Text_IO.Put(", Aluno=");
      Ada.Text_IO.Put(Item => Integer'Image(M.Aluno));
      Ada.Text_IO.Put(", Periodo=");
      Ada.Text_IO.Put(Item => Float'Image(M.Periodo));
      GNAT.IO.New_Line;
      for i in aArrayMatriculas'Range loop
         C.Codigo := M.aCursos(i);
         C := CursoCrud.Obter(C.Codigo);
         CursoCrud.ImprimirConsole(C);
      end loop;
      Ada.Text_IO.Put_Line("}");
   end ImprimirConsole;

end MatriculaCrud;
