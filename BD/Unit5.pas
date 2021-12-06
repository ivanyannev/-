unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, Grids, DBGrids, ADODB, DBCtrls, StdCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    con1: TADOConnection;
    qryTovari: TADOQuery;
    dsTovari: TDataSource;
    dsBrend: TDataSource;
    dsClients: TDataSource;
    dsPracivniki: TDataSource;
    dsProdazhi: TDataSource;
    dsCheki: TDataSource;
    lbl2: TLabel;
    qryWork: TADOQuery;
    dsWork: TDataSource;
    tblPostachalniki: TADOTable;
    tblBrend: TADOTable;
    tblClients: TADOTable;
    tblPracivniki: TADOTable;
    tblProdazhi3: TADOTable;
    qryProdazhi: TADOQuery;
    tblCheki: TADOTable;
    dsPostachalniki: TDataSource;
    qryCheki: TADOQuery;
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl2: TPanel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    btn4: TButton;
    edt4: TEdit;
    btn6: TButton;
    btn7: TButton;
    edt5: TEdit;
    btn8: TButton;
    btn9: TButton;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    btn27: TButton;
    btn28: TButton;
    btn29: TButton;
    edt1: TEdit;
    edt2: TEdit;
    dblkcbb1: TDBLookupComboBox;
    dblkcbb3: TDBLookupComboBox;
    pnl1: TPanel;
    dbgrd1: TDBGrid;
    ts2: TTabSheet;
    pnl3: TPanel;
    btn10: TButton;
    btn11: TButton;
    btn12: TButton;
    dbgrd2: TDBGrid;
    ts3: TTabSheet;
    pnl4: TPanel;
    btn13: TButton;
    btn14: TButton;
    btn15: TButton;
    dbgrd3: TDBGrid;
    ts4: TTabSheet;
    dbgrd4: TDBGrid;
    pnl5: TPanel;
    btn16: TButton;
    btn17: TButton;
    btn18: TButton;
    ts5: TTabSheet;
    dbgrd5: TDBGrid;
    pnl6: TPanel;
    btn19: TButton;
    btn20: TButton;
    btn21: TButton;
    ts6: TTabSheet;
    pnl8: TPanel;
    dtp2: TDateTimePicker;
    btn30: TButton;
    btn31: TButton;
    pnl9: TPanel;
    ts7: TTabSheet;
    pnl7: TPanel;
    btn24: TButton;
    btn26: TButton;
    dsProdazhi2: TDataSource;
    qryProdazhi2: TADOQuery;
    dbgrd7: TDBGrid;
    dsTovari2: TDataSource;
    tblTovari2: TADOTable;
    dbgrd6: TDBGrid;
    dbgrd8: TDBGrid;
    btn2: TButton;
    btn3: TButton;
    dsProdazhi3: TDataSource;
    dsnew: TDataSource;
    qry2: TADOQuery;
    btn1: TButton;
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn27Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn28Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn14Click(Sender: TObject);
    procedure btn15Click(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn29Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure edt4Change(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn22Click(Sender: TObject);
    procedure btn23Click(Sender: TObject);
    procedure btn25Click(Sender: TObject);
    procedure btn26Click(Sender: TObject);
    procedure btn24Click(Sender: TObject);
    procedure btn20Click(Sender: TObject);
    procedure btn21Click(Sender: TObject);
    procedure btn19Click(Sender: TObject);
    procedure btn17Click(Sender: TObject);
    procedure btn18Click(Sender: TObject);
    procedure btn16Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  Unit1, Unit7;

{$R *.dfm}

procedure TForm5.btn6Click(Sender: TObject);
begin
Edt6.Text:='';
Edt7.Text:='';
Edt8.Text:='0';
Edt1.Text:='';
Edt2.Text:='';
dblkcbb3.KeyValue:=1;
dblkcbb1.KeyValue:=1;
btn27.Visible:=True;
btn28.Visible:=False;
end;

procedure TForm5.btn7Click(Sender: TObject);
begin
  Edt6.Text:=DBGrd1.Fields[1].AsString;
  Edt2.Text:=DBGrd1.Fields[2].AsString;
  Edt7.Text:=DBGrd1.Fields[3].AsString;
  Edt8.Text:=DBGrd1.Fields[4].AsString;
Form5.tblPostachalniki.Locate('Наименование',DBGrd1.Fields[5].AsString,[loCaseInsensitive, loPartialKey]);
Form5.tblBrend.Locate('Наименование',DBGrd1.Fields[6].AsString,[loCaseInsensitive, loPartialKey]);
dblkcbb1.KeyValue:=StrToInt(Form5.dsPostachalniki.DataSet.Fields[0].AsString);
dblkcbb3.KeyValue:=StrToInt(Form5.dsBrend.DataSet.Fields[0].AsString);
btn28.Visible:=True;
btn27.Visible:=False;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
Form5.qryWork.Close;
Form5.qryWork.SQL.Text:= 'DELETE * FROM Tovari Where (Tovari.Код_товара = '+DBGrd1.Fields[0].AsString+')';
Form5.qryWork.ExecSQL;
FormShow(Sender);
end;
procedure TForm5.FormShow(Sender: TObject);
begin
Form5.qryTovari.Close;
Form5.qryTovari.SQL.Text:= 'SELECT Tovari.Код_товара, Tovari.Наименование AS Tovari_Наименование, Tovari.Category, Tovari.Наявність, Tovari.Ціна, Postachalniki.Наименование AS CodePostavshik, Brend.Наименование AS Brend_Наименование'
+' FROM Postachalniki INNER JOIN (Brend INNER JOIN Tovari ON Brend.Код_бренда = Tovari.Код_бренда) ON Postachalniki.CodePostavshik = Tovari.CodePostavshik;';
Form5.qryTovari.Open;
end;

procedure TForm5.btn27Click(Sender: TObject);
begin
Form5.qryWork.Close;
Form5.qryWork.SQL.Text:='INSERT INTO Tovari ( [Код_товара], [Наименование], [Category], [Наявність], [Ціна], [CodePostavshik], [Код_бренда] ) values ('+Edt1.Text+', "'+Edt6.Text+'", "'+Edt2.Text+'", '+Edt7.Text+', '+Edt8.Text+', '+IntToStr(dblkcbb1.KeyValue)+', '+IntToStr(dblkcbb3.KeyValue)+')';
Form5.qryWork.ExecSQL;

{Form5.qryTovari.Close;
Form5.qryTovari.SQL.Text:= 'SELECT Tovari.Код_товара, Tovari.Наименование, Tovari.Category, Tovari.Наявність, Tovari.Ціна, Postachalniki.Наименование AS CodePostavshik, Brend.Наименование AS Brend_Наименование'
+'FROM ((Tovari'
+'INNER JOIN Brend ON Tovari.[Код_бренда] = Brend.[Код_бренда])'
+'INNER JOIN Postachalniki  ON Tovari.[CodePostavshik]  = Postachalniki.[CodePostavshik]) ORDER BY Tovari.Код_товара';
Form5.qryTovari.Open;}
 FormShow(Sender);

end;

procedure TForm5.btn28Click(Sender: TObject);
begin
Form5.qryWork.Close;
Form5.qryWork.SQL.Text:='UPDATE Tovari SET Tovari.Наименование = "'+Edt6.Text+'",  Tovari.Category = "'+Edt2.Text+'", Tovari.Наявність = '+Edt7.Text+', Tovari.Ціна = '+Edt8.Text+', Tovari.CodePostavshik = '+IntToStr(dblkcbb1.KeyValue)+', Tovari.Код_бренда = '+IntToStr(dblkcbb3.KeyValue)+' '
+ 'WHERE (((Tovari.Код_товара)= '+DBGrd1.Fields[0].AsString+'))';
Form5.qryWork.ExecSQL;
FormShow(Sender);
end;

procedure TForm5.btn11Click(Sender: TObject);
begin
    Form5.tblPostachalniki.Insert;
end;

procedure TForm5.btn10Click(Sender: TObject);
begin
    Form5.tblPostachalniki.Delete;
end;

procedure TForm5.btn12Click(Sender: TObject);
begin
if  Form5.tblPostachalniki.Modified then
 Form5.tblPostachalniki.Post;
end;

procedure TForm5.btn14Click(Sender: TObject);
begin
    Form5.tblBrend.Insert;
end;

procedure TForm5.btn15Click(Sender: TObject);
begin

if  Form5.tblBrend.Modified then
 Form5.tblBrend.Post;
end;


procedure TForm5.btn13Click(Sender: TObject);
begin

    Form5.tblBrend.Delete;
end;

procedure TForm5.btn29Click(Sender: TObject);
begin
Edt1.Text:='';
Edt6.Text:='';
Edt2.Text:='';
Edt7.Text:='';
Edt8.Text:='';
FormShow(Sender);
end;

procedure TForm5.btn8Click(Sender: TObject);
begin
Form5.qryTovari.Close;
Form5.qryTovari.SQL.Text:= 'SELECT Tovari.Код_товара, Tovari.Наименование AS Tovari_Наименование, Tovari.Category, Tovari.Наявність, Tovari.Ціна, Tovari.CodePostavshik, Brend.Наименование AS Brend_Наименование'
+' FROM Brend INNER JOIN Tovari ON Brend.[Код_бренда] = Tovari.[Код_бренда] where Tovari.Код_товара = '+Edt5.Text+' ORDER BY Tovari.Код_товара';
Form5.qryTovari.Open;
end;

procedure TForm5.edt4Change(Sender: TObject);
begin
Form5.qryTovari.Close;
Form5.qryTovari.SQL.Text:= 'SELECT Tovari.Код_товара, Tovari.Наименование AS Tovari_Наименование, Tovari.Category, Tovari.Наявність, Tovari.Ціна, Tovari.CodePostavshik, Brend.Наименование AS Brend_Наименование'
+' FROM Brend INNER JOIN Tovari ON Brend.[Код_бренда] = Tovari.[Код_бренда] where Tovari.Наименование like "%'+Edt4.Text+'%" ORDER BY Tovari.Код_товара';
Form5.qryTovari.Open;
end;

procedure TForm5.btn9Click(Sender: TObject);
begin
Form5.qryTovari.Close;
Form5.qryTovari.SQL.Text:= 'SELECT Tovari.Код_товара, Tovari.Наименование AS Tovari_Наименование, Tovari.Category, Tovari.Наявність, Tovari.Ціна, Tovari.CodePostavshik, Brend.Наименование AS Brend_Наименование'
+' FROM Brend, Tovari WHERE Brend.[Код_бренда] = Tovari.[Код_бренда] ORDER BY Tovari.Код_товара';
Form5.qryTovari.Open;
end;

procedure TForm5.btn22Click(Sender: TObject);
begin
Form5.qryProdazhi.Close;
Form5.qryProdazhi.SQL.Text:='SELECT Prodazhi.[Код_продажі], Prodazhi.[Дата], Prodazhi.[Код_товара], Prodazhi.[Сумма], Prodazhi.[Кількість], Prodazhi.[Код_чека], Prodazhi.[Код_працівника] FROM [Prodazhi] WHERE Prodazhi.[Дата]= :dt';
Form5.qryProdazhi.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',dtp2.Date);
ShowMessage(Form5.qryProdazhi.SQL.Text);
Form5.qryProdazhi.Open;
end;

procedure TForm5.btn23Click(Sender: TObject);
begin
Form5.qryProdazhi.Close;
Form5.qryProdazhi.SQL.Text:='SELECT Prodazhi.[Код_продажі], Prodazhi.[Дата], Prodazhi.[Код_товара], Prodazhi.[Сумма], Prodazhi.[Кількість], Prodazhi.[Код_чека], Prodazhi.[Код_працівника] FROM [Prodazhi]';
Form5.qryProdazhi.Open;
end;

procedure TForm5.btn25Click(Sender: TObject);
begin
      Form5.qryCheki.Insert;
end;

procedure TForm5.btn26Click(Sender: TObject);
begin
   if  Form5.qryCheki.Modified then
 Form5.qryCheki.Post;
end;

procedure TForm5.btn24Click(Sender: TObject);
begin
     Form5.qryCheki.Delete;
end;

procedure TForm5.btn20Click(Sender: TObject);
begin
      Form5.tblPracivniki.Insert;
end;

procedure TForm5.btn21Click(Sender: TObject);
begin
     if  Form5.tblPracivniki.Modified then
 Form5.tblPracivniki.Post;
end;

procedure TForm5.btn19Click(Sender: TObject);
begin
    Form5.tblPracivniki.Delete;
end;

procedure TForm5.btn17Click(Sender: TObject);
begin
     Form5.tblClients.Insert;
end;

procedure TForm5.btn18Click(Sender: TObject);
begin
         if  Form5.tblClients.Modified then
 Form5.tblClients.Post;
end;

procedure TForm5.btn16Click(Sender: TObject);
begin
        Form5.tblClients.Delete;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
Form7.QuickRep1.PreviewModal;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
          if  Form5.qryProdazhi.Modified then
 Form5.qryProdazhi.Post;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
      Form5.qryProdazhi.Delete;
end;

end.
