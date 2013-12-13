program OraBone;

uses
  Forms,
  System.Classes,
  System.SysUtils,
  Vcl.Themes,
  Vcl.Styles,
  Main in 'forms\Main.pas' {MainForm},
  About in 'dialogs\About.pas' {AboutDialog},
  Lib in 'units\Lib.pas',
  ConnectClient in 'dialogs\ConnectClient.pas' {ConnectClientDialog},
  ObjectTree in 'frames\ObjectTree.pas' {ObjectTreeFrame: TFrame},
  SQLEditor in 'frames\SQLEditor.pas' {SQLEditorFrame: TFrame},
  BCDialogs.Replace in '..\..\Common\dialogs\BCDialogs.Replace.pas' {ReplaceDialog},
  BCDialogs.ConfirmReplace in '..\..\Common\dialogs\BCDialogs.ConfirmReplace.pas' {ConfirmReplaceDialog},
  SchemaBrowser in 'frames\SchemaBrowser.pas' {SchemaBrowserFrame: TFrame},
  DataFilter in 'dialogs\DataFilter.pas' {DataFilterDialog},
  ViewBrowser in 'frames\ViewBrowser.pas' {ViewBrowserFrame: TFrame},
  FuncProcBrowser in 'frames\FuncProcBrowser.pas' {FuncProcBrowserFrame: TFrame},
  PackageBrowser in 'frames\PackageBrowser.pas' {PackageBrowserFrame: TFrame},
  TriggerBrowser in 'frames\TriggerBrowser.pas' {TriggerBrowserFrame: TFrame},
  ConstraintBrowser in 'frames\ConstraintBrowser.pas' {ConstraintBrowserFrame: TFrame},
  IndexBrowser in 'frames\IndexBrowser.pas' {IndexBrowserFrame: TFrame},
  SequenceBrowser in 'frames\SequenceBrowser.pas' {SequenceBrowserFrame: TFrame},
  ConnectList in 'dialogs\ConnectList.pas' {ConnectListDialog},
  ConnectDirect in 'dialogs\ConnectDirect.pas' {ConnectDirectDialog},
  SynonymBrowser in 'frames\SynonymBrowser.pas' {SynonymBrowserFrame: TFrame},
  DBLinkBrowser in 'frames\DBLinkBrowser.pas' {DBLinkBrowserFrame: TFrame},
  RecycleBinBrowser in 'frames\RecycleBinBrowser.pas' {RecycleBinBrowserFrame: TFrame},
  BCDialogs.FindInFiles in '..\..\Common\dialogs\BCDialogs.FindInFiles.pas' {FindInFilesDialog},
  Output in 'frames\Output.pas' {OutputFrame: TFrame},
  Parameters in 'dialogs\Parameters.pas' {ParametersDialog},
  SQLHistory in 'frames\SQLHistory.pas' {SQLHistoryFrame: TFrame},
  StringData in 'dialogs\StringData.pas' {StringDataDialog},
  SchemaFilter in 'dialogs\SchemaFilter.pas' {SchemaFilterDialog},
  ExportTableData in 'dialogs\ExportTableData.pas' {ExportTableDataDialog},
  Progress in 'dialogs\Progress.pas' {ProgressDialog},
  DataSort in 'dialogs\DataSort.pas' {DataSortDialog},
  SQLProgress in 'dialogs\SQLProgress.pas' {SQLProgressDialog},
  QueryProgress in 'dialogs\QueryProgress.pas' {QueryProgressDialog},
  ImportTableData in 'dialogs\ImportTableData.pas' {ImportTableDataDialog},
  CustomizePages in 'dialogs\CustomizePages.pas' {CustomizePageControlDialog},
  DropTable in 'dialogs\DropTable.pas' {DropTableDialog},
  AnalyzeTable in 'dialogs\AnalyzeTable.pas' {AnalyzeTableDialog},
  DropUser in 'dialogs\DropUser.pas' {DropUserDialog},
  UserBrowser in 'frames\UserBrowser.pas' {UserBrowserFrame: TFrame},
  SchemaDocument in 'forms\SchemaDocument.pas' {SchemaDocumentForm},
  TableBrowser in 'frames\TableBrowser.pas' {TableBrowserFrame: TFrame},
  CustomizeObjectBrowser in 'dialogs\CustomizeObjectBrowser.pas' {CustomizeObjectBrowserDialog},
  DataModule in 'units\DataModule.pas' {DM: TDataModule},
  Blob in 'dialogs\Blob.pas' {BlobDialog},
  CustomizeTableColumns in 'dialogs\CustomizeTableColumns.pas' {CustomizeTableColumnsDialog},
  CreateObjectDialog in 'dialogs\CreateObjectDialog.pas' {CreateObjectBaseDialog},
  CreateDBLink in 'dialogs\CreateDBLink.pas' {CreateDBLinkDialog},
  CreateConstraint in 'dialogs\CreateConstraint.pas' {CreateConstraintDialog},
  CreateFunction in 'dialogs\CreateFunction.pas' {CreateFunctionDialog},
  CreateIndex in 'dialogs\CreateIndex.pas' {CreateIndexDialog},
  CreatePackage in 'dialogs\CreatePackage.pas' {CreatePackageDialog},
  CreateSequence in 'dialogs\CreateSequence.pas' {CreateSequenceDialog},
  CreateSynonym in 'dialogs\CreateSynonym.pas' {CreateSynonymDialog},
  CreateTable in 'dialogs\CreateTable.pas' {CreateTableDialog},
  CreateTrigger in 'dialogs\CreateTrigger.pas' {CreateTriggerDialog},
  CreateUser in 'dialogs\CreateUser.pas' {CreateUserDialog},
  CreateView in 'dialogs\CreateView.pas' {CreateViewDialog},
  CreateProcedure in 'dialogs\CreateProcedure.pas' {CreateProcedureDialog},
  AlterTable in 'dialogs\AlterTable.pas' {AlterTableDialog},
  AlterView in 'dialogs\AlterView.pas' {AlterViewDialog},
  ObjectSearch in 'forms\ObjectSearch.pas' {ObjectSearhForm},
  GrantPrivileges in 'dialogs\GrantPrivileges.pas' {GrantPrivilegesDialog},
  SchemaCompare in 'forms\SchemaCompare.pas' {SchemaCompareForm},
  BCForms.PrintPreview in '..\..\Common\forms\BCForms.PrintPreview.pas' {PrintPreviewDialog},
  WebBrowser.BaseContainer in '..\..\Common\units\WebBrowser.BaseContainer.pas',
  Diff in '..\..\Common\units\Diff.pas',
  BCCommon.Hash in '..\..\Common\units\BCCommon.Hash.pas',
  WebBrowser.IntfDocHostUIHandler in '..\..\Common\units\WebBrowser.IntfDocHostUIHandler.pas',
  WebBrowser.Container in '..\..\Common\units\WebBrowser.Container.pas',
  ChangeUserPassword in 'dialogs\ChangeUserPassword.pas' {ChangeUserPasswordDialog},
  CustomizeObjectFilters in 'dialogs\CustomizeObjectFilters.pas' {CustomizeObjectFiltersDialog},
  BCCommon.LanguageStrings in '..\..\Common\units\BCCommon.LanguageStrings.pas' {LanguageDataModule},
  BCSQL.Tokenizer in '..\..\Common\units\BCSQL.Tokenizer.pas',
  BCCommon.StyleUtils in '..\..\Common\units\BCCommon.StyleUtils.pas',
  BCDialogs.DownloadURL in '..\..\Common\dialogs\BCDialogs.DownloadURL.pas' {DownloadURLDialog},
  BCFrames.Compare in '..\..\Common\frames\BCFrames.Compare.pas' {CompareFrame: TFrame},
  TNSNamesEditor in 'forms\TNSNamesEditor.pas' {TNSNamesEditorForm},
  BigIni in '..\..\Common\units\BigIni.pas',
  TableSourceOptions in 'dialogs\TableSourceOptions.pas' {TableSourceOptionsDialog},
  BCDialogs.Dlg in '..\..\Common\dialogs\BCDialogs.Dlg.pas' {Dialog},
  HistoryEdit in 'dialogs\HistoryEdit.pas' {HistoryEditDialog},
  BCCommon.Dialogs in '..\..\Common\units\BCCommon.Dialogs.pas',
  BCCommon.FileUtils in '..\..\Common\units\BCCommon.FileUtils.pas',
  SQLEditorTabSheet in 'frames\SQLEditorTabSheet.pas' {SQLEditorTabSheetFrame: TFrame},
  BCCommon.Encoding in '..\..\Common\units\BCCommon.Encoding.pas',
  OutputDataGridTabSheet in 'frames\OutputDataGridTabSheet.pas' {OutputDataGridFrame: TFrame},
  OutputPlanGridTabSheet in 'frames\OutputPlanGridTabSheet.pas' {OutputPlanGridFrame: TFrame},
  OutputListBoxTabSheet in 'frames\OutputListBoxTabSheet.pas' {OutputListBoxFrame: TFrame},
  OutputSynEditTabSheet in 'frames\OutputSynEditTabSheet.pas' {OutputSynEditFrame: TFrame},
  OutputTreeViewTabSheet in 'frames\OutputTreeViewTabSheet.pas' {OutputTreeViewFrame: TFrame},
  BCFrames.OptionsEditorOptions in '..\..\Common\frames\BCFrames.OptionsEditorOptions.pas' {EditorOptionsFrame: TFrame},
  OptionsEditorTabs in '..\..\EditBone\src\frames\OptionsEditorTabs.pas' {EditorTabsFrame: TFrame},
  BCFrames.OptionsMainMenu in '..\..\Common\frames\BCFrames.OptionsMainMenu.pas' {MainMenuFrame: TFrame},
  OptionsOutputTabs in 'frames\OptionsOutputTabs.pas' {OutputTabsFrame: TFrame},
  OptionsDBMSOutput in 'frames\OptionsDBMSOutput.pas' {DBMSOutputFrame: TFrame},
  OptionsSchemaBrowser in 'frames\OptionsSchemaBrowser.pas' {OptionsSchemaBrowserFrame: TFrame},
  OptionsObjectFrame in 'frames\OptionsObjectFrame.pas' {ObjectFrameFrame: TFrame},
  OptionsTimeFormat in 'frames\OptionsTimeFormat.pas' {TimeFormatFrame: TFrame},
  OptionsDateFormat in 'frames\OptionsDateFormat.pas' {DateFormatFrame: TFrame},
  OptionsConnectionTabs in 'frames\OptionsConnectionTabs.pas' {ConnectionTabsFrame: TFrame},
  BCFrames.OptionsOutput in '..\..\Common\frames\BCFrames.OptionsOutput.pas' {OptionsOutputFrame: TFrame},
  OptionsEditorToolBar in 'frames\OptionsEditorToolBar.pas' {EditorToolBarFrame: TFrame},
  BCCommon.LanguageUtils in '..\..\Common\units\BCCommon.LanguageUtils.pas',
  BCCommon.Messages in '..\..\Common\units\BCCommon.Messages.pas',
  BCCommon.StringUtils in '..\..\Common\units\BCCommon.StringUtils.pas',
  Options in 'forms\Options.pas' {OptionsDialog},
  BCCommon.Lib in '..\..\Common\units\BCCommon.Lib.pas',
  BCFrames.OptionsPrint in '..\..\Common\frames\BCFrames.OptionsPrint.pas' {OptionsPrintFrame: TFrame},
  Vcl.Styles.WebBrowser in '..\..\Common\units\Vcl.Styles.WebBrowser.pas',
  BCFrames.OptionsEditorLeftMargin in '..\..\Common\frames\BCFrames.OptionsEditorLeftMargin.pas' {EditorLeftMarginFrame: TFrame},
  BCFrames.OptionsEditorSearch in '..\..\Common\frames\BCFrames.OptionsEditorSearch.pas' {EditorSearchFrame: TFrame},
  BCSQL.Formatter in '..\..\Common\units\BCSQL.Formatter.pas',
  BCFrames.OptionsEditorFont in '..\..\Common\frames\BCFrames.OptionsEditorFont.pas' {EditorFontFrame: TFrame},
  BCFrames.OptionsCompare in '..\..\Common\frames\BCFrames.OptionsCompare.pas' {OptionsCompareFrame: TFrame},
  BCFrames.OptionsEditorCompletionProposal in '..\..\Common\frames\BCFrames.OptionsEditorCompletionProposal.pas' {EditorCompletionProposalFrame: TFrame},
  BCFrames.OptionsEditorRightMargin in '..\..\Common\frames\BCFrames.OptionsEditorRightMargin.pas' {EditorRightMarginFrame: TFrame},
  BCFrames.OptionsStatusBar in '..\..\Common\frames\BCFrames.OptionsStatusBar.pas' {StatusBarFrame: TFrame};

{$R *.res}

var
  StyleFilename: string;
begin
  with TBigIniFile.Create(GetINIFilename) do
  try
    StyleFilename := ReadString('Options', 'StyleFilename', STYLENAME_WINDOWS);
  finally
    Free;
  end;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  if StyleFilename <> 'Windows' then
    TStyleManager.SetStyle(TStyleManager.LoadFromFile(System.SysUtils.Format('%sStyles\%s', [ExtractFilePath(ParamStr(0)), StyleFilename])));
  Application.Title := 'OraBone';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
