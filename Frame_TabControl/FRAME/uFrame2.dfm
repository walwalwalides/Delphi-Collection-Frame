object Frame2: TFrame2
  Left = 0
  Top = 0
  Width = 362
  Height = 365
  TabOrder = 0
  object lblwelcome: TLabel
    Left = 0
    Top = 0
    Width = 362
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Frame2'
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
    Top = 321
    Width = 356
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnClose: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 88
      Height = 33
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Close'
      TabOrder = 0
      OnClick = btnCloseClick
    end
  end
  object GrBoxFrame2: TGroupBox
    AlignWithMargins = True
    Left = 15
    Top = 39
    Width = 202
    Height = 105
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 15
    TabOrder = 1
    object CbBoxFrame2: TComboBox
      AlignWithMargins = True
      Left = 27
      Top = 18
      Width = 148
      Height = 21
      Margins.Left = 25
      Margins.Right = 25
      Margins.Bottom = 50
      Align = alTop
      Style = csDropDownList
      TabOrder = 0
      Items.Strings = (
        'Choice1'
        'Choice2'
        'Choice3'
        '')
    end
  end
end
