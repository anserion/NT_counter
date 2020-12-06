//Copyright 2020 Andrey S. Ionisyan (anserion@gmail.com)
//
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.

unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BTN_Grossberg_learn: TButton;
    BTN_origs_clear: TButton;
    BTN_Xorig1_draw: TButton;
    BTN_Yorig1_draw: TButton;
    BTN_Yorig2_draw: TButton;
    BTN_Yorig3_draw: TButton;
    BTN_Yorig4_draw: TButton;
    BTN_Xorig2_draw: TButton;
    BTN_Xorig3_draw: TButton;
    BTN_Xorig4_draw: TButton;
    BTN_Xorig_create: TButton;
    BTN_check: TButton;
    BTN_Yorig_create1: TButton;
    BTN_reset_receptors: TButton;
    BTN_Kohonen_learn: TButton;
    BTN_reset_w: TButton;
    Edit_student_name: TEdit;
    GB_Kohonen: TGroupBox;
    Label_grossberg: TLabel;
    Label_Grossberg_Y1: TLabel;
    Label_w_Grossberg: TLabel;
    Label_K_neuron1: TLabel;
    Label_Grossberg_Y: TLabel;
    Label_K_neuron10: TLabel;
    Label_K_neuron2: TLabel;
    Label_K_neuron3: TLabel;
    Label_K_neuron4: TLabel;
    Label_K_neuron5: TLabel;
    Label_K_neuron6: TLabel;
    Label_K_neuron7: TLabel;
    Label_K_neuron8: TLabel;
    Label_K_neuron9: TLabel;
    Label_orig5: TLabel;
    Label_orig6: TLabel;
    Label_orig7: TLabel;
    Label_orig8: TLabel;
    Label_student_name: TLabel;
    Label2: TLabel;
    Label_orig1: TLabel;
    Label_orig2: TLabel;
    Label_orig3: TLabel;
    Label_orig4: TLabel;
    Label_total: TLabel;
    Panel_Kohonen_neuron1: TPanel;
    Panel_Kohonen_neuron10: TPanel;
    Panel_Kohonen_neuron2: TPanel;
    Panel_Kohonen_neuron3: TPanel;
    Panel_Kohonen_neuron4: TPanel;
    Panel_Kohonen_neuron5: TPanel;
    Panel_Kohonen_neuron6: TPanel;
    Panel_Kohonen_neuron7: TPanel;
    Panel_Kohonen_neuron8: TPanel;
    Panel_Kohonen_neuron9: TPanel;
    PB_wX_Grossberg: TPaintBox;
    PB_Grossberg_Y: TPaintBox;
    PB_Grossberg_X: TPaintBox;
    PB_wY_Grossberg: TPaintBox;
    PB_w_G_10: TPaintBox;
    PB_w_G_6: TPaintBox;
    PB_w_G_7: TPaintBox;
    PB_w_G_8: TPaintBox;
    PB_w_G_9: TPaintBox;
    PB_w_K_10: TPaintBox;
    PB_w_K_6: TPaintBox;
    PB_w_K_7: TPaintBox;
    PB_w_K_8: TPaintBox;
    PB_w_K_9: TPaintBox;
    PB_Yorig1: TPaintBox;
    PB_Yorig2: TPaintBox;
    PB_Yorig3: TPaintBox;
    PB_Yorig4: TPaintBox;
    PB_w_G_2: TPaintBox;
    PB_w_G_3: TPaintBox;
    PB_w_G_4: TPaintBox;
    PB_w_G_5: TPaintBox;
    PB_w_K_1: TPaintBox;
    PB_Xorig1: TPaintBox;
    PB_Xorig2: TPaintBox;
    PB_Xorig3: TPaintBox;
    PB_Xorig4: TPaintBox;
    PB_receptors: TPaintBox;
    PB_w_G_1: TPaintBox;
    PB_w_K_2: TPaintBox;
    PB_w_K_3: TPaintBox;
    PB_w_K_4: TPaintBox;
    PB_w_K_5: TPaintBox;
    RB_X: TRadioButton;
    RB_Y: TRadioButton;
    procedure BTN_Grossberg_learnClick(Sender: TObject);
    procedure BTN_Kohonen_learnClick(Sender: TObject);
    procedure BTN_checkClick(Sender: TObject);
    procedure BTN_origs_clearClick(Sender: TObject);
    procedure BTN_reset_wClick(Sender: TObject);
    procedure BTN_Yorig_create1Click(Sender: TObject);
    procedure BTN_Yorig_drawClick(Sender: TObject);
    procedure BTN_Xorig_drawClick(Sender: TObject);
    procedure BTN_Xorig_createClick(Sender: TObject);
    procedure BTN_reset_receptorsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PB_Grossberg_XY_Paint(Sender: TObject);
    procedure PB_wXY_GrossbergPaint(Sender: TObject);
    procedure PB_wXY_GrossbergMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PB_w_G_MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PB_w_G_Paint(Sender: TObject);
    procedure PB_Xorig_MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PB_Xorig_Paint(Sender: TObject);
    procedure PB_receptorsMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PB_receptorsPaint(Sender: TObject);
    procedure PB_w_K_MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PB_w_K_Paint(Sender: TObject);
    procedure PB_Yorig_MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PB_Yorig_Paint(Sender: TObject);
    procedure RB_XClick(Sender: TObject);
  private
    procedure Forward_step;
    procedure Redraw_Xorig_cell( Sender: TObject; x,y:integer);
    procedure Redraw_Yorig_cell( Sender: TObject; x,y:integer);
    procedure Redraw_widgets;
  public

  end;

