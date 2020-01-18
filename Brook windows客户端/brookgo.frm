VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "GoBrookGo"
   ClientHeight    =   5370
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6495
   Icon            =   "brookgo.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5370
   ScaleWidth      =   6495
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command5 
      Caption         =   "读取配置"
      Height          =   375
      Left            =   2760
      TabIndex        =   24
      Top             =   3240
      Width           =   975
   End
   Begin VB.CommandButton Command4 
      Caption         =   "保存配置"
      Height          =   375
      Left            =   1800
      TabIndex        =   23
      Top             =   3240
      Width           =   975
   End
   Begin VB.TextBox Text8 
      Height          =   375
      Left            =   3360
      TabIndex        =   22
      Text            =   "passwords "
      Top             =   1320
      Width           =   3015
   End
   Begin VB.TextBox Text7 
      BackColor       =   &H8000000F&
      BorderStyle     =   0  'None
      Height          =   270
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   20
      Text            =   "swupdate.openvpn.org/community/releases/tap-windows-9.21.2.exe"
      Top             =   5040
      Width           =   6255
   End
   Begin VB.CommandButton Command3 
      Caption         =   "停止"
      Height          =   495
      Left            =   2160
      TabIndex        =   19
      Top             =   3960
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "启动"
      Height          =   495
      Left            =   120
      TabIndex        =   18
      Top             =   3960
      Width           =   1695
   End
   Begin VB.Frame Frame1 
      Caption         =   "模式选择"
      Height          =   2655
      Left            =   3840
      TabIndex        =   13
      Top             =   1800
      Width           =   2535
      Begin VB.OptionButton Option3 
         Caption         =   "VPN(全局)"
         Height          =   615
         Left            =   240
         TabIndex        =   16
         Top             =   1800
         Width           =   1335
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Http/Https"
         Height          =   375
         Left            =   240
         TabIndex        =   15
         Top             =   1080
         Width           =   1335
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Socks5"
         Height          =   495
         Left            =   240
         TabIndex        =   14
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label Label9 
         Caption         =   "请先选择brook程序地址或读取配置之后再选择模式"
         Height          =   1215
         Left            =   1560
         TabIndex        =   25
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.TextBox Text6 
      Height          =   375
      Left            =   120
      TabIndex        =   12
      Text            =   "127.0.0.1"
      Top             =   3240
      Width           =   1575
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Left            =   1920
      TabIndex        =   10
      Text            =   "2080"
      Top             =   2280
      Width           =   1215
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   120
      TabIndex        =   8
      Text            =   "127.0.0.1"
      Top             =   2280
      Width           =   1575
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   1920
      TabIndex        =   6
      Text            =   "123456"
      Top             =   1320
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Text            =   "255.255.255.255"
      Top             =   1320
      Width           =   1575
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   5280
      Top             =   120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "..."
      Height          =   375
      Left            =   5760
      TabIndex        =   2
      Top             =   480
      Width           =   615
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   5295
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "代理服务器密码"
      Height          =   180
      Left            =   3360
      TabIndex        =   21
      Top             =   1080
      Width           =   1260
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "全局模式需要安装TAP-Windows(若启动失败请尝试手动管理员模式启动本程序)"
      ForeColor       =   &H000000FF&
      Height          =   180
      Left            =   120
      TabIndex        =   17
      Top             =   4680
      Width           =   6210
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "本地监听地址（一般不用改）"
      Height          =   180
      Left            =   120
      TabIndex        =   11
      Top             =   2880
      Width           =   2340
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "本地代理端口"
      Height          =   180
      Left            =   1920
      TabIndex        =   9
      Top             =   1920
      Width           =   1080
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "本地代理服务器IP"
      Height          =   180
      Left            =   120
      TabIndex        =   7
      Top             =   1920
      Width           =   1440
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "代理服务器端口"
      Height          =   180
      Left            =   1920
      TabIndex        =   5
      Top             =   1080
      Width           =   1260
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "代理服务器IP"
      Height          =   180
      Left            =   120
      TabIndex        =   3
      Top             =   1080
      Width           =   1080
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "选择Brook程序"
      Height          =   180
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1170
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public RunBrook As String, BKPID
Private Sub Command1_Click()
    CommonDialog1.ShowOpen
    Text1.Text = CommonDialog1.FileName
End Sub

Private Sub Command2_Click()
    If RunBrook = "" Then
        MsgBox ("请选择连接模式")
    Else
        BKPID = Shell(RunBrook)
    End If
End Sub

Private Sub Command3_Click()
    Shell ("taskkill /pid " + CStr(BKPID))
End Sub

Private Sub Command4_Click()
    Dim cfpt As String: cfpt = App.Path & "\config.ini"
    Open cfpt For Output As #1
        Print #1, Text1.Text
        Print #1, Text2.Text
        Print #1, Text3.Text
        Print #1, Text4.Text
        Print #1, Text5.Text
        Print #1, Text6.Text
        Print #1, Text8.Text
        If Option1.Value = True Then Print #1, "mod=1"
        If Option2.Value = True Then Print #1, "mod=2"
        If Option3.Value = True Then Print #1, "mod=3"
        If Option1.Value = False And Option2.Value = False And Option3.Value = False Then MsgBox ("请选择连接模式")
    Close #1
End Sub

Private Sub Command5_Click()
    Dim cfpt As String: cfpt = App.Path & "\config.ini"
    Open cfpt For Input As #1
        Line Input #1, tes: Text1.Text = tes
        Line Input #1, tes: Text2.Text = tes
        Line Input #1, tes: Text3.Text = tes
        Line Input #1, tes: Text4.Text = tes
        Line Input #1, tes: Text5.Text = tes
        Line Input #1, tes: Text6.Text = tes
        Line Input #1, tes: Text8.Text = tes
        Line Input #1, tes
        Select Case tes
            Case Is = "mod=1"
                Option1.Value = True
                Call Option1_Click
            Case Is = "mod=2"
                Option2.Value = True
                Call Option2_Click
            Case Is = "mod=3"
                Option3.Value = True
                Call Option1_Click
        End Select
    Close #1
End Sub

Private Sub Form_Load()
   If Dir(App.Path & "\config.ini") <> "" Then Call Command5_Click
End Sub

Private Sub Option1_Click()
    RunBrook = Text1.Text & " client -l " & Text4.Text & ":" & Text5.Text & " -i " & Text6.Text & " -s " & Text2.Text & ":" & Text3.Text & " -p " & Text8.Text
    'MsgBox (RunBrook)
End Sub

Private Sub Option2_Click()
    RunBrook = Text1.Text & " client -l " & Text4.Text & ":" & Text5.Text & " -i " & Text6.Text & " -s " & Text2.Text & ":" & Text3.Text & " -p " & Text8.Text & " --http"
    'MsgBox (RunBrook)
End Sub

Private Sub Option3_Click()
    RunBrook = Text1.Text & " vpn -l " & Text4.Text & ":" & Text5.Text & " -s " & Text2.Text & ":" & Text3.Text & " -p " & Text8.Text
    'MsgBox (RunBrook)
End Sub
