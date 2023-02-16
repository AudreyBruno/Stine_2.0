unit untGravaFoto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TfrmGravaFoto = class(TForm)
    layoutCabecalho: TLayout;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGravaFoto: TfrmGravaFoto;

implementation

{$R *.fmx}

end.
