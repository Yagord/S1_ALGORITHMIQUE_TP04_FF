{R�le : R�diger un programme qui permet de saisir une suite de nombres entiers (on
s�arr�te � la frappe du nombre 0) et qui, pour chacun d�eux, affiche le pr�d�cesseur si le
nombre est inf�rieur � 0 ou le successeur si le nombre est sup�rieur � 0.}
program TP04_EX05;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
  nb : Integer;

begin

  writeln('Saisir le nombre : ');
  readln(nb);

  while nb <> 0 do
  begin

    if nb < 0 then
    begin
      writeln('Son pr�d�cesseur : ', nb - 1);
    end

    else
    begin
      writeln('Son successeur : ', nb + 1);
    end;

    readln(nb);

  end;

  readln;

end.
