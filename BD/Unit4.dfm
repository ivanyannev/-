object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 633
  Top = 439
  Height = 409
  Width = 410
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\ALL\study\BD\bd1' +
      '1.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 72
  end
  object QTovari: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * From Tovari')
    Left = 128
    Top = 32
  end
  object DataTovari: TDataSource
    DataSet = QTovari
    Left = 192
    Top = 32
  end
end
