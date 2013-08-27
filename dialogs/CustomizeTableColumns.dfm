object CustomizeTableColumnsDialog: TCustomizeTableColumnsDialog
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Customize Table Columns'
  ClientHeight = 333
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object BottomPanel: TPanel
    Left = 0
    Top = 296
    Width = 249
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 6
    Padding.Top = 6
    Padding.Right = 6
    Padding.Bottom = 6
    TabOrder = 0
    object OKButton: TButton
      Left = 87
      Top = 6
      Width = 75
      Height = 25
      Action = OKAction
      Align = alRight
      Default = True
      TabOrder = 0
    end
    object CancelButton: TButton
      Left = 168
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object Separator1Panel: TPanel
      Left = 162
      Top = 6
      Width = 6
      Height = 25
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
    end
    object Separator2Panel: TPanel
      Left = 52
      Top = 6
      Width = 3
      Height = 25
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitLeft = 31
    end
    object ToolBar: TBCToolBar
      Left = 6
      Top = 6
      Width = 46
      Height = 25
      Align = alLeft
      AutoSize = True
      Images = ImageList
      TabOrder = 4
      ExplicitLeft = 10
      ExplicitTop = 10
      object MoveUpToolButton: TToolButton
        Left = 0
        Top = 0
        Action = MoveUpAction
      end
      object MoveDownToolButton: TToolButton
        Left = 23
        Top = 0
        Action = MoveDownAction
      end
    end
  end
  object ClientPanel: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 296
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 6
    Padding.Top = 6
    Padding.Right = 6
    TabOrder = 1
    object ValueListEditor: TValueListEditor
      Left = 6
      Top = 6
      Width = 237
      Height = 290
      Align = alClient
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goRowSelect, goThumbTracking]
      Strings.Strings = (
        '=')
      TabOrder = 0
      TitleCaptions.Strings = (
        'Column'
        'Visible')
      OnClick = ValueListEditorClick
      OnDrawCell = ValueListEditorDrawCell
      ColWidths = (
        155
        76)
    end
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 84
    Top = 128
    object MoveUpAction: TAction
      Hint = 'Move selected row up'
      ImageIndex = 0
      OnExecute = MoveUpActionExecute
    end
    object MoveDownAction: TAction
      Hint = 'Move selected row down'
      ImageIndex = 1
      OnExecute = MoveDownActionExecute
    end
    object OKAction: TAction
      Caption = '&OK'
      OnExecute = OKActionExecute
    end
  end
  object ColumnsQuery: TOraQuery
    SQL.Strings = (
      'SELECT   column_name'
      '    FROM all_tab_columns '
      '   WHERE table_name = :p_table_name'
      '     AND owner = :p_owner'
      'ORDER BY column_id')
    FetchAll = True
    ReadOnly = True
    AutoCommit = False
    Left = 40
    Top = 206
    ParamData = <
      item
        DataType = ftString
        Name = 'p_table_name'
        Value = 'INV_LASKU'
      end
      item
        DataType = ftUnknown
        Name = 'p_owner'
        Value = nil
      end>
  end
  object ImageList: TBCImageList
    Left = 146
    Top = 170
    Bitmap = {
      494C010102000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008247000089490000874700008747000087470000874700008949000082
      4700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000008E4E000088480000884800008E4E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008949000EE9AC0000E2A10000E1A10000E1A10000E2A1000EE9AC000089
      4900000000000000000000000000000000000000000000000000000000000000
      000000000000008E4E0000C2810000E4A30000E4A30000C28100008E4E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000087460025E3B10000D79C0000D69B0000D69B0000D79C0025E3B1000087
      4600000000000000000000000000000000000000000000000000000000000000
      0000008E4E0000C07F0000DF9F0000DC9B0000DC9B0000DF9F0000C07F00008E
      4E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008746003DE3BA0000D19A0000D19A0000D19A0000D19A003DE3BA000087
      430000000000000000000000000000000000000000000000000000000000008E
      4E0000BE7F0000DC9F0000D99B0000D7990000D7990000D99B0000DC9F0000BE
      7F00008E4E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000087440054E4C30000CE990000CE9A0000CE9A0000CE990054E4C3000087
      4400000000000000000000000000000000000000000000000000008E4E0000BE
      800000DC9F0000D89B0000D6990000D6990000D6990000D6990000D89B0000DC
      9F0000BE8000008E4E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008E4D00008C4A000089
      450000833E006FE5CC0000CA990000CA9A0000CA9A0000CA99006FE5CC000083
      3E0000894500008C4A00008E4D000000000000000000008E4E0000C2870000E1
      A70000DBA10000D79C0000D59A0000D59A0000D59A0000D59A0000D79C0000DB
      A10000E1A70000C28700008E4E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008C4B0000B7870089EF
      DE0000C99E0000C69A0000C69A0000C69B0000C69B0000C69A0000C69A0000C9
      9E0089EFDE0000B78700008C4B000000000000000000008E4E00008B4B000088
      4700008240003CE1B80000D0990000D09A0000D09A0000D099003CE1B8000082
      400000884700008B4B00008E4E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000089470000AF
      7F009CECDF0000C0980000C1990000C29B0000C29B0000C1990000C098009CEC
      DF0000AF7F000089470000000000000000000000000000000000000000000000
      0000008744005EE3C70000CA980000CA990000CA990000CA98005EE3C7000087
      4400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000087
      470000AB7D00A1EBE00000BC980000BC990000BC990000BC9800A1EBE00000AB
      7D00008846000000000000000000000000000000000000000000000000000000
      0000008743007EE7D50000C2980000C39A0000C39A0000C298007EE7D5000087
      4300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000087460000A97D00A1E9E10000B8990000B89900A1E9E10000A97D000088
      4600000000000000000000000000000000000000000000000000000000000000
      00000088430099EBE10000BB970000BC980000BC980000BB970099EBE1000088
      4300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000088460000A67E009FE8E4009FE8E40000A67E00008946000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008A460074E0D80073DCD20075DCD20075DCD20073DCD20074E0D800008A
      4600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000008A49000089450000894500008A4900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008E4E00008A460000894400008844000088440000894400008A4600008E
      4E00000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      F00FFC3F00000000F00FF81F00000000F00FF00F00000000F00FE00700000000
      F00FC0030000000080018001000000008001800100000000C003F00F00000000
      E007F00F00000000F00FF00F00000000F81FF00F00000000FC3FF00F00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
