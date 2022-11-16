object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 276
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 24
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 24
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 3
  end
  object Button4: TButton
    Left = 24
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Capacty'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 24
    Top = 199
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 5
  end
  object Button6: TButton
    Left = 24
    Top = 230
    Width = 75
    Height = 25
    Caption = 'onNorfy'
    TabOrder = 6
  end
  object Memo1: TMemo
    Left = 184
    Top = 58
    Width = 201
    Height = 183
    Lines.Strings = (
      'Memo1')
    TabOrder = 7
  end
end
