unit untPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    layoutCabecalho: TLayout;
    Label1: TLabel;
    Image1: TImage;
    Rectangle1: TRectangle;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Layout2: TLayout;
    Rectangle3: TRectangle;
    Label8: TLabel;
    Label9: TLabel;
    Rectangle4: TRectangle;
    Label10: TLabel;
    Label11: TLabel;
    StyleBook: TStyleBook;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

uses untSoja;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  if not Assigned(frmSoja) then
    Application.CreateForm(TfrmSoja, frmSoja);

  frmSoja.TabControlSoja.GotoVisibleTab(0);
  frmSoja.Show;
end;

end.
