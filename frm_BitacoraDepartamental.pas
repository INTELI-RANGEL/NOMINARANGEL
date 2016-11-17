unit frm_BitacoraDepartamental;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, frm_Connection, DB, ADODB,
  frm_barra, DBCtrls, Mask, Global, Menus, Qt, Buttons, Utilerias, ExtCtrls;

type
  TfrmBitacoraDepartamental = class(TForm)
    Bevel1: TBevel;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LabelContrato: TLabel;
    Label8: TLabel;
    grid_bitacora: TDBGrid;
    tsIdTipoMovimiento: TDBLookupComboBox;
    frmBarra1: TfrmBarra;
    tsNumeroActividad: TEdit;
    tsHoraInicio: TMaskEdit;
    tsHoraFinal: TMaskEdit;
    tmDescripcion: TMemo;
    tdAvance: TEdit;
    ordenesdetrabajo: TADOQuery;
    ds_ordenesdetrabajo: TDataSource;
    MaximoDiario: TADOQuery;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    AvanceMaximo: TADOQuery;
    TiposdeMovimiento: TADOQuery;
    ds_tiposdemovimiento: TDataSource;
    ds_bitacora: TDataSource;
    bitacora: TADOQuery;
    bitacorasContrato: TStringField;
    bitacoradIdFecha: TDateField;
    bitacoraiIdDiario: TIntegerField;
    bitacorasIdDepartamento: TStringField;
    bitacorasNumeroOrden: TStringField;
    bitacorasPaquete: TStringField;
    bitacorasNumeroActividad: TStringField;
    bitacorasIdTipoMovimiento: TStringField;
    bitacorasDescripcion: TStringField;
    bitacorasHoraInicio: TStringField;
    bitacorasHoraFinal: TStringField;
    bitacoramDescripcion: TMemoField;
    bitacoradAvanceAnterior: TBCDField;
    bitacoradAvance: TBCDField;
    bitacoradAvanceAcumulado: TBCDField;
    Label7: TLabel;
    tsPaquete: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    tdIdFecha: TDateTimePicker;
    grid_movimientos: TDBGrid;
    ds_movimientos: TDataSource;
    Movimientos: TADOQuery;
    Label10: TLabel;
    procedure FormShow(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdTipoMovimientoKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tdAvanceKeyPress(Sender: TObject; var Key: Char);
    function  lExisteActividad ( sOrden, sPaquete, sActividad : String ) : Boolean ;
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tmDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tdAvanceExit(Sender: TObject);
    procedure tsPaqueteKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure tsPaqueteExit(Sender: TObject);
    procedure grid_bitacoraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_bitacoraKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_bitacoraEnter(Sender: TObject);
    procedure grid_bitacoraCellClick(Column: TColumn);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsPaqueteEnter(Sender: TObject);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure tsIdTipoMovimientoEnter(Sender: TObject);
    procedure tsIdTipoMovimientoExit(Sender: TObject);
    procedure tsHoraInicioEnter(Sender: TObject);
    procedure tsHoraInicioExit(Sender: TObject);
    procedure tsHoraFinalEnter(Sender: TObject);
    procedure tsHoraFinalExit(Sender: TObject);
    procedure tdAvanceEnter(Sender: TObject);
    procedure tmDescripcionEnter(Sender: TObject);
    procedure tmDescripcionExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBitacoraDepartamental: TfrmBitacoraDepartamental;
  sDescripcion : String ;
  sHoraInicio  : String ;
  sHoraFinal   : String ;
  sPaquete     : String ;
implementation

{$R *.dfm}

procedure TfrmBitacoraDepartamental.FormShow(Sender: TObject);
begin
  OpcButton := '' ;
  sPaquete := '' ;
  tsNumeroActividad.Text := '' ;
  tmDescripcion.Text := '' ;
  tsHoraInicio.Text := '' ;
  tsHoraFinal.Text := '' ;

  tsPaquete.ReadOnly := True ;
  tsNumeroActividad.ReadOnly := True ;
  tsIdtipoMovimiento.ReadOnly := True ;
  tsHoraInicio.ReadOnly := True ;
  tsHoraFinal.ReadOnly := True ;
  tdAvance.ReadOnly := True ;
  tmDescripcion.ReadOnly := True ;

  frmBarra1.btnCancel.Click ;
  tdIdFecha.Date:= date ;
  connection.configuracion.Requery ;
  // Inicializo el Query Bitacora y actualizo los querys necesarios en este modulo

  Bitacora.Active := False ;

  OrdenesdeTrabajo.Active := False ;
  OrdenesdeTrabajo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
  OrdenesdeTrabajo.Parameters.ParamByName('Contrato').DataType := ftString ;
  ordenesdetrabajo.Parameters.ParamByName('status').DataType := ftString ;
  ordenesdetrabajo.Parameters.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
  OrdenesdeTrabajo.Open ;

  TiposdeMovimiento.Active := False ;
  TiposdeMovimiento.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
  TiposdeMovimiento.Parameters.ParamByName('Contrato').DataType := ftString ;
  TiposdeMovimiento.Parameters.ParamByName('Clasificacion').Value := 'Tiempo Muerto' ;
  TiposdeMovimiento.Parameters.ParamByName('Clasificacion').DataType := ftString ;
  TiposdeMovimiento.Open ;

  // Inicializo Variables de Hora ....

  sHoraInicio := '00:00' ;
  sHoraFinal := '00:00' ;
  tdIdFecha.SetFocus
end;

procedure TfrmBitacoraDepartamental.tdIdFechaExit(Sender: TObject);
begin
    tdIdFecha.Color := global_color_salida ;
    frmBarra1.btnCancel.Click ;
    Bitacora.Active := False ;
    Bitacora.Parameters.ParamByName('contrato').DataType := ftString ;
    Bitacora.Parameters.ParamByName('contrato').Value := global_contrato ;
    Bitacora.Parameters.ParamByName('orden').DataType := ftString ;
    Bitacora.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
    Bitacora.Parameters.ParamByName('fecha').DataType := ftDate ;
    Bitacora.Parameters.ParamByName('fecha').Value := tdIdFecha.Date ;
    Bitacora.Parameters.ParamByName('turno').DataType := ftString ;
    Bitacora.Parameters.ParamByName('turno').Value := global_turno ;
    Bitacora.Parameters.ParamByName('depto').DataType := ftString ;
    Bitacora.Parameters.ParamByName('depto').Value := global_depto ;
    Bitacora.Open ;
    tdIdFecha.Color := global_color_salida
end;

procedure TfrmBitacoraDepartamental.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
      tsNumeroOrden.SetFocus 
end;

procedure TfrmBitacoraDepartamental.frmBarra1btnAddClick(Sender: TObject);
begin
// ReadOnly
   tsPaquete.ReadOnly := False ;
   tsNumeroActividad.ReadOnly := False ;
   tsIdtipoMovimiento.ReadOnly := False ;
   tsHoraInicio.ReadOnly := False ;
   tsHoraFinal.ReadOnly := False ;
   tdAvance.ReadOnly := False ;
   tmDescripcion.ReadOnly := False ;

   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;

   tsPaquete.Text := sPaquete ;
   tsNumeroActividad.Text := '' ;
   tmDescripcion.Text := '' ;
   tsIdTipoMovimiento.KeyValue := connection.configuracion.FieldValues ['sTipoOperacion'] ;
   tsHoraInicio.Text := '00:00' ;
   tsHoraFinal.Text := '00:00' ;
   tdAvance.Text := '0' ;

   If sPaquete <> '' then
      tsNumeroActividad.SetFocus
   Else
      tsPaquete.SetFocus 
end;

procedure TfrmBitacoraDepartamental.frmBarra1btnEditClick(Sender: TObject);
begin
     tsPaquete.ReadOnly := False ;
     tsNumeroActividad.ReadOnly := False ;
     tsIdtipoMovimiento.ReadOnly := False ;
     tsHoraInicio.ReadOnly := False  ;
     tsHoraFinal.ReadOnly := False  ;
     tdAvance.ReadOnly := False  ;
     tmDescripcion.ReadOnly := False  ;

     frmBarra1.btnEditClick(Sender);
     Insertar1.Enabled := False ;
     Editar1.Enabled := False ;
     Registrar1.Enabled := True ;
     Can1.Enabled := True ;
     Eliminar1.Enabled := False ;
     Refresh1.Enabled := False ;
     Salir1.Enabled := False ;
     tsPaquete.SetFocus
end;

procedure TfrmBitacoraDepartamental.frmBarra1btnPostClick(Sender: TObject);
Var
    lFiltro : boolean ;
    tmpAvance : Real ;
    sHoraInicio, sHoraFinal, sTiempoEfectivo : String ;
    mDescripcion : WideString ;
    iDiario : Integer ;
    dAvance, dAvanceAnterior, dAvanceAcumulado : Real ;
    lExistenMovimientos : boolean ;
begin
       lFiltro := False ;
       dAvance := 0 ;
       dAvanceAnterior := 0 ;
       dAvanceAcumulado := 0 ;
       If OpcButton = 'New' then
       Begin
            sPaquete := tsPaquete.Text ;
            sTiempoEfectivo := tsIdTipoMovimiento.KeyValue ;
            mDescripcion := tmDescripcion.Text  ;
            sHoraInicio := tsHoraInicio.Text  ;
            sHoraFinal := tsHoraFinal.Text ;
            If TiposdeMovimiento.FieldValues ['sClasificacion'] = 'Notas' then
            Begin
                sPaquete := '' ;
                lFiltro := True ;
            End
            Else
                If lExisteActividad ( tsNumeroOrden.Text , tsPaquete.Text , tsNumeroActividad.Text ) then
                     lFiltro := True
                Else
                     MessageDlg('No existe la partida en el frente seleccionado', mtWarning, [mbOk], 0);

            If lFiltro Then
            Begin
                dAvance := 0 ;
                dAvanceAnterior := 0 ;
                dAvanceAcumulado := 0 ;
                If trim (mDescripcion) = '' then
                    mDescripcion := tsIdTipoMovimiento.Text ;
                MaximoDiario.Active := False ;
                MaximoDiario.SQL.Clear ;
                MaximoDiario.SQL.Add('SELECT Max(iIdDiario) as TotalDiario FROM BitacoradeActividades where ' +
                                     '( sContrato = :contrato ) and ( dIdFecha = :fecha ) Group By sContrato , dIdFecha' ) ;
                MaximoDiario.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
                MaximoDiario.Parameters.ParamByName('Contrato').DataType := ftString ;
                MaximoDiario.Parameters.ParamByName('Fecha').DataType := ftDate ;
                MaximoDiario.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
                MaximoDiario.Open ;
                If MaximoDiario.FieldByName('TotalDiario').IsNull then
                     iDiario := 1
                else
                     iDiario := MaximoDiario.FieldValues [ 'TotalDiario' ] + 1 ;

                dAvanceAnterior := 0 ;
                AvanceMaximo.Active := False ;
                AvanceMaximo.SQL.Clear ;
                AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM BitacoradeActividades where ' +
                                     'sContrato = :contrato and dIdFecha = :fecha and sIdTurno <= :Turno And sIdDepartamento = :depto and ' +
                                     'sNumeroOrden = :orden and sPaquete = :paquete and sNumeroActividad = :Actividad And sHoraInicio < :HoraInicio ' +
                                     'Group By sContrato, dIdFecha, sIdTurno, sIdDepartamento, sNumeroOrden, sPaquete, sNumeroActividad ') ;
                AvanceMaximo.Parameters.ParamByName('Contrato').DataType := ftString ;
                AvanceMaximo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
                AvanceMaximo.Parameters.ParamByName('Fecha').DataType := ftDate ;
                AvanceMaximo.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
                AvanceMaximo.Parameters.ParamByName('turno').DataType := ftString ;
                AvanceMaximo.Parameters.ParamByName('turno').Value := Global_Turno ;
                AvanceMaximo.Parameters.ParamByName('depto').DataType := ftString ;
                AvanceMaximo.Parameters.ParamByName('depto').Value := Global_Depto ;
                AvanceMaximo.Parameters.ParamByName('orden').DataType := ftString ;
                AvanceMaximo.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
                AvanceMaximo.Parameters.ParamByName('paquete').DataType := ftString ;
                AvanceMaximo.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
                AvanceMaximo.Parameters.ParamByName('Actividad').DataType := ftString ;
                AvanceMaximo.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
                AvanceMaximo.Parameters.ParamByName('HoraInicio').DataType := ftString ;
                AvanceMaximo.Parameters.ParamByName('HoraInicio').Value := tsHoraInicio.Text ;
                AvanceMaximo.Open ;

                If AvanceMaximo.RecordCount > 0 then
                      dAvanceAnterior := AvanceMaximo.FieldValues [ 'Avance' ]
                Else
                Begin
                    AvanceMaximo.Active := False ;
                    AvanceMaximo.SQL.Clear ;
                    AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM BitacoradeActividades where ' +
                                         'sContrato = :contrato and dIdFecha < :fecha And sIdDepartamento = :depto and ' +
                                         'sNumeroOrden = :orden and sPaquete = :paquete and sNumeroActividad = :Actividad ' +
                                         'Group By sContrato, dIdFecha, sIdTurno, sIdDepartamento, sNumeroOrden, sPaquete, sNumeroActividad' ) ;
                    AvanceMaximo.Parameters.ParamByName('Contrato').DataType := ftString ;
                    AvanceMaximo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
                    AvanceMaximo.Parameters.ParamByName('Fecha').DataType := ftDate ;
                    AvanceMaximo.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
                    AvanceMaximo.Parameters.ParamByName('depto').DataType := ftString ;
                    AvanceMaximo.Parameters.ParamByName('depto').Value := Global_Depto ;
                    AvanceMaximo.Parameters.ParamByName('orden').DataType := ftString ;
                    AvanceMaximo.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
                    AvanceMaximo.Parameters.ParamByName('paquete').DataType := ftString ;
                    AvanceMaximo.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
                    AvanceMaximo.Parameters.ParamByName('Actividad').DataType := ftString ;
                    AvanceMaximo.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
                    AvanceMaximo.Open ;
                    If AvanceMaximo.RecordCount > 0 then
                        dAvanceAnterior := AvanceMaximo.FieldValues [ 'Avance' ] ;
                End ;
                If (TiposdeMovimiento.FieldValues ['sClasificacion'] <> 'Notas') then
                Begin
                    tmpAvance := rfnDecimal (tdAvance.Text) ;
                    dAvance := tmpAvance ;
                    dAvanceAcumulado := dAvanceAnterior + tmpAvance ;
                End
                Else
                Begin
                    dAvance := 0 ;
                    dAvanceAnterior := 0 ;
                    dAvanceAcumulado := 0 ;
                End ;
               // Lo Inserto de otra forma ...
                With connection do
                Begin
                    try
                         command.CommandText := 'INSERT INTO BitacoradeActividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, sIdDepartamento, ' +
                                                ' sNumeroOrden, sPaquete, sNumeroActividad, sIdTipoMovimiento, sHoraInicio, sHoraFinal, dAvanceAnterior, dAvance, dAvanceAcumulado,  mDescripcion ) ' +
                                                ' VALUES (:contrato, :fecha, :diario, :turno, :depto, :orden, :paquete, :actividad, :tipo, :inicio, :final, :anterior, :avance, :acumulado, :descripcion)';
                         command.Parameters.ParamByName('contrato').DataType := ftString ;
                         command.Parameters.ParamByName('contrato').value := Global_Contrato ;
                         command.Parameters.ParamByName('fecha').DataType := ftDate ;
                         command.Parameters.ParamByName('fecha').value := tdIdFecha.Date  ;
                         command.Parameters.ParamByName('diario').DataType := ftInteger ;
                         command.Parameters.ParamByName('diario').value := iDiario ;
                         command.Parameters.ParamByName('turno').DataType := ftString ;
                         command.Parameters.ParamByName('turno').value := global_turno ;
                         command.Parameters.ParamByName('depto').DataType := ftString ;
                         command.Parameters.ParamByName('depto').value := global_depto ;
                         command.Parameters.ParamByName('orden').DataType := ftString ;
                         command.Parameters.ParamByName('orden').value := tsNumeroOrden.Text ;
                         command.Parameters.ParamByName('paquete').DataType := ftString ;
                         command.Parameters.ParamByName('paquete').value := sPaquete ;
                         command.Parameters.ParamByName('actividad').DataType := ftString ;
                         command.Parameters.ParamByName('actividad').value := tsNumeroActividad.Text ;
                         command.Parameters.ParamByName('tipo').DataType := ftString ;
                         command.Parameters.ParamByName('tipo').value := sTiempoEfectivo ;
                         command.Parameters.ParamByName('anterior').DataType := ftFloat ;
                         command.Parameters.ParamByName('anterior').value := dAvanceAnterior ;
                         command.Parameters.ParamByName('avance').DataType := ftFloat ;
                         command.Parameters.ParamByName('avance').value := dAvance ;
                         command.Parameters.ParamByName('acumulado').DataType := ftFloat ;
                         command.Parameters.ParamByName('acumulado').value := dAvanceAcumulado ;
                         command.Parameters.ParamByName('inicio').DataType := ftString ;
                         command.Parameters.ParamByName('inicio').value := sHoraInicio ;
                         command.Parameters.ParamByName('final').DataType := ftString ;
                         command.Parameters.ParamByName('final').value := sHoraFinal ;
                         command.Parameters.ParamByName('descripcion').DataType := ftMemo ;
                         command.Parameters.ParamByName('descripcion').value := mDescripcion ;
                         command.Execute ;

                         // Proceso Nuevo Regeneración de Avances ..
                         // Verifico y envio a regenerar ---

                        lExistenMovimientos := False ;
                        AvanceMaximo.Active := False ;
                        AvanceMaximo.SQL.Clear ;
                        AvanceMaximo.SQL.Add('SELECT * FROM BitacoradeActividades where ' +
                                             'sContrato = :contrato and dIdFecha = :fecha and sIdTurno = :Turno And sIdDepartamento = :depto and ' +
                                             'sNumeroOrden = :orden and sPaquete = :paquete and sNumeroActividad = :Actividad And sHoraInicio > :HoraInicio ' ) ;
                        AvanceMaximo.Parameters.ParamByName('Contrato').DataType := ftString ;
                        AvanceMaximo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
                        AvanceMaximo.Parameters.ParamByName('Fecha').DataType := ftDate ;
                        AvanceMaximo.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
                        AvanceMaximo.Parameters.ParamByName('turno').DataType := ftString ;
                        AvanceMaximo.Parameters.ParamByName('turno').Value := Global_Turno ;
                        AvanceMaximo.Parameters.ParamByName('depto').DataType := ftString ;
                        AvanceMaximo.Parameters.ParamByName('depto').Value := Global_Depto ;
                        AvanceMaximo.Parameters.ParamByName('orden').DataType := ftString ;
                        AvanceMaximo.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
                        AvanceMaximo.Parameters.ParamByName('paquete').DataType := ftString ;
                        AvanceMaximo.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
                        AvanceMaximo.Parameters.ParamByName('Actividad').DataType := ftString ;
                        AvanceMaximo.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
                        AvanceMaximo.Parameters.ParamByName('HoraInicio').DataType := ftString ;
                        AvanceMaximo.Parameters.ParamByName('HoraInicio').Value := tsHoraInicio.Text ;
                        AvanceMaximo.Open ;
                        If AvanceMaximo.RecordCount > 0 then
                            lExistenMovimientos := True ;

                        If Not lExistenMovimientos Then
                        Begin
                            AvanceMaximo.Active := False ;
                            AvanceMaximo.SQL.Clear ;
                            AvanceMaximo.SQL.Add('SELECT dAvanceAcumulado as Avance FROM BitacoradeActividades where ' +
                                                 'sContrato = :contrato and dIdFecha = :fecha and sIdTurno > :Turno And sIdDepartamento = :depto and ' +
                                                 'sNumeroOrden = :orden and sPaquete = :paquete and sNumeroActividad = :Actividad ') ;
                            AvanceMaximo.Parameters.ParamByName('Contrato').DataType := ftString ;
                            AvanceMaximo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
                            AvanceMaximo.Parameters.ParamByName('Fecha').DataType := ftDate ;
                            AvanceMaximo.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
                            AvanceMaximo.Parameters.ParamByName('turno').DataType := ftString ;
                            AvanceMaximo.Parameters.ParamByName('turno').Value := Global_Turno ;
                            AvanceMaximo.Parameters.ParamByName('depto').DataType := ftString ;
                            AvanceMaximo.Parameters.ParamByName('depto').Value := Global_Depto ;
                            AvanceMaximo.Parameters.ParamByName('orden').DataType := ftString ;
                            AvanceMaximo.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
                            AvanceMaximo.Parameters.ParamByName('paquete').DataType := ftString ;
                            AvanceMaximo.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
                            AvanceMaximo.Parameters.ParamByName('Actividad').DataType := ftString ;
                            AvanceMaximo.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
                            AvanceMaximo.Open ;
                            If AvanceMaximo.RecordCount > 0 then
                                lExistenMovimientos := True
                        End ;

                        If Not lExistenMovimientos Then
                        Begin
                            AvanceMaximo.Active := False ;
                            AvanceMaximo.SQL.Clear ;
                            AvanceMaximo.SQL.Add('SELECT dAvanceAcumulado as Avance FROM BitacoradeActividades where ' +
                                                 'sContrato = :contrato and dIdFecha > :fecha And sIdDepartamento = :depto and ' +
                                                 'sNumeroOrden = :orden and sPaquete = :paquete and sNumeroActividad = :Actividad ') ;
                            AvanceMaximo.Parameters.ParamByName('Contrato').DataType := ftString ;
                            AvanceMaximo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
                            AvanceMaximo.Parameters.ParamByName('Fecha').DataType := ftDate ;
                            AvanceMaximo.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
                            AvanceMaximo.Parameters.ParamByName('depto').DataType := ftString ;
                            AvanceMaximo.Parameters.ParamByName('depto').Value := Global_Depto ;
                            AvanceMaximo.Parameters.ParamByName('orden').DataType := ftString ;
                            AvanceMaximo.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
                            AvanceMaximo.Parameters.ParamByName('paquete').DataType := ftString ;
                            AvanceMaximo.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
                            AvanceMaximo.Parameters.ParamByName('Actividad').DataType := ftString ;
                            AvanceMaximo.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
                            AvanceMaximo.Open ;
                            If AvanceMaximo.RecordCount > 0 then
                                lExistenMovimientos := True
                        End ;
                        If lExistenMovimientos Then
                             MessageDlg('Existen Movimientos posteriores al que acaba de insertar, por favor regenere los avances de la partida afectada y vuelva a reimprimir los reportes afectados', mtWarning, [mbOk], 0);
                    except
                         MessageDlg('Ocurrio un error al actualizar el registro', mtWarning, [mbOk], 0);
                    end
                End
            end
       End
       Else
       Begin
