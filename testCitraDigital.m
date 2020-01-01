function varargout = testCitraDigital(varargin)
% TESTCITRADIGITAL MATLAB code for testCitraDigital.fig
%      TESTCITRADIGITAL, by itself, creates a new TESTCITRADIGITAL or raises the existing
%      singleton*.
%
%      H = TESTCITRADIGITAL returns the handle to a new TESTCITRADIGITAL or the handle to
%      the existing singleton*.
%
%      TESTCITRADIGITAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTCITRADIGITAL.M with the given input arguments.
%
%      TESTCITRADIGITAL('Property','Value',...) creates a new TESTCITRADIGITAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before testCitraDigital_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to testCitraDigital_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help testCitraDigital

% Last Modified by GUIDE v2.5 27-Dec-2019 13:59:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @testCitraDigital_OpeningFcn, ...
                   'gui_OutputFcn',  @testCitraDigital_OutputFcn, ...
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
% --- Executes just before testCitraDigital is made visible.
function testCitraDigital_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to testCitraDigital (see VARARGIN)

% Choose default command line output for testCitraDigital
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% UIWAIT makes testCitraDigital wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = testCitraDigital_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in btn_browse.
function btn_browse_Callback(hObject, eventdata, handles)
%mengambil data sample
gambar1 = imread('timun/sample_1.png');
gambar2 = imread('timun/sample_2.png');
gambar3 = imread('timun/sample_3.png');
gambar4 = imread('timun/sample_4.png');
gambar5 = imread('timun/sample_5.png');
gambar6 = imread('timun/sample_6.png');
gambar7 = imread('timun/sample_7.png');
gambar8 = imread('timun/sample_8.png');
gambar9 = imread('timun/sample_9.png');
gambar10 = imread('timun/sample_10.png');

%koversi sample ke grayscale
toGray1 = rgb2gray(gambar1);
toGray2 = rgb2gray(gambar2);
toGray3 = rgb2gray(gambar3);
toGray4 = rgb2gray(gambar4);
toGray5 = rgb2gray(gambar5);
toGray6 = rgb2gray(gambar6);
toGray7 = rgb2gray(gambar7);
toGray8 = rgb2gray(gambar8);
toGray9 = rgb2gray(gambar9);
toGray10 = rgb2gray(gambar10);

%cetak nilai histogram sample
toHist1 = imhist(toGray1);
toHist2 = imhist(toGray2);
toHist3 = imhist(toGray3);
toHist4 = imhist(toGray4);
toHist5 = imhist(toGray5);
toHist6 = imhist(toGray6);
toHist7 = imhist(toGray7);
toHist8 = imhist(toGray8);
toHist9 = imhist(toGray9);
toHist10 = imhist(toGray10);

%hitunga nilai mean sample
means1 = mean(toHist1);
means2 = mean(toHist2);
means3 = mean(toHist3);
means4 = mean(toHist4);
means5 = mean(toHist5);
means6 = mean(toHist6);
means7 = mean(toHist7);
means8 = mean(toHist8);
means9 = mean(toHist9);
means10 = mean(toHist10);

%hitung nilai entropy sample
entrop1 = entropy(toHist1);
entrop2 = entropy(toHist2);
entrop3 = entropy(toHist3);
entrop4 = entropy(toHist4);
entrop5 = entropy(toHist5);
entrop6 = entropy(toHist6);
entrop7 = entropy(toHist7);
entrop8 = entropy(toHist8);
entrop9 = entropy(toHist9);
entrop10 = entropy(toHist10);

%hitung nilai skewness sample
skews1 = skewness(toHist1);
skews2 = skewness(toHist2);
skews3 = skewness(toHist3);
skews4 = skewness(toHist4);
skews5 = skewness(toHist5);
skews6 = skewness(toHist6);
skews7 = skewness(toHist7);
skews8 = skewness(toHist8);
skews9 = skewness(toHist9);
skews10 = skewness(toHist10);