const
  n_origs=4;
  s_width=5;
  s_height=5;
  n_Kohonen=10;
  n_Grossberg=s_width*s_height*2;
  alpha_koeff=0.01;
  betta_koeff=0.1;

var
  Form1: TForm1;

  kohonen_w:array[1..2,1..n_Kohonen,1..s_width,1..s_height] of real;
  kohonen_d2:array[1..n_Kohonen]of real;
  kohonen_out:array[1..n_Kohonen]of integer;
  kohonen_winner:integer;

  Grossberg_w:array[1..2,1..s_width,1..s_height,1..n_Kohonen] of real;
  Grossberg_scalar:array[1..2,1..s_width,1..s_height]of real;
  Grossberg_out:array[1..2,1..s_width,1..s_height]of real;

  S_elements: array[1..s_width,1..s_height]of integer;
  XOrig_elements: array[1..n_origs,1..s_width,1..s_height]of integer;
  YOrig_elements: array[1..n_origs,1..s_width,1..s_height]of integer;
  XTarget_elements: array[1..s_width,1..s_height]of real;
  YTarget_elements: array[1..s_width,1..s_height]of real;

  X_flag:boolean;
  total_percent:integer;

implementation

{$R *.lfm}

function sigmoid(x:real):real;
begin sigmoid:=1/(1+exp(-x)); end;

{ TForm1 }

procedure TForm1.Forward_step;
var i,k,cell_x,cell_y:integer;
begin
  for k:=1 to n_Kohonen do
  begin
    kohonen_d2[k]:=0;
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
        if x_flag
        then kohonen_d2[k]:=kohonen_d2[k]+sqr(kohonen_w[1,k,cell_x,cell_y]-S_elements[cell_x,cell_y])
        else kohonen_d2[k]:=kohonen_d2[k]+sqr(kohonen_w[2,k,cell_x,cell_y]-S_elements[cell_x,cell_y]);
  end;

  kohonen_winner:=1;
  for k:=1 to n_Kohonen do
    if kohonen_d2[k]<kohonen_d2[kohonen_winner] then kohonen_winner:=k;

  for k:=1 to n_Kohonen do kohonen_out[k]:=0;
  kohonen_out[kohonen_winner]:=1;

  for cell_x:=1 to s_width do
    for cell_y:=1 to s_height do
    begin
      Grossberg_scalar[1,cell_x,cell_y]:=0;
      Grossberg_scalar[2,cell_x,cell_y]:=0;
      for i:=1 to n_Kohonen do
      begin
        Grossberg_scalar[1,cell_x,cell_y]:=Grossberg_scalar[1,cell_x,cell_y]+Grossberg_w[1,cell_x,cell_y,i]*Kohonen_out[i];
        Grossberg_scalar[2,cell_x,cell_y]:=Grossberg_scalar[2,cell_x,cell_y]+Grossberg_w[2,cell_x,cell_y,i]*Kohonen_out[i];
      end;
    Grossberg_out[1,cell_x,cell_y]:=sigmoid(Grossberg_scalar[1,cell_x,cell_y]);
    Grossberg_out[2,cell_x,cell_y]:=sigmoid(Grossberg_scalar[2,cell_x,cell_y]);
  end;
end;