// Actualizo el registro
           sPaquete := tsPaquete.Text ;
           sTiempoEfectivo := tsIdTipoMovimiento.KeyValue ;
           mDescripcion := tmDescripcion.Text  ;
           sHoraInicio := tsHoraInicio.Text  ;
           sHoraFinal := tsHoraFinal.Text ;

           If trim (mDescripcion) = '' then
                mDescripcion := tsIdTipoMovimiento.Text ;
           If TiposdeMovimiento.FieldValues ['sClasificacion'] = 'Notas' then
           Begin
                sPaquete := '' ;
                lFiltro := True ;
           End
           Else
                If lExisteActividad ( tsNumeroOrden.Text , tsPaquete.Text , tsNumeroActividad.Text ) then
                     lFiltro := True
                Else
                     MessageDlg('No existe la partida en el frente seleccionado', mtWarning, [mbOk], 0);
           If lFiltro Then
           Begin
                If trim (mDescripcion) = '' then
                     mDescripcion := tsIdTipoMovimiento.Text ;
                dAvanceAnterior := 0 ;
                AvanceMaximo.Active := False ;
                AvanceMaximo.SQL.Clear ;
                AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM BitacoradeActividades where ' +
                                     'sContrato = :contrato and dIdFecha = :fecha and sIdTurno < :Turno And sIdDepartamento = :depto and ' +
                                     'sNumeroOrden = :orden and sPaquete = :paquete and sNumeroActividad = :Actividad And sHoraInicio < :HoraInicio ' +
                                     'Group By sNumeroActividad ') ;
                AvanceMaximo.Parameters.ParamByName('Contrato').DataType := ftString ;
                AvanceMaximo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
                AvanceMaximo.Parameters.ParamByName('Fecha').DataType := ftDate ;
                AvanceMaximo.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
                AvanceMaximo.Parameters.ParamByName('turno').DataType := ftString ;
                AvanceMaximo.Parameters.ParamByName('turno').Value := Global_Turno ;
                AvanceMaximo.Parameters.ParamByName('depto').DataType := ftString ;
                AvanceMaximo.Parameters.ParamByName('depto').Value := Global_Depto ;
                AvanceMaximo.Parameters.ParamByName('orden').DataType := ftString ;
                AvanceMaximo.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
                AvanceMaximo.Parameters.ParamByName('paquete').DataType := ftString ;
                AvanceMaximo.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
                AvanceMaximo.Parameters.ParamByName('Actividad').DataType := ftString ;
                AvanceMaximo.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
                AvanceMaximo.Parameters.ParamByName('HoraInicio').DataType := ftString ;
                AvanceMaximo.Parameters.ParamByName('HoraInicio').Value := tsHoraInicio.Text ;
                AvanceMaximo.Open ;

                If AvanceMaximo.RecordCount > 0 then
                      dAvanceAnterior := AvanceMaximo.FieldValues [ 'Avance' ]
                Else
                Begin
                    AvanceMaximo.Active := False ;
                    AvanceMaximo.SQL.Clear ;
                    AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM BitacoradeActividades where ' +
                                         'sContrato = :contrato and dIdFecha < :fecha And sIdDepartamento = :depto and ' +
                                         'sNumeroOrden = :orden and sPaquete = :paquete and sNumeroActividad = :Actividad ' +
                                         'Group By sNumeroActividad' ) ;
                    AvanceMaximo.Parameters.ParamByName('Contrato').DataType := ftString ;
                    AvanceMaximo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
                    AvanceMaximo.Parameters.ParamByName('Fecha').DataType := ftDate ;
                    AvanceMaximo.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
                    AvanceMaximo.Parameters.ParamByName('depto').DataType := ftString ;
                    AvanceMaximo.Parameters.ParamByName('depto').Value := Global_Depto ;
                    AvanceMaximo.Parameters.ParamByName('orden').DataType := ftString ;
                    AvanceMaximo.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
                    AvanceMaximo.Parameters.ParamByName('paquete').DataType := ftString ;
                    AvanceMaximo.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
                    AvanceMaximo.Parameters.ParamByName('Actividad').DataType := ftString ;
                    AvanceMaximo.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
                    AvanceMaximo.Open ;
                    If AvanceMaximo.RecordCount > 0 then
                        dAvanceAnterior := AvanceMaximo.FieldValues [ 'Avance' ] ;
                End ;
                If (TiposdeMovimiento.FieldValues ['sClasificacion'] <> 'Notas') then
                Begin
                    tmpAvance := rfnDecimal (tdAvance.Text) ;
                    dAvance := tmpAvance ;
                    dAvanceAcumulado := dAvanceAnterior + tmpAvance ;
                End
                Else
                Begin
                    dAvance := 0 ;
                    dAvanceAnterior := 0 ;
                    dAvanceAcumulado := 0 ;
                End ;

                 If (TiposdeMovimiento.FieldValues ['sClasificacion'] <> 'Notas') then
                 Begin
                      tmpAvance := rfnDecimal (tdAvance.Text) ;
                      dAvance := tmpAvance ;
                      dAvanceAcumulado := dAvanceAnterior + tmpAvance ;
                 End
                 Else
                 Begin
                      dAvance := 0 ;
                      dAvanceAnterior := 0 ;
                      dAvanceAcumulado := 0 ;
                 End ;

                 With connection do
                 Begin
                    try
                       command.CommandText := 'UPDATE BitacoradeActividades SET sNumeroOrden = :orden, sPaquete = :paquete, sNumeroActividad = :actividad, ' +
                                              'sIdTipoMovimiento = :tipo, dAvanceAnterior = :anterior, dAvance = :avance, dAvanceAcumulado = :acumulado, ' +
                                              'sHoraInicio = :inicio, sHoraFinal = :final, mDescripcion = :descripcion ' +
                                              'where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario' ;
                       command.Parameters.ParamByName('orden').DataType := ftString ;
                       command.Parameters.ParamByName('orden').value := tsNumeroOrden.Text ;
                       command.Parameters.ParamByName('paquete').DataType := ftString ;
                       command.Parameters.ParamByName('paquete').value := sPaquete ;
                       command.Parameters.ParamByName('actividad').DataType := ftString ;
                       command.Parameters.ParamByName('actividad').value := tsNumeroActividad.Text ;
                       command.Parameters.ParamByName('tipo').DataType := ftString ;
                       command.Parameters.ParamByName('tipo').value := sTiempoEfectivo ;
                       command.Parameters.ParamByName('anterior').DataType := ftFloat ;
                       command.Parameters.ParamByName('anterior').value := dAvanceAnterior ;
                       command.Parameters.ParamByName('avance').DataType := ftFloat ;
                       command.Parameters.ParamByName('avance').value := dAvance ;
                       command.Parameters.ParamByName('acumulado').DataType := ftFloat ;
                       command.Parameters.ParamByName('acumulado').value := dAvanceAcumulado ;
                       command.Parameters.ParamByName('inicio').DataType := ftString ;
                       command.Parameters.ParamByName('inicio').value := sHoraInicio ;
                       command.Parameters.ParamByName('final').DataType := ftString ;
                       command.Parameters.ParamByName('final').value := sHoraFinal ;
                       command.Parameters.ParamByName('descripcion').DataType := ftMemo ;
                       command.Parameters.ParamByName('descripcion').value := mDescripcion ;
                       command.Parameters.ParamByName('contrato').DataType := ftString ;
                       command.Parameters.ParamByName('contrato').value := Global_Contrato ;
                       command.Parameters.ParamByName('fecha').DataType := ftDate ;
                       command.Parameters.ParamByName('fecha').value := tdIdFecha.Date  ;
                       command.Parameters.ParamByName('diario').DataType := ftInteger ;
                       command.Parameters.ParamByName('diario').value := Bitacora.FieldValues ['iIdDiario'] ;
                       Command.Execute ;

                       lExistenMovimientos := False ;
                       AvanceMaximo.Active := False ;
                       AvanceMaximo.SQL.Clear ;
                       AvanceMaximo.SQL.Add('SELECT * FROM BitacoradeActividades where ' +
                                            'sContrato = :contrato and dIdFecha = :fecha and sIdTurno = :Turno And sIdDepartamento = :depto and ' +
                                            'sNumeroOrden = :orden and sPaquete = :paquete and sNumeroActividad = :Actividad And sHoraInicio > :HoraInicio ' ) ;
                       AvanceMaximo.Parameters.ParamByName('Contrato').DataType := ftString ;
                       AvanceMaximo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
                       AvanceMaximo.Parameters.ParamByName('Fecha').DataType := ftDate ;
                       AvanceMaximo.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
                       AvanceMaximo.Parameters.ParamByName('turno').DataType := ftString ;
                       AvanceMaximo.Parameters.ParamByName('turno').Value := Global_Turno ;
                       AvanceMaximo.Parameters.ParamByName('depto').DataType := ftString ;
                       AvanceMaximo.Parameters.ParamByName('depto').Value := Global_Depto ;
                       AvanceMaximo.Parameters.ParamByName('orden').DataType := ftString ;
                       AvanceMaximo.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
                       AvanceMaximo.Parameters.ParamByName('paquete').DataType := ftString ;
                       AvanceMaximo.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
                       AvanceMaximo.Parameters.ParamByName('Actividad').DataType := ftString ;
                       AvanceMaximo.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
                       AvanceMaximo.Parameters.ParamByName('HoraInicio').DataType := ftString ;
                       AvanceMaximo.Parameters.ParamByName('HoraInicio').Value := tsHoraInicio.Text ;
                       AvanceMaximo.Open ;
                       If AvanceMaximo.RecordCount > 0 then
                           lExistenMovimientos := True ;

                       If Not lExistenMovimientos Then
                       Begin
                           AvanceMaximo.Active := False ;
                           AvanceMaximo.SQL.Clear ;
                           AvanceMaximo.SQL.Add('SELECT dAvanceAcumulado as Avance FROM BitacoradeActividades where ' +
                                                'sContrato = :contrato and dIdFecha = :fecha and sIdTurno > :Turno And sIdDepartamento = :depto and ' +
                                                'sNumeroOrden = :orden and sPaquete = :paquete and sNumeroActividad = :Actividad ') ;
                           AvanceMaximo.Parameters.ParamByName('Contrato').DataType := ftString ;
                           AvanceMaximo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
                           AvanceMaximo.Parameters.ParamByName('Fecha').DataType := ftDate ;
                           AvanceMaximo.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
                           AvanceMaximo.Parameters.ParamByName('turno').DataType := ftString ;
                           AvanceMaximo.Parameters.ParamByName('turno').Value := Global_Turno ;
                           AvanceMaximo.Parameters.ParamByName('depto').DataType := ftString ;
                           AvanceMaximo.Parameters.ParamByName('depto').Value := Global_Depto ;
                           AvanceMaximo.Parameters.ParamByName('orden').DataType := ftString ;
                           AvanceMaximo.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
                           AvanceMaximo.Parameters.ParamByName('paquete').DataType := ftString ;
                           AvanceMaximo.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
                           AvanceMaximo.Parameters.ParamByName('Actividad').DataType := ftString ;
                           AvanceMaximo.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
                           AvanceMaximo.Open ;
                           If AvanceMaximo.RecordCount > 0 then
                                lExistenMovimientos := True
                       End ;

                       If Not lExistenMovimientos Then
                       Begin
                           AvanceMaximo.Active := False ;
                           AvanceMaximo.SQL.Clear ;
                           AvanceMaximo.SQL.Add('SELECT dAvanceAcumulado as Avance FROM BitacoradeActividades where ' +
                                                'sContrato = :contrato and dIdFecha > :fecha And sIdDepartamento = :depto and ' +
                                                'sNumeroOrden = :orden and sPaquete = :paquete and sNumeroActividad = :Actividad ') ;
                           AvanceMaximo.Parameters.ParamByName('Contrato').DataType := ftString ;
                           AvanceMaximo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
                           AvanceMaximo.Parameters.ParamByName('Fecha').DataType := ftDate ;
                           AvanceMaximo.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
                           AvanceMaximo.Parameters.ParamByName('depto').DataType := ftString ;
                           AvanceMaximo.Parameters.ParamByName('depto').Value := Global_Depto ;
                           AvanceMaximo.Parameters.ParamByName('orden').DataType := ftString ;
                           AvanceMaximo.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
                           AvanceMaximo.Parameters.ParamByName('paquete').DataType := ftString ;
                           AvanceMaximo.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
                           AvanceMaximo.Parameters.ParamByName('Actividad').DataType := ftString ;
                           AvanceMaximo.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
                           AvanceMaximo.Open ;
                           If AvanceMaximo.RecordCount > 0 then
                               lExistenMovimientos := True
                       End ;
                       If lExistenMovimientos Then
                           MessageDlg('Existen Movimientos posteriores al que acaba de insertar, por favor regenere los avances de la partida afectada y vuelva a reimprimir los reportes afectados', mtWarning, [mbOk], 0);

                    Except

                    End
               End
           End
  // Termime de Actualizar
       End ;

       Bitacora.Requery ;

       tsPaquete.ReadOnly := True ;
       tsNumeroActividad.ReadOnly := True ;
       tsIdtipoMovimiento.ReadOnly := True ;
       tsHoraInicio.ReadOnly := True ;
       tsHoraFinal.ReadOnly := True ;
       tdAvance.ReadOnly := True ;
       tmDescripcion.ReadOnly := True ;

       Insertar1.Enabled := True ;
       Editar1.Enabled := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled := False ;
       Eliminar1.Enabled := True ;
       Refresh1.Enabled := True ;
       Salir1.Enabled := True ;
       frmBarra1.btnPostClick(Sender);
       tsNumeroActividad.SetFocus
