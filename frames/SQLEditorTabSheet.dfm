object SQLEditorTabSheetFrame: TSQLEditorTabSheetFrame
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 240
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 1
    Padding.Top = 1
    Padding.Bottom = 2
    ParentColor = True
    TabOrder = 0
    ExplicitLeft = 176
    ExplicitTop = 70
    ExplicitWidth = 185
    ExplicitHeight = 41
    object OraSynEdit: TBCOraSynEdit
      Left = 1
      Top = 1
      Width = 319
      Height = 237
      Align = alClient
      ActiveLineColor = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      TabOrder = 0
      Gutter.AutoSize = True
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -11
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Gutter.ShowLineNumbers = True
      Lines.Strings = (
        'OraSynEdit')
      Options = [eoAltSetsColumnMode, eoAutoIndent, eoDragDropEditing, eoEnhanceEndKey, eoGroupUndo, eoScrollPastEol, eoShowScrollHint, eoSmartTabDelete, eoSmartTabs, eoSpecialLineDefaultFg, eoTabsToSpaces, eoTrimTrailingSpaces]
      WantTabs = True
      ExplicitLeft = 144
      ExplicitTop = 94
      ExplicitWidth = 100
      ExplicitHeight = 41
    end
  end
end