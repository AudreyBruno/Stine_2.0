program Stine;

uses
  System.StartUpCopy,
  FMX.Forms,
  untLogin in 'untLogin.pas' {frmLogin},
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untSoja in 'untSoja.pas' {frmSoja},
  untSojaRegistro in 'untSojaRegistro.pas' {frmSojaRegistro},
  untSinc in 'untSinc.pas' {frmSinc};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmSoja, frmSoja);
  Application.CreateForm(TfrmSojaRegistro, frmSojaRegistro);
  Application.CreateForm(TfrmSinc, frmSinc);
  Application.Run;
end.