end;

procedure TfrmBitacoraDepartamental.frmBarra1btnCancelClick(Sender: TObject);
begin

   tsPaquete.ReadOnly := True ;
   tsNumeroActividad.ReadOnly := True ;
   tsIdtipoMovimiento.ReadOnly := True ;
   tsHoraInicio.ReadOnly := True ;
   tsHoraFinal.ReadOnly := True ;
   tdAvance.ReadOnly := True ;
   tmDescripcion.ReadOnly := True ;

   tsPaquete.Text := '' ;
   tsNumeroActividad.Text := '' ;
   tmDescripcion.Text := '' ;
   tsHoraInicio.Text := '' ;
   tsHoraFinal.Text := '' ;

   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
end;

procedure TfrmBitacoraDepartamental.frmBarra1btnRefreshClick(Sender: TObject);
begin
  Bitacora.Requery ;
  connection.configuracion.Requery ;
  ordenesdetrabajo.Requery ;
  TiposdeMovimiento.Requery ;
end;

procedure TfrmBitacoraDepartamental.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Bitacora.RecordCount > 0 then
    if MessageDlg('Desea eliminar la actividad y todo el personal y equipo asignado?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        connection.command.CommandText := 'Delete from BitacoradePersonal where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario' ;
        connection.command.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
        connection.command.Parameters.ParamByName('Contrato').DataType := ftString ;
        connection.command.Parameters.ParamByName('Fecha').DataType := ftDate ;
        connection.command.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
        connection.command.Parameters.ParamByName('diario').DataType := ftInteger ;
        connection.command.Parameters.ParamByName('diario').Value :=  Bitacora.FieldValues[ 'iIdDiario' ] ;
        connection.command.Execute () ;

        connection.command.CommandText := 'Delete from BitacoradeEquipos where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario' ;
        connection.command.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
        connection.command.Parameters.ParamByName('Contrato').DataType := ftString ;
        connection.command.Parameters.ParamByName('Fecha').DataType := ftDate ;
        connection.command.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
        connection.command.Parameters.ParamByName('diario').DataType := ftInteger ;
        connection.command.Parameters.ParamByName('diario').Value :=  Bitacora.FieldValues[ 'iIdDiario' ] ;
        connection.command.Execute () ;

        With connection do
        Begin
          try
              command.CommandText := 'DELETE FROM BitacoradeActividades WHERE sContrato = :contrato and ' +
                                     'dIdFecha = :fecha and iIdDiario = :diario';
              command.Parameters.ParamByName('contrato').DataType := ftString ;
              command.Parameters.ParamByName('contrato').value := Global_Contrato ;
              command.Parameters.ParamByName('fecha').DataType := ftDate ;
              command.Parameters.ParamByName('fecha').value := tdIdFecha.Date  ;
              command.Parameters.ParamByName('diario').DataType := ftInteger ;
              command.Parameters.ParamByName('diario').value := Bitacora.FieldValues['iIdDiario'] ;
              command.Execute ;
              Bitacora.Requery ;
            except
              MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
            end
          end
      end
end;

procedure TfrmBitacoraDepartamental.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   close
end;

procedure TfrmBitacoraDepartamental.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      Grid_Bitacora.SetFocus 
end;

procedure TfrmBitacoraDepartamental.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
     tsIdTipoMovimiento.SetFocus
end;

procedure TfrmBitacoraDepartamental.tsIdTipoMovimientoKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    tsHoraInicio.SetFocus
end;

procedure TfrmBitacoraDepartamental.tsHoraInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    tsHoraFinal.SetFocus
end;

procedure TfrmBitacoraDepartamental.tsHoraFinalKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
       tdAvance.SetFocus
end;

procedure TfrmBitacoraDepartamental.tdAvanceKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tmDescripcion.SetFocus
end;

function TfrmBitacoraDepartamental.lExisteActividad ( sOrden, sPaquete, sActividad : String ) : Boolean ;
Begin
  If TiposdeMovimiento.FieldValues ['sClasificacion'] = 'Notas' Then
  Begin
      sDescripcion := '' ;
      lExisteActividad := True
  End
  Else
  Begin
      connection.buscaReadOnly.Active := False ;
      connection.buscaReadOnly.SQL.Clear ;
      connection.buscaReadOnly.SQL.Add('select * from ActividadesxOrden where sContrato = :Contrato ' +
                                'and sNumeroOrden = :Orden and sPaquete = :paquete and sNumeroActividad = :Actividad' ) ;
      connection.buscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
      connection.buscaReadOnly.Parameters.ParamByName('Contrato').Value := global_contrato ;
      connection.buscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
      connection.buscaReadOnly.Parameters.ParamByName('Orden').Value := sOrden ;
      connection.buscaReadOnly.Parameters.ParamByName('paquete').DataType := ftString ;
      connection.buscaReadOnly.Parameters.ParamByName('paquete').Value := sPaquete ;
      connection.buscaReadOnly.Parameters.ParamByName('Actividad').DataType := ftString ;
      connection.buscaReadOnly.Parameters.ParamByName('Actividad').Value := sActividad ;
      connection.buscaReadOnly.Open ;
      if connection.buscaReadOnly.RecordCount > 0 then
      Begin
          sDescripcion := connection.buscaReadOnly.FieldValues[ 'mDescripcion' ] ;
          lExisteActividad := True
      end
      else
      Begin
          sDescripcion := '' ;
          lExisteActividad := False
      end
  End
End ;

procedure TfrmBitacoraDepartamental.tsNumeroActividadExit(Sender: TObject);
begin
    tsNumeroActividad.Color := global_color_salida ;
    Movimientos.Active := False ;
    If tsNumeroActividad.ReadOnly = False Then
    Begin
        tmDescripcion.Text := '' ;
        If tsNumeroActividad.Text <> '' then
        Begin
           If Not lExisteActividad ( tsNumeroOrden.Text , tsPaquete.Text , tsNumeroActividad.Text ) then
                tsNumeroActividad.SetFocus
           Else
                tmDescripcion.Text := sDescripcion ;
           Movimientos.Parameters.ParamByName('Contrato').DataType := ftString ;
           Movimientos.Parameters.ParamByName('Contrato').Value := global_contrato ;
           Movimientos.Parameters.ParamByName('orden').DataType := ftString ;
           Movimientos.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
           Movimientos.Parameters.ParamByName('paquete').DataType := ftString ;
           Movimientos.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
           Movimientos.Parameters.ParamByName('actividad').DataType := ftString ;
           Movimientos.Parameters.ParamByName('actividad').Value := tsNumeroActividad.Text ;
           Movimientos.Open ;
        End
   End
end;

procedure TfrmBitacoraDepartamental.tmDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Ord ( Key ) = 1 then
  begin
      connection.BuscaReadOnly.Active := False ;
      connection.BuscaReadOnly.SQL.Clear ;
      connection.BuscaReadOnly.SQL.Add('select * from ActividadesxOrden where sContrato = :Contrato and '+
                                 'sNumeroOrden = :Orden and sPaquete = :Paquete and sNumeroActividad = :Actividad' ) ;
      connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Contrato').Value := global_contrato ;
      connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
      connection.BuscaReadOnly.Parameters.ParamByName('Paquete').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Paquete').Value := tsPaquete.Text ;
      connection.BuscaReadOnly.Parameters.ParamByName('Actividad').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
      connection.BuscaReadOnly.Open ;
      if connection.BuscaReadOnly.RecordCount > 0 then
      Begin
          tmDescripcion.Text := '' ;
          sDescripcion := connection.BuscaReadOnly.FieldValues[ 'mDescripcion' ] ;
      End ;

      tmDescripcion.Text := tmDescripcion.Text + sDescripcion ;
      tmDescripcion.SelStart := length ( tmDescripcion.Text )
  end ;

  If Ord ( Key ) = 2 then
  begin
      connection.BuscaReadOnly.Active := False ;
      connection.BuscaReadOnly.SQL.Clear ;
      connection.BuscaReadOnly.SQL.Add('select * from BitacoradeActividades where sContrato = :Contrato and dIdFecha < :fecha And '+
                                'sNumeroOrden = :Orden and sPaquete = :Paquete and sNumeroActividad = :Actividad Order By dIdFecha desc' ) ;
      connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Contrato').Value := global_contrato ;
      connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
      connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date ;
      connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
      connection.BuscaReadOnly.Parameters.ParamByName('Paquete').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Paquete').Value := tsPaquete.Text ;
      connection.BuscaReadOnly.Parameters.ParamByName('Actividad').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
      connection.BuscaReadOnly.Open ;
      if connection.BuscaReadOnly.RecordCount > 0 then
      Begin
            tmDescripcion.Text := '' ;
            sDescripcion := connection.BuscaReadOnly.FieldValues[ 'mDescripcion' ] ;
      End ;
      tmDescripcion.Text := tmDescripcion.Text + sDescripcion ;
      tmDescripcion.SelStart := length ( tmDescripcion.Text )
  end ;


  If Ord ( Key ) = 12 then
  begin
      connection.BuscaReadOnly.Active := False ;
      connection.BuscaReadOnly.SQL.Clear ;
      connection.BuscaReadOnly.SQL.Add('select * from Plataformas where sContrato = :Contrato and sIdPlataforma = :Plataforma ' ) ;
      connection.BuscaReadOnly.Parameters.ParamByName('Contrato').Value := global_contrato ;
      connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Plataforma').Value := OrdenesdeTrabajo.FieldValues[ 'sIdPlataforma' ] ;
      connection.BuscaReadOnly.Parameters.ParamByName('Plataforma').DataType := ftString ;
      connection.BuscaReadOnly.Open ;
      sDescripcion := 'No existe plataforma de trabajo' ;
      if connection.BuscaReadOnly.RecordCount > 0 then
          sDescripcion := connection.BuscaReadOnly.FieldValues[ 'sDescripcion' ] ;
      tmDescripcion.Text := tmDescripcion.Text + sDescripcion ;
      tmDescripcion.SelStart := length ( tmDescripcion.Text )
  end
end;

procedure TfrmBitacoraDepartamental.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmBitacoraDepartamental.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmBitacoraDepartamental.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmBitacoraDepartamental.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmBitacoraDepartamental.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmBitacoraDepartamental.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmBitacoraDepartamental.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmBitacoraDepartamental.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmBitacoraDepartamental.tsNumeroOrdenExit(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_salida ;
    frmBarra1.btnCancel.Click ;
    If tsNumeroOrden.KeyValue <> '' Then
    Begin
         Bitacora.Active := False ;
         Bitacora.Parameters.ParamByName('contrato').DataType := ftString ;
         Bitacora.Parameters.ParamByName('contrato').Value := global_contrato ;
         Bitacora.Parameters.ParamByName('orden').DataType := ftString ;
         Bitacora.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
         Bitacora.Parameters.ParamByName('fecha').DataType := ftDate ;
         Bitacora.Parameters.ParamByName('fecha').Value := tdIdFecha.Date ;
         Bitacora.Parameters.ParamByName('turno').DataType := ftString ;
         Bitacora.Parameters.ParamByName('turno').Value := global_turno ;
         Bitacora.Parameters.ParamByName('depto').DataType := ftString ;
         Bitacora.Parameters.ParamByName('depto').Value := global_depto ;
         Bitacora.Open ;
    End  ;
    tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmBitacoraDepartamental.tdAvanceExit(Sender: TObject);
Var
    dAvanceAnterior, dAvance, dAvanceAcumulado : Real ;
begin
    tdAvance.Color := global_color_salida ;
    If ( rfnDecimal ( tdAvance.Text ) <= 0 ) or ( rfnDecimal ( tdAvance.Text ) > 100 ) then
        tdAvance.SetFocus
    Else
    Begin
        dAvanceAnterior := 0 ;
        AvanceMaximo.Active := False ;
        AvanceMaximo.SQL.Clear ;
        AvanceMaximo.SQL.Add('SELECT Max(dAvanceAcumulado) as Avance FROM BitacoradeActividades where ' +
                             'sContrato = :contrato and dIdFecha = :fecha and sIdTurno = :Turno And sIdDepartamento = :depto and ' +
                             'sNumeroOrden = :orden and sPaquete = :paquete and sNumeroActividad = :Actividad And sHoraInicio < :HoraInicio ' +
                             'Group By sContrato, dIdFecha, sIdTurno, sIdDepartamento, sNumeroOrden, sPaquete, sNumeroActividad ') ;
        AvanceMaximo.Parameters.ParamByName('Contrato').DataType := ftString ;
        AvanceMaximo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
        AvanceMaximo.Parameters.ParamByName('Fecha').DataType := ftDate ;
        AvanceMaximo.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
        AvanceMaximo.Parameters.ParamByName('turno').DataType := ftString ;
        AvanceMaximo.Parameters.ParamByName('turno').Value := Global_Turno ;
        AvanceMaximo.Parameters.ParamByName('depto').DataType := ftString ;
        AvanceMaximo.Parameters.ParamByName('depto').Value := Global_Depto ;
        AvanceMaximo.Parameters.ParamByName('orden').DataType := ftString ;
        AvanceMaximo.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
        AvanceMaximo.Parameters.ParamByName('paquete').DataType := ftString ;
        AvanceMaximo.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
        AvanceMaximo.Parameters.ParamByName('Actividad').DataType := ftString ;
        AvanceMaximo.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
        AvanceMaximo.Parameters.ParamByName('HoraInicio').DataType := ftString ;
        AvanceMaximo.Parameters.ParamByName('HoraInicio').Value := tsHoraInicio.Text ;
        AvanceMaximo.Open ;
        If AvanceMaximo.RecordCount > 0 then
             dAvanceAnterior := AvanceMaximo.FieldValues [ 'Avance' ]
        Else

        AvanceMaximo.Active := False ;
        AvanceMaximo.SQL.Clear ;
        AvanceMaximo.SQL.Add('SELECT Max(dAvanceAcumulado) as Avance FROM BitacoradeActividades where ' +
                             'sContrato = :contrato and dIdFecha < :fecha and sIdTurno = :Turno And sIdDepartamento = :depto and ' +
                             'sNumeroOrden = :orden and sPaquete = :paquete and sNumeroActividad = :Actividad ' +
                             'Group By sContrato, dIdFecha, sIdTurno, sIdDepartamento, sNumeroOrden, sPaquete, sNumeroActividad' ) ;
        AvanceMaximo.Parameters.ParamByName('Contrato').DataType := ftString ;
        AvanceMaximo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
        AvanceMaximo.Parameters.ParamByName('Fecha').DataType := ftDate ;
        AvanceMaximo.Parameters.ParamByName('Fecha').Value :=  tdIdFecha.Date ;
        AvanceMaximo.Parameters.ParamByName('turno').DataType := ftString ;
        AvanceMaximo.Parameters.ParamByName('turno').Value := Global_Turno ;
        AvanceMaximo.Parameters.ParamByName('depto').DataType := ftString ;
        AvanceMaximo.Parameters.ParamByName('depto').Value := Global_Depto ;
        AvanceMaximo.Parameters.ParamByName('orden').DataType := ftString ;
        AvanceMaximo.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
        AvanceMaximo.Parameters.ParamByName('paquete').DataType := ftString ;
        AvanceMaximo.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
        AvanceMaximo.Parameters.ParamByName('Actividad').DataType := ftString ;
        AvanceMaximo.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
        AvanceMaximo.Open ;
        If AvanceMaximo.RecordCount > 0 then
              dAvanceAnterior := AvanceMaximo.FieldValues [ 'Avance' ] ;

        dAvance := rfnDecimal (tdAvance.Text) ;
        dAvanceAcumulado := dAvanceAnterior + dAvance ;
        If dAvanceAcumulado > 100 Then
            tdAvance.SetFocus 
    End
end;

procedure TfrmBitacoraDepartamental.tsPaqueteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsNumeroActividad.SetFocus
end;

procedure TfrmBitacoraDepartamental.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tmDescripcion.SetFocus 
end;

procedure TfrmBitacoraDepartamental.tsPaqueteExit(Sender: TObject);
begin
    tsPaquete.Color := global_color_salida ;
    Movimientos.Active := False ;
    If tsNumeroActividad.ReadOnly = False Then
    Begin
        tmDescripcion.Text := '' ;
        If tsNumeroActividad.Text <> '' then
        Begin
           If lExisteActividad ( tsNumeroOrden.Text, tsPaquete.Text , tsNumeroActividad.Text ) then
                tsNumeroActividad.SetFocus
           Else
                tmDescripcion.Text := sDescripcion ;
           Movimientos.Parameters.ParamByName('Contrato').DataType := ftString ;
           Movimientos.Parameters.ParamByName('Contrato').Value := global_contrato ;
           Movimientos.Parameters.ParamByName('orden').DataType := ftString ;
           Movimientos.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
           Movimientos.Parameters.ParamByName('paquete').DataType := ftString ;
           Movimientos.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
           Movimientos.Parameters.ParamByName('actividad').DataType := ftString ;
           Movimientos.Parameters.ParamByName('actividad').Value := tsNumeroActividad.Text ;
           Movimientos.Open ;
        End
    End

end;

procedure TfrmBitacoraDepartamental.grid_bitacoraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

  Movimientos.Active := False ;
  If Bitacora.RecordCount > 0 then
  Begin
        tsIdTipoMovimiento.KeyValue := Bitacora.FieldValues ['sIdTipoMovimiento'] ;
        tsPaquete.Text := Bitacora.FieldValues ['sPaquete'] ;
        tsNumeroActividad.Text := Bitacora.FieldValues ['sNumeroActividad'] ;
        tsHoraInicio.Text := Bitacora.FieldValues ['sHoraInicio'] ;
        tsHoraFinal.Text := Bitacora.FieldValues ['sHoraFinal'] ;
        tmDescripcion.Text := Bitacora.FieldValues ['mDescripcion'] ;
        tdAvance.Text := Bitacora.FieldValues ['dAvance'] ;
        Movimientos.Parameters.ParamByName('Contrato').DataType := ftString ;
        Movimientos.Parameters.ParamByName('Contrato').Value := global_contrato ;
        Movimientos.Parameters.ParamByName('orden').DataType := ftString ;
        Movimientos.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
        Movimientos.Parameters.ParamByName('paquete').DataType := ftString ;
        Movimientos.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
        Movimientos.Parameters.ParamByName('actividad').DataType := ftString ;
        Movimientos.Parameters.ParamByName('actividad').Value := tsNumeroActividad.Text ;
        Movimientos.Open ;
  End
  Else
  Begin
        tsPaquete.Text := '' ;
        tsNumeroActividad.Text := '' ;
        tsHoraInicio.Text := '00:00' ;
        tsHoraFinal.Text := '00:00' ;
        tmDescripcion.Text := '' ;
        tdAvance.Text := '' ;
  End ;
end;

procedure TfrmBitacoraDepartamental.grid_bitacoraKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

  Movimientos.Active := False ;
  If Bitacora.RecordCount > 0 then
  Begin
        tsIdTipoMovimiento.KeyValue := Bitacora.FieldValues ['sIdTipoMovimiento'] ;
        tsPaquete.Text := Bitacora.FieldValues ['sPaquete'] ;
        tsNumeroActividad.Text := Bitacora.FieldValues ['sNumeroActividad'] ;
        tsHoraInicio.Text := Bitacora.FieldValues ['sHoraInicio'] ;
        tsHoraFinal.Text := Bitacora.FieldValues ['sHoraFinal'] ;
        tmDescripcion.Text := Bitacora.FieldValues ['mDescripcion'] ;
        tdAvance.Text := Bitacora.FieldValues ['dAvance'] ;
        Movimientos.Parameters.ParamByName('Contrato').DataType := ftString ;
        Movimientos.Parameters.ParamByName('Contrato').Value := global_contrato ;
        Movimientos.Parameters.ParamByName('orden').DataType := ftString ;
        Movimientos.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
        Movimientos.Parameters.ParamByName('paquete').DataType := ftString ;
        Movimientos.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
        Movimientos.Parameters.ParamByName('actividad').DataType := ftString ;
        Movimientos.Parameters.ParamByName('actividad').Value := tsNumeroActividad.Text ;
        Movimientos.Open ;
  End
  Else
  Begin
        tsPaquete.Text := '' ;
        tsNumeroActividad.Text := '' ;
        tsHoraInicio.Text := '00:00' ;
        tsHoraFinal.Text := '00:00' ;
        tmDescripcion.Text := '' ;
        tdAvance.Text := '' ;
  End ;
end;

procedure TfrmBitacoraDepartamental.grid_bitacoraEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

  Movimientos.Active := False ;
  If Bitacora.RecordCount > 0 then
  Begin
        tsIdTipoMovimiento.KeyValue := Bitacora.FieldValues ['sIdTipoMovimiento'] ;
        tsPaquete.Text := Bitacora.FieldValues ['sPaquete'] ;
        tsNumeroActividad.Text := Bitacora.FieldValues ['sNumeroActividad'] ;
        tsHoraInicio.Text := Bitacora.FieldValues ['sHoraInicio'] ;
        tsHoraFinal.Text := Bitacora.FieldValues ['sHoraFinal'] ;
        tmDescripcion.Text := Bitacora.FieldValues ['mDescripcion'] ;
        tdAvance.Text := Bitacora.FieldValues ['dAvance'] ;
        Movimientos.Parameters.ParamByName('Contrato').DataType := ftString ;
        Movimientos.Parameters.ParamByName('Contrato').Value := global_contrato ;
        Movimientos.Parameters.ParamByName('orden').DataType := ftString ;
        Movimientos.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
        Movimientos.Parameters.ParamByName('paquete').DataType := ftString ;
        Movimientos.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
        Movimientos.Parameters.ParamByName('actividad').DataType := ftString ;
        Movimientos.Parameters.ParamByName('actividad').Value := tsNumeroActividad.Text ;
        Movimientos.Open ;
  End
  Else
  Begin
        tsPaquete.Text := '' ;
        tsNumeroActividad.Text := '' ;
        tsHoraInicio.Text := '00:00' ;
        tsHoraFinal.Text := '00:00' ;
        tmDescripcion.Text := '' ;
        tdAvance.Text := '' ;
  End ;
end;


procedure TfrmBitacoraDepartamental.grid_bitacoraCellClick(
  Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
  Movimientos.Active := False ;
  If Bitacora.RecordCount > 0 then
  Begin
        tsIdTipoMovimiento.KeyValue := Bitacora.FieldValues ['sIdTipoMovimiento'] ;
        tsPaquete.Text := Bitacora.FieldValues ['sPaquete'] ;
        tsNumeroActividad.Text := Bitacora.FieldValues ['sNumeroActividad'] ;
        tsHoraInicio.Text := Bitacora.FieldValues ['sHoraInicio'] ;
        tsHoraFinal.Text := Bitacora.FieldValues ['sHoraFinal'] ;
        tmDescripcion.Text := Bitacora.FieldValues ['mDescripcion'] ;
        tdAvance.Text := Bitacora.FieldValues ['dAvance'] ;
        Movimientos.Parameters.ParamByName('Contrato').DataType := ftString ;
        Movimientos.Parameters.ParamByName('Contrato').Value := global_contrato ;
        Movimientos.Parameters.ParamByName('orden').DataType := ftString ;
        Movimientos.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
        Movimientos.Parameters.ParamByName('paquete').DataType := ftString ;
        Movimientos.Parameters.ParamByName('paquete').Value := tsPaquete.Text ;
        Movimientos.Parameters.ParamByName('actividad').DataType := ftString ;
        Movimientos.Parameters.ParamByName('actividad').Value := tsNumeroActividad.Text ;
        Movimientos.Open ;
  End
  Else
  Begin
        tsPaquete.Text := '' ;
        tsNumeroActividad.Text := '' ;
        tsHoraInicio.Text := '00:00' ;
        tsHoraFinal.Text := '00:00' ;
        tmDescripcion.Text := '' ;
        tdAvance.Text := '' ;
  End ;
end;

procedure TfrmBitacoraDepartamental.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entrada
end;

procedure TfrmBitacoraDepartamental.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmBitacoraDepartamental.tsPaqueteEnter(Sender: TObject);
begin
    tsPaquete.Color := global_color_entrada
end;

procedure TfrmBitacoraDepartamental.tsNumeroActividadEnter(
  Sender: TObject);
begin
    tsNumeroActividad.Color := global_color_entrada
end;

procedure TfrmBitacoraDepartamental.tsIdTipoMovimientoEnter(
  Sender: TObject);
begin
    tsIdtipoMovimiento.Color := global_color_entrada
end;

procedure TfrmBitacoraDepartamental.tsIdTipoMovimientoExit(
  Sender: TObject);
begin
    tsIdtipoMovimiento.Color := global_color_salida
end;

procedure TfrmBitacoraDepartamental.tsHoraInicioEnter(Sender: TObject);
begin
    tsHoraInicio.Color := global_color_entrada
end;

procedure TfrmBitacoraDepartamental.tsHoraInicioExit(Sender: TObject);
begin
    tsHoraInicio.Color := global_color_salida
end;

procedure TfrmBitacoraDepartamental.tsHoraFinalEnter(Sender: TObject);
begin
    tsHoraFinal.Color := global_color_entrada
end;

procedure TfrmBitacoraDepartamental.tsHoraFinalExit(Sender: TObject);
begin
    tsHoraFinal.Color := global_color_salida
end;

procedure TfrmBitacoraDepartamental.tdAvanceEnter(Sender: TObject);
begin
    tdAvance.Color := global_color_entrada 
end;

procedure TfrmBitacoraDepartamental.tmDescripcionEnter(Sender: TObject);
begin
    tmDescripcion.Color := global_color_entrada
end;

procedure TfrmBitacoraDepartamental.tmDescripcionExit(Sender: TObject);
begin
    tmDescripcion.Color := global_color_salida
end;

end.
