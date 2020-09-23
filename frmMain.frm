VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Convert Plain-Text to Hacker-Text"
   ClientHeight    =   2730
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8940
   BeginProperty Font 
      Name            =   "Courier New"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H8000000F&
   LinkTopic       =   "Form1"
   ScaleHeight     =   2730
   ScaleWidth      =   8940
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdConvert1 
      Caption         =   "<"
      Height          =   315
      Left            =   4320
      TabIndex        =   5
      Top             =   1620
      Width           =   495
   End
   Begin VB.CommandButton cmdConvert 
      Caption         =   ">"
      Default         =   -1  'True
      Height          =   315
      Left            =   4320
      TabIndex        =   2
      Top             =   1020
      Width           =   495
   End
   Begin VB.TextBox txtHacker 
      Height          =   1995
      Left            =   4860
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   480
      Width           =   3915
   End
   Begin VB.TextBox txtPlain 
      Height          =   1995
      Left            =   360
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   480
      Width           =   3915
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "H4ck3r T3xt:"
      Height          =   240
      Left            =   4860
      TabIndex        =   4
      Top             =   180
      Width           =   1440
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Plain Text:"
      Height          =   240
      Left            =   360
      TabIndex        =   3
      Top             =   180
      Width           =   1320
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'---------------------------------------------------------------------------------
' H4CK3RZ T3XT                                                               v 1.0
'---------------------------------------------------------------------------------
' DESCRIPTION:  A simple and small utility to encode any text into a confusing but
'               readable form. Also to decode from the same.
'
' AUTHOR:       Harshad "Datamatrix" Sharma (datamatrix@bigfoot.com)
'
' DATE & TIME:  13 December 2002. 06:40 AM (IST)   [After not sleeping all night!]
'
' INTENDED USE: For educational purposes and for killing some time.
'
'---------------------------------------------------------------------------------
'               "When everything else fails, read the instructions."
'---------------------------------------------------------------------------------


' I have no doubt that this program is LAME!!!
' But look at it this way, it's just a little idea... that creeped into
' my mind while surfing the net. And I implemented it in 10 minutes (doh).
' Also, please don't bother me with your philosophies about hacking and what not.
' This app has been made for those want it... not who don't want it.
' Although, if you have any improvements, worthy corrections, I always welcome them.

' If you are interested in making some hacking website, this little utility
' can save you time (I hope).
Private Sub cmdConvert_Click()
    Dim temp As String
    temp = UCase(txtPlain.Text)
    ' we change the charachters for our REAL numbers...
    temp = Replace(temp, "1", "©")
    temp = Replace(temp, "4", "¨")
    temp = Replace(temp, "0", "§")
    temp = Replace(temp, "3", "¤")
    temp = Replace(temp, "Z", "¥")
    ' now replace the charachters with numbers...
    temp = Replace(temp, "A", "4")
    temp = Replace(temp, "O", "0")
    temp = Replace(temp, "E", "3")
    temp = Replace(temp, "I", "!")
    temp = Replace(temp, "S", "S")
    temp = Replace(temp, "L", "1")
    ' now replace the special charachters by the correcponding alphabets
    temp = Replace(temp, "©", "L")
    temp = Replace(temp, "¨", "A")
    temp = Replace(temp, "§", "O")
    temp = Replace(temp, "¤", "E")
    temp = Replace(temp, "¥", "S")
    'display it to the user
    txtHacker.Text = temp
End Sub

Private Sub cmdConvert1_Click()
    Dim temp As String
    temp = UCase(txtHacker.Text)
    ' here we use a slightly different method than encoding...

    ' we'll use only one special charachter and acomplish our work...
    ' the method is exactly the same, just that we handle one charachter
    ' replacement set at a time.
    
    temp = Replace(temp, "I", "¦")
    temp = Replace(temp, "!", "I")
    temp = Replace(temp, "¦", "!")
    
    temp = Replace(temp, "1", "¦")
    temp = Replace(temp, "L", "1")
    temp = Replace(temp, "¦", "L")
    
    temp = Replace(temp, "Z", "¦")
    temp = Replace(temp, "S", "Z")
    temp = Replace(temp, "¦", "S")
    
    temp = Replace(temp, "E", "¦")
    temp = Replace(temp, "3", "E")
    temp = Replace(temp, "¦", "3")
    
    temp = Replace(temp, "A", "¦")
    temp = Replace(temp, "4", "A")
    temp = Replace(temp, "¦", "4")
    
    temp = Replace(temp, "O", "¦")
    temp = Replace(temp, "0", "O")
    temp = Replace(temp, "¦", "0")
    'display it to the user (note that we are displaying in the txtPlain this time.)
    txtPlain.Text = UCase(temp)
End Sub
