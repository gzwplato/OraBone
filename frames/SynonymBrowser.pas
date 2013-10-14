unit SynonymBrowser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Ora, Vcl.Dialogs, BCControls.DBGrid, Vcl.ComCtrls, JvExComCtrls, JvComCtrls,
  DBAccess, MemDS, Vcl.ExtCtrls, Vcl.DBCtrls, JvStringHolder, Vcl.Buttons, ActnList, BCControls.PageControl,
  Vcl.ImgList, SynEditHighlighter, SynHighlighterSQL, SynEdit, Vcl.AppEvnts, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, BCControls.PopupMenu, Vcl.ToolWin, JvToolBar, BCControls.ToolBar,
  DBGridEhGrouping, GridsEh, DBGridEh, Data.DB, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions, DBAxisGridsEh,
  Vcl.StdCtrls;

type
  TSynonymBrowserFrame = class(TFrame)
    SynonymPageControl: TBCPageControl;
    InfoTabSheet: TTabSheet;
    SynonymQuery: TOraQuery;
    SynonymDataSource: TOraDataSource;
    SynonymPanel: TPanel;
    SynonymDBGrid: TBCDBGrid;
    ActionList: TActionList;
    CustomizeAction: TAction;
    PageControlPopupMenu: TBCPopupMenu;
    CustomizePageControl1: TMenuItem;
    ImageList: TImageList;
    InfoButtonPanel: TPanel;
    InfoToolBar: TBCToolBar;
    ToolButton41: TToolButton;
    RefreshAction: TAction;
    CreationAndModificationTimestampLabel: TLabel;
    procedure SynonymPageControlChange(Sender: TObject);
    procedure CustomizeActionExecute(Sender: TObject);
    procedure RefreshActionExecute(Sender: TObject);
  private
    { Private declarations }
    FObjectName: string;
    FSchemaParam: string;
    FSession: TOraSession;
    procedure SetSession(OraSession: TOraSession);
    function GetActivePageQuery: TOraQuery;
    procedure SetObjectFrameAlign(Value: TAlign);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; ParentPanel: TPanel;
      OraSession: TOraSession; SchemaParam: string); reintroduce; overload;
    procedure OpenQuery(RefreshQuery: Boolean);
    property ObjectName: string write FObjectName;
    property SchemaParam: string read FSchemaParam write FSchemaParam;
    property ObjectFrameAlign: TAlign write SetObjectFrameAlign;
  end;

implementation

uses
  Main, DataFilter, CustomizePages, Lib, Options;

{$R *.dfm}

constructor TSynonymBrowserFrame.Create(AOwner: TComponent; ParentPanel: TPanel;
  OraSession: TOraSession; SchemaParam: string);
begin
  inherited Create(AOwner);

  Visible := False;
  SynonymPageControl.TabIndex := 0;
  Parent := ParentPanel;
  SetSession(OraSession);
  FSchemaParam := SchemaParam;
end;

procedure TSynonymBrowserFrame.SynonymPageControlChange(Sender: TObject);
begin
  OpenQuery(False);
end;

procedure TSynonymBrowserFrame.SetSession(OraSession: TOraSession);
var
  i: Integer;
begin
  FSession := OraSession;
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TOraQuery then
      TOraQuery(Components[i]).Session := OraSession;
end;

procedure TSynonymBrowserFrame.CustomizeActionExecute(Sender: TObject);
begin
  CustomizePageControlDialog.Open(SynonymPageControl);
end;

function TSynonymBrowserFrame.GetActivePageQuery: TOraQuery;
begin
  Result := nil;
  if SynonymPageControl.ActivePage = InfoTabSheet then
  begin
    CreationAndModificationTimestampLabel.Caption := '';
    if OptionsContainer.ShowObjectCreationAndModificationTimestamp then
      CreationAndModificationTimestampLabel.Caption := GetCreationAndModificationTimestamp(FSession, FSchemaParam, FObjectName);
    Result := SynonymQuery
  end;
end;

procedure TSynonymBrowserFrame.OpenQuery(RefreshQuery: Boolean);
var
  OraQuery: TOraQuery;
begin
  OraQuery := GetActivePageQuery;

  if Assigned(OraQuery) then
  begin
    if (not RefreshQuery) and OraQuery.Active and (OraQuery.ParamByName('P_OBJECT_NAME').AsWideString = FObjectName) then
      Exit;

    with OraQuery do
    begin
      Close;
      UnPrepare;
      ParamByName('P_OBJECT_NAME').AsWideString := FObjectName;
      ParamByName('P_OWNER').AsWideString := FSchemaParam;
      Prepare;
      Open;
      Application.ProcessMessages;
      Lib.SetGridColumnWidths(SynonymDBGrid);
    end;
  end;
end;

procedure TSynonymBrowserFrame.RefreshActionExecute(Sender: TObject);
begin
  OpenQuery(True);
end;

procedure TSynonymBrowserFrame.SetObjectFrameAlign(Value: TAlign);
begin
  InfoButtonPanel.Align := Value;
end;

end.
