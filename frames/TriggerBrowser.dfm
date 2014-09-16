object TriggerBrowserFrame: TTriggerBrowserFrame
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  Color = clWindow
  Ctl3D = False
  ParentBackground = False
  ParentColor = False
  ParentCtl3D = False
  TabOrder = 0
  object TriggerPageControl: TBCPageControl
    Left = 0
    Top = 0
    Width = 451
    Height = 304
    ActivePage = SourceTabSheet
    Align = alClient
    DoubleBuffered = False
    ParentDoubleBuffered = False
    PopupMenu = PageControlPopupActionBar
    TabOrder = 0
    OnChange = TriggerPageControlChange
    ActivePageCaption = 'Source'
    TabDragDrop = False
    HoldShiftToDragDrop = False
    ShowCloseButton = False
    object SourceTabSheet: TTabSheet
      Caption = 'Source'
      ImageIndex = 6
      object SourcePanel: TPanel
        Left = 0
        Top = 63
        Width = 443
        Height = 213
        Align = alClient
        BevelOuter = bvNone
        Padding.Top = 2
        Padding.Right = 2
        Padding.Bottom = 1
        TabOrder = 0
        object SourceSynEdit: TSynEdit
          Left = 0
          Top = 2
          Width = 441
          Height = 210
          ActiveLine.Background = clYellow
          ActiveLine.Foreground = clNavy
          ActiveLine.Visible = True
          Align = alClient
          Background.Visible = False
          Background.RepeatMode = brmNone
          CodeFolding.CaseSensitive = False
          CodeFolding.FolderBarLinesColor = 12434877
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          FontSmoothing = fsmNone
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
          LineDivider.Visible = False
          LineDivider.Color = clRed
          LineDivider.Style = psSolid
          LineSpacing = 0
          LineSpacingRule = lsSpecified
          Options = [eoAutoIndent, eoDragDropEditing, eoEnhanceEndKey, eoGroupUndo, eoShowScrollHint, eoSmartTabDelete, eoSmartTabs, eoTabsToSpaces, eoTrimTrailingSpaces]
          ParentCtl3D = False
          ReadOnly = True
          RightEdge.MouseMove = False
          RightEdge.Visible = True
          RightEdge.Position = 80
          RightEdge.Color = clSilver
          RightEdge.Style = psSolid
          TabOrder = 0
          WantTabs = True
          WordWrap.Enabled = False
          WordWrap.Position = 80
          WordWrap.Style = wwsClientWidth
        end
      end
      object TriggersTopPanel: TPanel
        Left = 0
        Top = 0
        Width = 443
        Height = 63
        Align = alTop
        BevelOuter = bvNone
        Padding.Right = 2
        TabOrder = 1
        object TriggersDBGrid: TBCDBGrid
          Left = 0
          Top = 0
          Width = 441
          Height = 39
          Align = alClient
          AllowedSelections = [gstRecordBookmarks, gstAll]
          Ctl3D = True
          DataSource = SourceDataSource
          DrawMemoText = True
          DynProps = <>
          FooterParams.Color = clWindow
          IndicatorOptions = [gioShowRowIndicatorEh]
          IndicatorTitle.ShowDropDownSign = True
          IndicatorTitle.TitleButton = True
          IndicatorTitle.UseGlobalMenu = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object SourceButtonPanel: TPanel
          Left = 0
          Top = 39
          Width = 441
          Height = 24
          Align = alBottom
          BevelOuter = bvNone
          Padding.Top = 2
          TabOrder = 1
          object Bevel3: TBevel
            AlignWithMargins = True
            Left = 75
            Top = 4
            Width = 4
            Height = 18
            Margins.Left = 6
            Margins.Top = 2
            Margins.Bottom = 2
            Align = alLeft
            Shape = bsLeftLine
          end
          object Bevel1: TBevel
            AlignWithMargins = True
            Left = 134
            Top = 4
            Width = 4
            Height = 18
            Margins.Left = 6
            Margins.Top = 2
            Margins.Bottom = 2
            Align = alLeft
            Shape = bsLeftLine
          end
          object CreationAndModificationTimestampLabel: TLabel
            AlignWithMargins = True
            Left = 435
            Top = 5
            Width = 3
            Height = 19
            Align = alRight
            ExplicitHeight = 13
          end
          object SourceToolBar: TBCToolBar
            Left = 0
            Top = 2
            Width = 69
            Height = 22
            Align = alLeft
            Caption = 'SourceToolBar'
            Images = ImageList
            TabOrder = 0
            object SQLEditorToolButton: TToolButton
              Left = 0
              Top = 0
              Action = SQLEditorAction
            end
            object ToolButton4: TToolButton
              Left = 23
              Top = 0
              Action = CopyToClipboardAction
            end
            object ToolButton5: TToolButton
              Left = 46
              Top = 0
              Action = SaveToFileAction
            end
          end
          object BCToolBar1: TBCToolBar
            Left = 82
            Top = 2
            Width = 46
            Height = 22
            Align = alLeft
            Caption = 'BCToolBar1'
            Images = ImageList
            TabOrder = 1
            object ToolButton8: TToolButton
              Left = 0
              Top = 0
              Action = EnableTriggerAction
            end
            object ToolButton9: TToolButton
              Left = 23
              Top = 0
              Action = DisableTriggerAction
            end
          end
          object BCToolBar2: TBCToolBar
            Left = 141
            Top = 2
            Width = 23
            Height = 22
            Align = alLeft
            Images = ImageList
            TabOrder = 2
            object ToolButton2: TToolButton
              Left = 0
              Top = 0
              Action = RefreshAction
            end
          end
        end
      end
    end
  end
  object ImageList: TBCImageList
    Left = 204
    Top = 196
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5B5B300B0B0AE00AEAEAC00ADADAB00ADADAB00ADAD
      AB00ADADAB00AEAEAB00AFAFAD00B5B5B3000000000000000000000000000000
      000000000000AC731400AD751900AC731600AC721400AB721400AA711300AA70
      1300AA701300AA711300AC741900B07A23000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B0B0AE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B0B0AD00C3AB7A00B7821600B37A0600D7D0
      D400D8D1D300A96D0B00F7EFE300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AC7419000000000000000000000000000000
      000000000000008C4C003EA07300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B0B0AD00F6F6F500ECECEB00FBFAFA00FDFDFD00FCFC
      FC00FBFBFC00FCFCFC00FFFFFF00AEAEAB00B7821800F6CC8A00F0C17200F9F7
      FC00FFFFFF00A6690500F5EBDA00979A9F005354560095969700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AA7114000000000000000000000000000000
      00000088470018C8910000874600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4B4B200AFAFAD00AEAEAB00ADAD
      AB00ADADAB00ADADAB00ACACAA00A9A9A700A8A8A600B8B7B600FBFAFA00F8F6
      F600F7F6F600F7F6F600FFFFFF00ADADAB00B6811600F3CA8600EBB66000F8F5
      F800FFFFFF00A5680300F5EAD900FFFFFF0057575700FFFFFF00FBFBFA00F6F6
      F500F5F5F400F5F7F700FFFFFF00AA7113000000000000000000000000000088
      46003CCE9E0000DCA20000BC7F00009B5C00009D5F0000884700008948002497
      6100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0B0AD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8A8A500F9F8F800F5F4
      F400F4F3F300F4F3F300FFFFFF00ADADAB00B6811600F1CA8900E8B15500F9F8
      FD00FAF8FB00A6690500F6ECDB008C8E9200545556008B8B8C00E3E2E300DFDE
      DE00DEDEDE00DDDEE000FFFFFF00AA7114000000000000000000008C4A0061D8
      B50000D49E0000D29C0000D5A1005ADEC7005ADEC7005ADEC7005ADEC70000C2
      8C00009050000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAB00FFFFFF00FCFCFC00FBFB
      FC00FBFBFC00FBFBFC00FBFBFC00FCFCFC00FFFFFF00A7A7A500F5F5F400F1F1
      F000EFEFEE00EFEFEE00FFFFFF00ADADAB00B6811500F3CB8F00E6AD4D00FDFF
      FF00EEE7E500A76B0900F6EFE300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AC7419000000000000000000000000000087
      440086EBDB0000C69F0000B1800000874500008D4D00009B6000009A5F0000B2
      800000B6890044A2770000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAB00FFFFFF00F7F6F600F7F6
      F600F7F6F600F7F6F600F7F6F600F7F6F600FFFFFF00A7A7A500F1F1F100EDED
      EC00EBEBEA00EBEBEA00FFFFFF00ADADAB00B6811500F3D09500E4AA4600E8CB
      A500FFFFFF00A66D1000A76F1300A76D1000A66D0E00A66C0E00A56C0E00A56B
      0E00A66C0E00A96F1200AC741900B07A23000000000000000000000000000000
      000000874200A3EEED0000884500000000000000000000000000000000003CA6
      750000A171000091530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAB00FFFFFF00F4F3F300F4F3
      F300F4F3F300F4F3F300F4F3F300F4F3F300FFFFFF00A8A8A500EDECEC00F4F3
      F300FFFFFF00FFFFFF00FFFFFF00AEAEAB00B6811500F3D39C00E3A53E00E2A2
      3700E4A13200E6A43700E7A53A00E7A63A00E7A63A00E7A63C00E7A84000E8AA
      4300F6D69E00B882120000000000000000000000000000000000008E4E000000
      000000000000008B480058B48900000000000000000046A27800008B4A000000
      000000000000008E4E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAB00FFFFFF00F0F0EF00F0F0
      EF00F0F0EF00F0F0EF00EFEFEE00EFEFEE00FFFFFF00A8A8A500E9E8E700FFFF
      FF00CACAC900A4A4A200FFFFFF00AFAFAD00B6811400F4D5A400E09E3100F4E0
      B700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4E1B800E19F
      3200F5D6A400B6811400000000000000000000000000000000000093530000AE
      7000309A6800000000000000000000000000000000000088470018E8B4000086
      4500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAB00FFFFFF00ECECEB00EDED
      EC00EDEDEC00ECECEB00EBEBEA00EBEBEA00FFFFFF00A8A8A500E4E4E300FFFF
      FF00A4A4A200FFFFFF00E9E9E900CACAC800B6801400F5DAAE00DF982200FCFF
      FF00797C8000A1A3A500FEFBF200797A7C00A3A4A600A0A3A700FBFEFF00DF97
      2200F5DAAE00B68014000000000000000000000000000000000055B2880000C3
      870000BB7E00009D5F00009F6000008847000087450000BC800000DBA0003CE9
      BD00008745000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAB00FFFFFF00E9E8E800EAE8
      E900E9E8E800F3F2F200FFFFFF00FFFFFF00FFFFFF00A9A9A600FFFFFF00FFFF
      FF00FFFFFF00E9E9E900CBCBC90000000000B6801300F7DFB900DD921500FCFC
      FC00FDF8EC00FFF8EA00FDF6E800FCF6E800FBF4E700F9F4E800FAFAFA00DC91
      1500F7DFB900B68013000000000000000000000000000000000000000000008F
      500000C48C0000DBA9005ADEC7005ADEC7005ADEC70000D4A10000D19C0000D3
      9E0061DBB700008C4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAB00FFFFFF00E5E4E300E6E5
      E400E5E4E300FFFFFF00CACAC900A4A4A200FFFFFF00ADADAA00AFAFAD00AEAE
      AC00AFAFAD00CACAC8000000000000000000B67F1200FAE5C500DA8C0900FEFE
      FF00787879007A797900A2A1A1009F9E9E00F5EBE0009B9B9D00FCFCFF00DA8C
      0900FAE5C500B67F120000000000000000000000000000000000000000000000
      00002D9F6A00008A490000894800008948000087450000B1800000C7A00086DC
      C500008744000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAC00FFFFFF00E0E0DF00E0E0
      DF00E0E0DF00FFFFFF00A4A4A200FFFFFF00E9E9E900CCCCCB00000000000000
      000000000000000000000000000000000000B67F1200FBECD200D8840000FFFF
      FF00F1E5DA00F2E6DA00F2E6DA00F0E4D800EEE2D700EEE2D800FEFFFF00D883
      0000FBECD200B67F120000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000894600A3E4DA000087
      4400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AFAFAD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E9E9E900CBCBC90000000000000000000000
      000000000000000000000000000000000000B7811400FFECCD00FCE6C300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCE6
      C300FFECCD00B781140000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004EB08300008C49000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8B8B600B0B0AD00AEAEAC00AEAE
      AB00ADADAB00AEAEAB00AFAFAD00BDBDBB000000000000000000000000000000
      000000000000000000000000000000000000DEC69500B7811400B57E0F00B57C
      0B00B57C0900B57C0900B57C0900B57C0900B57C0900B57C0900B57C0B00B57E
      0F00B7811400DEC6950000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000C18C2600C4912B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0EEE0008FC091003B8D3F00257A2900257729003B853F008FB99100E0EB
      E000000000000000000000000000000000000000000000000000000000000000
      0000E5E8F7009EA9E100546BC7003F59C0003A53BF004C67C20097A7DC00E1E6
      F50000000000000000000000000000000000B0B0AD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C5BFB500B7B1A400D3C9C100E4DAD200EFE4
      DD00E8DDD600D5CDC400B9B4A700B7B2A7000000000000000000000000000000
      00000000000000000000C0891E00E7A84200EAB05400D9A44800000000000000
      000000000000000000000000000000000000000000000000000000000000B5D9
      B700318F350042A0520087CA9A009BD3AB009BD2AB0083C796003D974C00307C
      3400B5D0B600000000000000000000000000000000000000000000000000C3C9
      ED005566CC003C52CC00757AE8008F92EE008F92EE007178E400334DC100405C
      BE00B9C4E700000000000000000000000000AEAEAB00FFFFFF00FDFDFD00FCFC
      FD00FCFCFD00FDFDFE00FFFFFF00A9A29400C8C1B700D4CCC300E1D6CE00EBE1
      D900E4DAD200D7D0C700CDC6BC00B1AB9F00BA892600B67E0E00B57C0900B57B
      0900B57B0900B47C0A00BF820F00FFF2D300E2A23900E8AF5100D9A34400B680
      1200B8811200BD8A270000000000000000000000000000000000B5DBBA00258F
      2A006DBE8300A8DBB50087CC980066BC7D0064BA7C0086CB9800A5D9B40066B7
      7D0024722700B5D1B60000000000000000000000000000000000C5C9EF005160
      CD005C65E000A1A6F5007E86EF005B63E900595DE7007D84EE009EA0F400515D
      D7003452BA00B9C4E7000000000000000000ADADAB00FFFFFF00FAF8F800F9F8
      F800F9F8F800FAF9FA00FFFFFF00A9A29500C7C0B600D3CBC200DFD5CD00EAE0
      D800E3D8D000D6CEC500CCC5BB00B0AA9E00B67E0E00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CFAD6800CA850900FFF0CE00E1A13500E9AC4800D5B4
      7100FFFFFF00BD810A00000000000000000000000000E1F2E40033A1440072C2
      8700A8DBB20060BC77005CBA730059B8700059B56F0058B56F005BB77400A5D9
      B30069B87F00317F3500E1ECE1000000000000000000E8EAF9006571D400616B
      E300A1ACF500545FEC00505CEA004D59E9004E59E6004C56E6005056E6009EA2
      F4005460D600405CBF00E2E7F50000000000ADADAB00FFFFFF00F6F6F600F6F6
      F600F6F6F600F7F7F800FCFDFF00A9A29500C6BFB400D1C8C000DED3CB00E8DE
      D600E1D6CE00D4CCC300CAC3B900B0AA9E00B57B0900FFFFFF00E5D5CB00E5D6
      CA00E5D5C900F9FCFF00FBFFFF00CBA86200CA830500FFEDC500DBB16C00B5B8
      C1006A6A6E006F6F750087898D00000000000000000090D29F004CB06400AADD
      B40064C179005FBE710075C58500D4ECD9008ACD990056B66C0058B56E005CB7
      7400A6DAB400419B4E008EBC90000000000000000000ACB0EA004B56DB00A2AB
      F6005664F0005266EE004D59E9004D59E9004D59E9004D59E9004C58E600525A
      E6009FA3F5003450C40096A6DC0000000000ADADAB00FFFFFF00F4F4F300F4F4
      F300F4F4F300F5F5F500FAFBFB00A8A19400E3DDD600F8F4EE00FDF9F200F9F5
      ED00FDF8F200F9F4EE00E6DFD800AEA99C00B47B0800FFFFFF00E3D1C200E4D2
      C300E4D1C000F1F3F400F2F4F600F4F9FF00C9A35900E0C28900D9DBE300CECD
      D000D3D4D400EEEEEF00ECEAED007C7B7A00000000003FB55D0091D29F008DD4
      9A0064C3740079C98700F2FAF400FFFFFF00FDFEFD0086CB960057B76D005BB9
      720085CC970087C79A003B8B3F0000000000000000007378DD00818CEE007E91
      F7005D73F3004D59E9004D59E9004D59E9004D59E9004D59E9004D59E9004F5B
      E9007B83F000757BE2004C64C40000000000ADADAB00FFFFFF00F2F1F000F2F1
      F000F2F1F000F3F2F100F7F7F700A7A09300EDE5DC00DCD3C800D8CFC500D8CF
      C500D8CFC500DDD3C900EFE7DE00AEA99C00B47B0900FFFFFF00E0CCBB00E1CE
      BC00E1CCB900ECEDEE00EBEBEB00ECECEE00EEF0F400F2F3F700A7A6A700DBD9
      DA00D1CFCF00767474007C7B7C00817F7F000000000027B04900A6DCAF0070CA
      7F0073CA8000F0F9F100FFFFFF00EBF7ED00FFFFFF00FBFDFC0088CD96005BB9
      710067BE7D00A0D7AF00237F260000000000000000006569DB00A1ABF7007086
      F8006882F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D59
      E9005C66EA00969CF1003956BE0000000000ADADAB00FFFFFF00EFEFEE00EFEF
      EE00EFEFEE00EFF0EF00F3F4F300BAB5AB00C8C0B400E7DFD500ECE4DA00ECE4
      DA00EDE5DB00E9E1D700CCC5BA00BDB8AE00B57B0900FFFFFF00DDC6B300DEC9
      B500DEC7B200E6E7E800E5E4E400E5E4E400E7E6E600EDECEB0079777500D9D7
      D600C5C2C2007B7B7D000000000000000000000000002EB75100A7DDB10072CC
      800066C77300B0E1B700D2EED60063C17000B8E3BF00FFFFFF00FBFDFC008CD0
      990069C17E00A1D7AE00238426000000000000000000696EDC00AFB9F9007F93
      FA007085F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D59
      E9005E6AEE00969DF1003D55C00000000000ADADAB00FFFFFF00ECEBEA00EDEC
      EB00EDECEB00EDECEB00EFEEED00ECEBEB00C7C3BB00ACA59800A7A09300A8A2
      9400ACA59800AEA89C00D1CDC60000000000B57B0900FFFFFF00DAC1AA00DCC4
      AD00DCC3AA00DFE0E100DEDEDD00DEDDDC00DFDEDD00E5E4E30076737000E3E1
      E200B3B1AF008A8787008281830087858500000000004BC56C0095D7A10091D7
      9B0069C9760064C66F0061C46E0061C36F0061C26F00B9E4C000FFFFFF00E3F4
      E6008BD199008BCE9D003C993F0000000000000000007C7FE300A5AFF5009DAB
      FA00778CF000545FEC00545FEC00545FEC00545FEC00545FEC00545FEC006377
      F200818EF400787FE900566BC90000000000ADADAB00FFFFFF00E9E9E800EAEA
      E900EAEAE900EAEAE900E9EAE900F5F5F400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AFB0B000000000000000000000000000B57B0900FFFFFF00D4B89E00D5BA
      A000D6B99E00D5D6D800D5D5D500D5D4D400D6D5D500D9D9D900A3A2A000BDBB
      BB00F4F4F400E5E5E600C4C4C50089878500000000009BDFAD0057BF7000AFE1
      B7006DCC7A0068C8720065C7700063C56E0062C46E0063C47100B6E3BE006FC7
      7E00ACDFB50048A95E008FC894000000000000000000B5B5F0007D83EA00CDD4
      FC008B9DFA007E93F700758AEE006C84F6006C84F6006C84F6006C84F6006379
      F300A4AFF8003E4FD000A0ABE10000000000ADAEAB00FFFFFF00E7E5E400E8E7
      E600E8E7E600E8E7E600E7E5E400FFFFFF00CCCCCB00A7A7A500A6A6A400FFFF
      FF00AFAFAE00000000000000000000000000B57C0A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8A9
      AF007D7D820082838900A0A1A6000000000000000000E5F7E90049C566007FCE
      9000AEE1B5006DCC7A006ACA760068C8720068C8740068C875006BC97900ACDF
      B40076C4890033A14200E1F1E3000000000000000000EBEBFB007978E300A3A7
      F300D4DBFD00879AFA007F91F0007A8EF1007F94F8007E92F900768CF800A8B6
      F800636EE3005868CD00E6E8F70000000000AEAEAB00FFFFFF00E3E3E200E4E4
      E300E4E5E400E4E4E300E3E3E200FFFFFF00A7A7A400EBEBEA00FFFFFF00E9E9
      E900CACAC800000000000000000000000000B57E0F00F7E0BE00E7B87000E8BE
      7A00E8BE7A00E8BD7900E8BD7800E8BD7800E7BD7700E8BD7700EABF7900ECBC
      7300FFE6C000BB80080000000000000000000000000000000000BFECCB003DC3
      5C007FCE9000AFE1B70092D89D0077CE830077CE830092D89D00AEE1B50078C8
      8B0027A13B00B5DFBE0000000000000000000000000000000000CFCFF600706F
      E100AAADF200D8DCFD00AEBAFA0091A3FA008B9DFA009CA9FB00BAC7FC00707B
      E9005462CE00C3C9EE000000000000000000AEAEAC00FFFFFF00E0DFDE00E1DF
      DE00E1E0DF00E1DFDE00E0DFDE00FFFFFF00A5A5A300FFFFFF00E8E8E800CBCB
      C90000000000000000000000000000000000B6801300F2D8AE00CD840800D08A
      1300D28E1A00D4922200D5952900D8992F00D99B3600DB9F3E00DEA34500E0A6
      4A00F2D8AC00B78112000000000000000000000000000000000000000000C0ED
      CB004AC8690059C2740096D7A300A5DCAE00A5DCAE0095D6A10050B96A0035B3
      5500B6E3C100000000000000000000000000000000000000000000000000CFCF
      F6007979E2008E93ED00BEC3F800CCD3F900C4CBF900AAB4F4006670E200646E
      D600C6CAEF00000000000000000000000000AFAFAD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9E9E900CACAC9000000
      000000000000000000000000000000000000B8821700EED09C00ECCE9900ECCF
      9A00ECCF9A00ECCE9A00ECCE9900ECCE9800EBCD9800EBCD9700EBCD9700EBCD
      9600EECF9A00B882170000000000000000000000000000000000000000000000
      0000E5F8E9009FE3B00055CB72003BC05C0037BE5A0049C36A0097DCAA00E1F5
      E700000000000000000000000000000000000000000000000000000000000000
      0000EBEBFB00B6B6F0007D7FE2006A6BDE00686BDC007479DE00AFB3EB00E8E9
      F90000000000000000000000000000000000B8B8B600B0B0AD00AEAEAC00AEAE
      AB00AEAEAB00AEAEAB00ADAEAB00AEAEAB00AFAFAD00B7B7B500000000000000
      000000000000000000000000000000000000BE8D2A00B8821700B7811600B781
      1600B7811600B7811600B7811600B7811500B7811500B6811500B6811500B781
      1500B8821700BF8E2D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FC00F800FFFF0000
      FC000000F9FF0000FC000000F1FF000000000000E00F000000000000C0070000
      00000000E003000000000000F1E3000000000003D99B000000000003C78F0000
      00000003C007000000010003E003000000030003F0070000003F0003FF8F0000
      007F0003FF9F000000FF0003FFFF0000FFFFFFFFFFFFFFFF0001FE7FF00FF00F
      0000FC3FE007E00700000003C003C00300000003800180010000000180018001
      0000000080018001000000008001800100000003800180010001000080018001
      0007000080018001000700018001800100070003C003C003000F0003E007E007
      001F0003F00FF00F003F0003FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 296
    Top = 204
    object SQLEditorAction: TAction
      Hint = 'Load in Editor'
      ImageIndex = 0
      OnExecute = SQLEditorActionExecute
    end
    object CustomizeAction: TAction
      Caption = '&Customize Page Control...'
      Hint = 'Customize page control'
      ImageIndex = 1
      OnExecute = CustomizeActionExecute
    end
    object EnableTriggerAction: TAction
      Caption = 'EnableTriggerAction'
      Hint = 'Enable trigger'
      ImageIndex = 2
      OnExecute = EnableTriggerActionExecute
    end
    object DisableTriggerAction: TAction
      Caption = 'DisableTriggerAction'
      Hint = 'Disable trigger'
      ImageIndex = 3
      OnExecute = DisableTriggerActionExecute
    end
    object CopyToClipboardAction: TAction
      Caption = 'CopyToClipboardAction'
      Hint = 'Copy to clipboard'
      ImageIndex = 4
      OnExecute = CopyToClipboardActionExecute
    end
    object SaveToFileAction: TAction
      Caption = 'SaveToFileAction'
      Hint = 'Save to a file'
      ImageIndex = 5
      OnExecute = SaveToFileActionExecute
    end
    object RefreshAction: TAction
      Caption = 'RefreshAction'
      ImageIndex = 6
      OnExecute = RefreshActionExecute
    end
  end
  object SourceQuery: TOraQuery
    SQL.Strings = (
      
        'SELECT   trigger_name "Trigger Name", trigger_type "Type", trigg' +
        'ering_event "Triggering Event", INITCAP(status) "Status", descri' +
        'ption, trigger_body'
      '    FROM all_triggers'
      '   WHERE trigger_name = :p_object_name'
      '     AND owner = :p_owner')
    FetchAll = True
    ReadOnly = True
    AutoCommit = False
    AfterScroll = SourceQueryAfterScroll
    Left = 140
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_object_name'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_owner'
        Value = nil
      end>
  end
  object SourceDataSource: TOraDataSource
    DataSet = SourceQuery
    Left = 208
    Top = 120
  end
  object SynSQLSyn: TSynSQLSyn
    CommentAttri.Foreground = clGreen
    ConditionalCommentAttri.Foreground = clGreen
    DataTypeAttri.Foreground = clRed
    DataTypeAttri.Style = []
    DefaultPackageAttri.Style = [fsBold, fsItalic]
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
    Left = 92
    Top = 184
  end
  object PageControlPopupActionBar: TPopupActionBar
    Images = ImageList
    Left = 78
    Top = 106
    object CustomizePageControl1: TMenuItem
      Action = CustomizeAction
    end
  end
end
