unit untSoja;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.TabControl,
  FMX.ListBox, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView;

type
  TfrmSoja = class(TForm)
    layoutCabecalho: TLayout;
    lblTitle: TLabel;
    imgVoltar: TImage;
    btnInfo: TButton;
    TabControlSoja: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Layout1: TLayout;
    btnFiltros: TButton;
    btnScaner: TButton;
    Layout2: TLayout;
    lblLocal: TLabel;
    rectCbLocal: TRectangle;
    cbLocal: TComboBox;
    Layout3: TLayout;
    lblProgram: TLabel;
    rectCbProgram: TRectangle;
    cbProgram: TComboBox;
    Layout4: TLayout;
    lblPrefix: TLabel;
    rectCbPrefix: TRectangle;
    cbPrefix: TComboBox;
    lblRange: TLabel;
    Rectangle4: TRectangle;
    ComboBox4: TComboBox;
    lblRep: TLabel;
    Rectangle5: TRectangle;
    ComboBox5: TComboBox;
    rectCbTipo: TRectangle;
    cbTipo: TComboBox;
    btnPesquisar: TButton;
    Layout5: TLayout;
    btnAbrirFiltro: TButton;
    ListViewRegistros: TListView;
    rectEstagio: TRectangle;
    Label1: TLabel;
    rectCbEstagio: TRectangle;
    cbEstagio: TComboBox;
    btnEstagioOk: TButton;
    CheckBoxR2Todos: TCheckBox;
    layoutR2: TLayout;
    CheckBoxR2DESF: TCheckBox;
    CheckBoxR2AFL: TCheckBox;
    CheckBoxR2CFL: TCheckBox;
    CheckBoxR2DFL: TCheckBox;
    layoutPos: TLayout;
    CheckBoxPosTodos: TCheckBox;
    CheckBoxPosHILO: TCheckBox;
    CheckBoxPosPS: TCheckBox;
    CheckBoxPosUD: TCheckBox;
    CheckBoxPosPROD: TCheckBox;
    layoutR5: TLayout;
    CheckBoxR5Todos: TCheckBox;
    CheckBoxR5FIT: TCheckBox;
    CheckBoxR5MAL: TCheckBox;
    CheckBoxR5MIL: TCheckBox;
    CheckBoxR5O: TCheckBox;
    Layout9: TLayout;
    Layout10: TLayout;
    CheckBoxR5HC: TCheckBox;
    CheckBoxR5RF: TCheckBox;
    CheckBoxR5DFC: TCheckBox;
    CheckBoxR5SMV: TCheckBox;
    CheckBoxR5AC: TCheckBox;
    CheckBoxR5DM: TCheckBox;
    CheckBoxR5CPUB: TCheckBox;
    CheckBoxR5ALTPL: TCheckBox;
    CheckBoxR5INS: TCheckBox;
    CheckBoxR5VA: TCheckBox;
    CheckBoxR5DE: TCheckBox;
    CheckBoxR5ST: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnAbrirFiltroClick(Sender: TObject);
    procedure btnEstagioOkClick(Sender: TObject);
    procedure ListViewRegistrosItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure cbEstagioClosePopup(Sender: TObject);
  private
    procedure AddRegistrosLv(id_registro: integer; serpentina, local, stage, range, row: string);
    procedure ListarRegistros;
    procedure LimpaCheckBox;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSoja: TfrmSoja;

implementation

{$R *.fmx}

uses untPrincipal, untSojaRegistro;

procedure TfrmSoja.AddRegistrosLv(id_registro: integer; serpentina, local, stage, range, row: string);
var
  txt: TListItemText;
begin
  with ListViewRegistros.Items.Add do
    begin
      Height := 110;
      Tag := id_registro;

      txt := TListItemText(Objects.FindDrawable('txtTitleId'));
      txt.Text := 'Serpentina';

      txt := TListItemText(Objects.FindDrawable('txtId'));
      txt.Text := serpentina;

      txt := TListItemText(Objects.FindDrawable('txtTitleLocal'));
      txt.Text := 'Local';

      txt := TListItemText(Objects.FindDrawable('txtLocal'));
      txt.Text := local;

      txt := TListItemText(Objects.FindDrawable('txtTitleStage'));
      txt.Text := 'Program Stage';

      txt := TListItemText(Objects.FindDrawable('txtStage'));
      txt.Text := stage;

      txt := TListItemText(Objects.FindDrawable('txtTitleRange'));
      txt.Text := 'Range';

      txt := TListItemText(Objects.FindDrawable('txtRange'));
      txt.Text := range;

      txt := TListItemText(Objects.FindDrawable('txtTitleRow'));
      txt.Text := 'Row';

      txt := TListItemText(Objects.FindDrawable('txtRow'));
      txt.Text := row;
    end;
