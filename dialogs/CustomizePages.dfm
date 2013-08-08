object CustomizePageControlDialog: TCustomizePageControlDialog
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Customize Page Control'
  ClientHeight = 323
  ClientWidth = 250
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
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 250
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 6
    Padding.Top = 6
    Padding.Right = 6
    Padding.Bottom = 6
    TabOrder = 0
    object DefaultPageLabel: TJvLabel
      Left = 8
      Top = 9
      Width = 64
      Height = 13
      Caption = 'Default Page'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object DefaultPageComboBox: TBCComboBox
      Left = 84
      Top = 6
      Width = 160
      Height = 21
      Align = alRight
      TabOrder = 0
      DeniedKeyStrokes = True
      ReadOnly = False
      FocusOnColor = clInfoBk
      FocusOffColor = clWindow
      UseColoring = True
      DropDownFixedWidth = 0
    end
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 286
    Width = 250
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 6
    Padding.Top = 6
    Padding.Right = 6
    Padding.Bottom = 6
    TabOrder = 1
    object UpBitBtn: TJvBitBtn
      Left = 6
      Top = 6
      Width = 25
      Height = 25
      Action = MoveUpAction
      Align = alLeft
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFCF98087F5B007F5B007F5B007F5B00CF9808FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8C8C8C54545455
        55555454545353538C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF7F5B00F6CB97F6CB97F6CB97FFF3D5CF9808FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF545454C5C5C5C4
        C4C4C4C4C4EEEEEE8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF7F5B00F6CB97F6CB97F6CB97FFF3D5CF9808FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF535353C4C4C4C4
        C4C4C3C3C3EEEEEE8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF7F5B00F6CB97F6CB97F6CB97FFF3D5CF9808FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF545454C4C4C4C4
        C4C4C4C4C4EEEEEE8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF9808
        7F5B007F5B007F5B007F5B00F6CB97F6CB97F6CB97FFF3D57F5B007F5B007F5B
        007F5B007F5B00FF00FFFF00FF8C8C8C535353545454545454535353C4C4C4C5
        C5C5C5C5C5EEEEEE545454535353545454535353545454FF00FFFF00FF7F5B00
        CF9808F6CB97F6CB97F6CB97F6CB97F6CB97F6CB97FFF3D5FFF3D5FFF3D5FFF3
        D5FFF3D5CF9808FF00FFFF00FF5353538C8C8CC3C3C3C4C4C4C4C4C4C4C4C4C4
        C4C4C4C4C4EDEDEDEDEDEDEDEDEDEEEEEEEDEDED8D8D8DFF00FFFF00FFFF00FF
        7F5B00CF9808F6CB97F6CB97F6CB97F6CB97F6CB97F6CB97F6CB97F6CB97FFF3
        D5CF9808FF00FFFF00FFFF00FFFF00FF5353538C8C8CC4C4C4C5C5C5C3C3C3C4
        C4C4C3C3C3C4C4C4C4C4C4C4C4C4EEEEEE8C8C8CFF00FFFF00FFFF00FFFF00FF
        FF00FF7F5B00CF9808F6CB97F6CB97F6CB97F6CB97F6CB97F6CB97FFF3D5CF98
        08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5454548C8C8CC3C3C3C4C4C4C4
        C4C4C3C3C3C3C3C3C4C4C4EDEDED8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF7F5B00CF9808F6CB97F6CB97F6CB97F6CB97FFF3D5CF9808FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5353538C8C8CC4C4C4C4
        C4C4C4C4C4C3C3C3EDEDED8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF7F5B00CF9808F6CB97F6CB97FFF3D5CF9808FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5454548D8D8DC4
        C4C4C3C3C3EEEEEE8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF7F5B00CF9808FFF3D5CF9808FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5454548E
        8E8EEEEEEE8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF7F5B00CF9808FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF53
        53538D8D8DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      TabOrder = 2
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object DownBitBtn: TJvBitBtn
      Left = 34
      Top = 6
      Width = 25
      Height = 25
      Action = MoveDownAction
      Align = alLeft
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF7F5B00CF9808FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF53
        53538D8D8DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF7F5B00CF9808FFF3D5CF9808FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5454548E
        8E8EEEEEEE8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF7F5B00CF9808F6CB97F6CB97FFF3D5CF9808FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5454548D8D8DC4
        C4C4C3C3C3EEEEEE8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF7F5B00CF9808F6CB97F6CB97F6CB97F6CB97FFF3D5CF9808FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5353538C8C8CC4C4C4C4
        C4C4C4C4C4C3C3C3EDEDED8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF7F5B00CF9808F6CB97F6CB97F6CB97F6CB97F6CB97F6CB97FFF3D5CF98
        08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5454548C8C8CC3C3C3C4C4C4C4
        C4C4C3C3C3C3C3C3C4C4C4EDEDED8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FF
        7F5B00CF9808F6CB97F6CB97F6CB97F6CB97F6CB97F6CB97F6CB97F6CB97FFF3
        D5CF9808FF00FFFF00FFFF00FFFF00FF5353538C8C8CC4C4C4C5C5C5C3C3C3C4
        C4C4C3C3C3C4C4C4C4C4C4C4C4C4EEEEEE8C8C8CFF00FFFF00FFFF00FF7F5B00
        CF9808F6CB97F6CB97F6CB97F6CB97F6CB97F6CB97FFF3D5FFF3D5FFF3D5FFF3
        D5FFF3D5CF9808FF00FFFF00FF5353538C8C8CC3C3C3C4C4C4C4C4C4C4C4C4C4
        C4C4C4C4C4EDEDEDEDEDEDEDEDEDEEEEEEEDEDED8D8D8DFF00FFFF00FFCF9808
        7F5B007F5B007F5B007F5B00F6CB97F6CB97F6CB97FFF3D57F5B007F5B007F5B
        007F5B007F5B00FF00FFFF00FF8C8C8C535353545454545454535353C4C4C4C5
        C5C5C5C5C5EEEEEE545454535353545454535353545454FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF7F5B00F6CB97F6CB97F6CB97FFF3D5CF9808FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF545454C4C4C4C4
        C4C4C4C4C4EEEEEE8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF7F5B00F6CB97F6CB97F6CB97FFF3D5CF9808FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF535353C4C4C4C4
        C4C4C3C3C3EEEEEE8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF7F5B00F6CB97F6CB97F6CB97FFF3D5CF9808FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF545454C5C5C5C4
        C4C4C4C4C4EEEEEE8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFCF98087F5B007F5B007F5B007F5B00CF9808FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8C8C8C54545455
        55555454545353538C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      TabOrder = 3
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object OKButton: TButton
      Left = 88
      Top = 6
      Width = 75
      Height = 25
      Action = OKAction
      Align = alRight
      Default = True
      TabOrder = 0
    end
    object CancelButton: TButton
      Left = 169
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object Separator1Panel: TPanel
      Left = 163
      Top = 6
      Width = 6
      Height = 25
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 4
    end
    object Separator2Panel: TPanel
      Left = 31
      Top = 6
      Width = 3
      Height = 25
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 5
    end
  end
  object ClientPanel: TPanel
    Left = 0
    Top = 33
    Width = 250
    Height = 253
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 6
    Padding.Right = 6
    TabOrder = 2
    object ValueListEditor: TValueListEditor
      Left = 6
      Top = 0
      Width = 238
      Height = 253
      Align = alClient
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goRowSelect, goThumbTracking]
      ScrollBars = ssHorizontal
      Strings.Strings = (
        'test=True'
        'test2=False')
      TabOrder = 0
      TitleCaptions.Strings = (
        'Page'
        'Visible')
      OnClick = ValueListEditorClick
      OnDrawCell = ValueListEditorDrawCell
      ColWidths = (
        177
        55)
    end
  end
  object ActionList: TActionList
    Left = 84
    Top = 128
    object MoveUpAction: TAction
      Hint = 'Move selected row up'
      OnExecute = MoveUpActionExecute
    end
    object MoveDownAction: TAction
      Hint = 'Move selected row down'
      OnExecute = MoveDownActionExecute
    end
    object OKAction: TAction
      Caption = '&OK'
      OnExecute = OKActionExecute
    end
  end
end
