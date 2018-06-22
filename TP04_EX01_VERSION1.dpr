{Rôle : Algorithme qui saisit un nombre entier. Ensuite, si ce nombre est égal à 0, afficher
"nul", si ce nombre vaut 1 ou 2, afficher "petit" sinon afficher "grand".}
program TP04_EX01_VERSION1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
  leNb : Integer;   {variable numérique de type entier qui représente le nombre pour lequel on veut
                      afficher s’il est nul, petit ou grand. La valeur est saisie au clavier par l’utilisateur.

{Principe : On saisit leNb puis on le compare à 0, 1 et 2 pour afficher le bon message.}
begin

  writeln('Saisir le nombre : ');
  readln(leNb);

  if leNb = 0 then
  begin
    writeln('Nul.');
  end

  else if ((leNb = 1) OR (leNb = 2)) then
  begin
    writeln('Petit.');
  end

  else
  begin
    writeln('Grand.');
  end;

  readln;

end.