procedure TForm1.Redraw_widgets;
begin
  Label_total.caption:=IntToStr(total_percent)+'%';

  Label_K_neuron1.caption:='нейрон 1 d2='+FloatToStrF(kohonen_d2[1],fffixed,5,3);
  Label_K_neuron2.caption:='нейрон 2 d2='+FloatToStrF(kohonen_d2[2],fffixed,5,3);
  Label_K_neuron3.caption:='нейрон 3 d2='+FloatToStrF(kohonen_d2[3],fffixed,5,3);
  Label_K_neuron4.caption:='нейрон 4 d2='+FloatToStrF(kohonen_d2[4],fffixed,5,3);
  Label_K_neuron5.caption:='нейрон 5 d2='+FloatToStrF(kohonen_d2[5],fffixed,5,3);
  Label_K_neuron6.caption:='нейрон 6 d2='+FloatToStrF(kohonen_d2[6],fffixed,5,3);
  Label_K_neuron7.caption:='нейрон 7 d2='+FloatToStrF(kohonen_d2[7],fffixed,5,3);
  Label_K_neuron8.caption:='нейрон 8 d2='+FloatToStrF(kohonen_d2[8],fffixed,5,3);
  Label_K_neuron9.caption:='нейрон 9 d2='+FloatToStrF(kohonen_d2[9],fffixed,5,3);
  Label_K_neuron10.caption:='нейрон 10 d2='+FloatToStrF(kohonen_d2[10],fffixed,5,3);

  label_K_neuron1.Color:=clDefault;
  label_K_neuron2.Color:=clDefault;
  label_K_neuron3.Color:=clDefault;
  label_K_neuron4.Color:=clDefault;
  label_K_neuron5.Color:=clDefault;
  label_K_neuron6.Color:=clDefault;
  label_K_neuron7.Color:=clDefault;
  label_K_neuron8.Color:=clDefault;
  label_K_neuron9.Color:=clDefault;
  label_K_neuron10.Color:=clDefault;

  case kohonen_winner of
  1: label_K_neuron1.Color:=clGreen;
  2: label_K_neuron2.Color:=clGreen;
  3: label_K_neuron3.Color:=clGreen;
  4: label_K_neuron4.Color:=clGreen;
  5: label_K_neuron5.Color:=clGreen;
  6: label_K_neuron6.Color:=clGreen;
  7: label_K_neuron7.Color:=clGreen;
  8: label_K_neuron8.Color:=clGreen;
  9: label_K_neuron9.Color:=clGreen;
  10: label_K_neuron10.Color:=clGreen;
  end;

  PB_w_K_Paint(PB_w_K_1); PB_w_G_Paint(PB_w_G_1);
  PB_w_K_Paint(PB_w_K_2); PB_w_G_Paint(PB_w_G_2);
  PB_w_K_Paint(PB_w_K_3); PB_w_G_Paint(PB_w_G_3);
  PB_w_K_Paint(PB_w_K_4); PB_w_G_Paint(PB_w_G_4);
  PB_w_K_Paint(PB_w_K_5); PB_w_G_Paint(PB_w_G_5);
  PB_w_K_Paint(PB_w_K_6); PB_w_G_Paint(PB_w_G_6);
  PB_w_K_Paint(PB_w_K_7); PB_w_G_Paint(PB_w_G_7);
  PB_w_K_Paint(PB_w_K_8); PB_w_G_Paint(PB_w_G_8);
  PB_w_K_Paint(PB_w_K_9); PB_w_G_Paint(PB_w_G_9);
  PB_w_K_Paint(PB_w_K_10); PB_w_G_Paint(PB_w_G_10);

  PB_Grossberg_XY_Paint(PB_Grossberg_X);
  PB_Grossberg_XY_Paint(PB_Grossberg_Y);

  PB_wXY_GrossbergPaint(PB_wX_Grossberg);
  PB_wXY_GrossbergPaint(PB_wY_Grossberg);
end;

procedure TForm1.PB_Xorig_MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var cell_x,cell_y:integer; dx,dy:real;
begin
  with (sender as TPaintBox) do
  begin
    dx:=width/s_width;
    dy:=Height/s_height;
    cell_x:=trunc(X/dx)+1;
    cell_y:=trunc(Y/dy)+1;
    if Xorig_elements[tag,cell_x,cell_y]=1
    then Xorig_elements[tag,cell_x,cell_y]:=0
    else Xorig_elements[tag,cell_x,cell_y]:=1;
    Redraw_Xorig_cell(Sender,cell_x,cell_y);
  end;
end;

procedure TForm1.PB_Yorig_MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var cell_x,cell_y:integer; dx,dy:real;
begin
  with (sender as TPaintBox) do
  begin
    dx:=width/s_width;
    dy:=Height/s_height;
    cell_x:=trunc(X/dx)+1;
    cell_y:=trunc(Y/dy)+1;
    if Yorig_elements[tag,cell_x,cell_y]=1
    then Yorig_elements[tag,cell_x,cell_y]:=0
    else Yorig_elements[tag,cell_x,cell_y]:=1;
    Redraw_Yorig_cell(Sender,cell_x,cell_y);
  end;
