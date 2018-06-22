{Rôle : Algorithme qui saisit un nombre entier. Ensuite, si ce nombre est égal à 0, afficher
"nul", si ce nombre vaut 1 ou 2, afficher "petit" sinon afficher "grand".}
program TP04_EX01_VERSION2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
  nb : Integer;    {variable numérique de type entier qui représente le nombre pour lequel on veut
                      afficher s’il est nul, petit ou grand. La valeur est saisie au clavier par l’utilisateur.

{Principe : On saisit leNb puis on le compare à 0, 1 et 2 pour afficher le bon message.}
begin

  writeln('Saisir le nombre : ');
  readln(nb);

  case nb of
    0 : writeln('Nul.');
    1,2 : writeln('Petit.');
    else
    begin
      writeln('Grand.');
    end;
  end;

  readln;

end.
