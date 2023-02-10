unit untSinc;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox;

type
  TfrmSinc = class(TForm)
    layoutCabecalho: TLayout;
    lblTitle: TLabel;
    imgVoltar: TImage;
    rectBtnsPrincipal: TRectangle;
    btnInfo: TButton;
    Button1: TButton;
    Button2: TButton;
    rectRegiao: TRectangle;
    rectLocal: TRectangle;
    rectProgram: TRectangle;
    rectFoto: TRectangle;
    lblLocal: TLabel;
    rectCbLocal: TRectangle;
    cbLocal: TComboBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Label1: TLabel;
    Rectangle6: TRectangle;
    ComboBox1: TComboBox;
    Button7: TButton;
    Button8: TButton;
    Label2: TLabel;
    Rectangle7: TRectangle;
    ComboBox2: TComboBox;
    Button9: TButton;
    Button10: TButton;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSinc: TfrmSinc;

implementation

{$R *.fmx}

uses untPrincipal;

end.