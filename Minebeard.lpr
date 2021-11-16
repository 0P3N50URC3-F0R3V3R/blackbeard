program Minebeard;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, datetimectrls, tachartlazaruspkg, lazcontrols, minebeard_main
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Title:='Blackbeard';
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TBlackbeard, Blackbeard);
  Application.Run;
end.