end;

procedure TfrmSoja.ListarRegistros;
begin
  AddRegistrosLv(1, '1001', 'Local', 'Program Stage', '15', '1');
  AddRegistrosLv(2, '1002', 'Local', 'Program Stage', '15', '2');
  AddRegistrosLv(3, '1003', 'Local', 'Program Stage', '15', '3');
  AddRegistrosLv(4, '1004', 'Local', 'Program Stage', '15', '4');
  AddRegistrosLv(5, '1005', 'Local', 'Program Stage', '15', '5');
  AddRegistrosLv(6, '1006', 'Local', 'Program Stage', '15', '6');
  AddRegistrosLv(7, '1007', 'Local', 'Program Stage', '15', '7');
  AddRegistrosLv(8, '1008', 'Local', 'Program Stage', '15', '8');
  AddRegistrosLv(9, '1009', 'Local', 'Program Stage', '15', '9');
end;

procedure TfrmSoja.LimpaCheckBox;
begin
  CheckBoxR2Todos.IsChecked := False;
  CheckBoxR2DESF.IsChecked := False;
  CheckBoxR2AFL.IsChecked := False;
  CheckBoxR2CFL.IsChecked := False;
  CheckBoxR2DFL.IsChecked := False;

  CheckBoxR5Todos.IsChecked := False;
  CheckBoxR5FIT.IsChecked := False;
  CheckBoxR5MAL.IsChecked := False;
  CheckBoxR5MIL.IsChecked := False;
  CheckBoxR5O.IsChecked := False;
  CheckBoxR5HC.IsChecked := False;
  CheckBoxR5RF.IsChecked := False;
  CheckBoxR5DFC.IsChecked := False;
  CheckBoxR5DFC.IsChecked := False;
  CheckBoxR5SMV.IsChecked := False;
  CheckBoxR5AC.IsChecked := False;
  CheckBoxR5DM.IsChecked := False;
  CheckBoxR5CPUB.IsChecked := False;
  CheckBoxR5ALTPL.IsChecked := False;
  CheckBoxR5INS.IsChecked := False;
  CheckBoxR5VA.IsChecked := False;
  CheckBoxR5DE.IsChecked := False;
  CheckBoxR5ST.IsChecked := False;

  CheckBoxPosTodos.IsChecked := False;
  CheckBoxPosHILO.IsChecked := False;
  CheckBoxPosPS.IsChecked := False;
  CheckBoxPosUD.IsChecked := False;
  CheckBoxPosPROD.IsChecked := False;
end;

procedure TfrmSoja.btnEstagioOkClick(Sender: TObject);
begin
  RectEstagio.Visible := False;
  TabControlSoja.GotoVisibleTab(1);
end;

procedure TfrmSoja.btnPesquisarClick(Sender: TObject);
begin
  RectEstagio.Visible := True;
end;

procedure TfrmSoja.cbEstagioClosePopup(Sender: TObject);
begin
  LimpaCheckBox;

  if cbEstagio.ItemIndex = 0 then
    begin
      layoutR2.Visible := True;
      layoutR5.Visible := False;
      layoutPos.Visible := False;
    end;

  if cbEstagio.ItemIndex = 1 then
    begin
      layoutR2.Visible := False;
      layoutR5.Visible := True;
      layoutPos.Visible := False;
    end;

  if cbEstagio.ItemIndex = 2 then
    begin
      layoutR2.Visible := False;
      layoutR5.Visible := False;
      layoutPos.Visible := True;
    end;
end;

procedure TfrmSoja.btnAbrirFiltroClick(Sender: TObject);
begin
  TabControlSoja.GotoVisibleTab(0);
end;

procedure TfrmSoja.FormShow(Sender: TObject);
begin
  ListarRegistros;
end;

procedure TfrmSoja.ListViewRegistrosItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  if not Assigned(frmSojaRegistro) then
    Application.CreateForm(TfrmSojaRegistro, frmSojaRegistro);

  frmSojaRegistro.Show;
end;

end.