end;

procedure TForm1.PB_Xorig_Paint(Sender: TObject);
var cell_x,cell_y:integer;
begin
  with (sender as TPaintBox) do
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
        Redraw_Xorig_cell(Sender,cell_x,cell_y);
end;

procedure TForm1.PB_Yorig_Paint(Sender: TObject);
var cell_x,cell_y:integer;
begin
  with (sender as TPaintBox) do
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
        Redraw_Yorig_cell(Sender,cell_x,cell_y);
end;

procedure TForm1.RB_XClick(Sender: TObject);
begin
  X_flag:=RB_X.Checked;
  PB_receptorsPaint(self);
  Forward_step;
  Redraw_widgets;
end;

procedure TForm1.PB_Grossberg_XY_Paint(Sender: TObject);
var cell_x,cell_y:integer; dx,dy:real; C:byte;
begin
  with (sender as TPaintBox) do
  begin
    dx:=width/s_width;
    dy:=Height/s_height;
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
      begin
        C:=255-trunc(255*Grossberg_out[tag,cell_x,cell_y]);
        Canvas.Pen.Color:=clBlack;
        Canvas.Brush.Style:=bsSolid;
        Canvas.Brush.Color:=RGBToColor(C,C,C);

        Canvas.Rectangle(trunc((cell_x-1)*dx),trunc((cell_y-1)*dy),
                         trunc(cell_x*dx),trunc(cell_y*dy));
        Canvas.Frame(trunc((cell_x-1)*dx),trunc((cell_y-1)*dy),
                     trunc(cell_x*dx),trunc(cell_y*dy));

        if C<128 then Canvas.Font.Color:=clWhite else Canvas.Font.Color:=clBlack;
        Canvas.TextOut(trunc((cell_x-1)*dx)+1,trunc((cell_y-1)*dy)+1,
                       FloatToStrF(Grossberg_out[tag,cell_x,cell_y],ffFixed,5,3));
      end;
  end;
end;

procedure TForm1.PB_wXY_GrossbergPaint(Sender: TObject);
var k,cell_x,cell_y:integer; dx,dy:real; w_min,w_max:real; C:byte;
begin
  with (sender as TPaintBox) do
  begin
    w_min:=grossberg_w[tag,1,1,1]; w_max:=grossberg_w[tag,1,1,1];
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
        for k:=1 to n_Kohonen do
        begin
          if grossberg_w[tag,cell_x,cell_y,k]<w_min then w_min:=grossberg_w[tag,cell_x,cell_y,k];
          if grossberg_w[tag,cell_x,cell_y,k]>w_max then w_max:=grossberg_w[tag,cell_x,cell_y,k];
        end;

    dx:=width/n_kohonen;
    dy:=Height/(s_width*s_height);
    Canvas.Pen.Color:=clBlack;
    Canvas.Brush.Style:=bsSolid;
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
        for k:=1 to n_kohonen do
        begin
          if w_max-w_min<>0
          then C:=255-trunc(255*(grossberg_w[tag,cell_x,cell_y,k]-w_min)/(w_max-w_min))
          else C:=255;
          Canvas.Brush.Color:=RGBToColor(C,C,C);
          Canvas.Rectangle(trunc((k-1)*dx),trunc(((cell_y-1)*s_width+cell_x-1)*dy),
                           trunc(k*dx),trunc(((cell_y-1)*s_width+cell_x)*dy));
          Canvas.Frame(trunc((k-1)*dx),trunc(((cell_y-1)*s_width+cell_x-1)*dy),
                       trunc(k*dx),trunc(((cell_y-1)*s_width+cell_x)*dy));
        end;
  end;
end;

procedure TForm1.PB_wXY_GrossbergMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var cell_x,cell_y,cell_xx,cell_yy:integer; dx,dy,value:real; s:string;
begin
  with (sender as TPaintBox) do
  begin
    dx:=width/n_kohonen;
    dy:=Height/(s_width*s_height);
    cell_xx:=trunc(X/dx)+1;
    cell_yy:=trunc(Y/dy)+1;
    cell_x:=(cell_yy mod s_width)+1;
    cell_y:=(cell_yy div s_width)+1;
    value:=grossberg_w[tag,cell_x,cell_y,cell_xx];
    s:=IntToStr(cell_x)+','+IntToStr(cell_y)+')['+IntToStr(cell_xx)+']='+FloatToStrF(value,fffixed,5,3);
    case tag of
    1: Label_w_grossberg.caption:='коэффициенты K('+s;
    2: Label_w_grossberg.caption:='коэффициенты G('+s;
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  BTN_reset_receptorsClick(self);
  BTN_reset_wClick(self);
