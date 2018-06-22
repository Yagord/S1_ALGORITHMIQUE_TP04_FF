program TP04_EX04_VERSION2;

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

    i := min;

    writeln(chr(10),'Valeur : ');

    while i <= max do
    begin
      writeln(i);
      i := i + p;
    end;

    readln;
    writeln(chr(10));

  end;

end.
