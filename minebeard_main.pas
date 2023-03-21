unit minebeard_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls, Buttons, Menus, PopupNotifier, Arrow, EditBtn, ActnList, CheckLst,
  DateTimePicker, TAGraph, TASeries, TAIntervalSources, TASources, TAStyles,
  ExtendedNotebook, IniFiles, winutils, DateUtils;

const
  IniFile = 'setup.ini';

type

  { TBlackbeard }

  TBlackbeard = class(TForm)
    Action1: TAction;
    ActionList1: TActionList;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckGroup1: TCheckGroup;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    Deepdive_time: TProgressBar;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Event_time: TProgressBar;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    Memo2: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    PageControl1: TPageControl;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet7: TTabSheet;
    Traymenu: TPopupMenu;
    Trayicon1: TTrayIcon;
    Timer1: TTimer;
    Weekly_time1: TProgressBar;
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure DateEdit2Change(Sender: TObject);
    procedure DateEdit3Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: char);
    procedure Edit3Change(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: char);
    procedure Edit4Change(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: char);
    procedure Edit5Change(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: char);
    procedure Edit6Change(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: char);
    procedure Edit7Change(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: char);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormWindowStateChange(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure ListBox2ShowHint(Sender: TObject; HintInfo: PHintInfo);
    procedure Memo2Change(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure Notifier1Close(Sender: TObject; var CloseAction: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Trayicon1Click(Sender: TObject);
    procedure Trayicon1DblClick(Sender: TObject);
  private

  public

  end;

var
  Blackbeard: TBlackbeard;

implementation

{$R *.lfm}

{ TBlackbeard }

procedure TBlackbeard.FormCreate(Sender: TObject);
var
    Sett : TIniFile;
    inivalue : string;
    hFile : integer;
begin

// COMPILED WITH DWARF3+ SET. MADE WITH LAZARUS IDE 2.2.6!

// Set the Date format for compatibility to DRG
// Deprecated :  DateSeparator := '-';
// Using new method:
   DefaultFormatSettings.DateSeparator:='-';
   DateEdit1.DefaultToday:=True;
// Set the default main page
PageControl1.TabIndex:=0;
Tabsheet1.Color:= TColor($000BD7D1);

//Other checks with the program:
// XAMPP runs?
// Ports 443 and 8443 avaliable?
// is Hosts file has the required entries?
// Is Cert files installed?


//Check Admin rights. If not show warning, but you can still run it with possible errors.
if winutils.iswindowsadmin() then
   begin
        Label20.Hide;
        CheckGroup1.Checked[5]:=true;
   end;

//Statusbar Refresh/details
Statusbar1.SimpleText:='Black Beard - Deepdive / Event Emulator V0.8.0';

//Status Refresh - Program Creation section
// 1 Week is 604800 Seconds / 1 Day is 86 400 Seconds / 1 Hour is 3600 Seconds
// The files wont be loaded from the emulator files directly,
// the files in the web folder always will be overwritten when new values added.

// load notes if exist, otherwise throws error.
if FileExists('notes.txt')=false then
begin
  Memo2.Lines.SaveToFile('notes.txt');
end;
Memo2.Lines.LoadFromFile('notes.txt');


 // INI SECTION ---------------------------------------------------------------->
 // Load Values from files  deepdive weekly and cGoalStateTime
 //INI FILE part neded to be loaded from here this part.
 // (Section, Key, Default)
 Sett := TIniFile.Create(IniFile);

 // Autostart setup
 inivalue:= Sett.ReadString('Blackbeard','autostart','false');

 if inivalue='false' then
  begin
    checkbox2.checked:=false;
    Bitbtn4.Click;
  end;

 if inivalue='true' then
  begin
    checkbox2.checked:=true;
    Bitbtn5.Click;
  end;

 // freebeer setup
 inivalue:= Sett.ReadString('Blackbeard','freebeer','false');
 if inivalue='false' then checkbox1.checked:=false;
 if inivalue='true' then checkbox1.checked:=true;

 // randombeer timer
 inivalue:= Sett.ReadString('Blackbeard','randombeertimer','false');
 if inivalue='false' then checkbox3.checked:=false;
 if inivalue='true' then checkbox3.checked:=true;

 // randommain timer
 inivalue:= Sett.ReadString('Blackbeard','randomain','false');
 if inivalue='false' then checkbox5.checked:=false;
 if inivalue='true' then checkbox5.checked:=true;

 // normaldives setup
 Edit1.text:= Sett.ReadString('Blackbeard','normaldives','123456789');

 // elitedives setup
 Edit2.text:= Sett.ReadString('Blackbeard','elitedives','1234567890');

 // weekly assignment setup
 Edit3.text:= Sett.ReadString('Blackbeard','weeklyassginments','1234567890');

 // deepdivetime
 Edit4.text:= Sett.ReadString('Blackbeard','deepdivetime','604800');

 // weeklytime
 Edit5.text:= Sett.ReadString('Blackbeard','weeklytime','604800');

 // eventtime
 Edit6.text:= Sett.ReadString('Blackbeard','eventtime','604800');

 // mainevent
 listbox1.ItemIndex:=strtoint(Sett.ReadString('Blackbeard','mainevent','0'));


 // Status setup
 // it will check auto mode
  Label6.Caption:=inttoStr(Deepdive_time.Position)+' Seconds left';
  Label10.Caption:=inttoStr(Weekly_time1.Position)+' Seconds left';
  Label13.Caption:=inttoStr(Event_time.Position)+' Seconds left';

  button4.Click;
  button5.Click;
  button6.Click;

  // start minimized setup   - Needs further tweak, adding minimize effect
  inivalue:= Sett.ReadString('Blackbeard','startmin','false');
  if inivalue='false' then
   begin
     checkbox4.checked:=false;
   end;

  if inivalue='true' then
   begin
     checkbox4.checked:=true;
     // Blackbeard.WindowState:=wsMinimized;
     Application.ShowMainForm:=False;
   end;
  Sett.Free;
 // INI SECTION END ------------------------------------------------------------->
end;

procedure TBlackbeard.FormWindowStateChange(Sender: TObject);
begin
  // Check if it is going to taskbar or tray.
  if CheckBox4.Checked=true then
    Begin
     if Blackbeard.WindowState = wsMinimized then Blackbeard.Hide;
    end;
end;

procedure TBlackbeard.ListBox1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TBlackbeard.ListBox2Click(Sender: TObject);
begin
  // Predefined Official Deepdives with seed, seed v2 and event number
  // (it will set the required events automaticly for the Deepdives to recreate the same conditions like it was in the original event.)
  // For some selection require older clients.
  if Listbox2.ItemIndex=0 then begin Edit1.Text:='1000000000'; Edit2.Text:='1000000000'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=1 then begin Edit1.Text:='3612673878'; Edit2.Text:='3612673878'; ListBox1.ItemIndex:=8; end;
  if Listbox2.ItemIndex=2 then begin Edit1.Text:='1548537513'; Edit2.Text:='1548537513'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=3 then begin Edit1.Text:='345799'; Edit2.Text:='345799'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=4 then begin Edit1.Text:='2299715386'; Edit2.Text:='2299715386'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=5 then begin Edit1.Text:='2292833010'; Edit2.Text:='2292833010'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=6 then begin Edit1.Text:='64284013'; Edit2.Text:='64284013'; ListBox1.ItemIndex:=9; end;
  if Listbox2.ItemIndex=7 then begin Edit1.Text:='53284948'; Edit2.Text:='53284948'; ListBox1.ItemIndex:=9; end;
  if Listbox2.ItemIndex=8 then begin Edit1.Text:='17302019'; Edit2.Text:='17302019'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=9 then begin Edit1.Text:='2447339677'; Edit2.Text:='2447339677'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=10 then begin Edit1.Text:='4175859195'; Edit2.Text:='4175859195'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=11 then begin Edit1.Text:='915259912'; Edit2.Text:='915259912'; ListBox1.ItemIndex:=10; end;
  if Listbox2.ItemIndex=12 then begin Edit1.Text:='2208627937'; Edit2.Text:='2208627937'; ListBox1.ItemIndex:=10; end;
  if Listbox2.ItemIndex=13 then begin Edit1.Text:='1957576731'; Edit2.Text:='1957576731'; ListBox1.ItemIndex:=10; end;
  if Listbox2.ItemIndex=14 then begin Edit1.Text:='1208406893'; Edit2.Text:='1208406893'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=15 then begin Edit1.Text:='55936418'; Edit2.Text:='55936418'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=16 then begin Edit1.Text:='2100157499'; Edit2.Text:='2100157499'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=17 then begin Edit1.Text:='9336201'; Edit2.Text:='9336201'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=18 then begin Edit1.Text:='3325792159'; Edit2.Text:='3325792159'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=19 then begin Edit1.Text:='24584328'; Edit2.Text:='24584328'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=20 then begin Edit1.Text:='2495444811'; Edit2.Text:='2495444811'; ListBox1.ItemIndex:=11; end;
  if Listbox2.ItemIndex=21 then begin Edit1.Text:='4282007030'; Edit2.Text:='4282007030'; ListBox1.ItemIndex:=11; end;
  if Listbox2.ItemIndex=22 then begin Edit1.Text:='2497457359'; Edit2.Text:='2497457359'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=23 then begin Edit1.Text:='1027742581'; Edit2.Text:='1027742581'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=24 then begin Edit1.Text:='1246332814'; Edit2.Text:='1246332814'; ListBox1.ItemIndex:=12; end;
  if Listbox2.ItemIndex=25 then begin Edit1.Text:='4047100427'; Edit2.Text:='4047100427'; ListBox1.ItemIndex:=12; end;
  if Listbox2.ItemIndex=26 then begin Edit1.Text:='4183416793'; Edit2.Text:='4183416793'; ListBox1.ItemIndex:=12; end;
  if Listbox2.ItemIndex=27 then begin Edit1.Text:='2646148811'; Edit2.Text:='2646148811'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=28 then begin Edit1.Text:='2357971011'; Edit2.Text:='2357971011'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=29 then begin Edit1.Text:='3699734257'; Edit2.Text:='3699734257'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=30 then begin Edit1.Text:='2603781769'; Edit2.Text:='2603781769'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=31 then begin Edit1.Text:='1058533019'; Edit2.Text:='1058533019'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=32 then begin Edit1.Text:='1614119939'; Edit2.Text:='1614119939'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=33 then begin Edit1.Text:='3705538791'; Edit2.Text:='3705538791'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=34 then begin Edit1.Text:='897073810'; Edit2.Text:='897073810'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=35 then begin Edit1.Text:='2406381865'; Edit2.Text:='2406381865'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=36 then begin Edit1.Text:='3676333833'; Edit2.Text:='3676333833'; ListBox1.ItemIndex:=13; end;
  if Listbox2.ItemIndex=37 then begin Edit1.Text:='1305006093'; Edit2.Text:='1305006093'; ListBox1.ItemIndex:=13; end;
  if Listbox2.ItemIndex=38 then begin Edit1.Text:='3010393980'; Edit2.Text:='3010393980'; ListBox1.ItemIndex:=13; end;
  if Listbox2.ItemIndex=39 then begin Edit1.Text:='34332551'; Edit2.Text:='34332551'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=40 then begin Edit1.Text:='2341946094'; Edit2.Text:='2341946094'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=41 then begin Edit1.Text:='4063720098'; Edit2.Text:='4063720098'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=42 then begin Edit1.Text:='2671425074'; Edit2.Text:='2671425074'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=43 then begin Edit1.Text:='4088056935'; Edit2.Text:='4088056935'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=44 then begin Edit1.Text:='2916679213'; Edit2.Text:='2916679213'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=45 then begin Edit1.Text:='238590152'; Edit2.Text:='238590152'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=46 then begin Edit1.Text:='585053766'; Edit2.Text:='585053766'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=47 then begin Edit1.Text:='482707241'; Edit2.Text:='482707241'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=48 then begin Edit1.Text:='1850985369'; Edit2.Text:='1850985369'; ListBox1.ItemIndex:=14; end;
  if Listbox2.ItemIndex=49 then begin Edit1.Text:='1855204199'; Edit2.Text:='1855204199'; ListBox1.ItemIndex:=14; end;
  if Listbox2.ItemIndex=50 then begin Edit1.Text:='3822179595'; Edit2.Text:='3822179595'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=51 then begin Edit1.Text:='2022907382'; Edit2.Text:='2022907382'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=52 then begin Edit1.Text:='3540345438'; Edit2.Text:='3540345438'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=53 then begin Edit1.Text:='360600801'; Edit2.Text:='360600801'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=54 then begin Edit1.Text:='778847304'; Edit2.Text:='778847304'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=55 then begin Edit1.Text:='2548152425'; Edit2.Text:='2548152425'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=56 then begin Edit1.Text:='978788711'; Edit2.Text:='978788711'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=57 then begin Edit1.Text:='1121997788'; Edit2.Text:='1121997788'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=58 then begin Edit1.Text:='3342738588'; Edit2.Text:='3342738588'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=59 then begin Edit1.Text:='889476702'; Edit2.Text:='889476702'; ListBox1.ItemIndex:=15; end;
  if Listbox2.ItemIndex=60 then begin Edit1.Text:='3759848501'; Edit2.Text:='3759848501'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=61 then begin Edit1.Text:='1629577529'; Edit2.Text:='1629577529'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=62 then begin Edit1.Text:='2978985698'; Edit2.Text:='2978985698'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=63 then begin Edit1.Text:='571566190'; Edit2.Text:='571566190'; ListBox1.ItemIndex:=7; end;
  if Listbox2.ItemIndex=64 then begin Edit1.Text:='115278228'; Edit2.Text:='115278228'; ListBox1.ItemIndex:=7; end;
  if Listbox2.ItemIndex=65 then begin Edit1.Text:='912177614'; Edit2.Text:='912177614'; ListBox1.ItemIndex:=7; end;
  if Listbox2.ItemIndex=66 then begin Edit1.Text:='594998802'; Edit2.Text:='594998802'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=67 then begin Edit1.Text:='2758629646'; Edit2.Text:='2758629646'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=68 then begin Edit1.Text:='1946138399'; Edit2.Text:='1946138399'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=69 then begin Edit1.Text:='822483547'; Edit2.Text:='822483547'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=70 then begin Edit1.Text:='1749439021'; Edit2.Text:='1749439021'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=71 then begin Edit1.Text:='517153551'; Edit2.Text:='517153551'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=72 then begin Edit1.Text:='4050420743'; Edit2.Text:='4050420743'; ListBox1.ItemIndex:=6; end;
  if Listbox2.ItemIndex=73 then begin Edit1.Text:='3709602013'; Edit2.Text:='3709602013'; ListBox1.ItemIndex:=6; end;
  if Listbox2.ItemIndex=74 then begin Edit1.Text:='1169891667'; Edit2.Text:='1169891667'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=75 then begin Edit1.Text:='669402466'; Edit2.Text:='669402466'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=76 then begin Edit1.Text:='52990441'; Edit2.Text:='52990441'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=77 then begin Edit1.Text:='3780047724'; Edit2.Text:='3780047724'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=78 then begin Edit1.Text:='1475535139'; Edit2.Text:='1475535139'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=79 then begin Edit1.Text:='2540190740'; Edit2.Text:='2540190740'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=80 then begin Edit1.Text:='1556673067'; Edit2.Text:='1556673067'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=81 then begin Edit1.Text:='1289398868'; Edit2.Text:='1289398868'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=82 then begin Edit1.Text:='3766121651'; Edit2.Text:='3766121651'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=83 then begin Edit1.Text:='3158071738'; Edit2.Text:='3158071738'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=84 then begin Edit1.Text:='2591567106'; Edit2.Text:='2591567106'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=85 then begin Edit1.Text:='3885430420'; Edit2.Text:='3885430420'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=86 then begin Edit1.Text:='410626660'; Edit2.Text:='410626660'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=87 then begin Edit1.Text:='1270305272'; Edit2.Text:='1270305272'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=88 then begin Edit1.Text:='2994209433'; Edit2.Text:='2994209433'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=89 then begin Edit1.Text:='4284606362'; Edit2.Text:='4284606362'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=90 then begin Edit1.Text:='3568294429'; Edit2.Text:='3568294429'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=91 then begin Edit1.Text:='2523070256'; Edit2.Text:='2523070256'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=92 then begin Edit1.Text:='1708092100'; Edit2.Text:='1708092100'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=93 then begin Edit1.Text:='293853615'; Edit2.Text:='293853615'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=94 then begin Edit1.Text:='3757381693'; Edit2.Text:='3757381693'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=95 then begin Edit1.Text:='2508099385'; Edit2.Text:='2508099385'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=96 then begin Edit1.Text:='3053830642'; Edit2.Text:='3053830642'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=97 then begin Edit1.Text:='3735388880'; Edit2.Text:='3735388880'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=98 then begin Edit1.Text:='671253932'; Edit2.Text:='671253932'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=99 then begin Edit1.Text:='1950172973'; Edit2.Text:='1950172973'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=100 then begin Edit1.Text:='4280201196'; Edit2.Text:='4280201196'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=101 then begin Edit1.Text:='3910311244'; Edit2.Text:='3910311244'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=102 then begin Edit1.Text:='3172232770'; Edit2.Text:='3172232770'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=103 then begin Edit1.Text:='3418228947'; Edit2.Text:='3418228947'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=104 then begin Edit1.Text:='1841538797'; Edit2.Text:='1841538797'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=105 then begin Edit1.Text:='1868734249'; Edit2.Text:='1868734249'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=106 then begin Edit1.Text:='2746391653'; Edit2.Text:='2746391653'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=107 then begin Edit1.Text:='2149880231'; Edit2.Text:='2149880231'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=108 then begin Edit1.Text:='2474340202'; Edit2.Text:='2474340202'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=109 then begin Edit1.Text:='2880371587'; Edit2.Text:='2880371587'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=110 then begin Edit1.Text:='72475'; Edit2.Text:='72475'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=111 then begin Edit1.Text:='3204142301'; Edit2.Text:='3204142301'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=112 then begin Edit1.Text:='359218310'; Edit2.Text:='359218310'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=113 then begin Edit1.Text:='1519987632'; Edit2.Text:='1519987632'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=114 then begin Edit1.Text:='3370863382'; Edit2.Text:='3370863382'; ListBox1.ItemIndex:=0; end;
  if Listbox2.ItemIndex=115 then begin Edit1.Text:='3370863382'; Edit2.Text:='3370863382'; ListBox1.ItemIndex:=0; end;
end;

procedure TBlackbeard.ListBox2ShowHint(Sender: TObject; HintInfo: PHintInfo);
begin
end;

procedure TBlackbeard.Memo2Change(Sender: TObject);
begin
  Button7.Caption:='Notes changes not saved. Click Here.';
end;

procedure TBlackbeard.MenuItem10Click(Sender: TObject);
begin
  // Open server.cert to install add message before
  executeprocess('certutil.exe',['-addstore root htdocs\drg.ghostship.dk.crt']);
  executeprocess('certutil.exe',['-addstore root htdocs\services.ghostship.dk.crt']);
  showmessage('Fake Certificate files added to system!')
end;

procedure TBlackbeard.MenuItem11Click(Sender: TObject);
begin
  // Open hosts file for editing add message before
  showmessage('You may need to remove the Readonly attribute!');
  executeprocess('notepad.exe',['C:\windows\System32\drivers\etc\hosts']);
end;

procedure TBlackbeard.MenuItem13Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TBlackbeard.MenuItem15Click(Sender: TObject);
begin
  halt;
end;

procedure TBlackbeard.MenuItem16Click(Sender: TObject);
begin
  BitBtn6.Click;
end;

procedure TBlackbeard.MenuItem18Click(Sender: TObject);
begin
  Blackbeard.Hide;
end;

procedure TBlackbeard.MenuItem19Click(Sender: TObject);
begin
  //XAMPP SETUP
  executeprocess('setup_xampp.bat',['']);
end;

procedure TBlackbeard.MenuItem1Click(Sender: TObject);
begin
    Blackbeard.WindowState:=wsNormal;
    Blackbeard.Show;
end;

procedure TBlackbeard.MenuItem2Click(Sender: TObject);
begin
//  Blackbeard.WindowState:=wsMinimized;
    Blackbeard.Hide;
end;

procedure TBlackbeard.MenuItem3Click(Sender: TObject);
begin
  halt;
end;

procedure TBlackbeard.MenuItem6Click(Sender: TObject);
begin
  Bitbtn5.Click;
end;

procedure TBlackbeard.MenuItem7Click(Sender: TObject);
begin
 Bitbtn4.Click;
end;

procedure TBlackbeard.MenuItem9Click(Sender: TObject);
begin
  BitBtn2.Click;
end;

procedure TBlackbeard.Notifier1Close(Sender: TObject;
  var CloseAction: TCloseAction);
begin

end;

procedure TBlackbeard.BitBtn4Click(Sender: TObject);
begin
 // Disable Clock
  Timer1.Enabled:=false;
  if timer1.Enabled=false then Label14.Caption:='DISABLED!';
  Label14.Font.Color:=clRed;
end;

procedure TBlackbeard.BitBtn2Click(Sender: TObject);
begin
  // This will activate all buttons in the form to randomize weekly event all.
  Edit4.text:='604800';
  Edit5.text:='604800';
  Edit6.text:='604800';
  Button1.Click;
  Button2.Click;
  Button3.Click;
  Button4.Click;
  Button5.Click;
  Button6.Click;
  Checkbox1.Checked:=false;
end;

procedure TBlackbeard.BitBtn3Click(Sender: TObject);
begin
  showmessage('If you did not set an end date, this '+#13+'will set only in seconds the expiration times!');
  Edit4.Text:=Edit7.Text;
  Button4.Click;
  Edit5.Text:=Edit7.Text;
  Button5.Click;
  Edit6.Text:=Edit7.Text;
  Button6.Click;
  BitBtn1.Click;
end;

procedure TBlackbeard.BitBtn1Click(Sender: TObject);
var
    Sett : TIniFile;
    divedate,weeklydate : string;
begin
  //Save Configuration files to arm it live
  //Pysical changes to emulator files ------------------------------------------>
  // mainevent EVENT IDENTIFIERS
  Memo1.Lines.Clear;
  if listbox1.ItemIndex=0 then memo1.Lines.Add('{"ActiveEvents":[""]}');
  if listbox1.ItemIndex=1 then memo1.Lines.Add('{"ActiveEvents":["Halloween"]}');
  if listbox1.ItemIndex=2 then memo1.Lines.Add('{"ActiveEvents":["Xmas"]}');
  if listbox1.ItemIndex=3 then memo1.Lines.Add('{"ActiveEvents":["Year03","Year03_Hat","Year03_Armor"]}');
  if listbox1.ItemIndex=4 then memo1.Lines.Add('{"ActiveEvents":["EarlyAccessHats"]}');
  if listbox1.ItemIndex=5 then memo1.Lines.Add('{"ActiveEvents":["SteamAwards2020"]}');
  if listbox1.ItemIndex=6 then memo1.Lines.Add('{"ActiveEvents":["Halloween2021"]}');
  if listbox1.ItemIndex=7 then memo1.Lines.Add('{"ActiveEvents":["Xmas2021"]}');
  if listbox1.ItemIndex=8 then memo1.Lines.Add('{"ActiveEvents":["Year05"]}');
  if listbox1.ItemIndex=9 then memo1.Lines.Add('{"ActiveEvents":["LunarFestival2023"]}');
  if listbox1.ItemIndex=10 then memo1.Lines.Add('{"ActiveEvents":["Xmas2022"]}');
  if listbox1.ItemIndex=11 then memo1.Lines.Add('{"ActiveEvents":["Halloween2022"]}');
  if listbox1.ItemIndex=12 then memo1.Lines.Add('{"ActiveEvents":["Oktoberfest"]}');
  if listbox1.ItemIndex=13 then memo1.Lines.Add('{"ActiveEvents":["BeachParty"]}');
  if listbox1.ItemIndex=14 then memo1.Lines.Add('{"ActiveEvents":["GreatEggHunt"]}');
  if listbox1.ItemIndex=15 then memo1.Lines.Add('{"ActiveEvents":["LunarFestival"]}');

  Memo1.Lines.SaveToFile('htdocs\events'); //no file extension! OLDER VERSIONS
  Memo1.Lines.SaveToFile('htdocs\drg.ghostship.dk\events\events'); //no file extension!
  Memo1.Lines.SaveToFile('htdocs\services.ghostship.dk\events'); //no file extension!
  Memo1.lines.Clear;
  // Deepdive
  divedate:=DateEdit1.Text;
  // Check date if it has errors...
  if divedate='____.__.__'  then divedate:='2100-01-01';
  if divedate='    .  .  '  then divedate:='2100-01-01';
  if divedate='____-__-__'  then divedate:='2100-01-01';
  if divedate=''  then divedate:='2100-01-01';
  Memo1.Lines.Clear;
  Memo1.Lines.Add('{"Seed":'+Edit1.Text+',"SeedV2":'+Edit2.Text+',"ExpirationTime":"'+divedate+'T23:59:59Z"}');
  Memo1.Lines.SaveToFile('htdocs\deepdive'); //no file extension! OLDER VERSIONS!
  Memo1.Lines.SaveToFile('htdocs\drg.ghostship.dk\events\deepdive'); //no file extension!
  Memo1.Lines.SaveToFile('htdocs\services.ghostship.dk\deepdive'); //no file extension!
  Memo1.Lines.Clear;
  // Weekly
  weeklydate:=DateEdit2.Text;
  // Check date if it has errors...
  if weeklydate='____.__.__'  then weeklydate:='2100-01-01';
  if weeklydate='    .  .  '  then weeklydate:='2100-01-01';
  if weeklydate='____-__-__'  then weeklydate:='2100-01-01';
  if weeklydate=''  then weeklydate:='2100-01-01';
  Memo1.Lines.Clear;
  Memo1.Lines.Add('{"Seed":'+Edit3.Text+',"ExpirationTime":"'+weeklydate+'T23:59:59Z"}');
  Memo1.Lines.SaveToFile('htdocs\weekly'); //no file extension!  OLDER VERSION SAVE
  Memo1.Lines.SaveToFile('htdocs\drg.ghostship.dk\events\weekly'); //no file extension!
  Memo1.Lines.SaveToFile('htdocs\services.ghostship.dk\weekly'); //no file extension!
  Memo1.Lines.Clear;
  // Events - NOT EVERY JSON PARAMETER IS KNOWN THAT WHAT DOES WHAT... IT MAYBE NEEDS CITATION IN THE FUTURE
  // Event time has no calendar due date. It is just in seconds.
  Memo1.Lines.Clear;
  if Checkbox1.Checked=true then Memo1.Lines.Add('{"IsGoal":true,"IsRecruitment":true,"FreeBeers":true,"TimeLeftSeconds":'+Edit6.Text+',"LastUpdateGoalsID":23384,"CurrentGoalPeriodID":11903427}');
  if Checkbox1.Checked=false then Memo1.Lines.Add('{"IsGoal":true,"IsRecruitment":true,"FreeBeers":false,"TimeLeftSeconds":'+Edit6.Text+',"LastUpdateGoalsID":23384,"CurrentGoalPeriodID":11903427}');
  Memo1.Lines.SaveToFile('htdocs\cGoalStateTime'); //no file extension!
  Memo1.Lines.SaveToFile('htdocs\drg.ghostship.dk\events\cGoalStateTime'); //no file extension!
  Memo1.Lines.SaveToFile('htdocs\services.ghostship.dk\cGoalStateTime'); //no file extension!
  Memo1.Lines.Clear;
  // Pysical changes end to emulator files ------------------------------------->

  // Save Configuration files to ini file after arming
  // INI SECTION FOR SAVE (SOLID VERSION)--------------------------------------->
  //EVENT IDENTIFIERS:   - Halloween - Xmas - EarlyAccessHats - SteamAwards2020 - "Year03","Year03_Hat","Year03_Armor"
  // (Section, Key, Default)
     Sett := TIniFile.Create(IniFile);
     if Checkbox2.Checked=true then Sett.WriteString('Blackbeard', 'autostart', 'true');
     if Checkbox2.Checked=false then Sett.WriteString('Blackbeard', 'autostart', 'false');

     if Checkbox1.Checked=true then Sett.WriteString('Blackbeard', 'freebeer', 'true');
     if Checkbox1.Checked=false then Sett.WriteString('Blackbeard', 'freebeer', 'false');

     if Checkbox3.Checked=true then Sett.WriteString('Blackbeard', 'randombeertimer', 'true');
     if Checkbox3.Checked=false then Sett.WriteString('Blackbeard', 'randombeertimer', 'false');

     if Checkbox4.Checked=true then Sett.WriteString('Blackbeard', 'startmin', 'true');
     if Checkbox4.Checked=false then Sett.WriteString('Blackbeard', 'startmin', 'false');

     if Checkbox5.Checked=true then Sett.WriteString('Blackbeard', 'randomain', 'true');
     if Checkbox5.Checked=false then Sett.WriteString('Blackbeard', 'randomain', 'false');

     Sett.WriteString('Blackbeard', 'normaldives', Edit1.Text);
     Sett.WriteString('Blackbeard', 'elitedives', Edit2.Text);
     Sett.WriteString('Blackbeard', 'weeklyassginments', Edit3.Text);

     Sett.WriteString('Blackbeard', 'deepdivetime', Edit4.Text);
     Sett.WriteString('Blackbeard', 'weeklytime', Edit5.Text);
     Sett.WriteString('Blackbeard', 'eventtime', Edit6.Text);

     Sett.WriteString('Blackbeard', 'mainevent', inttostr(listbox1.ItemIndex));

     Sett.Free;
  // INI SECTION FOR SAVE END (SOLID VERSION)----------------------------------->

end;

procedure TBlackbeard.Action1Execute(Sender: TObject);
begin
  Button7.Click;
end;

procedure TBlackbeard.Action2Execute(Sender: TObject);
begin
  BitBtn5.Click;
end;

procedure TBlackbeard.BitBtn5Click(Sender: TObject);
begin
  // Enable Clock  - We need to add to the program to disable all GUI values to be clickable and some buttons when it is activated. - future feature.
  Timer1.Enabled:=true;
  if timer1.Enabled=true then Label14.Caption:='ACTIVE';
  Label14.Font.Color:=clGreen;
end;

procedure TBlackbeard.BitBtn6Click(Sender: TObject);
begin
  Showmessage('Black Beard is a Deep Rock Galactic game event/deepdive/weekly '+#13+
              'assignment scheduler and generator/emulator that works offline'+#13+
              'without any internet connection, or in offline lan.'+#13+#13+
              'You may need to aquire different versions to make some events work.'+#13+#13+
              'Disclaimer: I am not responsible from any damage that '+#13+
              'may or may not causes this program usage, made in the '+#13+
              'spirit of educational and offline gaming purposes only'+#13+
              'this program is not for endorsing or support any kind of'+#13+
              'piracy, ot related to that. Everything in this project is'+#13+
              'free, opensource and recreatable by anyone.This program and parts of it'+#13+
              'are not containing any code or binaries from the real game.'+#13+
              'XAMPP, is used for webserver, and Openssl for the cert files.'+#13+
              'Lazarus is used for the blackbeard program. For the update,'+#13+
              'Used some files of Ravest95 from his deepdive project to mine.'+#13+#13+
              'Big thankyou for him for his work too!'+#13+
              'You can use the source as you fit as long as your'+#13+
              'not claiming as your own. You can repack,'+#13+
              'reupload under any case exept commerical. '+#13+#13+
              'YOU ARE FORBIDDEN TO SELL OR MONETIZE IN ANY WAY '+#13+
              'FROM THIS CODE/PROGRAM!'+#13+#13+
              'Have a Nice Diving! Rocks and Stones!'+#13+#13+
              'Program Made by P373R');
end;

procedure TBlackbeard.BitBtn7Click(Sender: TObject);
begin
  executeprocess('start_xampp.bat',['']);
end;

procedure TBlackbeard.Button1Click(Sender: TObject);
begin
  // Generate Normal Deep Dive Seed the first seed numbers cannot be zero, or the event will not work.
  Edit1.Text:=chr(random(9)+49)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48);
  BitBtn1.Click;
end;

procedure TBlackbeard.Button2Click(Sender: TObject);
begin
  //Generate Elite Deep Dive Seedv2 the first seed numbers cannot be zero, or the event will not work.
  Edit2.Text:=chr(random(9)+49)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48);
  BitBtn1.Click;
end;

procedure TBlackbeard.Button3Click(Sender: TObject);
begin
  //Generate Weekly Seed the first seed numbers cannot be zero, or the event will not work.
 Edit3.Text:=chr(random(9)+49)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48);
 BitBtn1.Click;
end;

procedure TBlackbeard.Button4Click(Sender: TObject);
begin
  //Set Deepdive base values
  Deepdive_time.Max:=strtoint(Edit4.Text);
  Deepdive_time.Position:=strtoint(Edit4.Text);
  Label6.Caption:=inttoStr(Deepdive_time.Position)+' Seconds left';
  BitBtn1.Click;
end;

procedure TBlackbeard.Button5Click(Sender: TObject);
begin
  // Set Weekly Assignments
 Weekly_time1.Max:=strtoint(Edit5.Text);
 Weekly_time1.Position:=strtoint(Edit5.Text);
 Label10.Caption:=inttoStr(Weekly_time1.Position)+' Seconds left';
 BitBtn1.Click;
end;

procedure TBlackbeard.Button6Click(Sender: TObject);
begin
  //Set Event Assignments
  Event_time.Max:=strtoint(Edit6.Text);
  Event_time.Position:=strtoint(Edit6.Text);
  Label13.Caption:=inttoStr(Event_time.Position)+' Seconds left';
  BitBtn1.Click;
end;

procedure TBlackbeard.Button7Click(Sender: TObject);
begin
  Memo2.Lines.SaveToFile('notes.txt');
  Button7.Caption:='Saved!';
end;


procedure TBlackbeard.CheckBox1Change(Sender: TObject);
begin
    BitBtn1.Click;
end;

procedure TBlackbeard.CheckBox2Change(Sender: TObject);
begin
    BitBtn1.Click;
end;

procedure TBlackbeard.CheckBox3Change(Sender: TObject);
begin
    BitBtn1.Click;
end;

procedure TBlackbeard.CheckBox4Change(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TBlackbeard.ComboBox1Change(Sender: TObject);
begin
end;

procedure TBlackbeard.DateEdit1Change(Sender: TObject);

begin
// Date Selection and conversion to seconds. Starter date is always NOW.
DateEdit4.DefaultToday:=True;
Edit4.text:=inttostr(SecondsBetween(DateEdit4.Date,DateEdit1.Date));
// This format Needed: YYYY-MM-DD
end;

procedure TBlackbeard.DateEdit2Change(Sender: TObject);
begin
// Date Selection and conversion to seconds. Starter date is always NOW.
DateEdit4.DefaultToday:=True;
Edit5.text:=inttostr(SecondsBetween(DateEdit4.Date,DateEdit2.Date));
// This format Needed: YYYY-MM-DD
end;

procedure TBlackbeard.DateEdit3Change(Sender: TObject);
begin
// Date Selection and conversion to seconds. Starter date is always NOW.
DateEdit4.DefaultToday:=True;
Edit6.text:=inttostr(SecondsBetween(DateEdit4.Date,DateEdit3.Date));
// This format Needed: YYYY-MM-DD
end;

procedure TBlackbeard.Edit1Change(Sender: TObject);
begin
    BitBtn1.Click;

end;

procedure TBlackbeard.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  if not(Key in ['0'..'9']) then Key:=#0;
end;

procedure TBlackbeard.Edit2Change(Sender: TObject);
begin
    BitBtn1.Click;
end;

procedure TBlackbeard.Edit2KeyPress(Sender: TObject; var Key: char);
begin
  if not(Key in ['0'..'9']) then Key:=#0;
end;

procedure TBlackbeard.Edit3Change(Sender: TObject);
begin
    BitBtn1.Click;
end;

procedure TBlackbeard.Edit3KeyPress(Sender: TObject; var Key: char);
begin
  if not(Key in ['0'..'9']) then Key:=#0;
end;

procedure TBlackbeard.Edit4Change(Sender: TObject);
begin
    BitBtn1.Click;
end;

procedure TBlackbeard.Edit4KeyPress(Sender: TObject; var Key: char);
begin
  if not(Key in ['0'..'9']) then Key:=#0;
end;

procedure TBlackbeard.Edit5Change(Sender: TObject);
begin
    BitBtn1.Click;
end;

procedure TBlackbeard.Edit5KeyPress(Sender: TObject; var Key: char);
begin
  if not(Key in ['0'..'9']) then Key:=#0;
end;

procedure TBlackbeard.Edit6Change(Sender: TObject);
begin
    BitBtn1.Click;
end;

procedure TBlackbeard.Edit6KeyPress(Sender: TObject; var Key: char);
begin
  if not(Key in ['0'..'9']) then Key:=#0;
end;

procedure TBlackbeard.Edit7Change(Sender: TObject);
begin
    BitBtn1.Click;
end;

procedure TBlackbeard.Edit7KeyPress(Sender: TObject; var Key: char);
begin
  if not(Key in ['0'..'9']) then Key:=#0;
end;

procedure TBlackbeard.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
 Memo2.Lines.SaveToFile('notes.txt');
end;

procedure TBlackbeard.Timer1Timer(Sender: TObject);
var
    eventrandom : integer;
    mainrandom : integer;
begin
 // The show must go on; and time is passing.
 if Deepdive_time.Position>=1 then Deepdive_time.Position:=Deepdive_time.Position-1;
 if Weekly_time1.Position>=1 then Weekly_time1.Position:=Weekly_time1.Position-1;

 //Event time is a special thing, it needs constant writing to event file, the game constantly watches it and moves on the time realtime.
 //This value is not calendar dependant!!!!! Never will be!
 if Event_time.Position>=1 then
    begin
         Event_time.Position:=Event_time.Position-1;
         //here needs the file writing method in each passing second. Since the games watch ingame the time in json
         //Save all values/files just to be sure.
         Memo1.Lines.Clear;
         if Checkbox1.Checked=true then Memo1.Lines.Add('{"IsGoal":true,"IsRecruitment":true,"FreeBeers":true,"TimeLeftSeconds":'+Edit6.Text+',"LastUpdateGoalsID":23384,"CurrentGoalPeriodID":11903427}');
         if Checkbox1.Checked=false then Memo1.Lines.Add('{"IsGoal":true,"IsRecruitment":true,"FreeBeers":false,"TimeLeftSeconds":'+Edit6.Text+',"LastUpdateGoalsID":23384,"CurrentGoalPeriodID":11903427}');
         Memo1.Lines.SaveToFile('htdocs\cGoalStateTime'); //no file extension!
         Memo1.Lines.SaveToFile('htdocs\drg.ghostship.dk\events\cGoalStateTime'); //no file extension!
         Memo1.Lines.SaveToFile('htdocs\services.ghostship.dk\cGoalStateTime'); //no file extension!
         Memo1.Lines.Clear;
    end;


 //If deepdive expires it will reset and generate new missions.
 If Deepdive_time.Position=0 then Button1.Click;
 If Deepdive_time.Position=0 then Button2.Click;
 If Deepdive_time.Position=0 then Button4.Click;

 //If weekly assignment expires then it will reset and generate new missions
 if Weekly_time1.Position=0 then button3.Click;
 if Weekly_time1.Position=0 then button5.Click;

 //if event times expires, it resets and turns off event. It needs more tweaking
 if Event_time.Position=0 then
  begin
    Button6.click;
    Checkbox1.Checked:=false;
    // Is it a random beer event?
    if checkbox3.Checked=true then
     begin
         Randomize;
         eventrandom:=random(2)+1;
         if eventrandom=1 then Checkbox1.Checked:=true;
         if eventrandom=2 then Checkbox1.Checked:=false;
     end;

    // Is it a random main event? or just turn off event?
    if Checkbox5.Checked=true then
       begin
          Randomize;
          mainrandom:=random(7);
          if mainrandom=0 then Listbox1.ItemIndex:=0;
          if mainrandom=1 then Listbox1.ItemIndex:=1;
          if mainrandom=2 then Listbox1.ItemIndex:=2;
          if mainrandom=3 then Listbox1.ItemIndex:=3;
          if mainrandom=4 then Listbox1.ItemIndex:=4;
          if mainrandom=5 then Listbox1.ItemIndex:=5;
          if mainrandom=6 then Listbox1.ItemIndex:=6;
       end;

  end;

 //Status Refresh
  Label6.Caption:=inttoStr(Deepdive_time.Position)+' Seconds left';
  Label10.Caption:=inttoStr(Weekly_time1.Position)+' Seconds left';
  Label13.Caption:=inttoStr(Event_time.Position)+' Seconds left';
end;

procedure TBlackbeard.Trayicon1Click(Sender: TObject);
begin

end;

procedure TBlackbeard.Trayicon1DblClick(Sender: TObject);
begin
  Menuitem1.Click;
end;

end.