end;

procedure TForm1.PB_receptorsMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var cell_x,cell_y:integer; dx,dy:real;
begin
  with PB_receptors do
  begin
     Canvas.Pen.Color:=clBlack;
     Canvas.Brush.Style:=bsSolid;
     dx:=width/s_width;
     dy:=Height/s_height;
     cell_x:=trunc(X/dx)+1;
     cell_y:=trunc(Y/dy)+1;

     if S_elements[cell_x,cell_y]=1
     then S_elements[cell_x,cell_y]:=0
     else S_elements[cell_x,cell_y]:=1;

     if S_elements[cell_x,cell_y]=1
     then Canvas.Brush.Color:=clBlack
     else Canvas.Brush.Color:=clWhite;
     Canvas.Rectangle(trunc((cell_x-1)*dx),trunc((cell_y-1)*dy),
                      trunc(cell_x*dx),trunc(cell_y*dy));
  end;
  Forward_step;
  Redraw_widgets;
end;

procedure TForm1.PB_receptorsPaint(Sender: TObject);
var x,y:integer; dx,dy:real;
begin
  with PB_receptors do
  begin
     Canvas.Pen.Color:=clBlack;
     Canvas.Brush.Style:=bsSolid;
     dx:=width/s_width;
     dy:=Height/s_height;
     for x:=1 to s_width do
     for y:=1 to s_height do
     begin
       if S_elements[x,y]=1
       then Canvas.Brush.Color:=clBlack
       else Canvas.Brush.Color:=clWhite;
       Canvas.Rectangle(trunc((x-1)*dx),trunc((y-1)*dy),trunc(x*dx),trunc(y*dy));
     end;
  end;
end;

procedure TForm1.PB_w_K_MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var cell_x,cell_y:integer; dx,dy,value:real; s:string;
begin
  with (sender as TPaintBox) do
  begin
    dx:=width/s_width;
    dy:=Height/s_height;
    cell_x:=trunc(X/dx)+1;
    cell_y:=trunc(Y/dy)+1;
    value:=kohonen_w[1,tag,cell_x,cell_y];
    s:='K('+IntToStr(cell_x)+','+IntToStr(cell_y)+')='+FloatToStrF(value,fffixed,5,3);
    case tag of
    1: Label_K_neuron1.Caption:='нейрон 1 '+s;
    2: Label_K_neuron2.Caption:='нейрон 2 '+s;
    3: Label_K_neuron3.Caption:='нейрон 3 '+s;
    4: Label_K_neuron4.Caption:='нейрон 4 '+s;
    5: Label_K_neuron5.Caption:='нейрон 5 '+s;
    6: Label_K_neuron6.Caption:='нейрон 6 '+s;
    7: Label_K_neuron7.Caption:='нейрон 7 '+s;
    8: Label_K_neuron8.Caption:='нейрон 8 '+s;
    9: Label_K_neuron9.Caption:='нейрон 9 '+s;
    10: Label_K_neuron10.Caption:='нейрон 10 '+s;
    end;
  end;
end;

procedure TForm1.PB_w_G_MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var cell_x,cell_y:integer; dx,dy,value:real; s:string;
begin
  with (sender as TPaintBox) do
  begin
    dx:=width/s_width;
    dy:=Height/s_height;
    cell_x:=trunc(X/dx)+1;
    cell_y:=trunc(Y/dy)+1;
    value:=kohonen_w[2,tag,cell_x,cell_y];
    s:='G('+IntToStr(cell_x)+','+IntToStr(cell_y)+')='+FloatToStrF(value,fffixed,5,3);
    case tag of
    1: Label_K_neuron1.Caption:='нейрон 1 '+s;
    2: Label_K_neuron2.Caption:='нейрон 2 '+s;
    3: Label_K_neuron3.Caption:='нейрон 3 '+s;
    4: Label_K_neuron4.Caption:='нейрон 4 '+s;
    5: Label_K_neuron5.Caption:='нейрон 5 '+s;
    6: Label_K_neuron6.Caption:='нейрон 6 '+s;
    7: Label_K_neuron7.Caption:='нейрон 7 '+s;
    8: Label_K_neuron8.Caption:='нейрон 8 '+s;
    9: Label_K_neuron9.Caption:='нейрон 9 '+s;
    10: Label_K_neuron10.Caption:='нейрон 10 '+s;
    end;
  end;
