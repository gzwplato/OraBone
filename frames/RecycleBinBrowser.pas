unit RecycleBinBrowser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Ora, Vcl.Dialogs, BCDBGrid, Vcl.ComCtrls, JvExComCtrls, JvComCtrls,
  DBAccess, MemDS, Vcl.ExtCtrls, Vcl.DBCtrls, JvStringHolder, Vcl.Buttons, Vcl.ActnList,
  BCPageControl, Vcl.ImgList, SynEditHighlighter, SynHighlighterSQL, SynEdit, Vcl.AppEvnts,
  Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, BCPopupMenu, Vcl.ToolWin, JvToolBar,
  BCToolBar, DBGridEhGrouping, GridsEh, DBGridEh, Data.DB;

type
  TRecycleBinBrowserFrame = class(TFrame)
    RecycleBinPageControl: TBCPageControl;
    InfoTabSheet: TTabSheet;
    RecycleBinPanel: TPanel;
    RecycleBinQuery: TOraQuery;
    RecycleBinDataSource: TOraDataSource;
    RecycleBinDBGrid: TBCDBGrid;
    ActionList: TActionList;
    CustomizeAction: TAction;
    PageControlPopupMenu: TBCPopupMenu;
    CustomizePageControl1: TMenuItem;
    ImageList: TImageList;
    InfoButtonPanel: TPanel;
    InfoToolBar: TBCToolBar;
    ToolButton41: TToolButton;
    RefreshAction: TAction;
    procedure RecycleBinPageControlChange(Sender: TObject);
    procedure CustomizeActionExecute(Sender: TObject);
    procedure RefreshActionExecute(Sender: TObject);
  private
    { Private declarations }
    FObjectName, FObjectType: string;
    procedure SetSession(OraSession: TOraSession);
    function GetActivePageQuery: TOraQuery;
    procedure SetObjectFrameAlign(Value: TAlign);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; ParentPanel: TPanel;
      OraSession: TOraSession); reintroduce; overload;
    procedure OpenQuery(RefreshQuery: Boolean);
    property ObjectName: string read FObjectName write FObjectName;
    property ObjectType: string read FObjectType;
    property ObjectFrameAlign: TAlign write SetObjectFrameAlign;
  end;

implementation

uses
  Common, Main, DataFilter, CustomizePages, Lib;

const
  OBJECT_TYPE = 'Object Type';

{$R *.dfm}

constructor TRecycleBinBrowserFrame.Create(AOwner: TComponent; ParentPanel: TPanel;
  OraSession: TOraSession);
begin
  inherited Create(AOwner);

  Visible := False;
  RecycleBinPageControl.TabIndex := 0;
  Parent := ParentPanel;
  SetSession(OraSession);
end;

procedure TRecycleBinBrowserFrame.RecycleBinPageControlChange(Sender: TObject);
begin
  OpenQuery(False);
end;

procedure TRecycleBinBrowserFrame.RefreshActionExecute(Sender: TObject);
begin
  OpenQuery(True);
end;

procedure TRecycleBinBrowserFrame.SetSession(OraSession: TOraSession);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TOraQuery then
      TOraQuery(Components[i]).Session := OraSession;
end;

procedure TRecycleBinBrowserFrame.CustomizeActionExecute(Sender: TObject);
begin
  CustomizePageControlDialog.Open(RecycleBinPageControl);
end;

function TRecycleBinBrowserFrame.GetActivePageQuery: TOraQuery;
begin
  Result := nil;
  if RecycleBinPageControl.ActivePage = InfoTabSheet then
    Result := RecycleBinQuery
end;

procedure TRecycleBinBrowserFrame.OpenQuery(RefreshQuery: Boolean);
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
      Prepare;
      Open;
      Application.ProcessMessages;
      Lib.SetGridColumnWidths(RecycleBinDBGrid);
      FObjectType := FieldByName(OBJECT_TYPE).AsWideString;
    end;
  end;
end;

procedure TRecycleBinBrowserFrame.SetObjectFrameAlign(Value: TAlign);
begin
  InfoButtonPanel.Align := Value;
end;

end.
