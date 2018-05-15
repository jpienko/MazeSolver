function varargout = final1(varargin)
%FINAL1 M-file for final1.fig
%      FINAL1, by itself, creates a new FINAL1 or raises the existing
%      singleton*.
%
%      H = FINAL1 returns the handle to a new FINAL1 or the handle to
%      the existing singleton*.
%
%      FINAL1('Property','Value',...) creates a new FINAL1 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to final1_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      FINAL1('CALLBACK') and FINAL1('CALLBACK',hObject,...) call the
%      local function named CALLBACK in FINAL1.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help final1

% Last Modified by GUIDE v2.5 15-May-2018 13:55:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @final1_OpeningFcn, ...
                   'gui_OutputFcn',  @final1_OutputFcn, ...
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


% --- Executes just before final1 is made visible.
function final1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for final1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes final1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = final1_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
global maze;

[best,solution,length_best,length_chosen] = solveMaze(maze);
set(handles.bestOne,'Units','pixels');
axes(handles.bestOne);
imshow(best);
set(handles.bestOne,'Units','normalized');

set(handles.chosenOne,'Units','pixels');
axes(handles.chosenOne);
imshow(solution);
set(handles.chosenOne,'Units','normalized');
set(handles.dl_best,'string',length_best);

set(handles.dl_chosen,'string',length_chosen);

% --- Executes on button press in finish.
function finish_Callback(hObject, eventdata, handles)
% hObject    handle to finish (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(final1);

% --- Executes on button press in startOver.
function startOver_Callback(hObject, eventdata, handles)
% hObject    handle to startOver (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    close(final1);
    main_script;

% --- Executes on button press in repeat.
function repeat_Callback(hObject, eventdata, handles)
% hObject    handle to repeat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global maze;
[best,solution,length_best,length_chosen] = solveMaze(maze);
set(handles.bestOne,'Units','pixels');
axes(handles.bestOne);
imshow(best);
set(handles.bestOne,'Units','normalized');

set(handles.chosenOne,'Units','pixels');
axes(handles.chosenOne);
imshow(solution);
set(handles.chosenOne,'Units','normalized');
set(handles.dl_best,'string',length_best);

set(handles.dl_chosen,'string',length_chosen);

% --- Executes on button press in againPar.
function againPar_Callback(hObject, eventdata, handles)
% hObject    handle to againPar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gui= chooseParameters;
waitfor(gui);
global maze;
[best,solution,length_best,length_chosen] = solveMaze(maze);
set(handles.bestOne,'Units','pixels');
axes(handles.bestOne);
imshow(best);
set(handles.bestOne,'Units','normalized');

set(handles.chosenOne,'Units','pixels');
axes(handles.chosenOne);
imshow(solution);
set(handles.chosenOne,'Units','normalized');

set(handles.dl_best,'string',length_best);

set(handles.dl_chosen,'string',length_chosen);



function dl_best_Callback(hObject, eventdata, handles)
% hObject    handle to dl_best (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dl_best as text
%        str2double(get(hObject,'String')) returns contents of dl_best as a double


% --- Executes during object creation, after setting all properties.
function dl_best_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dl_best (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dl_chosen_Callback(hObject, eventdata, handles)
% hObject    handle to dl_chosen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dl_chosen as text
%        str2double(get(hObject,'String')) returns contents of dl_chosen as a double


% --- Executes during object creation, after setting all properties.
function dl_chosen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dl_chosen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
