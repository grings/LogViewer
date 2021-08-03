object frmImageView: TfrmImageView
  Left = 0
  Top = 0
  ClientHeight = 909
  ClientWidth = 682
  Color = clWhite
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object edtPixelFormat: TLabeledEdit
    Left = 303
    Top = 3
    Width = 73
    Height = 17
    Alignment = taCenter
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderStyle = bsNone
    EditLabel.Width = 63
    EditLabel.Height = 13
    EditLabel.Caption = 'Pixel format:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    LabelPosition = lpLeft
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object edtHandleType: TLabeledEdit
    Left = 448
    Top = 3
    Width = 73
    Height = 17
    Alignment = taCenter
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderStyle = bsNone
    EditLabel.Width = 65
    EditLabel.Height = 13
    EditLabel.Caption = 'Handle type:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    LabelPosition = lpLeft
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object edtHeight: TLabeledEdit
    Left = 160
    Top = 3
    Width = 73
    Height = 17
    Alignment = taCenter
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderStyle = bsNone
    EditLabel.Width = 38
    EditLabel.Height = 13
    EditLabel.Caption = 'Height:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    LabelPosition = lpLeft
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object edtWidth: TLabeledEdit
    Left = 40
    Top = 3
    Width = 73
    Height = 17
    Alignment = taCenter
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderStyle = bsNone
    EditLabel.Width = 35
    EditLabel.Height = 13
    EditLabel.Caption = 'Width:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    LabelPosition = lpLeft
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object sbxMain: TScrollBox
    Left = 0
    Top = 21
    Width = 682
    Height = 888
    HorzScrollBar.Smooth = True
    HorzScrollBar.Tracking = True
    VertScrollBar.Smooth = True
    VertScrollBar.Tracking = True
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelEdges = []
    BevelInner = bvNone
    BorderStyle = bsNone
    Color = clWhite
    ParentColor = False
    TabOrder = 4
    ExplicitTop = 22
    object imgBitmap: TImage
      Left = 3
      Top = 3
      Width = 676
      Height = 585
      AutoSize = True
      Center = True
      IncrementalDisplay = True
      PopupMenu = ppmMain
      Proportional = True
    end
  end
  object aclMain: TActionList
    Left = 512
    Top = 176
    object actCopy: TAction
      Caption = 'Copy'
      Hint = 'Copy image to clipboard'
      OnExecute = actCopyExecute
    end
  end
  object ppmMain: TPopupMenu
    Left = 432
    Top = 179
    object mniCopy: TMenuItem
      Action = actCopy
      ShortCut = 16451
    end
  end
end
