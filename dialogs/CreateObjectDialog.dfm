object CreateObjectBaseDialog: TCreateObjectBaseDialog
  Left = 0
  Top = 0
  Caption = 'CreateObjectBaseDialog'
  ClientHeight = 348
  ClientWidth = 508
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    508
    348)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TBCPageControl
    Left = 4
    Top = 4
    Width = 501
    Height = 288
    ActivePage = SourceTabSheet
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnChange = PageControlChange
    ActivePageCaption = 'Source'
    TabDragDrop = False
    HoldShiftToDragDrop = False
    ShowCloseButton = False
    object SourceTabSheet: TTabSheet
      Caption = 'Source'
      object SourcePanel: TPanel
        Left = 0
        Top = 0
        Width = 493
        Height = 260
        Align = alClient
        BevelOuter = bvNone
        Padding.Right = 2
        Padding.Bottom = 1
        TabOrder = 0
        object SourceSynEdit: TSynEdit
          Left = 0
          Top = 24
          Width = 491
          Height = 235
          Align = alClient
          Ctl3D = True
          ParentCtl3D = False
          CodeFolding.CaseSensitive = False
          CodeFolding.FolderBarLinesColor = 12434877
          ActiveLine.Background = clYellow
          ActiveLine.Foreground = clNavy
          ActiveLine.Visible = True
          LineDivider.Visible = False
          LineDivider.Color = clRed
          LineDivider.Style = psSolid
          RightEdge.MouseMove = False
          RightEdge.Visible = True
          RightEdge.Position = 80
          RightEdge.Color = clSilver
          RightEdge.Style = psSolid
          LineSpacing = 0
          LineSpacingRule = lsSpecified
          Background.Visible = False
          Background.RepeatMode = brmNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          TabOrder = 0
          Gutter.ShowLineModified = False
          Gutter.LineModifiedColor = clYellow
          Gutter.LineNormalColor = clLime
          Gutter.Intens = False
          Gutter.AutoSize = True
          Gutter.Font.Charset = DEFAULT_CHARSET
          Gutter.Font.Color = clWindowText
          Gutter.Font.Height = -11
          Gutter.Font.Name = 'Courier New'
          Gutter.Font.Style = []
          Gutter.BookmarkPanelColor = clNone
          Gutter.RightOffset = 2
          Gutter.RightOffsetColor = clNone
          Gutter.ShowLineNumbers = True
          Gutter.ShowBookmarks = False
          Gutter.ShowBookmarkPanel = False
          Gutter.Width = 34
          Highlighter = SynSQLSyn
          Minimap.Font.Charset = DEFAULT_CHARSET
          Minimap.Font.Color = clWindowText
          Minimap.Font.Height = -4
          Minimap.Font.Name = 'Courier New'
          Minimap.Font.Style = []
          Minimap.Width = 0
          Minimap.CharWidth = 2
          Minimap.CharHeight = 4
          Minimap.LinesInWindow = 0
          Options = [eoAutoIndent, eoDragDropEditing, eoEnhanceEndKey, eoGroupUndo, eoShowScrollHint, eoSmartTabDelete, eoSmartTabs, eoTabsToSpaces, eoTrimTrailingSpaces]
          ReadOnly = True
          WantTabs = True
          WordWrap.Enabled = False
          WordWrap.Position = 80
          WordWrap.Style = wwsClientWidth
          FontSmoothing = fsmNone
        end
        object SourceTopPanel: TPanel
          Left = 0
          Top = 0
          Width = 491
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object TopPanel: TPanel
            Left = 0
            Top = 0
            Width = 69
            Height = 24
            Align = alLeft
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 0
            object SourceToolBar: TBCToolBar
              Left = 0
              Top = 0
              Width = 69
              Height = 22
              Align = alNone
              AutoSize = True
              Caption = 'SourceToolBar'
              DisabledImages = ImageList
              Images = ImageList
              TabOrder = 0
              object SQLEditorToolButton: TToolButton
                Left = 0
                Top = 0
                Action = SQLEditorAction
              end
              object CopyToClipboardToolButton: TToolButton
                Left = 23
                Top = 0
                Action = CopyToClipboardAction
              end
              object SaveAsToolButton: TToolButton
                Left = 46
                Top = 0
                Action = SaveToFileAction
              end
            end
          end
        end
      end
    end
  end
  object OKButton: TButton
    Left = 345
    Top = 298
    Width = 75
    Height = 25
    Action = OKAction
    Anchors = [akRight, akBottom]
    Default = True
    TabOrder = 1
  end
  object CancelButton: TButton
    Left = 426
    Top = 298
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 329
    Width = 508
    Height = 19
    Panels = <>
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 247
    Top = 107
    object OKAction: TAction
      Caption = '&OK'
      OnExecute = OKActionExecute
    end
    object SQLEditorAction: TAction
      Caption = 'SQLEditorAction'
      Hint = 'Load in Editor'
      ImageIndex = 0
      OnExecute = SQLEditorActionExecute
    end
    object CopyToClipboardAction: TAction
      Caption = 'CopyToClipboardAction'
      Hint = 'Copy to clipboard'
      ImageIndex = 1
      OnExecute = CopyToClipboardActionExecute
    end
    object SaveToFileAction: TAction
      Caption = 'SaveToFileAction'
      Hint = 'Save to a file'
      ImageIndex = 2
      OnExecute = SaveToFileActionExecute
    end
  end
  object SynSQLSyn: TSynSQLSyn
    CommentAttri.Foreground = clGreen
    ConditionalCommentAttri.Foreground = clGreen
    DataTypeAttri.Foreground = clRed
    DataTypeAttri.Style = []
    DefaultPackageAttri.Style = []
    DelimitedIdentifierAttri.Foreground = clBlue
    ExceptionAttri.Foreground = clRed
    ExceptionAttri.Style = []
    FunctionAttri.Foreground = clBlue
    FunctionAttri.Style = []
    KeyAttri.Foreground = clBlue
    KeyAttri.Style = []
    PLSQLAttri.Foreground = clBlue
    PLSQLAttri.Style = []
    SQLPlusAttri.Foreground = clBlue
    SQLPlusAttri.Style = []
    StringAttri.Foreground = clPurple
    TableNameAttri.Foreground = clOlive
    VariableAttri.Foreground = clNavy
    SQLDialect = sqlOracle
    Left = 248
    Top = 64
  end
  object ImageList: TBCImageList
    Left = 244
    Top = 158
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
      000000000000000000000000000000000000BABAB900AFAFAD00AEAEAB00ADAD
      AB00ADADAB00ADAEAB00AFAFAE00B2B3B000B2AEA600B0AB9F00AFA99C00AEA8
      9C00AEA99C00B0AA9E00BAB6AE00000000000000000000000000000000000000
      00000000000000000000B5B5B300B0B0AE00AEAEAC00ADADAB00ADADAB00ADAD
      AB00ADADAB00AEAEAB00AFAFAD00B5B5B3000000000000000000000000000000
      000000000000AC731400AD751900AC731600AC721400AB721400AA711300AA70
      1300AA701300AA711300AC741900B07A23000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0B0AD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C5BFB500B7B1A400D3C9C100E4DAD200EFE4
      DD00E8DDD600D5CDC400B9B4A700B7B2A7000000000000000000000000000000
      00000000000000000000B0B0AE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B0B0AD00C3AB7A00B7821600B37A0600D7D0
      D400D8D1D300A96D0B00F7EFE300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AC7419000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAB00FFFFFF00FDFDFD00FCFC
      FD00FCFCFD00FDFDFE00FFFFFF00A9A29400C8C1B700D4CCC300E1D6CE00EBE1
      D900E4DAD200D7D0C700CDC6BC00B1AB9F000000000000000000000000000000
      00000000000000000000B0B0AD00F6F6F500ECECEB00FBFAFA00FDFDFD00FCFC
      FC00FBFBFC00FCFCFC00FFFFFF00AEAEAB00B7821800F6CC8A00F0C17200F9F7
      FC00FFFFFF00A6690500F5EBDA00979A9F005354560095969700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AA7114000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAB00FFFFFF00FAF8F800F9F8
      F800F9F8F800FAF9FA00FFFFFF00A9A29500C7C0B600D3CBC200DFD5CD00EAE0
      D800E3D8D000D6CEC500CCC5BB00B0AA9E00B4B4B200AFAFAD00AEAEAB00ADAD
      AB00ADADAB00ADADAB00ACACAA00A9A9A700A8A8A600B8B7B600FBFAFA00F8F6
      F600F7F6F600F7F6F600FFFFFF00ADADAB00B6811600F3CA8600EBB66000F8F5
      F800FFFFFF00A5680300F5EAD900FFFFFF0057575700FFFFFF00FBFBFA00F6F6
      F500F5F5F400F5F7F700FFFFFF00AA7113000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAB00FFFFFF00F6F6F600F6F6
      F600F6F6F600F7F7F800FCFDFF00A9A29500C6BFB400D1C8C000DED3CB00E8DE
      D600E1D6CE00D4CCC300CAC3B900B0AA9E00B0B0AD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8A8A500F9F8F800F5F4
      F400F4F3F300F4F3F300FFFFFF00ADADAB00B6811600F1CA8900E8B15500F9F8
      FD00FAF8FB00A6690500F6ECDB008C8E9200545556008B8B8C00E3E2E300DFDE
      DE00DEDEDE00DDDEE000FFFFFF00AA7114000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAB00FFFFFF00F4F4F300F4F4
      F300F4F4F300F5F5F500FAFBFB00A8A19400E3DDD600F8F4EE00FDF9F200F9F5
      ED00FDF8F200F9F4EE00E6DFD800AEA99C00AEAEAB00FFFFFF00FCFCFC00FBFB
      FC00FBFBFC00FBFBFC00FBFBFC00FCFCFC00FFFFFF00A7A7A500F5F5F400F1F1
      F000EFEFEE00EFEFEE00FFFFFF00ADADAB00B6811500F3CB8F00E6AD4D00FDFF
      FF00EEE7E500A76B0900F6EFE300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AC7419000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAB00FFFFFF00F2F1F000F2F1
      F000F2F1F000F3F2F100F7F7F700A7A09300EDE5DC00DCD3C800D8CFC500D8CF
      C500D8CFC500DDD3C900EFE7DE00AEA99C00ADADAB00FFFFFF00F7F6F600F7F6
      F600F7F6F600F7F6F600F7F6F600F7F6F600FFFFFF00A7A7A500F1F1F100EDED
      EC00EBEBEA00EBEBEA00FFFFFF00ADADAB00B6811500F3D09500E4AA4600E8CB
      A500FFFFFF00A66D1000A76F1300A76D1000A66D0E00A66C0E00A56C0E00A56B
      0E00A66C0E00A96F1200AC741900B07A23000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAB00FFFFFF00EFEFEE00EFEF
      EE00EFEFEE00EFF0EF00F3F4F300BAB5AB00C8C0B400E7DFD500ECE4DA00ECE4
      DA00EDE5DB00E9E1D700CCC5BA00BDB8AE00ADADAB00FFFFFF00F4F3F300F4F3
      F300F4F3F300F4F3F300F4F3F300F4F3F300FFFFFF00A8A8A500EDECEC00F4F3
      F300FFFFFF00FFFFFF00FFFFFF00AEAEAB00B6811500F3D39C00E3A53E00E2A2
      3700E4A13200E6A43700E7A53A00E7A63A00E7A63A00E7A63C00E7A84000E8AA
      4300F6D69E00B882120000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAB00FFFFFF00ECEBEA00EDEC
      EB00EDECEB00EDECEB00EFEEED00ECEBEB00C7C3BB00ACA59800A7A09300A8A2
      9400ACA59800AEA89C00D1CDC60000000000ADADAB00FFFFFF00F0F0EF00F0F0
      EF00F0F0EF00F0F0EF00EFEFEE00EFEFEE00FFFFFF00A8A8A500E9E8E700FFFF
      FF00CACAC900A4A4A200FFFFFF00AFAFAD00B6811400F4D5A400E09E3100F4E0
      B700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4E1B800E19F
      3200F5D6A400B681140000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAB00FFFFFF00E9E9E800EAEA
      E900EAEAE900EAEAE900E9EAE900F5F5F400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AFB0B000000000000000000000000000ADADAB00FFFFFF00ECECEB00EDED
      EC00EDEDEC00ECECEB00EBEBEA00EBEBEA00FFFFFF00A8A8A500E4E4E300FFFF
      FF00A4A4A200FFFFFF00E9E9E900CACAC800B6801400F5DAAE00DF982200FCFF
      FF00797C8000A1A3A500FEFBF200797A7C00A3A4A600A0A3A700FBFEFF00DF97
      2200F5DAAE00B680140000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADAEAB00FFFFFF00E7E5E400E8E7
      E600E8E7E600E8E7E600E7E5E400FFFFFF00CCCCCB00A7A7A500A6A6A400FFFF
      FF00AFAFAE00000000000000000000000000ADADAB00FFFFFF00E9E8E800EAE8
      E900E9E8E800F3F2F200FFFFFF00FFFFFF00FFFFFF00A9A9A600FFFFFF00FFFF
      FF00FFFFFF00E9E9E900CBCBC90000000000B6801300F7DFB900DD921500FCFC
      FC00FDF8EC00FFF8EA00FDF6E800FCF6E800FBF4E700F9F4E800FAFAFA00DC91
      1500F7DFB900B680130000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAB00FFFFFF00E3E3E200E4E4
      E300E4E5E400E4E4E300E3E3E200FFFFFF00A7A7A400EBEBEA00FFFFFF00E9E9
      E900CACAC800000000000000000000000000AEAEAB00FFFFFF00E5E4E300E6E5
      E400E5E4E300FFFFFF00CACAC900A4A4A200FFFFFF00ADADAA00AFAFAD00AEAE
      AC00AFAFAD00CACAC8000000000000000000B67F1200FAE5C500DA8C0900FEFE
      FF00787879007A797900A2A1A1009F9E9E00F5EBE0009B9B9D00FCFCFF00DA8C
      0900FAE5C500B67F120000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAC00FFFFFF00E0DFDE00E1DF
      DE00E1E0DF00E1DFDE00E0DFDE00FFFFFF00A5A5A300FFFFFF00E8E8E800CBCB
      C90000000000000000000000000000000000AEAEAC00FFFFFF00E0E0DF00E0E0
      DF00E0E0DF00FFFFFF00A4A4A200FFFFFF00E9E9E900CCCCCB00000000000000
      000000000000000000000000000000000000B67F1200FBECD200D8840000FFFF
      FF00F1E5DA00F2E6DA00F2E6DA00F0E4D800EEE2D700EEE2D800FEFFFF00D883
      0000FBECD200B67F120000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AFAFAD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9E9E900CACAC9000000
      000000000000000000000000000000000000AFAFAD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E9E9E900CBCBC90000000000000000000000
      000000000000000000000000000000000000B7811400FFECCD00FCE6C300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCE6
      C300FFECCD00B781140000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8B8B600B0B0AD00AEAEAC00AEAE
      AB00AEAEAB00AEAEAB00ADAEAB00AEAEAB00AFAFAD00B7B7B500000000000000
      000000000000000000000000000000000000B8B8B600B0B0AD00AEAEAC00AEAE
      AB00ADADAB00AEAEAB00AFAFAD00BDBDBB000000000000000000000000000000
      000000000000000000000000000000000000DEC69500B7811400B57E0F00B57C
      0B00B57C0900B57C0900B57C0900B57C0900B57C0900B57C0900B57C0B00B57E
      0F00B7811400DEC6950000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF00000001FC00F8000000
      0000FC00000000000000FC000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000300000001000000030000
      000700000003000000070001000300000007000300030000000F003F00030000
      001F007F00030000003F00FF0003000000000000000000000000000000000000
      000000000000}
  end
end
