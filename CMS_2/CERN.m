function varargout = CERN(varargin)


% CERN MATLAB code for CERN.fig
%      CERN, by itself, creates a new CERN or raises the existing
%      singleton*.
%
%      H = CERN returns the handle to a new CERN or the handle to
%      the existing singleton*.
%
%      CERN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CERN.M with the given input arguments.
%
%      CERN('Property','Value',...) creates a new CERN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CERN_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CERN_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CERN

% Last Modified by GUIDE v2.5 05-Dec-2018 12:04:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CERN_OpeningFcn, ...
                   'gui_OutputFcn',  @CERN_OutputFcn, ...
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


% --- Executes just before CERN is made visible.
function CERN_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CERN (see VARARGIN)

% Choose default command line output for CERN
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CERN wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CERN_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
% %image(imread('http://te-dep-epc-hpc-section.web.cern.ch/te-dep-epc-hpc-section/machines/pagesources/Cern-Accelerator-Complex.jpg'))
% 
% axes(axisHandle)
% matlabImage = imread('http://te-dep-epc-hpc-section.web.cern.ch/te-dep-epc-hpc-section/machines/pagesources/Cern-Accelerator-Complex.jpg');
% image(matlabImage)
% axis off
% axis image


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% imshow(hObject, 'http://te-dep-epc-hpc-section.web.cern.ch/te-dep-epc-hpc-section/machines/pagesources/Cern-Accelerator-Complex.jpg')
% 
% axes(handles.axes1)
% matlabImage = imread('http://te-dep-epc-hpc-section.web.cern.ch/te-dep-epc-hpc-section/machines/pagesources/Cern-Accelerator-Complex.jpg');
% image(matlabImage)
% axis off
% axis image


% cern_bluprint_url = 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Cern-accelerator-complex.svg/1200px-Cern-accelerator-complex.svg.png'
 axes(hObject)
% imshow( imread(cern_bluprint_url ) )
imshow('LHC_picture2');

% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on key release with focus on figure1 or any of its controls.
function figure1_WindowKeyReleaseFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was released, in lower case
%	Character: character interpretation of the key(s) that was released
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) released
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure
main_exp_url ='https://lhc-machine-outreach.web.cern.ch/lhc-machine-outreach/images/lhc-schematic.jpg'
imshow( imread(main_exp_url ) )


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton1.
function pushbutton1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
CMS

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% cern_bluprint_url = 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Cern-accelerator-complex.svg/1200px-Cern-accelerator-complex.svg.png'
%  axes(hObject)
% imshow( imread(cern_bluprint_url ) )




% Hint: place code in OpeningFcn to populate axes4


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure(1);
imshow('googlemap.PNG');
% text(0.05, 0.95, 0.0, '<a href="https://www.google.com/maps/d/viewer?msa=0&mid=1PHJwdUIvKSxuGmfwWx8sVIlW1bk&ll=46.27080024213411%2C6.085556920776298&z=13">')
% fName = '<html><a href="https://www.google.com/maps/d/viewer?msa=0&mid=1PHJwdUIvKSxuGmfwWx8sVIlW1bk&ll=46.27080024213411%2C6.085556920776298&z=13"></a>.';
% str = '<html><a href="">Google Map(Click Here!!)</a>';
% hButton = uicontrol('Style','pushbutton', 'Position',[320 50 170 20], ...
%     'String',str, 'Callback',@(o,e)open(fName));
% 
% jButton = findjobj(hButton);
% jButton.setCursor( java.awt.Cursor(java.awt.Cursor.HAND_CURSOR) );
% jButton.setContentAreaFilled(0); 
% imshow('LHC_picture2.jpg');


% --- Executes during object creation, after setting all properties.
function axes5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes5
% [coords, h] = ellipse3D(10,30,0,0,0);
% px = coords(1,1);
% py = coords(2,1);
% pz = coords(3,1);
% for i=1:length(coords(1,:))
% 	plot3( coords(1,:), coords(2,:), coords(3,:), px, py, pz,'.-', 'MarkerSize',20);
% 	pause(0.01);
% 	px = coords(1,i);
% 	py = coords(2,i);
% 	pz = coords(3,i);
% end
% 

