program AllName;

{$APPTYPE CONSOLE}

uses
  //Forms,
  //Windows,
  SysUtils;

{$R *.RES}
var
  sInput: string;
  nInteger: Integer;
  nInput: Integer;
Label
  Error1;
Label
  Error2;
Label
  Error3;
begin
  //Application.Initialize;

  try
    Randomize;
    Writeln('�����޷����У�����ѡ��ش��������⣡');
    Error1:
    Writeln('1���ж���ֵ��С');
    Writeln('2���Խת��');
    Writeln('3���˳�����');
    Readln(sInput);
    if sInput = '1' then begin
      nInteger := Random(100);
      Writeln('��ѡ�����ж���ֵ��С��������һ��0~100֮���������');
      Error2:
      Readln(sInput);
      nInput := StrToIntDef(sInput, -1);
      if nInput = nInteger then begin
        Writeln('��ϲ��ش���ȷ�����������޷����У���������⣡');
        Goto Error1;
      end else
      if nInput > nInteger then begin
        Writeln('���������ֵ����ȷ��Ҫ����������룡');
        Goto Error2;
      end else
      if nInput < nInteger then begin
        Writeln('���������ֵ����ȷ��ҪС����������룡');
        Goto Error2;
      end;
    end else
    if sInput = '2' then begin
      Error3:
      Writeln('���ϡ��ƹϡ����ϡ��Ϲ϶��ܳԣ�ʲô�ϲ��ܳԣ�');
      Readln(sInput);
      if sInput = 'ɵ��' then begin
        Writeln('��ϲ��ش���ȷ�����������޷����У���������⣡');
        Goto Error1;
      end else begin
        Writeln('�ش������������⣡');
        Goto Error3;
      end;

    end else
    if sInput = '3' then begin
      Exit;
    end else begin
      Writeln('�����������������ѡ��');
      Goto Error1;
    end;
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
