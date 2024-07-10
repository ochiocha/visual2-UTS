object Form1: TForm1
  Left = 192
  Top = 182
  Width = 1044
  Height = 540
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 16
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl2: TLabel
    Left = 24
    Top = 56
    Width = 50
    Height = 13
    Caption = 'DISKRIPSI'
  end
  object lbl3: TLabel
    Left = 32
    Top = 328
    Width = 80
    Height = 13
    Caption = 'MASUKAN NAMA'
  end
  object edt1: TEdit
    Left = 136
    Top = 16
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 136
    Top = 56
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 56
    Top = 104
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 152
    Top = 104
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 248
    Top = 104
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 344
    Top = 104
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 40
    Top = 168
    Width = 320
    Height = 120
    DataSource = DataModule2.ds1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diskripsi'
        Width = 120
        Visible = True
      end>
  end
  object edt3: TEdit
    Left = 136
    Top = 328
    Width = 209
    Height = 21
    TabOrder = 7
  end
end
