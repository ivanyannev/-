unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, DB, ADODB, Grids, DBGrids, StdCtrls, DBCtrls,
  ComCtrls;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    QueryTovari: TADOQuery;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    DataTovari: TDataSource;
    Panel3: TPanel;
    pnl1: TPanel;
    pnl2: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    btn1: TButton;
    dtp1: TDateTimePicker;
    pnl3: TPanel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    edt1: TEdit;
    dblkcbb1: TDBLookupComboBox;
    dblkcbb2: TDBLookupComboBox;
    btn2: TButton;
    dbgrd2: TDBGrid;
    btn4: TButton;
    lbl8: TLabel;
    lbl9: TLabel;
    dbgrd1: TDBGrid;
    procedure N1Click(Sender: TObject);
     procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dblkcbb1Click(Sender: TObject);
    procedure Edt1Change(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure lbl2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
     ChekNom, ChekSum,  CenaTov: String;

  usl: integer;
   uslugakod: string;
   a,b:double;
implementation

uses Unit5, Unit3, Unit6;

{$R *.dfm}

procedure TForm1.N1Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
Form5.qryCheki.close;
Form5.qryCheki.SQL.Text:='select * from Cheki order by Код_чека';
Form5.qryCheki.Open;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
Form5.qryWork.Close;
Form5.qryWork.SQL.Text:= 'INSERT INTO Cheki ( [дата], [Сумма] )  Values (:dt, 0) ';
Form5.qryWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', dtp1.Date);
Form5.qryWork.ExecSQL;

FormShow(Sender);

Form5.qryWork.close;
Form5.qryWork.SQL.text:=' select * from Cheki order by Код_чека';
Form5.qryWork.Open;

Form5.qryWork.Last;
Cheknom:= Form5.dsWork.DataSet.Fields[0].AsString;
Lbl3.Caption:='Чек №'+ChekNom;

Form5.qryProdazhi2.Close;
Form5.qryProdazhi2.SQL.Text:='Select Prodazhi.Код_продажі, Prodazhi.дата, Tovari.Наименование, Prodazhi.Код_товара, Prodazhi.Сумма, Prodazhi.Кількість, Prodazhi.Код_чека, Pracivniki.ПІБ, Tovari.ціна '
+ ' FROM Tovari INNER JOIN (Pracivniki INNER JOIN Prodazhi ON Pracivniki.[Код_працівника] = Prodazhi.[Код_працівника]) ON Tovari.[Код_товара] = Prodazhi.[Код_товара]'
+ ' WHERE (((Prodazhi.Код_чека)= '+Cheknom+')) ' ;
Form5.qryProdazhi2.open;
ChekSum:= '0';
lbl4.caption:= 'Сума по чеку (грн): ' + ChekSum;

Pnl3.Enabled:= true;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
Form5.qryWork.Close;
Form5.qryWork.SQL.Text:= 'INSERT INTO Prodazhi( [Дата], [Код_товара], [Сумма], [Кількість], [Код_чека], [Код_працівника] ) '
 + ' Values (:dt, '+inttostr(dblkcbb1.KeyValue)+','+CenaTov+', '+edt1.Text+', '+ChekNom+', '+inttostr(dblkcbb2.KeyValue)+')';
Form5.qryWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', dtp1.Date);
Form5.qryWork.ExecSQL;

Form5.qryProdazhi2.Close;
Form5.qryProdazhi2.SQL.Text:='Select Prodazhi.Код_продажі, Prodazhi.дата, Tovari.Наименование, Prodazhi.Код_товара, Prodazhi.Сумма, Prodazhi.Кількість, Prodazhi.Код_чека, Pracivniki.ПІБ, Tovari.ціна '
+ ' FROM Tovari INNER JOIN (Pracivniki INNER JOIN Prodazhi ON Pracivniki.[Код_працівника] = Prodazhi.[Код_працівника]) ON Tovari.[Код_товара] = Prodazhi.[Код_товара]'
+ ' WHERE (((Prodazhi.Код_чека)= '+Cheknom+')) ' ;
Form5.qryProdazhi2.open;

Form5.qryWork.Close;
Form5.qryWork.SQL.Text:=' Select Sum(Prodazhi.[Сумма]) AS [Sum-Сумма] FROM Prodazhi GROUP BY Prodazhi.[код_чека] HAVING (((Prodazhi.[код_чека])= '+ChekNom+'))';
Form5.qryWork.Open;
ChekSum:= Form5.dsWork.DataSet.Fields[0].AsString;
lbl4.caption:= 'Сума по чеку (грн): ' + ChekSum;

Form5.qryWork.Close;
Form5.qryWork.SQL.Text:=' UPDATE Cheki SET Cheki.[Сумма] = '+ChekSum+' WHERE (((Cheki.[Код_чека])='+ChekNom+'))';
Form5.qryWork.ExecSQL;
dblkcbb2.Enabled:= False;
formshow(Sender);

end;



procedure TForm1.dblkcbb1Click(Sender: TObject);
begin
   CenaTov:= IntToStr(Form5.dsTovari2.DataSet.Fields[4].AsInteger * strtoint(edt1.text));

lbl8.caption:= 'Ціна продажі (грн): ' + CenaTov;

Lbl9.Caption:= 'Ціна за штуку (грн): ' +Form5.dsTovari2.DataSet.Fields[4].AsString;
end;

procedure TForm1.Edt1Change(Sender: TObject);
begin
CenaTov:= IntToStr(Form5.dsTovari2.DataSet.Fields[4].AsInteger * strtoint(edt1.text));
lbl8.caption:= 'Ціна продажі (грн): ' + CenaTov;


end;
procedure TForm1.btn3Click(Sender: TObject);
begin
Form5.qryWork.Close;
Form5.qryWork.SQL.Text:= 'Delete * from Prodazhi Where Код_продажі = '+dbgrd2.Fields[0].AsString+'';
Form5.qryWork.ExecSQL;

Form5.qryProdazhi2.Close;
Form5.qryProdazhi2.SQL.Text:='Select Prodazhi.Код_продажі, Prodazhi.дата, Tovari.Наименование, Prodazhi.Код_товара, Prodazhi.Сумма, Prodazhi.Кількість, Prodazhi.Код_чека, Pracivniki.ПІБ, Tovari.ціна '
+ ' FROM Tovari INNER JOIN (Pracivniki INNER JOIN Prodazhi ON Pracivniki.[Код_працівника] = Prodazhi.[Код_працівника]) ON Tovari.[Код_товара] = Prodazhi.[Код_товара]'
+ ' WHERE (((Prodazhi.Код_чека)= '+Cheknom+')) ' ;
Form5.qryProdazhi2.open;

Form5.qryWork.Close;
Form5.qryWork.SQL.Text:=' Select Sum(Prodazhi.[Сумма]) AS [Sum-Сумма] FROM Prodazhi GROUP BY Prodazhi.[код_чека] HAVING (((Prodazhi.[код_чека])= '+ChekNom+'))';
Form5.qryWork.Open;
ChekSum:= Form5.dsWork.DataSet.Fields[0].AsString;
lbl4.caption:= 'Сума по чеку (грн): ' + ChekSum;

Form5.qryWork.Close;
Form5.qryWork.SQL.Text:=' UPDATE Cheki SET Cheki.[Сумма] = '+ChekSum+' WHERE (((Cheki.[Код_чека])='+ChekNom+'))';
Form5.qryWork.ExecSQL;

formshow(Sender);
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
Form5.qryProdazhi2.Close;
Form5.qryProdazhi2.SQL.Text:='Select Prodazhi.Код_продажі, Prodazhi.дата, Tovari.Наименование, Prodazhi.Код_товара, Prodazhi.Сумма, Prodazhi.Кількість, Prodazhi.Код_чека, Pracivniki.ПІБ, Tovari.ціна '
+ ' FROM Tovari INNER JOIN (Pracivniki INNER JOIN Prodazhi ON Pracivniki.[Код_працівника] = Prodazhi.[Код_працівника]) ON Tovari.[Код_товара] = Prodazhi.[Код_товара]'
+ ' WHERE (((Prodazhi.Код_чека)= '+Cheknom+')) ' ;
Form5.qryProdazhi2.open;

Form3.QRLabel1.Caption:='Чек №'+ChekNom;
Form3.QRLabel7.Caption:='Дата: ' + datetostr(dtp1.date);
Form3.QRLabel8.Caption:='Менеджер: ' +dblkcbb2.Text;
Form3.QRLabel6.Caption:='Сума по чеку (грн): ' + ChekSum;
Form3.QuickRep2.PreviewModal;
end;

procedure TForm1.lbl2Click(Sender: TObject);
begin
dtp1.date := Now;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
    Form6.Show;
end;

end.