end;

procedure TForm1.PB_w_K_Paint(Sender: TObject);
var cell_x,cell_y:integer; dx,dy:real; w_min,w_max:real; C:byte;
begin
  with (sender as TPaintBox) do
  begin
    w_min:=kohonen_w[1,tag,1,1]; w_max:=kohonen_w[1,tag,1,1];
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
      begin
        if kohonen_w[1,tag,cell_x,cell_y]<w_min then w_min:=kohonen_w[1,tag,cell_x,cell_y];
        if kohonen_w[1,tag,cell_x,cell_y]>w_max then w_max:=kohonen_w[1,tag,cell_x,cell_y];
      end;

    dx:=width/s_width;
    dy:=Height/s_height;
    Canvas.Pen.Color:=clBlack;
    Canvas.Brush.Style:=bsSolid;
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
      begin
        if w_max-w_min<>0
        then C:=255-trunc(255*(kohonen_w[1,tag,cell_x,cell_y]-w_min)/(w_max-w_min))
        else C:=255;
        Canvas.Brush.Color:=RGBToColor(C,C,C);
        Canvas.Rectangle(trunc((cell_x-1)*dx),trunc((cell_y-1)*dy),
                         trunc(cell_x*dx),trunc(cell_y*dy));
        Canvas.Frame(trunc((cell_x-1)*dx),trunc((cell_y-1)*dy),
                     trunc(cell_x*dx),trunc(cell_y*dy));
      end;
  end;
end;

procedure TForm1.PB_w_G_Paint(Sender: TObject);
var cell_x,cell_y:integer; dx,dy:real; w_min,w_max:real; C:byte;
begin
  with (sender as TPaintBox) do
  begin
    w_min:=kohonen_w[2,tag,1,1]; w_max:=kohonen_w[2,tag,1,1];
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
      begin
        if kohonen_w[2,tag,cell_x,cell_y]<w_min then w_min:=kohonen_w[2,tag,cell_x,cell_y];
        if kohonen_w[2,tag,cell_x,cell_y]>w_max then w_max:=kohonen_w[2,tag,cell_x,cell_y];
      end;

    dx:=width/s_width;
    dy:=Height/s_height;
    Canvas.Pen.Color:=clBlack;
    Canvas.Brush.Style:=bsSolid;
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
      begin
        if w_max-w_min<>0
        then C:=255-trunc(255*(kohonen_w[2,tag,cell_x,cell_y]-w_min)/(w_max-w_min))
        else C:=255;
        Canvas.Brush.Color:=RGBToColor(C,C,C);
        Canvas.Rectangle(trunc((cell_x-1)*dx),trunc((cell_y-1)*dy),
                         trunc(cell_x*dx),trunc(cell_y*dy));
        Canvas.Frame(trunc((cell_x-1)*dx),trunc((cell_y-1)*dy),
                     trunc(cell_x*dx),trunc(cell_y*dy));
      end;
  end;
end;

procedure TForm1.Redraw_Xorig_cell(Sender:TObject; x,y:integer);
var dx,dy:real;
begin
  with (sender as TPaintBox) do
  begin
    Canvas.Pen.Color:=clBlack;
    Canvas.Brush.Style:=bsSolid;
    dx:=width/s_width;
    dy:=Height/s_height;
    if XOrig_elements[tag,x,y]=1
    then Canvas.Brush.Color:=clBlack
    else Canvas.Brush.Color:=clWhite;
    Canvas.Rectangle(trunc((x-1)*dx),trunc((y-1)*dy),trunc(x*dx),trunc(y*dy));
  end;
end;

procedure TForm1.Redraw_Yorig_cell(Sender:TObject; x,y:integer);
var dx,dy:real;
begin
  with (sender as TPaintBox) do
  begin
    Canvas.Pen.Color:=clBlack;
    Canvas.Brush.Style:=bsSolid;
    dx:=width/s_width;
    dy:=Height/s_height;
    if YOrig_elements[tag,x,y]=1
    then Canvas.Brush.Color:=clBlack
    else Canvas.Brush.Color:=clWhite;
    Canvas.Rectangle(trunc((x-1)*dx),trunc((y-1)*dy),trunc(x*dx),trunc(y*dy));
  end;
end;

procedure TForm1.BTN_checkClick(Sender: TObject);
begin
// to do
end;

procedure TForm1.BTN_Kohonen_learnClick(Sender: TObject);
var nn,i,k,cell_x,cell_y,orig_idx:integer;
  x,y:array[1..s_width,1..s_height]of integer;
