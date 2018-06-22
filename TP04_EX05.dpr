{Rôle : Rédiger un programme qui permet de saisir une suite de nombres entiers (on
s’arrête à la frappe du nombre 0) et qui, pour chacun d’eux, affiche le prédécesseur si le
nombre est inférieur à 0 ou le successeur si le nombre est supérieur à 0.}
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
      writeln('Son prédécesseur : ', nb - 1);
    end

    else
    begin
      writeln('Son successeur : ', nb + 1);
    end;

    readln(nb);

  end;

  readln;

end.
