object frmValueListView: TfrmValueListView
  Left = 0
  Top = 0
  ClientHeight = 569
  ClientWidth = 400
  Color = clWhite
  DoubleBuffered = True
  ParentFont = True
  TextHeight = 15
  object pnlMain: TOMultiPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 569
    PanelType = ptVertical
    PanelCollection = <
      item
        Control = pnlTop
        Position = 0.500000000000000000
        Visible = True
        Index = 0
      end
      item
        Control = pnlBottom
        Position = 1.000000000000000000
        Visible = True
        Index = 1
      end>
    MinPosition = 0.020000000000000000
    SplitterSize = 8
    SplitterColor = clScrollBar
    SplitterHoverColor = clScrollBar
    Align = alClient
    AutoSize = True
    BevelEdges = []
    TabOrder = 0
    ExplicitWidth = 394
    ExplicitHeight = 552
    object pnlBottom: TPanel
      Left = 0
      Top = 292
      Width = 400
      Height = 277
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 400
      Height = 284
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
    end
  end
end
