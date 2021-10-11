object Form1: TForm1
  Left = 203
  Top = 124
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Assign files/directories'
  ClientHeight = 430
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Bevel1: TBevel
    Left = 424
    Top = 16
    Width = 9
    Height = 401
    Shape = bsLeftLine
  end
  object FileListBox1: TFileListBox
    Left = 216
    Top = 48
    Width = 193
    Height = 369
    FileType = [ftReadOnly, ftHidden, ftSystem, ftArchive, ftNormal]
    ItemHeight = 16
    TabOrder = 0
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 16
    Top = 48
    Width = 193
    Height = 369
    FileList = FileListBox1
    ItemHeight = 16
    TabOrder = 1
    OnChange = DirectoryListBox1Change
  end
  object DriveComboBox1: TDriveComboBox
    Left = 16
    Top = 16
    Width = 193
    Height = 22
    DirList = DirectoryListBox1
    TabOrder = 2
  end
  object FilterComboBox1: TFilterComboBox
    Left = 216
    Top = 16
    Width = 193
    Height = 24
    FileList = FileListBox1
    Filter = 
      'All files (*.*)|*.*|Text(*.txt)|*.txt|Audio(*.mp3;*.wav;*.wma;*.' +
      'cda;*.mid)|*.mp3;*.wav;*.wma;*.cda;*.mid'
    TabOrder = 3
  end
  object Button1: TButton
    Left = 440
    Top = 16
    Width = 161
    Height = 25
    Caption = 'Assign files'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 608
    Top = 48
    Width = 193
    Height = 25
    Caption = 'Save As...'
    TabOrder = 5
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 440
    Top = 80
    Width = 361
    Height = 337
    ItemHeight = 16
    TabOrder = 6
  end
  object Button3: TButton
    Left = 608
    Top = 16
    Width = 193
    Height = 25
    Caption = 'Assign files with Directories'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 440
    Top = 48
    Width = 161
    Height = 25
    Caption = 'Assign directories'
    TabOrder = 8
    OnClick = Button4Click
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'filespisok'
    Filter = 'Text (*.txt)|*.txt'
    Options = [ofReadOnly, ofOverwritePrompt, ofHideReadOnly]
    Left = 728
    Top = 40
  end
end
