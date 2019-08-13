{ ============================================
  Software Name : 	Frame_TabControl
  ============================================ }
{ ******************************************** }
{ Written By WalWalWalides                     }
{ CopyRight © 2019                             }
{ Email : WalWalWalides@gmail.com              }
{ GitHub :https://github.com/walwalwalides     }
{ ******************************************** }
unit uFrame1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrame1 = class(TFrame)
    lblHallo: TLabel;
    btnClose: TButton;
    pnlBottom: TPanel;
    RadGrpFrame1: TRadioGroup;
    procedure btnCloseClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

implementation

{$R *.dfm}

procedure TFrame1.btnCloseClick(Sender: TObject);
begin
Application.Terminate;
end;

initialization

RegisterClass(TFrame1);

end.
