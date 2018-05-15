function varargout = bioni(varargin)
% BIONI MATLAB code for bioni.fig
%      BIONI, by itself, creates a new BIONI or raises the existing
%      singleton*.
%
%      H = BIONI returns the handle to a new BIONI or the handle to
%      the existing singleton*.
%
%      BIONI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BIONI.M with the given input arguments.
%
%      BIONI('Property','Value',...) creates a new BIONI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bioni_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bioni_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bioni

% Last Modified by GUIDE v2.5 06-May-2018 12:21:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bioni_OpeningFcn, ...
                   'gui_OutputFcn',  @bioni_OutputFcn, ...
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


% --- Executes just before bioni is made visible.
function bioni_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bioni (see VARARGIN)

% Choose default command line output for bioni
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bioni wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bioni_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

global mazeNum;
pow = 40;
maze = resizeMaze(generate_maze(mazeNum),pow);
set(handles.axes1,'Units','pixels');
axes(handles.axes1);
imshow(maze);
set(handles.axes1,'Units','normalized');
set(handles.mazeNumber,'userdata',mazeNum);
set(handles.mazeNumber,'string',num2str(mazeNum));


% --- Executes on button press in bPrevious.
function bPrevious_Callback(hObject, eventdata, handles)
% hObject    handle to bPrevious (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mazeNum;
mazeNum = mazeNum-1;
if mazeNum<1
    mazeNum=1;
end
pow = 40;
maze = resizeMaze(generate_maze(mazeNum),pow);
set(handles.axes1,'Units','pixels');
axes(handles.axes1);
imshow(maze);
set(handles.axes1,'Units','normalized');
set(handles.mazeNumber,'userdata',mazeNum);
set(handles.mazeNumber,'string',num2str(mazeNum));

% --- Executes on button press in bNext.
function bNext_Callback(hObject, eventdata, handles)
% hObject    handle to bNext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mazeNum;
mazeNum = mazeNum+1;
if mazeNum>3
    mazeNum=3;
end
pow = 40;
maze = resizeMaze(generate_maze(mazeNum),pow);
set(handles.axes1,'Units','pixels');
axes(handles.axes1);
imshow(maze);
set(handles.axes1,'Units','normalized');
set(handles.mazeNumber,'userdata',mazeNum);
set(handles.mazeNumber,'string',num2str(mazeNum));


% --- Executes on button press in bChoose.
function bChoose_Callback(hObject, eventdata, handles)
% hObject    handle to bChoose (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mazeNum; 
mazeNum=get(handles.mazeNumber,'userdata');
 close(bioni);



function mazeNumber_Callback(hObject, eventdata, handles)
% hObject    handle to mazeNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mazeNumber as text
%        str2double(get(hObject,'String')) returns contents of mazeNumber as a double


% --- Executes during object creation, after setting all properties.
function mazeNumber_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mazeNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
