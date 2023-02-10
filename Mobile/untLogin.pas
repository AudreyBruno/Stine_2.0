unit untLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Effects,
  FMX.Filter.Effects, FMX.Edit;

type
  TfrmLogin = class(TForm)
    circLogin: TCircle;
    FloatAnimation1: TFloatAnimation;
    imgOlhoAberto: TImage;
    imgOlhoFechado: TImage;
    imgLogo: TImage;
    lblVercao: TLabel;
    rectLogin: TRectangle;
    ShadowEffect1: TShadowEffect;
    rectBtnLogin: TRectangle;
    Label3: TLabel;
    rectSenha: TRectangle;
    edtSenha: TEdit;
    imgOlho: TImage;
    FillRGBEffect1: TFillRGBEffect;
    rectUser: TRectangle;
    edtUser: TEdit;
    StyleBookLogin: TStyleBook;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rectBtnLoginMouseLeave(Sender: TObject);
    procedure rectBtnLoginMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Single);
    procedure imgOlhoClick(Sender: TObject);
    procedure rectBtnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

uses untPrincipal;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin

  imgOlho.Bitmap := imgOlhoAberto.Bitmap;
  edtSenha.Password := true;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  {img_logo.Position.X := (layout_login.Width - img_logo.Width) / 2;
  img_logo.Position.Y := (pnl_login.Position.Y - img_logo.Height) / 2;   }

  circLogin.Position.Y := -circLogin.Height;
  circLogin.Position.X := -(circLogin.Width - frmLogin.Width) / 2;
  TAnimator.AnimateFloat(circLogin, 'Position.Y', circLogin.Position.Y + frmLogin.Height / 2,
    6, TAnimationType.Out, TInterpolationType.Elastic);
end;

procedure TfrmLogin.imgOlhoClick(Sender: TObject);
begin
  edtSenha.Password := not edtSenha.Password;

  if edtSenha.Password then
    imgOlho.Bitmap := imgOlhoAberto.Bitmap
  else
    imgOlho.Bitmap := imgOlhoFechado.Bitmap;
end;

procedure TfrmLogin.rectBtnLoginClick(Sender: TObject);
begin
  if not Assigned(frmPrincipal) then
    Application.CreateForm(TfrmPrincipal, frmPrincipal);

  frmPrincipal.Show;
end;

procedure TfrmLogin.rectBtnLoginMouseLeave(Sender: TObject);
begin
  TRectangle(Sender).Opacity := 1;
end;

procedure TfrmLogin.rectBtnLoginMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Single);
begin
  TRectangle(Sender).Opacity := 0.5;
end;

end.
