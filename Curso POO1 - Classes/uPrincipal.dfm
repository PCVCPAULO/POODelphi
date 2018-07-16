object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio Principal'
  ClientHeight = 186
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 24
    Top = 16
    Width = 37
    Height = 13
    Caption = 'Codigo:'
  end
  object Label5: TLabel
    Left = 24
    Top = 53
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label6: TLabel
    Left = 24
    Top = 96
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object Label3: TLabel
    Left = 24
    Top = 136
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object soma: TLabel
    Left = 392
    Top = 68
    Width = 134
    Height = 22
    Caption = 'Valores Descritos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtAddCodigo: TEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtAddNome: TEdit
    Left = 24
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtAddQuantidade: TEdit
    Left = 24
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtAddValor: TEdit
    Left = 24
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btnAdicionar: TButton
    Left = 183
    Top = 30
    Width = 106
    Height = 25
    Caption = 'Adicionar Produto'
    TabOrder = 4
    OnClick = btnAdicionarClick
  end
  object btnGetProduto: TButton
    Left = 184
    Top = 72
    Width = 105
    Height = 25
    Caption = 'Pegar Produto'
    TabOrder = 5
    OnClick = btnGetProdutoClick
  end
  object btnLimpar: TButton
    Left = 184
    Top = 112
    Width = 105
    Height = 25
    Caption = 'Limpar Campos'
    TabOrder = 6
    OnClick = btnLimparClick
  end
end
