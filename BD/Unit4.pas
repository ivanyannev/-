unit Unit4;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule4 = class(TDataModule)
    ADOConnection1: TADOConnection;
    QTovari: TADOQuery;
    DataTovari: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

{$R *.dfm}

end.
