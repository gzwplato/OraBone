object OutputSynEditFrame: TOutputSynEditFrame
  Left = 0
  Top = 0
  Width = 490
  Height = 366
  Color = clWindow
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 490
    Height = 366
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    Padding.Right = 2
    Padding.Bottom = 2
    ParentBackground = False
    TabOrder = 0
    object SynEdit: TBCSynEdit
      Left = 0
      Top = 0
      Width = 488
      Height = 364
      Align = alClient
      ActiveLineColor = clSkyBlue
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
      Minimap.Font.Charset = DEFAULT_CHARSET
      Minimap.Font.Color = clWindowText
      Minimap.Font.Height = -4
      Minimap.Font.Name = 'Courier New'
      Minimap.Font.Style = []
      Minimap.Width = 0
      Minimap.CharWidth = 2
      Minimap.CharHeight = 4
      Minimap.LinesInWindow = 0
      Options = [eoAutoIndent, eoDragDropEditing, eoEnhanceEndKey, eoGroupUndo, eoScrollPastEol, eoShowScrollHint, eoSmartTabDelete, eoSmartTabs, eoTabsToSpaces, eoTrimTrailingSpaces]
      WantTabs = True
      WordWrap.Enabled = False
      WordWrap.Position = 80
      WordWrap.Style = wwsClientWidth
      FontSmoothing = fsmNone
    end
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
    Left = 78
    Top = 56
  end
end
