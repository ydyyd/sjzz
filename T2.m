 function varargout = T2(varargin)
% T MATLAB code for T.fig
%      T, by itself, creates a new T or raises the existing
%      singleton*.
%
%      H = T returns the handle to a new T or the handle to
%      the existing singleton*.
%
%      T('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in T.M with the given input arguments.
%
%      T('Property','Value',...) creates a new T or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before T_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to T_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help T

% Last Modified by GUIDE v2.5 10-Jan-2021 23:02:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @T_OpeningFcn, ...
                   'gui_OutputFcn',  @T_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before T is made visible.
function T_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to T (see VARARGIN)

% Choose default command line output for T

set(handles.axes1,'color','w'); %����������
axes(handles.axes1); %ʹ��������axes������ͼ�����ʾλ�ã�ͬʱ��Ҫ��axes����һ�����panel�ڲ�������ͼ��ᳬ��axes����Χ��
axis([-12,12,-4,4]); %�����᷶Χ
hold on
axis off;   %��������

xa0=5;%������������

handles.xa0=xa0;
xb0=xa0;
xb1=(xa0+4);

a1=line([xa0;xa0],[2.8;-2.8],'color','m','linestyle','-','linewidth',5);   %���û���
a8=line([-5;5],[3;3],'color','b','linestyle','-','linewidth',8);%��������
a9=line([-5;5],[-3;-3],'color','b','linestyle','-','linewidth',8);%��������
a10=line([-5;-5],[3;-3],'color','b','linestyle','-','linewidth',8);%��������

a3=line([-4.5;-4.5],[2.5,6],'color','g','linestyle','-','linewidth',4);%������ѹ������

a2=line([xb0;xb1],[0;0],'color','m','linewidth',5);%��������
len1=4;%���˳�



%������ѹ��
theta1=0:2*pi/100:2*pi;%��������ֱ���������Բ
x1=cos(theta1)-4.5;%(-3,7)ΪԲ���ĵ������
y1=sin(theta1)+7;
plot(x1,y1,'k','linewidth',3);%��Բ
axis equal;%������x\y�ȱ���,������䣬Բ������������Բ
text(-6,9,'��ѹ��','fontsize',16,'color','r');     




%��ѹ��
set(handles.axes2,'color','w');
axes(handles.axes2);
text(-0.2,1.2,'��ѹ��','fontsize',20,'color','b');  
theta1=0:2*pi/100:2*pi;%��������ֱ���������Բ
x1=cos(theta1);
y1=sin(theta1);
plot(handles.axes2,x1,y1,'k','linewidth',16);%��Բ
axis off;  %ȡ����������ʾ   
axis equal;%������x\y�ȱ���
hold on;
plot(0,0,'.','Markersize',50);%����Բ�����ĵ㡣
%����ʱ�̶��ߺͷ̶ֿ���
theta2=0:2*pi/12:2*pi;
for i=1:length(theta2)-1% ѭ�����������̶���
     h=plot([0.8*cos(theta2(i)),0.97*cos(theta2(i))],[0.8*sin(theta2(i)),0.97*sin(theta2(i))]);
     set(h,'linewidth',3);
     set(h,'color','black');%�����������Էų�һ��plot��䣬��Ϊplot����������������̫������д����������䣻����̶Ⱥ�����Ҫ����ѹ��������޸�
     num=10*(i-1);%��������ʾ������
     text(0.7*cos(theta2(i)+3*pi/2),0.7*sin(theta2(i)+3*pi/2),num2str(num),'FontSize',16,'HorizontalAlignment','center');
end
theta3=0:2*pi/60:2*pi;
for i=1:length(theta3)%ѭ�������Ʒ̶ֿ���
     h=plot([0.9*cos(theta3(i)),0.97*cos(theta3(i))],[0.9*sin(theta3(i)),0.97*sin(theta3(i))]);
     set(h,'color','black')
end
%����ָ��
%����ָ��ĳ�ʼλ��
theta0=-pi/2;%��ͨ������theta0���ı�ָ��ĳ�ʼλ��
handles. h1=plot([0,0.6*cos(theta0)],[0,0.6*sin(theta0)],'r','linewidth',6);%����h1�������Ϊ����һ������ɾ��������


handles.output = hObject;




% Update handles structure
guidata(hObject, handles);
%hObject=figure;


% UIWAIT makes T wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = T_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
       
function pressure_Callback(~, ~, ~)
% hObject    handle to pressure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pressure as text
%        str2double(get(hObject,'String')) returns contents of pressure as a double


% --- Executes during object creation, after setting all properties.
function pressure_CreateFcn(hObject, ~, ~)
% hObject    handle to pressure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, ~, ~)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
input=str2num(get(hObject,'String'));





% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, ~, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, ~, ~)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
input=str2num(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, ~, ~)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(~, ~, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T=get(handles.edit1,'string');
V=get(handles.edit2,'string');
%���º���
P=6651.2*str2num(T)*0.0001/str2num(V);%ת��Ϊ10��5�η�
pc=num2str(P);%��ѹ��ֵת��Ϊ�ַ���Ϊ������ʾ����
%���׻����˶�����
vf=str2num(V);
vx=vf-5;%������������꣬�������ײ�10��5+5��

handles.vy=vx;%����������˵����꣬
vz=vy+4;%���������Ҷ˵����꣬


dx=(10-vf)/20;

%xa0=handles.xa0;
xa0=5;
pausetime=0.01;
for t=0:20      
    drawnow;
    xaa1=xa0-dx*t;%�������˶������е��Ҷ�������λ��
    
    xbb0=xa0-dx*t;
    xbb1=xb1-dx*t;
    
    
    vff=5+xaa1;%�����˶��У���������
    Px=6651.2*str2num(T)*0.0001/vff;%pxΪ����ÿ���˶�λ�ö�Ӧ��ѹǿֵ
    position_pointer=2*pi*(Px-30)/120;
    
   
    
    set(handles.a1,'xdata',[xaa1;xaa1],'ydata',[3;-3]);%���û����˶�
    
    set(handles.a2,'xdata',[xbb0;xbb1],'ydata',[0;0]);%�������˵��˶�
    
    set(handles.h1,'xdata',[0,0.6*cos(position_pointer)],'ydata',[0,0.6*sin(position_pointer)]);%ѹ����ı仯
     pause(pausetime);
    
    
  
    
        
end
pause(1);


set(handles.pressure,'string',pc);%�ѽ�ѹ����������޸�tagΪpressure,���Ե�������ؼ�Ϊhandles.pressure
 