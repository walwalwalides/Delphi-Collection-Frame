{ ============================================
  Software Name : 	Frame_TabControl
  ============================================ }
{ ******************************************** }
{ Written By WalWalWalides                     }
{ CopyRight © 2019                             }
{ Email : WalWalWalides@gmail.com              }
{ GitHub :https://github.com/walwalwalides     }
{ ******************************************** }
unit uFrame2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrame2 = class(TFrame)
    lblwelcome: TLabel;
    pnlBottom: TPanel;
    btnClose: TButton;
    GrBoxFrame2: TGroupBox;
    CbBoxFrame2: TComboBox;
    procedure btnCloseClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

implementation

{$R *.dfm}

procedure TFrame2.btnCloseClick(Sender: TObject);
begin
  Application.Terminate;

end;

initialization

RegisterClass(TFrame2);

end.
