with GNAT.IO; use GNAT.IO;
with Ada.Text_IO;
with Ada.Float_Text_IO;
with MatriculaCrud; use MatriculaCrud;
with str;
with Ada.Strings;
with Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;

package body MatriculaAction is
   procedure Cadastrar is
      flagAdd : Integer := 1;
      M : Matricula;
      Numero : Integer := 0;
      Aluno : Integer := 0;
      S: String(1 .. 10) := (others => ' ');
      aCursos: MatriculaCrud.ArrayCurso;
   begin
      loop
         Put("Digite o numero da matricula:        ");
         Get(M.Numero);

         Put("Digite o aluno da matricula:          ");
         Get(M.Aluno);

         Put("Digite o periodo da matricula, ex:'0000.0': ");
         Ada.Float_Text_IO.Get(M.Periodo);
         New_Line;

          Put("Digite o codigo das Disciplinas: ");
         New_Line;
         for i in ArrayCurso'Range loop
            Get(aCursos(i));
         end loop;
         M.aCursos := aCursos;

         Inserir(M);
         Put("Voce inseriu um registro..");
         ImprimirConsole(M);

         Put("Você deseja adicionar uma nova Matricula? sim[1]/não[0]: ");
         Get(flagAdd);
         New_Line;
         exit when flagAdd /= 1;
      end loop;
   end Cadastrar;

   procedure Alterar is
      Numero : Integer;
      M : Matricula;
      Aluno : Integer := 0;
      confirma: Integer := 0;
   begin
      -- digita o codigo
      Put("Digite o codigo da disciplina que deseja alterar: ");
      Get(Numero);
      M := Obter(Numero);

      Put("Alterando..");
      ImprimirConsole(M);

      Put("Digite o codigo do aluno: ");
      Get(Aluno);

      Put("Digite o novo valor de matricula, ex:'0000.0': ");
      Ada.Float_Text_IO.Get(M.Periodo);
      New_Line;

      Put("Confirme a alteracao do registro? sim[1]/não[0]: ");
      Get(confirma);
      if (confirma = 0) then
         Put("Alteracao cancelada..");
      else
         Alterar(M);
      end if;
   end Alterar;

   procedure Excluir is
      Numero, opcao : Integer;
      M : Matricula;
   begin
      Put("Digite o numero de matricula que deseja remover: ");
      Get(numero);
      M := Obter(Numero);
      New_Line;
      Put("Confirme a remocao do registro? sim[1]/não[0]: ");
      ImprimirConsole(M);
      Get(opcao);
      if (opcao = 0) then
         Put("Remocao cancelada..");
      else
         Excluir(M.Numero);
      end if;
   end Excluir;

   procedure Listar is
      listaMatriculas : ArrayMatriculas;
      incremento : Integer;
   begin
      New_Line;
      Put("Listando matriculas..");
      New_Line;
      listaMatriculas := MatriculaCrud.ObterLista;
      incremento := MatriculaCrud.GetIncrementoPosicao;
      for i in listaMatriculas'First..incremento loop
         if (listaMatriculas(i).Numero /= 0) then
            ImprimirConsole(listaMatriculas(i));
         end if;
      end loop;
      New_Line;
   end Listar;

end MatriculaAction;
