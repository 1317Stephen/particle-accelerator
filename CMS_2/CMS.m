function varargout = CMS(varargin)
%CMS MATLAB code file for CMS.fig
%      CMS, by itself, creates a new CMS or raises the existing
%      singleton*.
%
%      H = CMS returns the handle to a new CMS or the handle to
%      the existing singleton*.
%
%      CMS('Property','Value',...) creates a new CMS using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to CMS_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      CMS('CALLBACK') and CMS('CALLBACK',hObject,...) call the
%      local function named CALLBACK in CMS.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CMS

% Last Modified by GUIDE v2.5 05-Dec-2018 12:05:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CMS_OpeningFcn, ...
                   'gui_OutputFcn',  @CMS_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before CMS is made visible.
function CMS_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for CMS
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CMS wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CMS_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global url
global data

% url = get(handles.variable, 'String');
disp(url)
websave('data.csv',url)
data = csvread('data.csv',1,0);
 assignin('base','data',data);
disp(data(1,:))



% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)

global url temp1
guidata(hObject,handles)

contents = cellstr(get(handles.listbox2, 'String'));
temp1 = contents{get(handles.listbox2, 'Value')};
assignin('base','temp1',temp1);
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global type_n
global data
% Dimuon
global runtime event e1 px1 py1 pz1 pt1 eta1 phi1 q1  e2 px2 py2 pz2 pt2 eta2 phi2 q2 m

% Run2011A
global pt eta phi q chiSq dxy iso met phimet 
% url = get(handles.variable, 'String');

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2
if strcmp(temp1, 'Dimuon events with invariant mass range 2-5 GeV for public education and outreach')
    type_n=1
    url = 'http://opendata.cern.ch/record/301/files/dimuon-Jpsi.csv';
        disp(url)
    websave('data.csv',url)
    data = csvread('data.csv',1,1);
     
    disp(data(1,:))
    
    e1 = data(:,3);
    px1 = data(:,4);
    py1 = data(:,5);
    pz1 = data(:,6);
    pt1 = data(:,7);
    eta1 = data(:,8);
    phi1 = data(:,9);
    q1 = data(:,10);
    e2 = data(:,11);
    px2 = data(:,12);
    py2 = data(:,13);
    pz2 = data(:,14);
    eta2 = data(:,15);
    phi2 = data(:,16);
    q2 = data(:,17);
    m = data(:,18);
elseif strcmp(temp1, 'Datasets derived from the Run2011A SingleElectron, SingleMu, DoubleElectron, and DoubleMu primary datasets')
    
    type_n=2
     url = 'http://opendata.cern.ch/record/545/files/Wmunu.csv';
  %  url = 'http://opendata.cern.ch/record/545/files/Dimuon_SingleMu.csv';
        disp(url)
    websave('data.csv',url)
    data = csvread('data.csv',1,0);
    disp(data(1,:));
    
    pt = data(:,3);
    eta = data(:,4);
    phi = data(:,5);
    q = data(:,6);
    chiSq = data(:,7);
    dxy = data(:,8);
    iso = data(:,9);
    met = data(:,10);
    phimet = data(:,11);
    
    
else
    url = 'test';
end


runtime = data(:,1);
    event = data(:,2);

    
    
assignin('base','data',data);
assignin('base','type_n',type_n);
 assignin('base','url',url);
assignin('base','runtime',runtime);
assignin('base','event',event);
assignin('base','e1',e1);
assignin('base','px1',px1);
assignin('base','py1',py1);
assignin('base','pz1',pz1);
assignin('base','pt1',pt1);
assignin('base','eta1',eta1);
assignin('base','phi1',phi1);
assignin('base','q1',q1);

assignin('base','e2',e2);
assignin('base','px2',px2);
assignin('base','py2',py2);
assignin('base','pz2',pz2);
assignin('base','pt2',pt2);
assignin('base','eta2',eta2);
assignin('base','phi2',phi2);
assignin('base','q2',q2);
assignin('base','m',m);

assignin('base','pt',pt);
assignin('base','phi',phi);
assignin('base','chiSq',chiSq);
assignin('base','met',met);
assignin('base','phimet',phimet);
assignin('base','eta',eta);
assignin('base','dxy',dxy);
assignin('base','iso',iso);

% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global data
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f = figure;
t = uitable(f);
set(t,'Data',data);
global type_n
set(t,'Position',[20 20 500 400]);
if type_n==1
    set(t, 'columnname', {'Run', 'Event', 'e1', 'px1','py1','pz1','pt1','eta1','phi1','q1','e2', 'px2','py2','pz2','pt2','eta2','phi2','q2','m'});
