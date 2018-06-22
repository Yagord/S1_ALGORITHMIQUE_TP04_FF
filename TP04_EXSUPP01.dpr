{Deux joueuers lancent simultanément un dé dans les faces sont numérotés de 1 à 6.
Le joueur qui obtiendra la plus grancde valeur abtiendra 1 point.
Le premier joueur ayant 10 points gagne la partie.
Ecrir le programme pascal modélisant ce jeu, il doit afficher le numéro du joueur gagnant.}
program TP04_EXSUPP01;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
  de1: Integer;
  de2: Integer;
  score1: Integer;
  score2: Integer;

begin

  writeln('### JEU DES DES ###');
  writeln(chr(10));

  Randomize;

  score1 := 0;
  score2 := 0;

  while ((score1 <> 10) AND (score2 <> 10)) do
  begin

    writeln('Scores : ', score1, '-', score2);

    de1 := random(6) + 1;
    de2 := random(6) + 1;

    if de1 > de2 then
    begin
      score1 := score1 + 1;
      writeln('Le joueur 1 gagne 1 point.');
      writeln('Score1 + 1');
      writeln('Dé 1 = ', de1);
      writeln('Dé 2 = ', de2);
      writeln(chr(10));
    end

    else if de1 < de2 then
    begin
      score2 := score2 + 1;
      writeln('Le joueur 2 gagne 1 point.');
      writeln('Score2 + 1');
      writeln('Dé 1 = ', de1);
      writeln('Dé 2 = ', de2);
      writeln(chr(10));
    end

    else
    begin
      writeln('Egalité.');
      writeln('Pas de points.');
      writeln('Dé 1 = ', de1);
      writeln('Dé 2 = ', de2);
      writeln(chr(10));
    end;

  end;

  writeln(chr(10));

  if score1 > score2 then
  begin
    writeln('Le joueur 1 gagne la partie.');
  end
  else
  begin
    writeln('Le joueur 2 gagne la partie.');
  end;

  writeln(chr(10));

  writeln('Les scores : ');
  writeln('Score 1 : ', score1);
  writeln('Score 2 : ', score2);
  readln;

end.
