unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uClasses, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Label4: TLabel;
    edtAddCodigo: TEdit;
    Label5: TLabel;
    edtAddNome: TEdit;
    Label6: TLabel;
    edtAddQuantidade: TEdit;
    Label3: TLabel;
    edtAddValor: TEdit;
    btnAdicionar: TButton;
    soma: TLabel;
    btnGetProduto: TButton;
    btnLimpar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnGetProdutoClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

var
  Pedido : TPedido;

procedure TfrmPrincipal.btnAdicionarClick(Sender: TObject);
var
  produto : TProduto;
  item : TItem;
begin
   produto := TProduto.Create;
   produto.Codigo := StrToInt(edtAddCodigo.Text);
   produto.Nome := edtAddNome.Text;

   item := TItem.Create;

   item.Produto := produto;

   item.Quantidade := StrToInt(edtAddQuantidade.Text);
   item.Valor := StrToFloat(edtAddValor.Text);

   pedido.Add(item);

   soma.Caption := formatFloat('R$#,##0.00',Pedido.Total);
end;


procedure TfrmPrincipal.btnGetProdutoClick(Sender: TObject);
var
  str:string;
  index:integer;
begin
    if(InputQuery('Items','Indice', str)) then
      begin
         index := strToInt(str);
         edtAddCodigo.Text := IntToStr(Pedido.Items[index].Produto.Codigo);
         edtAddNome.Text := Pedido.Items[index].Produto.Nome;
         edtAddQuantidade.Text := IntToSTR(pedido.Items[index].Quantidade);
         edtAddValor.Text := FloatToStr(pedido.Items[index].Valor);
      end;
end;

procedure TfrmPrincipal.btnLimparClick(Sender: TObject);
begin
  edtAddCodigo.Text :='';
  edtAddNome.Text := '';
  edtAddQuantidade.Text := '';
  edtAddValor.Text := '';
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
 Pedido := TPedido.Create;
end;

end.