begin
  nn:=10000;
  for i:=1 to nn do
  begin
    orig_idx:=random(n_origs)+1;
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
      begin
        x[cell_x,cell_y]:=XOrig_elements[orig_idx,cell_x,cell_y];
        y[cell_x,cell_y]:=YOrig_elements[orig_idx,cell_x,cell_y];
      end;

    for k:=1 to n_kohonen do
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
      begin
        kohonen_w[1,k,cell_x,cell_y]:=kohonen_w[1,k,cell_x,cell_y]+
            alpha_koeff*(x[cell_x,cell_y]-kohonen_w[1,k,cell_x,cell_y]);
        kohonen_w[2,k,cell_x,cell_y]:=kohonen_w[2,k,cell_x,cell_y]+
            alpha_koeff*(y[cell_x,cell_y]-kohonen_w[2,k,cell_x,cell_y]);
      end;
  end;

  for i:=1 to nn do
  begin
    orig_idx:=random(n_origs)+1;
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
      begin
        x[cell_x,cell_y]:=XOrig_elements[orig_idx,cell_x,cell_y];
        y[cell_x,cell_y]:=YOrig_elements[orig_idx,cell_x,cell_y];
      end;

    for k:=1 to n_Kohonen do
    begin
      kohonen_d2[k]:=0;
      for cell_x:=1 to s_width do
        for cell_y:=1 to s_height do
        begin
          kohonen_d2[k]:=kohonen_d2[k]+sqr(kohonen_w[1,k,cell_x,cell_y]-x[cell_x,cell_y]);
          kohonen_d2[k]:=kohonen_d2[k]+sqr(kohonen_w[2,k,cell_x,cell_y]-y[cell_x,cell_y]);
        end;
    end;

    kohonen_winner:=1;
    for k:=1 to n_Kohonen do
      if kohonen_d2[k]<kohonen_d2[kohonen_winner] then kohonen_winner:=k;

    for k:=1 to n_Kohonen do kohonen_out[k]:=0;
    kohonen_out[kohonen_winner]:=1;

    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
      begin
        kohonen_w[1,kohonen_winner,cell_x,cell_y]:=kohonen_w[1,kohonen_winner,cell_x,cell_y]+
            alpha_koeff*(x[cell_x,cell_y]-kohonen_w[1,kohonen_winner,cell_x,cell_y]);
        kohonen_w[2,kohonen_winner,cell_x,cell_y]:=kohonen_w[2,kohonen_winner,cell_x,cell_y]+
            alpha_koeff*(y[cell_x,cell_y]-kohonen_w[2,kohonen_winner,cell_x,cell_y]);
      end;
  end;
  Redraw_widgets;
end;

procedure TForm1.BTN_Grossberg_learnClick(Sender: TObject);
var nn,i,k,cell_x,cell_y,orig_idx:integer;
  x,y:array[1..s_width,1..s_height]of integer;
begin
  nn:=10000;
  for i:=1 to nn do
  begin
    orig_idx:=random(n_origs)+1;
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
      begin
        x[cell_x,cell_y]:=XOrig_elements[orig_idx,cell_x,cell_y];
        y[cell_x,cell_y]:=YOrig_elements[orig_idx,cell_x,cell_y];
      end;

    for k:=1 to n_Kohonen do
    begin
      kohonen_d2[k]:=0;
      for cell_x:=1 to s_width do
        for cell_y:=1 to s_height do
        begin
          kohonen_d2[k]:=kohonen_d2[k]+sqr(kohonen_w[1,k,cell_x,cell_y]-x[cell_x,cell_y]);
          kohonen_d2[k]:=kohonen_d2[k]+sqr(kohonen_w[2,k,cell_x,cell_y]-y[cell_x,cell_y]);
        end;
    end;

    kohonen_winner:=1;
    for k:=1 to n_Kohonen do
      if kohonen_d2[k]<kohonen_d2[kohonen_winner] then kohonen_winner:=k;

    for k:=1 to n_Kohonen do kohonen_out[k]:=0;
    kohonen_out[kohonen_winner]:=1;

    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
        for k:=1 to n_kohonen do
        begin
          Grossberg_w[1,cell_x,cell_y,k]:=Grossberg_w[1,cell_x,cell_y,k]+
             betta_koeff*(x[cell_x,cell_y]-Grossberg_w[1,cell_x,cell_y,k])*kohonen_out[k];
          Grossberg_w[2,cell_x,cell_y,k]:=Grossberg_w[2,cell_x,cell_y,k]+
             betta_koeff*(y[cell_x,cell_y]-Grossberg_w[2,cell_x,cell_y,k])*kohonen_out[k];
        end;
  end;
  Redraw_widgets;
