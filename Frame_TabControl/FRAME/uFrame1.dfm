object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 356
  Height = 375
  TabOrder = 0
  object lblHallo: TLabel
    Left = 0
    Top = 0
    Width = 356
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Frame1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 77
  end
  object pnlBottom: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 331
    Width = 350
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnClose: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 88
      Height = 33
      Align = alLeft
      Caption = 'Close'
      TabOrder = 0
      OnClick = btnCloseClick
    end
  end
  object RadGrpFrame1: TRadioGroup
    AlignWithMargins = True
    Left = 15
    Top = 39
    Width = 185
    Height = 105
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 15
    ItemIndex = 0
    Items.Strings = (
      'Choice 1'
      'Choice 2'
      'Choice 3')
    TabOrder = 1
  end
end
