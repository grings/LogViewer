program LogViewer;

uses
  Forms,
  VirtualTrees,
  LogViewer.MainForm in 'LogViewer.MainForm.pas' {frmMain},
  DDuce.Factories in '..\..\libraries\dduce\Source\Modules\DDuce.Factories.pas',
  DDuce.FormSettings in '..\..\libraries\dduce\Source\Modules\DDuce.FormSettings.pas',
  DDuce.Editor.ActionList.Templates in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.ActionList.Templates.pas',
  DDuce.Editor.ActionList.ToolView in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.ActionList.ToolView.pas' {frmActionListView},
  DDuce.Editor.AlignLines.Settings in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.AlignLines.Settings.pas',
  DDuce.Editor.AlignLines.ToolView in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.AlignLines.ToolView.pas',
  DDuce.Editor.CharacterMap.ToolView in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.CharacterMap.ToolView.pas',
  DDuce.Editor.Codeformatters in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Codeformatters.pas',
  DDuce.Editor.Codeformatters.Sql in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Codeformatters.Sql.pas',
  DDuce.Editor.Codetags in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Codetags.pas',
  DDuce.Editor.Colors.Settings in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Colors.Settings.pas',
  DDuce.Editor.Commands in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Commands.pas',
  DDuce.Editor.Commentstripper in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Commentstripper.pas',
  DDuce.Editor.Events in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Events.pas',
  DDuce.Editor.Factories.Manager in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Factories.Manager.pas',
  DDuce.Editor.Factories.Menus in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Factories.Menus.pas',
  DDuce.Editor.Factories in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Factories.pas',
  DDuce.Editor.Factories.Settings in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Factories.Settings.pas',
  DDuce.Editor.Factories.Toolbars in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Factories.Toolbars.pas',
  DDuce.Editor.Factories.Views in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Factories.Views.pas',
  DDuce.Editor.Filter.Toolview in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Filter.Toolview.pas',
  DDuce.Editor.Highlighters in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Highlighters.pas',
  DDuce.Editor.Interfaces in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Interfaces.pas',
  DDuce.Editor.Manager in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Manager.pas' {dmEditorManager: TDataModule},
  DDuce.Editor.Options.Settings in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Options.Settings.pas',
  DDuce.Editor.Resources in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Resources.pas' {ResourcesDataModule: TDataModule},
  DDuce.Editor.Search.Data in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Search.Data.pas',
  DDuce.Editor.Search.Engine in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Search.Engine.pas',
  DDuce.Editor.Search.Engine.Settings in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Search.Engine.Settings.pas',
  DDuce.Editor.Search.Templates in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Search.Templates.pas',
  DDuce.Editor.Search.Toolview in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Search.Toolview.pas',
  DDuce.Editor.Selectioninfo.ToolView in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Selectioninfo.ToolView.pas' {frmSelectionInfo},
  DDuce.Editor.Settings in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Settings.pas',
  DDuce.Editor.Sortstrings.Settings in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Sortstrings.Settings.pas',
  DDuce.Editor.Sortstrings.Toolview in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Sortstrings.Toolview.pas',
  DDuce.Editor.Test.ToolView in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Test.ToolView.pas',
  DDuce.Editor.Tools.Settings in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Tools.Settings.pas',
  DDuce.Editor.ToolView.Base in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.ToolView.Base.pas' {CustomEditorToolView},
  DDuce.Editor.ToolView.Manager in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.ToolView.Manager.pas',
  DDuce.Editor.Types in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Types.pas',
  DDuce.Editor.Utils in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Utils.pas',
  DDuce.Editor.View in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.View.pas' {EditorView},
  DDuce.Editor.Viewlist.Data in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Viewlist.Data.pas',
  DDuce.Editor.Viewlist.ToolView in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Viewlist.ToolView.pas' {frmViewList},
  DDuce.DynamicRecord in '..\..\libraries\dduce\Source\DDuce.DynamicRecord.pas',
  DDuce.RandomData in '..\..\libraries\dduce\Source\DDuce.RandomData.pas',
  DDuce.Reflect in '..\..\libraries\dduce\Source\DDuce.Reflect.pas',
  DDuce.ScopedReference in '..\..\libraries\dduce\Source\DDuce.ScopedReference.pas',
  DSharp.Bindings.Collections in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Bindings.Collections.pas',
  DSharp.Bindings.CollectionView in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Bindings.CollectionView.pas',
  DSharp.Bindings.Notifications in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Bindings.Notifications.pas',
  DSharp.Collections.ObservableCollection in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Collections.ObservableCollection.pas',
  DSharp.Core.Collections in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.Collections.pas',
  DSharp.Core.DataTemplates.Default in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.DataTemplates.Default.pas',
  DSharp.Core.DataTemplates in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.DataTemplates.pas',
  DSharp.Core.DependencyProperty in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.DependencyProperty.pas',
  DSharp.Core.Expressions in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.Expressions.pas',
  DSharp.Core.Framework in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.Framework.pas',
  DSharp.Core.PropertyChangedBase in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.PropertyChangedBase.pas',
  DSharp.Core.Reflection in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.Reflection.pas',
  DSharp.Core.Utils in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.Utils.pas',
  DSharp.Windows.ColumnDefinitions.ControlTemplate in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Windows.ColumnDefinitions.ControlTemplate.pas',
  DSharp.Windows.ColumnDefinitions in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Windows.ColumnDefinitions.pas',
  DSharp.Windows.ControlTemplates in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Windows.ControlTemplates.pas',
  DSharp.Windows.CustomPresenter in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Windows.CustomPresenter.pas',
  DSharp.Windows.CustomPresenter.Types in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Windows.CustomPresenter.Types.pas',
  DSharp.Windows.TreeViewPresenter in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Windows.TreeViewPresenter.pas',
  DDuce.Components.DBGridView in '..\..\libraries\dduce\Source\Components\DDuce.Components.DBGridView.pas',
  DDuce.Components.Factories in '..\..\libraries\dduce\Source\Components\DDuce.Components.Factories.pas',
  DDuce.Components.GridView in '..\..\libraries\dduce\Source\Components\DDuce.Components.GridView.pas',
  DDuce.Components.Inspector in '..\..\libraries\dduce\Source\Components\DDuce.Components.Inspector.pas',
  DDuce.Components.LogTree in '..\..\libraries\dduce\Source\Components\DDuce.Components.LogTree.pas',
  DDuce.Components.PropertyInspector.CollectionEditor in '..\..\libraries\dduce\Source\Components\DDuce.Components.PropertyInspector.CollectionEditor.pas' {frmCollectionEditor},
  DDuce.Components.PropertyInspector in '..\..\libraries\dduce\Source\Components\DDuce.Components.PropertyInspector.pas',
  DDuce.Components.PropertyInspector.StringsEditor in '..\..\libraries\dduce\Source\Components\DDuce.Components.PropertyInspector.StringsEditor.pas' {StringsEditorDialog},
  DDuce.Components.XMLTree.Editors in '..\..\libraries\dduce\Source\Components\DDuce.Components.XMLTree.Editors.pas',
  DDuce.Components.XMLTree.NodeAttributes in '..\..\libraries\dduce\Source\Components\DDuce.Components.XMLTree.NodeAttributes.pas',
  DDuce.Components.XMLTree in '..\..\libraries\dduce\Source\Components\DDuce.Components.XMLTree.pas',
  DDuce.WinIPC.Client in '..\..\libraries\dduce\Source\DDuce.WinIPC.Client.pas',
  DDuce.Logger.Channels.Base in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Channels.Base.pas',
  DDuce.Logger.Channels.LogFile in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Channels.LogFile.pas',
  DDuce.Logger.Channels.WinIPC in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Channels.WinIPC.pas',
  DDuce.Logger.Channels.ZeroMQ in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Channels.ZeroMQ.pas',
  DDuce.Logger in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.pas',
  DDuce.Logger.Channels in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Channels.pas',
  DDuce.Logger.Interfaces in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Interfaces.pas',
  DDuce.Logger.Factories in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Factories.pas',
  LogViewer.WatchList in 'LogViewer.WatchList.pas',
  DDuce.WinIPC.Server in '..\..\libraries\dduce\Source\DDuce.WinIPC.Server.pas',
  ZeroMQ.API in 'ZeroMQ.API.pas',
  ZeroMQ in 'ZeroMQ.pas',
  DDuce.Logger.Base in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Base.pas',
  DDuce.Logger.Channels.WinODS in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Channels.WinODS.pas',
  JsonDataObjects in '..\..\libraries\JsonDataObjects\Source\JsonDataObjects.pas',
  LogViewer.Settings in 'LogViewer.Settings.pas';

{$R *.res}

begin
  Application.Title := 'Log viewer';
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

