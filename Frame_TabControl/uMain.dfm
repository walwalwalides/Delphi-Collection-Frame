object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 378
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MMMain
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Tab: TTabControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 420
    Height = 372
    Align = alClient
    TabOrder = 0
    Tabs.Strings = (
      'Frame1'
      'Frame2')
    TabIndex = 0
    OnChange = TabChange
  end
  object MMMain: TMainMenu
    Left = 48
    Top = 184
    object File1: TMenuItem
      Caption = 'File'
      object OpenFiles1: TMenuItem
        Action = actOpenFile
      end
      object OpenFolders1: TMenuItem
        Action = actOpenFolder
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Action = actExit
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      object Refresh1: TMenuItem
        Action = actFrame1
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Frame21: TMenuItem
        Action = actFrame2
      end
    end
    object A2: TMenuItem
      Caption = 'About'
      object actAbout1: TMenuItem
        Action = actAbout
      end
    end
  end
  object actLstMain: TActionList
    Left = 137
    Top = 208
    object actClear: TAction
      Category = 'Action'
      Caption = 'Clear'
      ShortCut = 16451
    end
    object actSum: TAction
      Category = 'Action'
      Caption = 'Sum'
      ShortCut = 16467
    end
    object actOpenFile: TAction
      Category = 'File'
      Caption = 'Open File(s)...'
    end
    object actShowInExplorer: TAction
      Caption = 'Show in Explorer'
    end
    object actOpenFolder: TAction
      Category = 'File'
      Caption = 'Open Folder(s)...'
    end
    object actExit: TAction
      Category = 'File'
      Caption = 'Exit'
      OnExecute = actExitExecute
    end
    object actFrame1: TAction
      Category = 'View'
      Caption = 'Frame &1'
      ShortCut = 16496
      OnExecute = actFrame1Execute
    end
    object actOption: TAction
      Category = 'Option'
      Caption = 'Option'
      ShortCut = 16463
    end
    object actAbout: TAction
      Category = 'About'
      Caption = 'Info'
      ShortCut = 16457
      OnExecute = actAboutExecute
    end
    object actFrame2: TAction
      Category = 'View'
      Caption = 'Frame &2'
      ShortCut = 16497
      OnExecute = actFrame2Execute
    end
  end
end
