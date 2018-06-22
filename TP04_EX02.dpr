{Rôle : Algorithme qui résout une équation du second degré, de type Ax
2+Bx+C=0. Après
avoir saisi les trois coefficients A, B et C de type réel, il faut afficher les valeurs des
solutions de cette équation si elles existent}
program TP04_EX02;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
  A : Real;
  B : Real;
  C : Real;
  X1 : Real;
  X2 : Real;
  X3 : Real;
  delta : Real;
  racDelta : Real;
  deuxA : Real;

{A est une variable numérique de type réel qui recevra la valeur du coeff. du
terme en X2, saisie par l'utilisateur au clavier ;
B est une variable numérique de type réel qui recevra la valeur du coeff. du
terme en X, saisie par l'utilisateur au clavier ;
C est une variable numérique cde type réel qui recevra la valeur du coeff. du
terme constant, saisie par l'utilisateur au clavier.

X1 et X2 sont deux variables numériques de type réel qui recevront les valeurs
des deux racines distinctes, si elles existent, de l'équation à résoudre ;
X3 est une variable numérique de type réel qui recevra la valeur unique de
l'équation à résoudre.

delta est une variable numérique de type réel qui recevra la valeur du
discriminant de l'équation à traiter ;
racDelta est une variable numérique de type réel qui recevra la valeur de la
racine de delta ;
deuxA est une variable numérique de type réel qui recevra la valeur du double
du coefficient A.}

{Principe : On saisit A, B et C.
Si A est nul, on vérifie si B est nul également. Dans ce cas, si C est nul, on affiche que tout X
est solution ; par contre si C est non nul, on affiche qu’il n’existe aucune solution.
Si A est nul mais que B est non nul, on affiche la solution unique qui vaut X3=–C/B.
Enfin, si A est non nul, on calcule le discriminant delta=B*B-4*A*C. S’il est négatif, on
affiche qu’il n’existe aucune solution réelle, s’il est nul, on affiche la solution X3=-B/(2*A),
s’il est positif, on affiche les deux solutions : X1=(-B+rac(delta))/(2*A) et X2=(-Brac(delta))/(2*A).}

begin

  writeln('Saisir A : ');
  readln(A);
  writeln('Saisir B : ');
  readln(B);
  writeln('Saisir C : ');
  readln(C);

  if A = 0 then
  begin
    if B = 0 then
      begin
        if C = 0 then
        begin
          writeln('Tout est solution.');
        end
        else
        begin
            writeln('Aucune solution.');
        end;

      end
    else
    begin
      X3 := -C/B;
      writeln('Solution X3 = ', X3);
    end;
  end

  else
  begin
    delta := B*B - 4*A*C;
    if delta < 0 then
    begin
      writeln('Aucune solution réelle.');
    end
    else
    begin
      X1 := (-B + sqrt(delta))/(2*A);
      X2 := (-B - sqrt(delta))/(2*A);
      writeln('Deux solutions X1 = ', X1, 'et X2 = ', X2);
    end;
  end;

  readln;

end.
