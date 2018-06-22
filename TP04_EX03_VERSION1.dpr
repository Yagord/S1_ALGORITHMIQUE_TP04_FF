{Rôle : Algorithme qui permet d’afficher tous les nombres entiers compris entre une
borne min et une borne max par pas de p, ces 3 valeurs étant saisies au clavier dès le
début du programme. On suppose que la borne min est inférieure à la borne max et que
le pas est strictement positif.}
program TP04_EX03_VERSION1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
  min : Integer;    {min et max sont deux variables numériques entières qui correspondent aux
                      bornes min et max des nombres à afficher, saisies au clavier par l’utilisateur.}  max : Integer;
  p : Integer;      {p est une variable numérique de type entier strictement positif qui correspond
                      au pas d’affichage, saisi au clavier par l’utilisateur.}  i : Integer;

{Principe : L’utilisateur saisit la valeur des bornes min et max, ainsi que le pas p. Ensuite, le
programme affiche chacun des nombres entiers compris entre min et max par pas de p.}
begin

  writeln('Saisir la borne min : ');
  readln(min);
  writeln('Saisir la borne max : ');
  readln(max);
  writeln('Saisir le pas p : ');
  readln(p);

  for i := min to max do
  begin
    writeln(i);
  end;

  readln;

end.
