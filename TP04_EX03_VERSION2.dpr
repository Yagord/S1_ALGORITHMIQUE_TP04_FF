program TP04_EX03_VERSION2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
  min : Integer;
  max : Integer;
  p : Integer;
  i : Integer;

begin

  while True do

  begin
    writeln('Saisir la borne min : ');
    read(min);
    writeln('Saisir la borne max : ');
    read(max);
    writeln('Saisir le pas p : ');
    read(p);
    writeln(chr(10),'Valeur : ');

    for i := min to max do
    begin
      writeln(i);
    end;

    readln;
    writeln(chr(10));

  end;

end.

