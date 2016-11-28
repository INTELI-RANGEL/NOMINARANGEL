unit UTFrmSeleccionaSalario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvGlowButton, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCurrencyEdit, URegistro;

type
  TFrmSeleccionaSalario = class(TForm)
    dsSalarios: TDataSource;
    Panel1: TPanel;
    Btn_Aceptar: TAdvGlowButton;
    Btn_Cancelar: TAdvGlowButton;
    tvSalarios: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    CodigoSalario: TcxGridDBColumn;
    TituloSalario: TcxGridDBColumn;
    Salario: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSeleccionaSalario: TFrmSeleccionaSalario;

implementation
uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmSeleccionaSalario.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  try
    for i := 0 to tvSalarios.ColumnCount -1 do
      SetRegistry('\Ventanas', '\' + Self.Name + '\tvSalarios', tvSalarios.Columns[i].Name, IntToStr(tvSalarios.Columns[i].Width));
  except

  end;
end;

procedure TFrmSeleccionaSalario.FormShow(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to tvSalarios.ColumnCount -1 do
    try
      tvSalarios.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvSalarios', tvSalarios.Columns[i].Name));
    except
      ;
    end;
end;

end.
