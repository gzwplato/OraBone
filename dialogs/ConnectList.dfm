object ConnectListDialog: TConnectListDialog
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'New Connection'
  ClientHeight = 418
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 549
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    Padding.Top = 8
    Padding.Bottom = 6
    TabOrder = 0
    object Label1: TLabel
      Left = 407
      Top = 8
      Width = 33
      Height = 14
      Align = alRight
      AutoSize = False
      Caption = 'Mode'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object ClientModeRadioButton: TRadioButton
      Left = 440
      Top = 8
      Width = 54
      Height = 14
      Align = alRight
      Caption = ' Client'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object DirectModeRadioButton: TRadioButton
      Left = 494
      Top = 8
      Width = 55
      Height = 14
      Align = alRight
      Caption = ' Direct'
      TabOrder = 1
    end
    object ActionToolBar1: TActionToolBar
      Left = 3
      Top = 3
      Width = 206
      Height = 29
      ActionManager = ActionManager
      Align = alNone
      Caption = 'ActionToolBar1'
      Color = clMenuBar
      ColorMap.DisabledFontColor = 7171437
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedFont = clBlack
      ColorMap.UnusedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Spacing = 0
    end
  end
  object StringGridPanel: TPanel
    Left = 0
    Top = 28
    Width = 549
    Height = 353
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 6
    Padding.Top = 3
    Padding.Right = 6
    TabOrder = 1
    object VirtualDrawTree: TVirtualDrawTree
      Left = 6
      Top = 3
      Width = 537
      Height = 350
      Align = alClient
      Ctl3D = True
      DragOperations = []
      EditDelay = 0
      Header.AutoSizeIndex = 0
      Header.DefaultHeight = 20
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Header.Height = 20
      Header.Options = [hoAutoResize, hoColumnResize, hoShowSortGlyphs, hoVisible, hoAutoSpring]
      Images = ImagesDataModule.ImageList
      ParentCtl3D = False
      TabOrder = 0
      TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScrollOnExpand]
      TreeOptions.MiscOptions = [toFullRepaintOnResize, toGridExtensions, toInitOnSave, toToggleOnDblClick, toWheelPanning, toEditOnClick]
      TreeOptions.PaintOptions = [toHideFocusRect, toHotTrack, toShowButtons, toShowDropmark, toShowHorzGridLines, toShowVertGridLines, toThemeAware, toUseBlendedSelection]
      TreeOptions.SelectionOptions = [toDisableDrawSelection, toFullRowSelect, toMiddleClickSelect, toRightClickSelect]
      WantTabs = True
      OnCompareNodes = VirtualDrawTreeCompareNodes
      OnDblClick = VirtualDrawTreeDblClick
      OnDrawNode = VirtualDrawTreeDrawNode
      Columns = <
        item
          Position = 0
          Width = 134
          WideText = 'Profile'
        end
        item
          Options = [coEnabled, coParentBidiMode, coParentColor, coResizable, coVisible, coAutoSpring]
          Position = 1
          Width = 133
          WideText = 'User'
        end
        item
          Options = [coEnabled, coParentBidiMode, coParentColor, coResizable, coVisible, coAutoSpring]
          Position = 2
          Width = 133
          WideText = 'Database'
        end
        item
          Options = [coEnabled, coParentBidiMode, coParentColor, coResizable, coVisible, coAutoSpring]
          Position = 3
          Width = 133
          WideText = 'Home'
        end>
    end
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 381
    Width = 549
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 6
    Padding.Top = 6
    Padding.Right = 6
    Padding.Bottom = 6
    TabOrder = 2
    object ConnectButton: TButton
      Left = 387
      Top = 6
      Width = 75
      Height = 25
      Action = ConnectAction
      Align = alRight
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object CancelButton: TButton
      Left = 468
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
    object Separator1Panel: TPanel
      Left = 462
      Top = 6
      Width = 6
      Height = 25
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = AddConnectionAction
            ImageIndex = 0
            ShowCaption = False
          end
          item
            Action = RemoveConnectionAction
            ImageIndex = 1
            ShowCaption = False
          end
          item
            Caption = '-'
          end
          item
            Action = EditConnectionAction
            ImageIndex = 2
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList
    Left = 152
    Top = 136
    StyleName = 'Platform Default'
    object AddConnectionAction: TAction
      Hint = 'Add connection'
      ImageIndex = 0
      OnExecute = AddConnectionActionExecute
    end
    object RemoveConnectionAction: TAction
      Hint = 'Remove connection'
      ImageIndex = 1
      OnExecute = RemoveConnectionActionExecute
    end
    object EditConnectionAction: TAction
      Hint = 'Edit connection'
      ImageIndex = 2
      OnExecute = EditConnectionActionExecute
    end
    object ConnectAction: TAction
      Caption = '&Connect'
      OnExecute = ConnectActionExecute
    end
    object ModeClickAction: TAction
      Caption = 'ModeClickAction'
    end
  end
  object ImageList: TBCImageList
    Left = 124
    Top = 196
    Bitmap = {
      494C010103000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008D4C00008B
      4A00008C4C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002132AE002232
      AD002233AD000000000000000000000000000000000000000000000000000000
      00000000000051708900496786004E90D9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A8561100A752
      0A00A7520A00A7520900A9510900B54F07004A732F00009B5E0000BB860077E0
      C60000BB860000995C0000000000000000000000000000000000A8561100A752
      0A00A7520A00A7520900A9530800B25600005C406500223CC800385FFB003961
      FE003960FA00283EC10000000000000000000000000000000000A8561100A951
      0800B04E00005589AE00759FB5008ED6FF002D6BA500BE550600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B15F1600D7975A00E2A7
      6D00E2A66C00E2A56C00E5A56C00F5A56C00008E4D0000C28E0000BC8300FFFF
      FF0000BC830000C18D00008C4C000000000000000000B15F1600D7975A00E2A7
      6D00E2A66C00E2A56C00E4A76A00F2AE62000A26BB003F64FF003D61FB003A5E
      F9003D61FB004366FD001E30AD000000000000000000B15F1600D7975A00E4A6
      6C00EBA461003BB5FF0078D6FF0080D5FF00119CFF002E6FAC00C96105000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0763300E8B98D00DF9F
      5D00DF9C5900DF9A5500E29A5600F59D5A000089460073E7CE00FFFFFF00FFFF
      FF00FFFFFF0077E7CE00008B49000000000000000000C0763300E8B98D00DF9F
      5D00DF9C5900DF9A5500E29C5400F1A651000621B400A8BBFF00FFFFFF00FFFF
      FF00FFFFFF00ACBDFF001B2DAC000000000000000000C0763300E8B98D00E09E
      5C00E49B5400F09944001F74CA003EC5FF002AABFF00169EFF00336EA6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA864800EDCBAA00EAAD
      6B00EAAF6F00F6FAFE00EFF0F200FFB171000086420000CB970000C99000FFFF
      FF0000C9900000CD9900008C4B000000000000000000CA864800EDCBAA00EAAD
      6B00EAAF6F00F6FAFE00EEF2F100FBBA6800041DB1005878FF005877FF005474
      FE005877FF005F7CFF001D2EAD000000000000000000CA864800EDCBAA00EAAD
      6B00EBAF6E00FCFAF900FFF2E2002573C50043C7FF002BACFF00159EFF00306B
      A400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3955900F4DFCD00F6BF
      7D00FFF1DF00FFFEFE00F7F5F300FADFCA0066A25F00009F610000D49E0076EF
      D60000D49F0000A36700000000000000000000000000D3955900F4DFCD00F6BF
      7D00FFF1DF00FFFEFE00F7F6F300F8E5C5007A6C98002740CB006C87FF00758E
      FF00718AFF00384DC800000000000000000000000000D3955900F4DFCD00F6BF
      7D00FFF1DE00FFFFFD00FDF6EF00FFE1BB002675C80040C7FF0021ABFF0084B1
      D8007F7971000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5924F00EBC49F00FFEC
      D600B3D9EF005DA1C5003D7FA400809DB200FFF3DE005E9E6600008949000089
      4800008B4A0000000000000000000000000000000000D5924F00EBC49F00FFEC
      D600B3D9EF005DA1C5003D7FA4007F9FB000FFFBD50070689F000B25B500172B
      AF001D2FAD0000000000000000000000000000000000D5924F00EBC49F00FFEC
      D600B3D9EF005DA1C5003E7FA300829EAD00FFF5CF001F78D200AEDCF4009288
      8000C1BFB800777C6E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBB88600F0AA
      6300BDC3BB006099B800437A980094948B00F8AF690000000000000000000000
      0000000000000000000000000000000000000000000000000000EBB88600F0AA
      6300BDC3BB006099B800437A980094948A00F7B1670000000000000000000000
      0000000000000000000000000000000000000000000000000000EBB88600F0AA
      6300BDC3BB006099B800437A980094948A00F9AF6400F6BF8A0087858300ECEA
      E700898C8300BA7AB6009869CA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007CADC40078BADE006AABCF006290A8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007CADC40078BADE006AABCF006290A8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007CADC40078BADE006AABCF006290A8000000000000000000000000008688
      8200E3B3E200CB96C600AE7DCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009AE2FF0086C7E80077B6D8006DAED0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009AE2FF0086C7E80077B6D8006DAED0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009AE2FF0086C7E80077B6D8006DAED0000000000000000000000000000000
      0000C48BD900BF8AD30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000634
      6500AFF7FF0096D9F80086C8E7007FC1E00005285B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000634
      6500AFF7FF0096D9F80086C8E7007FC1E00005285B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000634
      6500AFF7FF0096D9F80086C8E7007FC1E00006285B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E3F
      6F00226190005488B2007CB3D500679BBE000E2E5E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E3F
      6F00226190005488B2007CB3D500679BBE000E2E5E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E3F
      6F00226190005488B2007CB3D500679BBE000E2E5E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001246
      7500307DAF004E8EBC00517FAC002D4B77001132610000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001246
      7500307DAF004E8EBC00517FAC002D4B77001132610000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001246
      7500307DAF004E8EBC00517FAC002D4B77001132610000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000395E
      86002577A9003C88BA003C7AA900224A75003958810000000000000000000000
      000000000000000000000000000000000000000000000000000000000000395E
      86002577A9003C88BA003C7AA900224A75003958810000000000000000000000
      000000000000000000000000000000000000000000000000000000000000395E
      86002577A9003C88BA003C7AA900224A75003958810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000265581001A588A001951820027507D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000265581001A588A001951820027507D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000265581001A588A001951820027507D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFC7FFC7F8FF0000
      C003C003C03F000080018001801F000080018001801F000080018001800F0000
      80038003800700008007800780030000C07FC07FC0010000F0FFF0FFF0E10000
      F0FFF0FFF0F30000E07FE07FE07F0000E07FE07FE07F0000E07FE07FE07F0000
      E07FE07FE07F0000F0FFF0FFF0FF000000000000000000000000000000000000
      000000000000}
  end
  object ApplicationEvents: TApplicationEvents
    OnMessage = ApplicationEventsMessage
    Left = 56
    Top = 142
  end
end
