object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 731
  ClientWidth = 998
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 23
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 998
    Height = 731
    ActivePage = PagListaPac
    Align = alClient
    TabOrder = 0
    object PagListaPac: TTabSheet
      Caption = 'Tabela Pacientes'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 990
        Height = 693
        Align = alClient
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 678
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEXO'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATANASC'
            Visible = True
          end>
      end
    end
    object PagCadPac: TTabSheet
      Caption = 'Cadastrar Paciente'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object LblCadNome: TLabel
        Left = 56
        Top = 56
        Width = 49
        Height = 23
        Caption = 'Nome'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LblCad: TLabel
        Left = 24
        Top = 16
        Width = 156
        Height = 23
        Caption = 'Cadastrar Paciente'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LblCadDataNasc: TLabel
        Left = 264
        Top = 128
        Width = 91
        Height = 23
        Caption = 'Data Nasc.'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LblEditCadNome: TLabel
        Left = 56
        Top = 390
        Width = 49
        Height = 23
        Caption = 'Nome'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 24
        Top = 296
        Width = 128
        Height = 23
        Caption = 'Editar Cadastro'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 264
        Top = 456
        Width = 91
        Height = 23
        Caption = 'Data Nasc.'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object CadRadioGroup: TRadioGroup
        Left = 56
        Top = 122
        Width = 185
        Height = 113
        Caption = 'Sexo'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Masculino'
          'Feminino')
        ParentFont = False
        TabOrder = 0
      end
      object CadDatePicker: TDateTimePicker
        Left = 264
        Top = 157
        Width = 193
        Height = 31
        Date = 45116.000000000000000000
        Time = 0.635650451389665300
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object BtnCadPac: TButton
        Left = 264
        Top = 202
        Width = 193
        Height = 33
        Caption = 'Cadastrar'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BtnCadPacClick
      end
      object TxtCadNome: TEdit
        Left = 56
        Top = 85
        Width = 521
        Height = 31
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object TxtEditCadID: TEdit
        Left = 56
        Top = 341
        Width = 145
        Height = 31
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object BtnEditCadProc: TButton
        Left = 223
        Top = 341
        Width = 124
        Height = 31
        Caption = 'Procurar'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BtnEditCadProcClick
      end
      object CadEditDatePicker: TDateTimePicker
        Left = 264
        Top = 485
        Width = 193
        Height = 31
        Date = 45116.000000000000000000
        Time = 0.640913865740003500
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object CadEditRadioGroup: TRadioGroup
        Left = 56
        Top = 464
        Width = 185
        Height = 167
        Caption = 'Sexo'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Masculino'
          'Feminino')
        ParentFont = False
        TabOrder = 7
      end
      object TxtEditCadNome: TEdit
        Left = 56
        Top = 419
        Width = 521
        Height = 31
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object BtnAttCad: TButton
        Left = 264
        Top = 536
        Width = 193
        Height = 33
        Caption = 'Atualizar Dados'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = BtnAttCadClick
      end
      object BtnDelCad: TButton
        Left = 264
        Top = 590
        Width = 193
        Height = 33
        Caption = 'Apagar Dados'
        Enabled = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = BtnDelCadClick
      end
      object DeleteCheckbox: TCheckBox
        Left = 264
        Top = 629
        Width = 169
        Height = 28
        Caption = 'Deseja apagar dados?'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = DeleteCheckboxClick
      end
    end
  end
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=skantex;' +
      'Initial Catalog=RegistroPacientes;Data Source=DESKTOP-UUT0NVP\MA' +
      'IN'
    Provider = 'SQLOLEDB.1'
    Left = 872
    Top = 8
  end
  object ADOQuery: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * FROM Paciente')
    Left = 832
    Top = 8
  end
  object DataSource: TDataSource
    DataSet = ADOQuery
    Left = 792
    Top = 8
  end
end
