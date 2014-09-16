object ConstraintBrowserFrame: TConstraintBrowserFrame
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
  object ConstraintPageControl: TBCPageControl
    Left = 0
    Top = 0
    Width = 451
    Height = 304
    ActivePage = InfoTabSheet
    Align = alClient
    DoubleBuffered = False
    ParentDoubleBuffered = False
    PopupMenu = PageControlPopupActionBar
    TabOrder = 0
    OnChange = ConstraintPageControlChange
    ActivePageCaption = 'Info'
    TabDragDrop = False
    HoldShiftToDragDrop = False
    ShowCloseButton = False
    object InfoTabSheet: TTabSheet
      Caption = 'Info'
      ImageIndex = 6
      object ConstraintSplitter: TSplitter
        Left = 0
        Top = 83
        Width = 443
        Height = 2
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 81
      end
      object InfoPanel: TPanel
        Left = 0
        Top = 0
        Width = 443
        Height = 83
        Align = alClient
        BevelOuter = bvNone
        Padding.Right = 2
        TabOrder = 0
        object ConstraintsDBGrid: TBCDBGrid
          Left = 0
          Top = 0
          Width = 441
          Height = 59
          Align = alClient
          AllowedSelections = [gstRecordBookmarks, gstAll]
          Ctl3D = True
          DataSource = ConstraintsDataSource
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
        object ConstraintButtonPanel: TPanel
          Left = 0
          Top = 59
          Width = 441
          Height = 24
          Align = alBottom
          BevelOuter = bvNone
          Padding.Top = 2
          TabOrder = 1
          object Bevel2: TBevel
            AlignWithMargins = True
            Left = 52
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
          object ConstraintToolBar: TBCToolBar
            Left = 0
            Top = 2
            Width = 46
            Height = 22
            Align = alLeft
            Caption = 'SourceToolBar'
            Images = ImageList
            TabOrder = 0
            object ToolButton11: TToolButton
              Left = 0
              Top = 0
              Action = EnableConstraintAction
            end
            object ToolButton12: TToolButton
              Left = 23
              Top = 0
              Action = DisableConstraintAction
            end
          end
          object RefreshToolbar: TBCToolBar
            Left = 59
            Top = 2
            Width = 23
            Height = 22
            Align = alLeft
            Images = ImageList
            TabOrder = 1
            object ToolButton46: TToolButton
              Left = 0
              Top = 0
              Action = RefreshAction
            end
          end
        end
      end
      object ConstraintBottomPanel: TPanel
        Left = 0
        Top = 85
        Width = 443
        Height = 191
        Align = alBottom
        BevelOuter = bvNone
        Padding.Right = 2
        Padding.Bottom = 1
        TabOrder = 1
        object ConstraintColumnsDBGrid: TBCDBGrid
          Left = 0
          Top = 0
          Width = 441
          Height = 190
          Align = alClient
          AllowedSelections = [gstRecordBookmarks, gstAll]
          Ctl3D = True
          DataSource = ConstraintColumnsDataSource
          DrawMemoText = True
          DynProps = <>
          FooterParams.Color = clWindow
          GridLineParams.VertEmptySpaceStyle = dessNonEh
          IndicatorOptions = [gioShowRowIndicatorEh]
          IndicatorTitle.ShowDropDownSign = True
          IndicatorTitle.TitleButton = True
          IndicatorTitle.UseGlobalMenu = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 112
    Top = 146
    object CustomizeAction: TAction
      Caption = '&Customize Page Control...'
      Hint = 'Customize page control'
      ImageIndex = 0
      OnExecute = CustomizeActionExecute
    end
    object EnableConstraintAction: TAction
      Caption = 'EnableConstraintAction'
      Enabled = False
      ImageIndex = 1
      OnExecute = EnableConstraintActionExecute
    end
    object DisableConstraintAction: TAction
      Caption = 'DisableConstraintAction'
      Enabled = False
      ImageIndex = 2
      OnExecute = DisableConstraintActionExecute
    end
    object RefreshAction: TAction
      Hint = 'Refresh'
      ImageIndex = 3
      OnExecute = RefreshActionExecute
    end
  end
  object PageControlPopupActionBar: TPopupActionBar
    Images = ImageList
    Left = 324
    Top = 68
    object CustomizePageControl1: TMenuItem
      Action = CustomizeAction
    end
  end
  object ConstraintColumnsQuery: TOraQuery
    SQL.Strings = (
      'SELECT a.position "Position",'
      '       a.table_name || '#39'.'#39' || a.column_name "Constraint Column",'
      '       b.table_name || '#39'.'#39' || b.column_name "Ref. Column"'
      '  FROM all_cons_columns a, all_cons_columns b'
      ' WHERE a.constraint_name = :p_constraint_name'
      '   AND a.owner = :p_owner'
      '   AND b.constraint_name (+) = :p_r_constraint_name'
      '   AND b.owner (+) = :p_owner'
      '   AND b.position (+) = a.position'
      'ORDER BY 1')
    FetchAll = True
    ReadOnly = True
    AutoCommit = False
    Left = 208
    Top = 180
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_constraint_name'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_owner'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_r_constraint_name'
        Value = nil
      end>
  end
  object ConstraintColumnsDataSource: TOraDataSource
    DataSet = ConstraintColumnsQuery
    Left = 208
    Top = 244
  end
  object ConstraintsQuery: TOraQuery
    SQL.Strings = (
      'SELECT constraint_name "Constraint Name",'
      
        '       DECODE(constraint_type, '#39'P'#39', '#39'Primary Key'#39', '#39'R'#39', '#39'Referen' +
        'tial Integrity'#39', '#39'C'#39', '#39'Check'#39', '#39'U'#39', '#39'Unique Key'#39') "Type",'
      '       table_name "Table Name",'
      
        '       INITCAP(status) "Status", search_condition "Search Condit' +
        'ion", r_constraint_name, constraint_type'
      '  FROM all_constraints '
      ' WHERE constraint_name = :p_object_name'
      '   AND owner = :p_owner'
      'ORDER BY 1')
    FetchAll = True
    ReadOnly = True
    AutoCommit = False
    AfterScroll = ConstraintsQueryAfterScroll
    Left = 212
    Top = 68
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
  object ConstraintsDataSource: TOraDataSource
    DataSet = ConstraintsQuery
    Left = 208
    Top = 108
  end
  object ImageList: TBCImageList
    Left = 324
    Top = 140
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C18C2600C4912B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003B8D3F00257A2900257729003B853F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000546BC7003F59C0003A53BF004C67C200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0891E00E7A84200EAB05400D9A44800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000318F350042A0520087CA9A009BD3AB009BD2AB0083C796003D974C00307C
      3400000000000000000000000000000000000000000000000000000000000000
      00005566CC003C52CC00757AE8008F92EE008F92EE007178E400334DC100405C
      BE00000000000000000000000000000000000000000000000000000000000000
      000000000000008C4C003EA07300000000000000000000000000000000000000
      000000000000000000000000000000000000BA892600B67E0E00B57C0900B57B
      0900B57B0900B47C0A00BF820F00FFF2D300E2A23900E8AF5100D9A34400B680
      1200B8811200BD8A27000000000000000000000000000000000000000000258F
      2A006DBE8300A8DBB50087CC980066BC7D0064BA7C0086CB9800A5D9B40066B7
      7D00247227000000000000000000000000000000000000000000000000005160
      CD005C65E000A1A6F5007E86EF005B63E900595DE7007D84EE009EA0F400515D
      D7003452BA000000000000000000000000000000000000000000000000000000
      00000088470018C8910000874600000000000000000000000000000000000000
      000000000000000000000000000000000000B67E0E00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CFAD6800CA850900FFF0CE00E1A13500E9AC4800D5B4
      7100FFFFFF00BD810A000000000000000000000000000000000033A1440072C2
      8700A8DBB20060BC77005CBA730059B8700059B56F0058B56F005BB77400A5D9
      B30069B87F00317F3500000000000000000000000000000000006571D400616B
      E300A1ACF500545FEC00505CEA004D59E9004E59E6004C56E6005056E6009EA2
      F4005460D600405CBF0000000000000000000000000000000000000000000088
      46003CCE9E0000DCA20000BC7F00009B5C00009D5F0000884700008948002497
      610000000000000000000000000000000000B57B0900FFFFFF00E5D5CB00E5D6
      CA00E5D5C900F9FCFF00FBFFFF00CBA86200CA830500FFEDC500DBB16C00B5B8
      C1006A6A6E006F6F750087898D000000000000000000000000004CB06400AADD
      B40064C179005FBE710075C58500D4ECD9008ACD990056B66C0058B56E005CB7
      7400A6DAB400419B4E00000000000000000000000000000000004B56DB00A2AB
      F6005664F0005266EE004D59E9004D59E9004D59E9004D59E9004C58E600525A
      E6009FA3F5003450C40000000000000000000000000000000000008C4A0061D8
      B50000D49E0000D29C0000D5A1005ADEC7005ADEC7005ADEC7005ADEC70000C2
      8C0000905000000000000000000000000000B47B0800FFFFFF00E3D1C200E4D2
      C300E4D1C000F1F3F400F2F4F600F4F9FF00C9A35900E0C28900D9DBE300CECD
      D000D3D4D400EEEEEF00ECEAED007C7B7A00000000003FB55D0091D29F008DD4
      9A0064C3740079C98700F2FAF400FFFFFF00FDFEFD0086CB960057B76D005BB9
      720085CC970087C79A003B8B3F0000000000000000007378DD00818CEE007E91
      F7005D73F3004D59E9004D59E9004D59E9004D59E9004D59E9004D59E9004F5B
      E9007B83F000757BE2004C64C400000000000000000000000000000000000087
      440086EBDB0000C69F0000B1800000874500008D4D00009B6000009A5F0000B2
      800000B6890044A277000000000000000000B47B0900FFFFFF00E0CCBB00E1CE
      BC00E1CCB900ECEDEE00EBEBEB00ECECEE00EEF0F400F2F3F700A7A6A700DBD9
      DA00D1CFCF00767474007C7B7C00817F7F000000000027B04900A6DCAF0070CA
      7F0073CA8000F0F9F100FFFFFF00EBF7ED00FFFFFF00FBFDFC0088CD96005BB9
      710067BE7D00A0D7AF00237F260000000000000000006569DB00A1ABF7007086
      F8006882F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D59
      E9005C66EA00969CF1003956BE00000000000000000000000000000000000000
      000000874200A3EEED0000884500000000000000000000000000000000003CA6
      750000A17100009153000000000000000000B57B0900FFFFFF00DDC6B300DEC9
      B500DEC7B200E6E7E800E5E4E400E5E4E400E7E6E600EDECEB0079777500D9D7
      D600C5C2C2007B7B7D000000000000000000000000002EB75100A7DDB10072CC
      800066C77300B0E1B700D2EED60063C17000B8E3BF00FFFFFF00FBFDFC008CD0
      990069C17E00A1D7AE00238426000000000000000000696EDC00AFB9F9007F93
      FA007085F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D59
      E9005E6AEE00969DF1003D55C000000000000000000000000000008E4E000000
      000000000000008B480058B48900000000000000000046A27800008B4A000000
      000000000000008E4E000000000000000000B57B0900FFFFFF00DAC1AA00DCC4
      AD00DCC3AA00DFE0E100DEDEDD00DEDDDC00DFDEDD00E5E4E30076737000E3E1
      E200B3B1AF008A8787008281830087858500000000004BC56C0095D7A10091D7
      9B0069C9760064C66F0061C46E0061C36F0061C26F00B9E4C000FFFFFF00E3F4
      E6008BD199008BCE9D003C993F0000000000000000007C7FE300A5AFF5009DAB
      FA00778CF000545FEC00545FEC00545FEC00545FEC00545FEC00545FEC006377
      F200818EF400787FE900566BC9000000000000000000000000000093530000AE
      7000309A6800000000000000000000000000000000000088470018E8B4000086
      450000000000000000000000000000000000B57B0900FFFFFF00D4B89E00D5BA
      A000D6B99E00D5D6D800D5D5D500D5D4D400D6D5D500D9D9D900A3A2A000BDBB
      BB00F4F4F400E5E5E600C4C4C50089878500000000000000000057BF7000AFE1
      B7006DCC7A0068C8720065C7700063C56E0062C46E0063C47100B6E3BE006FC7
      7E00ACDFB50048A95E00000000000000000000000000000000007D83EA00CDD4
      FC008B9DFA007E93F700758AEE006C84F6006C84F6006C84F6006C84F6006379
      F300A4AFF8003E4FD0000000000000000000000000000000000055B2880000C3
      870000BB7E00009D5F00009F6000008847000087450000BC800000DBA0003CE9
      BD0000874500000000000000000000000000B57C0A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8A9
      AF007D7D820082838900A0A1A60000000000000000000000000049C566007FCE
      9000AEE1B5006DCC7A006ACA760068C8720068C8740068C875006BC97900ACDF
      B40076C4890033A14200000000000000000000000000000000007978E300A3A7
      F300D4DBFD00879AFA007F91F0007A8EF1007F94F8007E92F900768CF800A8B6
      F800636EE3005868CD000000000000000000000000000000000000000000008F
      500000C48C0000DBA9005ADEC7005ADEC7005ADEC70000D4A10000D19C0000D3
      9E0061DBB700008C4A000000000000000000B57E0F00F7E0BE00E7B87000E8BE
      7A00E8BE7A00E8BD7900E8BD7800E8BD7800E7BD7700E8BD7700EABF7900ECBC
      7300FFE6C000BB80080000000000000000000000000000000000000000003DC3
      5C007FCE9000AFE1B70092D89D0077CE830077CE830092D89D00AEE1B50078C8
      8B0027A13B00000000000000000000000000000000000000000000000000706F
      E100AAADF200D8DCFD00AEBAFA0091A3FA008B9DFA009CA9FB00BAC7FC00707B
      E9005462CE000000000000000000000000000000000000000000000000000000
      00002D9F6A00008A490000894800008948000087450000B1800000C7A00086DC
      C50000874400000000000000000000000000B6801300F2D8AE00CD840800D08A
      1300D28E1A00D4922200D5952900D8992F00D99B3600DB9F3E00DEA34500E0A6
      4A00F2D8AC00B781120000000000000000000000000000000000000000000000
      00004AC8690059C2740096D7A300A5DCAE00A5DCAE0095D6A10050B96A0035B3
      5500000000000000000000000000000000000000000000000000000000000000
      00007979E2008E93ED00BEC3F800CCD3F900C4CBF900AAB4F4006670E200646E
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000894600A3E4DA000087
      440000000000000000000000000000000000B8821700EED09C00ECCE9900ECCF
      9A00ECCF9A00ECCE9A00ECCE9900ECCE9800EBCD9800EBCD9700EBCD9700EBCD
      9600EECF9A00B882170000000000000000000000000000000000000000000000
      0000000000000000000055CB72003BC05C0037BE5A0049C36A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007D7FE2006A6BDE00686BDC007479DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004EB08300008C49000000
      000000000000000000000000000000000000BE8D2A00B8821700B7811600B781
      1600B7811600B7811600B7811600B7811500B7811500B6811500B6811500B781
      1500B8821700BF8E2D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFE7FFC3FFC3FFFFF
      FC3FF00FF00FF9FF0003E007E007F1FF0003C003C003E00F0001C003C003C007
      000080018001E003000080018001F1E3000380018001D99B000080018001C78F
      0000C003C003C0070001C003C003E0030003E007E007F0070003F00FF00FFF8F
      0003FC3FFC3FFF9F0003FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
