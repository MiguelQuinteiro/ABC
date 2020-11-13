VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9075
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11850
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   9.75
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   9075
   ScaleWidth      =   11850
   StartUpPosition =   2  'CenterScreen
   Begin VB.ListBox List3 
      Height          =   8460
      Left            =   8400
      TabIndex        =   3
      Top             =   240
      Width           =   3135
   End
   Begin VB.ListBox List2 
      Height          =   8460
      Left            =   5040
      TabIndex        =   2
      Top             =   240
      Width           =   3135
   End
   Begin VB.ListBox List1 
      Height          =   8460
      Left            =   1680
      TabIndex        =   1
      Top             =   240
      Width           =   3135
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
  Dim A As Currency
  Dim B As Currency
  Dim C As Currency

  Dim x As Integer
  Dim y As Integer

  Print
  For y = 1 To 5
    For x = 2 To 10
      If (x + y) < 15 Then
        A = x ^ (x + y)
        C = (x + y) ^ x
        If C > A Then
          B = C - A
        Else
          B = A - C
        End If
        'Print "A= "; Abs(A), , "X= "; Abs(x), "C= "; Abs(C), "Y= "; Abs(y), , "B= "; Abs(B)
        'Print "A= "; Abs(A), , "C= "; Abs(C), "B= "; Abs(B)
        List1.AddItem A
        List2.AddItem B
        List3.AddItem C
      Else

      End If
    Next x
  Next y
End Sub
