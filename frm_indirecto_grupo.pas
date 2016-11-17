unit frm_indirecto_grupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones, udbgrid, unittbotonespermisos,UnitValidaTexto
  ,unitactivapop, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmIndirectoGrupo = class(TForm)
    frmBarra1: TfrmBarra;
    ds_GruposIsometrico: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    GruposIsometrico: TZQuery;
    mnGeneraGrupos: TMenuItem;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_GruposIsometrico: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    pnl1: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    tsIdGrupo: TDBEdit;
    tsDescripcion: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_GruposIsometricoCellClick(Column: TColumn);
    procedure tsIdPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure grid_GruposIsometricoEnter(Sender: TObject);
    procedure grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdGrupoEnter(Sender: TObject);
    procedure tsIdGrupoExit(Sender: TObject);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tlFaseKeyPress(Sender: TObject; var Key: Char);
    procedure Imprimir1Click(Sender: TObject);
    procedure mnGeneraGruposClick(Sender: TObject);
    procedure grid_GruposIsometricoTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIndirectoGrupo : TfrmIndirectoGrupo;
  sOldId: string;
 // utgrid: ticdbgrid;
  botonpermiso: tbotonespermisos;
implementation

{$R *.dfm}

procedure TfrmIndirectoGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  botonpermiso.Free;
 // utgrid.Destroy;
end;

procedure TfrmIndirectoGrupo.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cGruposIsom', PopupPrincipal);
  //UtGrid:=TicdbGrid.create(grid_gruposisometrico);
  OpcButton := '' ;
  sOldId := '';
  frmbarra1.btnCancel.Click ;

  GruposIsometrico.Active := False ;
  GruposIsometrico.Open ;
  Grid_GruposIsometrico.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
end;
procedure TfrmIndirectoGrupo.grid_GruposIsometricoCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmIndirectoGrupo.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus ;
end;

procedure TfrmIndirectoGrupo.frmBarra1btnAddClick(Sender: TObject);
begin
 try
  frmBarra1.btnAddClick(Sender);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Salir1.Enabled := False ;
  GruposIsometrico.Append ;
  GruposIsometrico.FieldValues['sDescripcion'] := '' ;
  tsDescripcion.SetFocus ;
  //activapop(frmIsometricosGrupos,popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Grupos de insumos e Isometricos', 'Al agregar registro', 0);
  end;
 end;
end;

procedure TfrmIndirectoGrupo.frmBarra1btnEditClick(Sender: TObject);
begin
  MessageDlg('Este catalogo es maestro, los cambios hechos ' + #10 +
  'en el afectarán otros módulos del sistema', mtWarning, [mbOk], 0);
  try
    If GruposIsometrico.RecordCount > 0 Then
    Begin
       frmBarra1.btnEditClick(Sender);
       Insertar1.Enabled := False ;
       Editar1.Enabled := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled := True ;
       Eliminar1.Enabled := False ;
       Refresh1.Enabled := False ;
       Salir1.Enabled := False ;
       GruposIsometrico.Edit ;

       tsDescripcion.SetFocus
    End;
    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled:=false;
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Grupos de insumos e Isometricos', 'Al editar registro', 0);
  end;
  end;
end;

procedure TfrmIndirectoGrupo.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion: boolean;
  nombres, cadenas: TStringList;
begin
//empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Descripcion');
  cadenas.Add(tsDescripcion.Text);

  lEdicion := GruposIsometrico.state = dsEdit;//capturar la bandera para usarla luego del post
  Try
     GruposIsometrico.Post ;
     Insertar1.Enabled := True ;
     Editar1.Enabled := True ;
     Registrar1.Enabled := False ;
     Can1.Enabled := False ;
     Eliminar1.Enabled := True ;
     Refresh1.Enabled := True ;
     Salir1.Enabled := True ;
     frmBarra1.btnPostClick(Sender);
  except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Grupos de Indirectos', 'Al actualizar registro', 0);
     frmBarra1.btnCancel.Click ;
     lEdicion := false;
     end;
  end;
//desactivapop(popupprincipal);
BotonPermiso.permisosBotones(frmBarra1);
frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmIndirectoGrupo.frmBarra1btnCancelClick(Sender: TObject);
begin
  try
   frmBarra1.btnCancelClick(Sender);
   GruposIsometrico.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   BotonPermiso.permisosBotones(frmBarra1);
   //desactivapop(popupprincipal);
   frmbarra1.btnPrinter.Enabled:=false;
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Grupos de Indirectos', 'Al cancelar', 0);
  end;
  end;
end;

procedure TfrmIndirectoGrupo.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If GruposIsometrico.RecordCount > 0 then

    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

        try
          GruposIsometrico.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Grupos de Indirectos', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmIndirectoGrupo.frmBarra1btnRefreshClick(Sender: TObject);
begin
  GruposIsometrico.refresh ;
end;

procedure TfrmIndirectoGrupo.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Close
end;

procedure TfrmIndirectoGrupo.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmIndirectoGrupo.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmIndirectoGrupo.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmIndirectoGrupo.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmIndirectoGrupo.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmIndirectoGrupo.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmIndirectoGrupo.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmIndirectoGrupo.grid_GruposIsometricoEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmIndirectoGrupo.grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmIndirectoGrupo.grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmIndirectoGrupo.grid_GruposIsometricoTitleClick(
  Column: TColumn);
begin
//UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmIndirectoGrupo.tsIdGrupoEnter(Sender: TObject);
begin
    tsIdGrupo.Color := global_color_entradaERP;
end;

procedure TfrmIndirectoGrupo.tsIdGrupoExit(Sender: TObject);
begin
    tsIdGrupo.Color := global_color_salidaERP;
end;

procedure TfrmIndirectoGrupo.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsDescripcion.SetFocus
end;

procedure TfrmIndirectoGrupo.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmIndirectoGrupo.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP
end;

procedure TfrmIndirectoGrupo.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsIdGrupo.SetFocus
end;

procedure TfrmIndirectoGrupo.tlFaseKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
        tsIdGrupo.SetFocus
end;

procedure TfrmIndirectoGrupo.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click
end;

procedure TfrmIndirectoGrupo.mnGeneraGruposClick(Sender: TObject);
begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('select sNumeroActividad, mDescripcion from actividadesxanexo ' +
                                'Where sContrato = :Contrato and sIdConvenio = :Convenio and sTipoActividad = "Paquete" and iNivel= 1 Order By iItemOrden') ;
    connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
    connection.QryBusca.Params.ParamByName('convenio').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('convenio').Value := '' ;
    connection.QryBusca.Open ;
    While NOT connection.QryBusca.Eof Do
    Begin
          Try
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add('insert into gruposisometrico values (:Contrato, :Grupo, :Descripcion)') ;
              connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
              connection.zCommand.Params.ParamByName('grupo').DataType := ftString ;
              connection.zCommand.Params.ParamByName('grupo').Value := connection.QryBusca.FieldValues['sNumeroActividad'] ;
              connection.zCommand.Params.ParamByName('descripcion').DataType := ftString ;
              connection.zCommand.Params.ParamByName('descripcion').Value := connection.QryBusca.FieldValues['mDescripcion'] ;
              connection.zCommand.ExecSQL ;
          except
          End ;
          connection.QryBusca.Next ;
    End ;
    GruposIsometrico.Active := False ;
    GruposIsometrico.Open ;

end;

end.
