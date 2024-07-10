object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 182
  Height = 216
  Width = 359
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan1'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\User\Documents\SEMESTER 4\VISUAL2\UTS VISUAL\libmysql.d' +
      'll'
    Left = 56
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 112
    Top = 32
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 112
    Top = 96
  end
end
