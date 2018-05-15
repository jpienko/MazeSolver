function varargout = chooseParameters(varargin)
% CHOOSEPARAMETERS MATLAB code for chooseParameters.fig
%      CHOOSEPARAMETERS, by itself, creates a new CHOOSEPARAMETERS or raises the existing
%      singleton*.
%
%      H = CHOOSEPARAMETERS returns the handle to a new CHOOSEPARAMETERS or the handle to
%      the existing singleton*.
%
%      CHOOSEPARAMETERS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHOOSEPARAMETERS.M with the given input arguments.
%
%      CHOOSEPARAMETERS('Property','Value',...) creates a new CHOOSEPARAMETERS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before chooseParameters_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to chooseParameters_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help chooseParameters

% Last Modified by GUIDE v2.5 15-May-2018 16:42:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @chooseParameters_OpeningFcn, ...
                   'gui_OutputFcn',  @chooseParameters_OutputFcn, ...
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


% --- Executes just before chooseParameters is made visible.
function chooseParameters_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to chooseParameters (see VARARGIN)

% Choose default command line output for chooseParameters
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes chooseParameters wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = chooseParameters_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




function antsNumber_Callback(hObject, eventdata, handles)
% hObject    handle to antsNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of antsNumber as text
%        str2double(get(hObject,'String')) returns contents of antsNumber as a double


% --- Executes during object creation, after setting all properties.
function antsNumber_CreateFcn(hObject, eventdata, handles)
% hObject    handle to antsNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iterationsNumbers_Callback(hObject, eventdata, handles)
% hObject    handle to iterationsNumbers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iterationsNumbers as text
%        str2double(get(hObject,'String')) returns contents of iterationsNumbers as a double


% --- Executes during object creation, after setting all properties.
function iterationsNumbers_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iterationsNumbers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ok.
function ok_Callback(hObject, eventdata, handles)
% hObject    handle to ok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global iterationsNumber; 
global antsNumber;
global pheromonePerAnt;
global pheromoneDissperance;
iterationsNumber=str2double(get(handles.iterationsNumbers,'String'));
antsNumber=str2double(get(handles.antsNumber,'String'));
pheromonePerAnt=str2double(get(handles.ppa,'String'));
pheromoneDissperance=str2double(get(handles.pd,'String'));
close(chooseParameters);



function ppa_Callback(hObject, eventdata, handles)
% hObject    handle to ppa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ppa as text
%        str2double(get(hObject,'String')) returns contents of ppa as a double


% --- Executes during object creation, after setting all properties.
function ppa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ppa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
