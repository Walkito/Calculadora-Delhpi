unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Math.Vectors, FMX.Controls3D,
  FMX.Layers3D, FMX.Edit;

type
  Tfrm_Calculadora = class(TForm)
    btn_0: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_8: TButton;
    btn_7: TButton;
    btn_9: TButton;
    btn_ponto: TButton;
    btn_igual: TButton;
    btn_mult: TButton;
    btn_dividir: TButton;
    btn_subtrair: TButton;
    btn_somar: TButton;
    caixa_topo: TPanel;
    txt_num1: TEdit;
    lb_operador: TLabel;
    txt_num2: TEdit;
    btn_apagar: TButton;
    btn_limpar: TButton;
    procedure btn_subtrairClick(Sender: TObject);
    procedure btn_somarClick(Sender: TObject);
    procedure btn_multClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure btn_pontoClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Calculadora: Tfrm_Calculadora;

implementation

{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.iPhone4in.fmx IOS}
{$R *.iPhone55in.fmx IOS}
{$R *.Surface.fmx MSWINDOWS}

procedure Tfrm_Calculadora.btn_0Click(Sender: TObject);
begin
      if (lb_operador.Text = '') then
   begin
         txt_num1.Text := txt_num1.Text + '0';
   end
   else
   begin
        txt_num2.Text := txt_num2.Text + '0';
   end;
end;

procedure Tfrm_Calculadora.btn_1Click(Sender: TObject);
begin
   if (lb_operador.Text = '') then
   begin
         txt_num1.Text := txt_num1.Text + '1';
   end
   else
   begin
        txt_num2.Text := txt_num2.Text + '1';
   end;
end;

procedure Tfrm_Calculadora.btn_2Click(Sender: TObject);
begin
      if (lb_operador.Text = '') then
   begin
         txt_num1.Text := txt_num1.Text + '2';
   end
   else
   begin
        txt_num2.Text := txt_num2.Text + '2';
   end;
end;

procedure Tfrm_Calculadora.btn_3Click(Sender: TObject);
begin
   if (lb_operador.Text = '') then
   begin
         txt_num1.Text := txt_num1.Text + '3';
   end
   else
   begin
        txt_num2.Text := txt_num2.Text + '3';
   end;
end;

procedure Tfrm_Calculadora.btn_4Click(Sender: TObject);
begin
   if (lb_operador.Text = '') then
   begin
         txt_num1.Text := txt_num1.Text + '4';
   end
   else
   begin
        txt_num2.Text := txt_num2.Text + '4';
   end;
end;

procedure Tfrm_Calculadora.btn_5Click(Sender: TObject);
begin
   if (lb_operador.Text = '') then
   begin
         txt_num1.Text := txt_num1.Text + '5';
   end
   else
   begin
        txt_num2.Text := txt_num2.Text + '5';
   end;
end;

procedure Tfrm_Calculadora.btn_6Click(Sender: TObject);
begin
   if (lb_operador.Text = '') then
   begin
         txt_num1.Text := txt_num1.Text + '6';
   end
   else
   begin
        txt_num2.Text := txt_num2.Text + '6';
   end;
end;

procedure Tfrm_Calculadora.btn_7Click(Sender: TObject);
begin
   if (lb_operador.Text = '') then
   begin
         txt_num1.Text := txt_num1.Text + '7';
   end
   else
   begin
        txt_num2.Text := txt_num2.Text + '7';
   end;
end;

procedure Tfrm_Calculadora.btn_8Click(Sender: TObject);
begin
   if (lb_operador.Text = '') then
   begin
         txt_num1.Text := txt_num1.Text + '8';
   end
   else
   begin
        txt_num2.Text := txt_num2.Text + '8';
   end;
end;

procedure Tfrm_Calculadora.btn_9Click(Sender: TObject);
begin
   if (lb_operador.Text = '') then
   begin
         txt_num1.Text := txt_num1.Text + '9';
   end
   else
   begin
        txt_num2.Text := txt_num2.Text + '9';
   end;
end;

procedure Tfrm_Calculadora.btn_apagarClick(Sender: TObject);
begin
   if (lb_operador.Text = '') then
   begin
      txt_num1.Text := Copy(txt_num1.Text, 0, length(txt_num1.Text) - 1);
   end
   else
   begin
      txt_num2.Text := Copy(txt_num2.Text, 0, length(txt_num2.Text) - 1);
   end;
end;

procedure Tfrm_Calculadora.btn_dividirClick(Sender: TObject);
begin
   lb_operador.Text := '/';
   btn_somar.Enabled := true;
   btn_dividir.Enabled := false;
   btn_mult.Enabled := true;
   btn_subtrair.Enabled := true;
end;

procedure Tfrm_Calculadora.btn_igualClick(Sender: TObject);
   var n1, n2 : double;
   var x: Char;
begin
   n1 := strToFloat(txt_num1.Text);
   n2 := strToFloat(txt_num2.Text);

   x := lb_operador.Text[1];

   case x of
      '+': begin  ShowMessage (FloatToStr(n1+n2)); end;
      '-': begin  ShowMessage (FloatToStr(n1-n2)); end;
      '*': begin  ShowMessage (FloatToStr(n1*n2)); end;
      '/': begin  ShowMessage (FloatToStr(n1/n2)); end;
   end;

   lb_operador.Text := '';
   txt_num1.Text := '';
   txt_num2.Text := '';

      btn_somar.Enabled := true;
   btn_dividir.Enabled := true;
   btn_mult.Enabled := true;
   btn_subtrair.Enabled := true;
end;

procedure Tfrm_Calculadora.btn_limparClick(Sender: TObject);
begin
   txt_num1.Text := '';
   txt_num2.Text := '';
   lb_operador.Text := '';
end;

procedure Tfrm_Calculadora.btn_multClick(Sender: TObject);
begin
   lb_operador.Text := '*';
   btn_somar.Enabled := true;
   btn_dividir.Enabled := true;
   btn_mult.Enabled := false;
   btn_subtrair.Enabled := true;
end;

procedure Tfrm_Calculadora.btn_pontoClick(Sender: TObject);
begin
      if (lb_operador.Text = '') then
   begin
         txt_num1.Text := txt_num1.Text + ',';
   end
   else
   begin
        txt_num2.Text := txt_num2.Text + ',';
   end;
end;

procedure Tfrm_Calculadora.btn_somarClick(Sender: TObject);
begin
   lb_operador.Text := '+';
   btn_somar.Enabled := false;
   btn_dividir.Enabled := true;
   btn_mult.Enabled := true;
   btn_subtrair.Enabled := true;
end;

procedure Tfrm_Calculadora.btn_subtrairClick(Sender: TObject);
begin
   lb_operador.Text := '-';
   btn_somar.Enabled := true;
   btn_dividir.Enabled := true;
   btn_mult.Enabled := true;
   btn_subtrair.Enabled := false;
end;

end.
