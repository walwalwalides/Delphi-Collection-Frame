{ ============================================
  Software Name : 	Frame_TabControl
  ============================================ }
{ ******************************************** }
{ Written By WalWalWalides                     }
{ CopyRight © 2019                             }
{ Email : WalWalWalides@gmail.com              }
{ GitHub :https://github.com/walwalwalides     }
{ ******************************************** }
unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.Actions, Vcl.ActnList, Vcl.Menus;

type
  TfrmMain = class(TForm)
    Tab: TTabControl;
    MMMain: TMainMenu;
    File1: TMenuItem;
    OpenFiles1: TMenuItem;
    OpenFolders1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    View1: TMenuItem;
    Refresh1: TMenuItem;
    A2: TMenuItem;
    actAbout1: TMenuItem;
    actLstMain: TActionList;
    actClear: TAction;
    actSum: TAction;
    actOpenFile: TAction;
    actShowInExplorer: TAction;
    actOpenFolder: TAction;
    actExit: TAction;
    actFrame1: TAction;
    actOption: TAction;
    actAbout: TAction;
    actFrame2: TAction;
    N2: TMenuItem;
    Frame21: TMenuItem;
    procedure ShowFrame(FrameName: string);
    procedure TabChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure actFrame2Execute(Sender: TObject);
    procedure actFrame1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

type
  TFrameClass = class of TFrame;

var
  frmMain: TfrmMain;

implementation

uses
  uAbout;

{$R *.dfm}

procedure TfrmMain.actAboutExecute(Sender: TObject);
var
  f: TfrmAbout;
begin

  if not Assigned(f) then
    Application.CreateForm(TfrmAbout, f);
  f.Position := poMainFormCenter;
  try
    f.ShowModal;
  finally
    FreeAndNil(f);
  end;

end;

procedure TfrmMain.actExitExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.actFrame1Execute(Sender: TObject);
begin
  Tab.TabIndex:=0;
  ShowFrame(Tab.Tabs.Strings[Tab.TabIndex]);
end;

procedure TfrmMain.actFrame2Execute(Sender: TObject);
begin
  Tab.TabIndex:=1;
  ShowFrame(Tab.Tabs.Strings[Tab.TabIndex]);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  self.caption:='Frame_TabControl';
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  ShowFrame(Tab.Tabs.Strings[Tab.TabIndex]);
end;

procedure TfrmMain.ShowFrame(FrameName: string);
var
  Frame: TFrame;
  FrameClass: TFrameClass;
begin
  Frame := FindComponent(FrameName) as TFrame;
  if not Assigned(Frame) then
  begin
    FrameClass := TFrameClass(FindClass('T' + FrameName));
    if (Frame = nil) then
      Frame := FrameClass.Create(Self);
    Frame.Parent := Tab;
    Frame.Align := alClient;
    Frame.Visible := True;
    Frame.Name := FrameName;
  end;
  Frame.BringToFront;
end;

procedure TfrmMain.TabChange(Sender: TObject);
begin
  ShowFrame(Tab.Tabs.Strings[Tab.TabIndex]);
end;

end.
