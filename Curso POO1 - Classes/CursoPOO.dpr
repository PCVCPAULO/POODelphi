program CursoPOO;

uses
  Vcl.Forms,
  uClasses in 'uClasses.pas',
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uInterfaces in 'uInterfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