%hitung nilai variance sample
vars1 = var(toHist1);
vars2 = var(toHist2);
vars3 = var(toHist3);
vars4 = var(toHist4);
vars5 = var(toHist5);
vars6 = var(toHist6);
vars7 = var(toHist7);
vars8 = var(toHist8);
vars9 = var(toHist9);
vars10 = var(toHist10);

%hitung nilai kurtosis sample
kurts1 = kurtosis(toHist1);
kurts2 = kurtosis(toHist2);
kurts3 = kurtosis(toHist3);
kurts4 = kurtosis(toHist4);
kurts5 = kurtosis(toHist5);
kurts6 = kurtosis(toHist6);
kurts7 = kurtosis(toHist7);
kurts8 = kurtosis(toHist8);
kurts9 = kurtosis(toHist9);
kurts10 = kurtosis(toHist10);

data_means = [means1, means2, means3, means4, means5, means6, means7, means8, means9, means10];
data_entrop = [entrop1, entrop2, entrop3, entrop4, entrop5, entrop6, entrop7, entrop8, entrop9, entrop10];
data_skewne = [skews1, skews2, skews3, skews4, skews5, skews6, skews7, skews8, skews9, skews10];
data_var = [vars1, vars2, vars3, vars4, vars5, vars6, vars7, vars8, vars9, vars10];
data_kurts = [kurts1, kurts2, kurts3, kurts4, kurts5, kurts6, kurts7, kurts8, kurts9, kurts10];

% hitung rata-rata sample
rerata = sum(data_means) + sum(data_entrop) + sum(data_skewne) + sum(data_var) + sum(data_kurts) / 5;

% hitung min sample
remin_means = min(data_means);
remin_entrop = min(data_entrop);
remin_skewne = min(data_skewne);
remin_vars = min(data_var);
remin_kurts = min(data_kurts);

% hitung max sample
remax_means = max(data_means);
remax_entrop = max(data_entrop);
remax_skewne = max(data_skewne);
remax_vars = max(data_var);
remax_kurts = max(data_kurts);

%mengambil data uji
[fileName,pathName]=uigetfile({'*.png'},'Select Image File');
image1 = imread([pathName,fileName]);
guidata(hObject, handles);
axes(handles.imgcitraasli);
imshow(image1);

%mengubah citra asli ke grayscale
image2 = image1;
imgGray = rgb2gray(image2);
axes(handles.imgcitragrayscale);
imshow(imgGray);

%menampilkan histogram citra
axes(handles.imghistogram);
imhist(imgGray);

%menghitung statistik
imgStatistik = imhist(imgGray);
mMean = mean(imgStatistik);
mEntropy = entropy(imgStatistik);
mSkewness = skewness(imgStatistik);
mVar = var(imgStatistik);
mKurtosis = kurtosis(imgStatistik);

%menampilkan nilai statistik
set(handles.scmean,'String',mMean);
set(handles.scvar,'String',mVar);
set(handles.scskewness,'String',mSkewness);
set(handles.sckurtosis,'String',mKurtosis);
set(handles.scentropy,'String',mEntropy);

%menghitung nilai rerata, min, max
rerata_input = mMean + mEntropy+mSkewness+mVar+mKurtosis/5;
input_min = min([mMean , mEntropy , mSkewness , mVar , mKurtosis]);
input_max = max([mMean , mEntropy , mSkewness , mVar , mKurtosis]);

remax_total = max([remax_means, remax_entrop, remax_skewne, remax_vars, remax_kurts]);
remin_total = min([remin_means, remin_entrop, remin_skewne, remin_vars, remin_kurts]);

if (rerata >= rerata_input) || (remin_total < input_min) || (remax_total >= input_max)
  hasil = "Matang";
  cek = imread('check/matang.png');
else
  hasil = "Belum Matang";
  cek = imread('check/belummatang.png');
end

set(handles.txtcekmatang,'String',hasil);
axes(handles.imgcekmatang);
imshow(cek);