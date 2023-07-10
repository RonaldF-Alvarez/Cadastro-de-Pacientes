unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMain = class(TForm)
    PagListaPac: TTabSheet;
    PagCadPac: TTabSheet;
    PageControl: TPageControl;
    DBGrid1: TDBGrid;
    LblCadNome: TLabel;
    CadRadioGroup: TRadioGroup;
    CadDatePicker: TDateTimePicker;
    BtnCadPac: TButton;
    TxtCadNome: TEdit;
    LblCad: TLabel;
    LblCadDataNasc: TLabel;
    TxtEditCadID: TEdit;
    LblEditCadNome: TLabel;
    BtnEditCadProc: TButton;
    CadEditDatePicker: TDateTimePicker;
    CadEditRadioGroup: TRadioGroup;
    TxtEditCadNome: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    BtnAttCad: TButton;
    BtnDelCad: TButton;
    DeleteCheckbox: TCheckBox;
    ADOConnection: TADOConnection;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    procedure BtnDelCadClick(Sender: TObject);
    procedure BtnCadPacClick(Sender: TObject);
    procedure DeleteCheckboxClick(Sender: TObject);
    procedure BtnEditCadProcClick(Sender: TObject);
    procedure BtnAttCadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

procedure TMain.BtnDelCadClick(Sender: TObject);
begin

   ADOQuery.SQL.clear;
   ADOQuery.SQL.Text := 'delete from paciente where id = ' + TxtEditCadID.Text;
   ADOQuery.ExecSQL;

end;

procedure TMain.BtnEditCadProcClick(Sender: TObject);
var
  PacienteID: Integer;
  Sexo: String;
begin

  if (TxtEditCadID.Text = '') then
    raise Exception.Create('Por favor, informe o ID!');
    PacienteID := StrToInt(TxtEditCadID.Text);
    ADOQuery.Close;
    ADOQuery.SQL.Text := 'SELECT * FROM paciente WHERE ID = :ID';
    ADOQuery.Parameters.ParamByName('ID').Value := PacienteID;
    ADOQuery.Open;

  if not ADOQuery.IsEmpty then
  begin
    TxtEditCadNome.Text := ADOQuery.FieldByName('NOME').AsString;
    Sexo:= ADOQuery.FieldByName('SEXO').AsString;
  if not ADOQuery.FieldByName('DATANASC').IsNull then
    CadEditDatePicker.Date := VarToDateTime(ADOQuery.FieldByName('DATANASC').Value)
  else
    CadEditDatePicker.Date := Now;
  end
  else
  begin
    ShowMessage('Nenhum paciente encontrado com o ID informado.');
  end;

  if Sexo = 'Feminino' then
    CadEditRadioGroup.ItemIndex := 1
  else
    CadEditRadioGroup.ItemIndex := 0;

end;

procedure TMain.BtnAttCadClick(Sender: TObject);
var
  sexo : string;
begin
   if CadEditRadioGroup.ItemIndex = 0 then
     sexo  := 'Masculino'
   else
     sexo  := 'Feminino';
   ADOQuery.SQL.clear;
   ADOQuery.SQL.Text := 'update paciente set SEXO = ''' +sexo+''' where id = ' + TxtEditCadID.Text;
   ADOQuery.ExecSQL;
   ADOQuery.SQL.clear;
   ADOQuery.SQL.Text := 'update paciente set NOME = ''' +TxtEditCadNome.text+''' where id = ' + TxtEditCadID.Text;
   ADOQuery.ExecSQL;
   ADOQuery.SQL.clear;
   ADOQuery.SQL.Text := 'update paciente set DATANASC =''' +DateToStr(CadEditDatePicker.Date)+''' where id = ' + TxtEditCadID.Text;
   ADOQuery.ExecSQL;
   ADOQuery.SQL.clear;
   ADOQuery.SQL.Text := 'SELECT * FROM paciente';
   ADOQuery.Open;
end;

procedure TMain.DeleteCheckboxClick(Sender: TObject);
begin

  BtnDelCad.Enabled := deletecheckbox.Checked;

end;

procedure TMain.BtnCadPacClick(Sender: TObject);
var
  Sexo: String;
begin
    if (TxtCadNome.Text = '') then
      raise Exception.Create('Por favor, informe o nome!');

     case CadRadioGroup.ItemIndex of
       0: Sexo := 'Masculino';
       1: Sexo := 'Feminino';
     end;


    ADOQuery.SQL.clear;
    ADOQuery.SQL.Text := 'INSERT INTO paciente (NOME, SEXO, DATANASC) VALUES (:NOME, :SEXO, :DATANASC)';
    ADOQuery.Parameters.ParamByName('NOME').Value := TxtCadNome.Text;
    ADOQuery.Parameters.ParamByName('SEXO').Value := Sexo;
    ADOQuery.Parameters.ParamByName('DATANASC').Value := StrToDate(FormatDateTime('dd/mm/yyyy', CadDatePicker.Date));
    ADOQuery.ExecSQL;
    ADOQuery.SQL.clear;
    ADOQuery.SQL.Text := 'SELECT * FROM paciente';
    ADOQuery.Open;


end;


end.
