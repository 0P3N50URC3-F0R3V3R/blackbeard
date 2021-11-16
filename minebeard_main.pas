unit minebeard_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls, Buttons, Menus, PopupNotifier, Arrow, EditBtn, ActnList,
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
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
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
    Label9: TLabel;
    ListBox1: TListBox;
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
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    StatusBar1: TStatusBar;
    Traymenu: TPopupMenu;
    Trayicon1: TTrayIcon;
    Weekly_time1: TProgressBar;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Deepdive_time: TProgressBar;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Timer1: TTimer;
    Event_time: TProgressBar;
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
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
    procedure Memo2Change(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
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
// Set the Date format for compatibility to DRG
// Deprecated :  DateSeparator := '-';
// Using new method:
   DefaultFormatSettings.DateSeparator:='-';
   DateEdit1.DefaultToday:=True;

//Check Admin rights. If not show warning, but you can still run it with possible errors.
if winutils.iswindowsadmin() then Label20.Hide;

//Statusbar Refresh/details
Statusbar1.SimpleText:='Black Beard - Deepdive / Event Emulator V0.4';

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

procedure TBlackbeard.Memo2Change(Sender: TObject);
begin
  Button7.Caption:='Notes changes not saved. Click Here.';
end;

procedure TBlackbeard.MenuItem10Click(Sender: TObject);
begin
  // Open server.cert to install add message before
  executeprocess('server.cert',['']);
end;

procedure TBlackbeard.MenuItem11Click(Sender: TObject);
begin
  // Open hosts file for editing add message before
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
  // mainevent EVENT IDENTIFIERS(SO FAR):   - Halloween - Xmas - EarlyAccessHats - SteamAwards2020 - "Year03","Year03_Hat","Year03_Armor"
  Memo1.Lines.Clear;
  if listbox1.ItemIndex=0 then memo1.Lines.Add('{"ActiveEvents":[""]}');
  if listbox1.ItemIndex=1 then memo1.Lines.Add('{"ActiveEvents":["Halloween"]}');
  if listbox1.ItemIndex=2 then memo1.Lines.Add('{"ActiveEvents":["Xmas"]}');
  if listbox1.ItemIndex=3 then memo1.Lines.Add('{"ActiveEvents":["Year03","Year03_Hat","Year03_Armor"]}');
  if listbox1.ItemIndex=4 then memo1.Lines.Add('{"ActiveEvents":["EarlyAccessHats"]}');
  if listbox1.ItemIndex=5 then memo1.Lines.Add('{"ActiveEvents":["SteamAwards2020"]}');
  if listbox1.ItemIndex=6 then memo1.Lines.Add('{"ActiveEvents":["Halloween2021"]}');
  Memo1.Lines.SaveToFile('htdocs\events'); //no file extension!
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
  Memo1.Lines.SaveToFile('htdocs\deepdive'); //no file extension!
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
  Memo1.Lines.SaveToFile('htdocs\weekly'); //no file extension!
  Memo1.Lines.Clear;
  // Events - NOT EVERY JSON PARAMETER IS KNOWN THAT WHAT DOES WHAT... IT MAYBE NEEDS CITATION IN THE FUTURE
  // Event time has no calendar due date. It is just in seconds.
  Memo1.Lines.Clear;
  if Checkbox1.Checked=true then Memo1.Lines.Add('{"IsGoal":true,"IsRecruitment":true,"FreeBeers":true,"TimeLeftSeconds":'+Edit6.Text+',"LastUpdateGoalsID":23384,"CurrentGoalPeriodID":11903427}');
  if Checkbox1.Checked=false then Memo1.Lines.Add('{"IsGoal":true,"IsRecruitment":true,"FreeBeers":false,"TimeLeftSeconds":'+Edit6.Text+',"LastUpdateGoalsID":23384,"CurrentGoalPeriodID":11903427}');
  Memo1.Lines.SaveToFile('htdocs\cGoalStateTime'); //no file extension!
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
  Showmessage('Black Beard is a Deep Rock Galactic game event/deepdive/weekly '+#13+'assignment scheduler and generator/emulator that works offline'+#13+'without any internet connection, or in offline lan.'+#13+#13+'Made with and for theese clients: '+#13+'- New Frontiers '+#13+'- Update 34'+#13+'- Update 35(Season 1)'+#13+'Tested and developed with theese clients.'+#13+'Other clients may work also. Nothing is guaranteed!'+#13+#13+'Disclaimer: I am not responsible from any damage that '+#13+'may or may not causes this program usage, made in the '+#13+'spirit of educational and offline gaming purposes only'+#13+'You can use the source as you fit as long as your'+#13+'not claiming as your own. You can repack,'+#13+'reupload under any case exept commerical. '+#13+#13+'YOU ARE FORBIDDEN TO SELL OR MONETIZE IN ANY WAY '+#13+'FROM THIS CODE/PROGRAM!'+#13+#13+'Have a Nice Diving! Rocks and Stones!'+#13+#13+'Made by P373R in the year 2021');
end;

procedure TBlackbeard.Button1Click(Sender: TObject);
begin
  // Generate Normal Deep Dive Seed the first seed numbers cannot be zero, or the event will not work.
  Edit1.Text:=chr(random(9)+49)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48)+chr(random(10)+48);
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