end;

procedure TForm1.BTN_Xorig_drawClick(Sender: TObject);
var cell_x,cell_y:integer;
begin
  for cell_x:=1 to s_width do
    for cell_y:=1 to s_height do
      with Sender as TButton do
        S_elements[cell_x,cell_y]:=XOrig_elements[tag,cell_x,cell_y];

  PB_receptorsPaint(PB_receptors);
  Forward_step;
  Redraw_widgets;
end;

procedure TForm1.BTN_Yorig_drawClick(Sender: TObject);
var cell_x,cell_y:integer;
begin
  for cell_x:=1 to s_width do
    for cell_y:=1 to s_height do
      with Sender as TButton do
        S_elements[cell_x,cell_y]:=YOrig_elements[tag,cell_x,cell_y];

  PB_receptorsPaint(PB_receptors);
  Forward_step;
  Redraw_widgets;
end;

procedure TForm1.BTN_Xorig_createClick(Sender: TObject);
var i,k,cell_x,cell_y,rnd_x,rnd_y:integer;
begin
  for i:=1 to n_origs do
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
        XOrig_elements[i,cell_x,cell_y]:=0;

  for i:=1 to n_origs do
    for k:=1 to 10 do
    begin
      rnd_x:=random(s_width)+1;
      rnd_y:=random(s_height)+1;
      XOrig_elements[i,rnd_x,rnd_y]:=1;
    end;

  PB_Xorig_Paint(PB_Xorig1);
  PB_Xorig_Paint(PB_Xorig2);
  PB_Xorig_Paint(PB_Xorig3);
  PB_Xorig_Paint(PB_Xorig4);
end;

procedure TForm1.BTN_Yorig_create1Click(Sender: TObject);
var i,k,cell_x,cell_y,rnd_x,rnd_y:integer;
begin
  for i:=1 to n_origs do
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
        YOrig_elements[i,cell_x,cell_y]:=0;

  for i:=1 to n_origs do
    for k:=1 to 10 do
    begin
      rnd_x:=random(s_width)+1;
      rnd_y:=random(s_height)+1;
      YOrig_elements[i,rnd_x,rnd_y]:=1;
    end;

  PB_Yorig_Paint(PB_Yorig1);
  PB_Yorig_Paint(PB_Yorig2);
  PB_Yorig_Paint(PB_Yorig3);
  PB_Yorig_Paint(PB_Yorig4);
end;

procedure TForm1.BTN_reset_receptorsClick(Sender: TObject);
var cell_x,cell_y:integer;
begin
     randomize;
     X_flag:=RB_X.Checked;

     for cell_x:=1 to s_width do
       for cell_y:=1 to s_height do
         S_elements[cell_x,cell_y]:=0;

     PB_receptorsPaint(self);
     Forward_step;
     Redraw_widgets;
end;

procedure TForm1.BTN_reset_wClick(Sender: TObject);
var k,cell_x,cell_y:integer;
begin
  for k:=1 to n_Kohonen do
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
      begin
        kohonen_w[1,k,cell_x,cell_y]:=(random-0.5)/100;
        kohonen_w[2,k,cell_x,cell_y]:=(random-0.5)/100;
      end;

  for cell_x:=1 to s_width do
    for cell_y:=1 to s_height do
      for k:=1 to n_Kohonen do
      begin
        grossberg_w[1,cell_x,cell_y,k]:=(random-0.5)/100;
        grossberg_w[2,cell_x,cell_y,k]:=(random-0.5)/100;
      end;
  Forward_step;
  Redraw_widgets;
end;

procedure TForm1.BTN_origs_clearClick(Sender: TObject);
var i,k,cell_x,cell_y:integer;
begin
  for i:=1 to n_origs do
    for cell_x:=1 to s_width do
      for cell_y:=1 to s_height do
      begin
        XOrig_elements[i,cell_x,cell_y]:=0;
        YOrig_elements[i,cell_x,cell_y]:=0;
      end;

  PB_Xorig_Paint(PB_Xorig1);
  PB_Xorig_Paint(PB_Xorig2);
  PB_Xorig_Paint(PB_Xorig3);
  PB_Xorig_Paint(PB_Xorig4);

  PB_Yorig_Paint(PB_Yorig1);
  PB_Yorig_Paint(PB_Yorig2);
  PB_Yorig_Paint(PB_Yorig3);
  PB_Yorig_Paint(PB_Yorig4);
end;

end.

