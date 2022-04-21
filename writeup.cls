\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{WriteUp}[2022/02/22]
%%----------------------------------------------------------------------------%%
%% options
%% base class
\newcommand\WriteUp@BaseClass{article}
\DeclareOption{ams}{\renewcommand{\WriteUp@BaseClass}{amsart}
\def\WriteUp@amsDefined}
%% fonts: texdoc psnfss
\newcommand\WriteUp@rmdefault{bch}
\DeclareOption{charter}{\renewcommand{\WriteUp@rmdefault}{bch}}
\DeclareOption{newcentury}{\renewcommand{\WriteUp@rmdefault}{pnc}}
\DeclareOption{bookman}{\renewcommand{\WriteUp@rmdefault}{pbk}}
\DeclareOption{helvetica}{\renewcommand{\WriteUp@rmdefault}{phv}}
%% other
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\WriteUp@BaseClass}}
\ProcessOptions\relax
\PassOptionsToPackage{fleqn}{amsmath}
\ifx\WriteUp@amsDefined\undefined
\LoadClass{\WriteUp@BaseClass}
\else
\LoadClass[reqno]{\WriteUp@BaseClass}
\fi
%%----------------------------------------------------------------------------%%
%% packages
%% input
\RequirePackage[utf8]{inputenc}
%% geometry
\RequirePackage{geometry}
\geometry{papersize={5in,8in},left=0.5in,right=0.5in,
top=0.5in,bottom=0.5in}
\renewcommand{\baselinestretch}{1.15}
%% math
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
%% links
\RequirePackage[colorlinks=true,citecolor=blue,
linkcolor=blue,urlcolor=blue]{hyperref}
\RequirePackage{cleveref}
%% figure and table
\RequirePackage{graphicx}
\RequirePackage{multirow}
%% color
\RequirePackage{xcolor}
%%----------------------------------------------------------------------------%%
%% fonts
\renewcommand{\rmdefault}{\WriteUp@rmdefault}
%% differential
\newcommand\dd{\mathop{}\!\mathrm{d}}
\newcommand{\diff}[1]{\dd#1}