elseif type_n==2
    set(t,'columnname',{'run','event','pt','eta','phi','q','chiSq','dxy','iso','met','phimet'});
end




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

% Momentum
global px1 px2 py1 py2 pz1 pz2 e1 e2 type_n
global px py pz p e phi eta met


if type_n==1
    px = px1+px2;
    py = py1+py2;
    pz = pz1+pz2;

    p = [px py pz];
    e = e1+e2;

    assignin('base','px',px);
    assignin('base','py',py);
    assignin('base','pz',pz);
    assignin('base','p',p);
    assignin('base','e',e);


    figure('Name', 'Momentum', 'NumberTitle', 'off');
    makePipe([abs(min(pz))+10], min(px)-30, max(px)+30 ); hold on
    scatter3(px,py,pz,30, p,'filled');
elseif type_n==2
    figure('Name', 'Momentum', 'NumberTitle', 'off');
    [x, y, z] = pol2cart(eta, phi, zeros( size(eta)));
    makePipe([abs(min(z))+10], min(x)-30, max(x)+30 ); hold on
    scatter3(x,y,z,30, met,'filled');

end
    title('Momentum');
    xlabel({'px'}); ylabel({'py'}); zlabel({'pz'});





% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Invariant mass
global px1 px2 py1 py2 pz1 pz2 e1 e2 px py pz p type_n dxy met
global e sizeP mass
assignin('base','e',e);
assignin('base','sizeP',sizeP);
assignin('base','mass',mass);

if type_n==1
    disp('suc')
    e = e1+e2;
    sizeP = sqrt(px.^2 + py.^2 + pz.^2);	% no norm!
    mass = sqrt(e.^2 - sizeP.^2);
    
    
    figure('Name', 'Invariant Mass', 'NumberTitle', 'off');
    morebins(histogram(mass,50));
    % 'count', 'countdensity', 'cumcount', 'probability', 'pdf', 'cdf'
    % morebins(histogram(mass,50,'Normalization','countdensity'));
    % histM = hist(mass)./sum(mass);
    % bar(histM);
    title('Invariant Mass');
    xlabel({'mass'}); ylabel({'frequency'});
elseif type_n==2
%     mass = sqrt(
    figure('Name', 'Invariant Mass', 'NumberTitle', 'off');
    morebins(histogram(met,50));
end


assignin('base','e',e);
assignin('base','sizeP',sizeP);
assignin('base','mass',mass);





% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% Collider DB
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global conn event_name collider_name event_numb event temp1 data
conn = connJDBC();

event_numb = string(num2str(event)); 
collider_name = string(repmat('CMS',length(event_numb),1));
event_name = repmat(string(temp1), length(event_numb),1);

assignin('base','conn',conn);
assignin('base','event_name',event_name);

data = table(collider_name(1:50), event_name(1:50),event_numb(1:50),'VariableNames',{'collider_name' 'event_name' 'event_number' });
assignin('base','data',data);

 sqlwrite(conn, 'Collider', data);
% 


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global conn event_name collider_name event_numb event temp1 data type_n
global mass px py pz
conn = connJDBC();

% if type_n==1
    inv_mass = string(num2str(mass));
    even_numb =  string(num2str(event));
    px_s = string(num2str(px));
    py_s = string(num2str(py));
    pz_s = string(num2str(pz));
    
    event_name = repmat(string(temp1), length(px),1);
    
        assignin('base','conn',conn);
    assignin('base','data',data);
%     data = table(mass(1:10), even_numb(1:10), px(1:10), px(1:10), px(1:10), event_name(1:10),'VariableNames', {'invariant_mass' 'event_number' 'px' 'py' 'pz' 'event_name'})
    
    data = table(mass(1:100), even_numb(1:100), px(1:100), py(1:100), pz(1:100), event_name(1:100),'VariableNames', {'invariant_mass' 'event_number' 'px' 'py' 'pz' 'event_name'})

    sqlwrite(conn, 'Physial_property', data);
% elseif type_n==2
%     data = table(mass(1:10), even_numb(1:10), px(1:10), px(1:10), px(1:10), event_name(1:10),'VariableNames', {'invariant_mass' 'event_number' 'px' 'py' 'pz' 'event_name'});
% end



% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA
global conn
f = uifigure;
select_data = select(conn, 'SELECT * FROM Collider');
t = uitable(f,'Data',select_data,'Position',[20 20 262 204]);
set(t,'Position',[20 20 500 400]);


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global conn


f = uifigure;
select_data = select(conn, 'SELECT * FROM Physial_property');
t = uitable(f,'Data',select_data,'Position',[20 20 262 204]);
set(t,'Position',[20 20 500 400]);
