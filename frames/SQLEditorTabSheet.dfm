object SQLEditorTabSheetFrame: TSQLEditorTabSheetFrame
  Left = 0
  Top = 0
  Width = 451
  Height = 302
  Align = alClient
  TabOrder = 0
  object SynEditSplitter: TSplitter
    Left = 247
    Top = 0
    Width = 4
    Height = 302
    Align = alRight
    Color = clBtnFace
    ParentColor = False
    Visible = False
  end
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 247
    Height = 302
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 1
    Padding.Top = 1
    Padding.Bottom = 2
    ParentColor = True
    TabOrder = 0
    object OraSynEdit: TBCOraSynEdit
      Left = 1
      Top = 1
      Width = 246
      Height = 299
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
      OnKeyDown = OraSynEditKeyDown
      OnKeyUp = OraSynEditKeyUp
      OnMouseDown = OraSynEditMouseDown
      OnMouseMove = OraSynEditMouseMove
      OnMouseWheel = OraSynEditMouseWheel
      Gutter.ShowLineModified = False
      Gutter.LineModifiedColor = clYellow
      Gutter.LineNormalColor = clLime
      Gutter.AutoSize = True
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -11
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Gutter.LeftOffsetColor = clNone
      Gutter.RightOffsetColor = clNone
      Gutter.ShowLineNumbers = True
      Options = [eoAltSetsColumnMode, eoAutoIndent, eoDragDropEditing, eoEnhanceEndKey, eoGroupUndo, eoScrollPastEol, eoShowScrollHint, eoSpecialLineDefaultFg, eoTabsToSpaces, eoTrimTrailingSpaces]
      WantTabs = True
      WordWrap.Enabled = False
      WordWrap.Position = 80
      WordWrap.Style = wwsClientWidth
      OnGutterClick = OraSynEditGutterClick
      FontSmoothing = fsmNone
    end
  end
  object OraSynEditMiniMap: TBCOraSynEdit
    Left = 251
    Top = 0
    Width = 200
    Height = 302
    Align = alRight
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
    Font.Height = -1
    Font.Name = 'Courier New'
    Font.Style = []
    TabOrder = 1
    Visible = False
    OnClick = OraSynEditMiniMapClick
    OnKeyDown = OraSynEditMiniMapKeyDown
    OnKeyUp = OraSynEditMiniMapKeyUp
    OnMouseDown = OraSynEditMiniMapMouseDown
    OnMouseMove = OraSynEditMiniMapMouseMove
    OnMouseWheel = OraSynEditMiniMapMouseWheel
    Gutter.ShowLineModified = False
    Gutter.LineModifiedColor = clYellow
    Gutter.LineNormalColor = clLime
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Gutter.LeftOffsetColor = clNone
    Gutter.RightOffsetColor = clNone
    Gutter.Visible = False
    Gutter.Width = 0
    Options = [eoAutoIndent, eoDragDropEditing, eoEnhanceEndKey, eoGroupUndo, eoNoCaret, eoScrollPastEol, eoSpecialLineDefaultFg, eoTabsToSpaces, eoTrimTrailingSpaces]
    ReadOnly = True
    WordWrap.Enabled = False
    WordWrap.Position = 80
    WordWrap.Style = wwsClientWidth
    OnPaint = OraSynEditMiniMapPaint
    OnScroll = OraSynEditMiniMapScroll
    FontSmoothing = fsmNone
  end
  object SynCompletionProposal: TSynCompletionProposal
    Options = [scoLimitToMatchedText, scoUsePrettyText, scoCompleteWithTab, scoCompleteWithEnter]
    ItemList.Strings = (
      'Test'
      'Char'
      'Character')
    Width = 160
    EndOfTokenChr = '()[]. '
    TriggerChars = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBtnText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <>
    Resizeable = False
    Margin = 4
    OnExecute = SynCompletionProposalExecute
    ShortCut = 16416
    Editor = OraSynEdit
    Left = 112
    Top = 88
  end
end