% --- Executes on mouse press over axes background.
function axes6_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[coords, h] = ellipse3D(10,30,0,0,0);
% px = coords(1,1);
% py = coords(2,1);
% pz = coords(3,1);
for i=1:length(coords(1,:))
    px = coords(1,i);
	py = coords(2,i);
	pz = coords(3,i);
    
    px_opposite = coords(1,length(coords(1,:))-i+1);
    py_opposite = coords(2,length(coords(2,:))-i+1);
    pz_opposite = coords(3,length(coords(3,:))-i+1);
	plot3( coords(1,:), coords(2,:), coords(3,:), px, py, pz,'.-', 'MarkerSize',20);
    hold on;
    plot3( coords(1,:), coords(2,:), coords(3,:), px_opposite, py_opposite, pz_opposite,'.-', 'MarkerSize',20);
    hold off;
%     plot3( coords(1,:), coords(2,:), coords(3,:),px, py, pz,'.-', 'MarkerSize',20, px_opposite, py_opposite, pz_opposite,'.-', 'MarkerSize',20);
    axis off;
	pause(0.01);
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% simulation button
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global coords_LHC coords_SPS coords_TTS2 coords_PS
[coords_LHC, h_LHC] = ellipse3D(26700, 26700, 0, 0, 0);
[coords_SPS, h_SPS] = ellipse3D(6900, 6900, 19800/sqrt(2), -19800/sqrt(2),  0);
[coords_PS, h_PS] = ellipse3D(628, 628,  32523 , -30743 , 0, 90);
points_number = 200;
coords_TTS2 = zeros(3,points_number );
coords_TTS2(1,:) = linspace( coords_PS(1,end), coords_SPS(1,262), points_number );
coords_TTS2(2,:) = linspace( coords_PS(2,end), coords_SPS(2,262), points_number );
[coords_PSB, h_PSB] = ellipse3D(628, 628, 22983 , -29693 , 0,80);
points_numb_iso = 250;
coords_iso =  zeros(3,points_numb_iso );
coords_iso(1,:) = linspace( coords_PSB(1,end), coords_PS(1,1), points_numb_iso );
coords_iso(2,:) = linspace( coords_PSB(2,end), coords_PS(2,1), points_numb_iso );

time_increase = 0.0005;


[coords_LHC, h_LHC] = ellipse3D(26700, 26700, 0, 0, 0);

% PSB
Collide_Simulation(0, 0, coords_PSB, coords_LHC, coords_SPS, coords_TTS2, coords_PS,  coords_iso);
% iso 
Collide_Simulation_Linear(0, 0.0002, coords_iso, coords_PSB, coords_LHC, coords_SPS, coords_TTS2, coords_PS);
% PS
Collide_Simulation(0, 0.0005, coords_PS, coords_PSB, coords_LHC, coords_SPS, coords_TTS2,   coords_iso);
% TTS2
Collide_Simulation_Linear(0, 0.0003,  coords_TTS2, coords_iso, coords_PSB, coords_LHC, coords_SPS, coords_PS);
% SPS
index=[262:300, 1:261];
Collide_Simulation(index, 0.01, coords_SPS, coords_PSB, coords_LHC,  coords_TTS2, coords_PS,  coords_iso);
% LHC
index=[262:300, 1:261];
index = repmat(index, 1,2);
Collide_Simulation(index, 0.01,  coords_LHC, coords_SPS, coords_PSB, coords_TTS2, coords_PS,  coords_iso);

index = [262:300, 1:37];
Collision(index, 0.01,  coords_LHC, coords_SPS, coords_PSB, coords_TTS2, coords_PS,  coords_iso);
text(coords_LHC(1,37)+7000, coords_LHC(2,37)+10000,0, 'CMS');


% --- Executes during object creation, after setting all properties.
function axes7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
imshow('LHC_picture.jpg');

% Hint: place code in OpeningFcn to populate axes7


% --- Executes during object creation, after setting all properties.
function axes8_CreateFcn(hObject, eventdata, handles)
imshow('LHC_picture.jpg');
% hObject    handle to axes8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes8
