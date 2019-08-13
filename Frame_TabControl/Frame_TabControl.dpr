program Frame_TabControl;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uFrame1 in 'FRAME\uFrame1.pas' {Frame1: TFrame},
  uFrame2 in 'FRAME\uFrame2.pas' {Frame2: TFrame},
  uAbout in 'ABOUT\uAbout.pas' {frmAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.Run;
end.
