---
reviewer: codex (OpenAI)
type: formatting
paper: phase-bound-matter
date: 2026-04-30T17:10:05Z
---

Reading additional input from stdin...
OpenAI Codex v0.125.0 (research preview)
--------
workdir: /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
model: gpt-5.5
provider: openai
approval: never
sandbox: read-only
reasoning effort: high
reasoning summaries: none
session id: 019ddf5e-8634-72e1-a734-5ef068a03463
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/phase-bound-matter/paper.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. The compile log is at /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/phase-bound-matter/paper.log. List all issues with line numbers and concrete fixes. Be concise and concrete - no fluff.
codex
I’ll inspect the `.log` for actual TeX diagnostics first, then cross-check the cited locations in `paper.tex` so the fixes are line-grounded.
exec
/usr/local/bin/zsh -lc 'tail -n 120 papers/phase-bound-matter/paper.log' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
exec
/usr/local/bin/zsh -lc "nl -ba papers/phase-bound-matter/paper.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 1051.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1051.


Overfull \hbox (31.5991pt too wide) in paragraph at lines 1097--1099
[]\OT1/cmr/m/n/12 Under the-o-rem [][]4.3[][], this stack-ing map matches ad-di
-tion in the co-ho-mol-ogy group $\OML/cmm/m/it/12 H[]\OT1/cmr/m/n/12 (\OML/cmm
/m/it/12 G; U\OT1/cmr/m/n/12 (1))$: 
 []

[18]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1111.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1111.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1111.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 1111.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1111.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1118.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 1118.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1118.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1126.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 1126.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1126.

[19]
Overfull \hbox (25.07924pt too wide) in paragraph at lines 1174--1177
[]\OT1/cmr/m/it/12 SPT as group co-ho-mol-ogy, func-to-ri-ally. \OT1/cmr/m/n/12
 The clas-si-fi-ca-tion map $\OML/cmm/m/it/12 ^^Y[]\OT1/cmr/m/n/12 ([][]) \OMS/
cmsy/m/n/12 ! \OML/cmm/m/it/12 H[]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 G; U\OT1/cm
r/m/n/12 (1))$
 []

[20] [21] [22] [23] (./paper.aux)
 ***********
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
 ***********
Package rerunfilecheck Info: File `paper.out' has not changed.
(rerunfilecheck)             Checksum: A227A1608868DEBA9017E05E57CC5B56;12101.
 ) 
Here is how much of TeX's memory you used:
 25763 strings out of 467525
 504881 string characters out of 5418982
 888812 words of memory out of 5000000
 54099 multiletter control sequences out of 15000+600000
 645757 words of font info for 107 fonts, out of 8000000 for 9000
 1141 hyphenation exceptions out of 8191
 116i,15n,121p,487b,1054s stack positions out of 10000i,1000n,20000p,200000b,200000s
</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb
></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb>
</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></
usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb><
/usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></
usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cmextra/cmex8.pfb
></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb>
</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb><
/usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi6.pfb></u
sr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr
/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/l
ocal/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/loc
al/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr17.pfb></usr/local
/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr6.pfb></usr/local/te
xlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr8.pfb></usr/local/texli
ve/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmss8.pfb></usr/local/texlive
/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmssi8.pfb></usr/local/texlive/
2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2
026/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy6.pfb></usr/local/texlive/202
6/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/
texmf-dist/fonts/type1/public/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/t
exmf-dist/fonts/type1/public/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/euler/eufm10.pfb></usr/local/texlive/2026/t
exmf-dist/fonts/type1/public/amsfonts/symbols/msam10.pfb></usr/local/texlive/20
26/texmf-dist/fonts/type1/public/amsfonts/symbols/msbm10.pfb></usr/local/texliv
e/2026/texmf-dist/fonts/type1/public/cm-super/sfrm1200.pfb></usr/local/texlive/
2026/texmf-dist/fonts/type1/public/cm-super/sfsi0800.pfb></usr/local/texlive/20
26/texmf-dist/fonts/type1/public/cm-super/sfss0800.pfb>
Output written on paper.pdf (23 pages, 432781 bytes).
PDF statistics:
 729 PDF objects out of 1000 (max. 8388607)
 639 compressed objects within 7 object streams
 171 named destinations out of 1000 (max. 500000)
 437 words of extra memory for PDF output out of 10000 (max. 10000000)


 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	\usepackage{amsmath,amssymb,amsthm}
     4	\usepackage{tikz-cd}
     5	\usepackage{tikz}
     6	\usepackage{hyperref}
     7	\usepackage{cleveref}
     8	\usepackage{graphicx}
     9	\usepackage{xcolor}
    10	\usepackage{everypage}
    11	\usepackage[margin=1in]{geometry}
    12	\usepackage{enumitem}
    13	\usepackage{mathtools}
    14	
    15	\usetikzlibrary{arrows,decorations.pathmorphing,positioning}
    16	
    17	\hypersetup{
    18	  colorlinks=true,
    19	  linkcolor=blue!60!black,
    20	  citecolor=blue!60!black,
    21	  urlcolor=blue!60!black
    22	}
    23	
    24	\theoremstyle{plain}
    25	\newtheorem{theorem}{Theorem}[section]
    26	\newtheorem{proposition}[theorem]{Proposition}
    27	\newtheorem{lemma}[theorem]{Lemma}
    28	\newtheorem{corollary}[theorem]{Corollary}
    29	
    30	\theoremstyle{definition}
    31	\newtheorem{definition}[theorem]{Definition}
    32	\newtheorem{example}[theorem]{Example}
    33	
    34	\theoremstyle{remark}
    35	\newtheorem{remark}[theorem]{Remark}
    36	
    37	\newcommand{\Cat}{\mathbf{Cat}}
    38	\newcommand{\Set}{\mathbf{Set}}
    39	\newcommand{\Ham}{\mathbf{Ham}}
    40	\newcommand{\Hilb}{\mathbf{Hilb}}
    41	\newcommand{\FHilb}{\mathbf{FHilb}}
    42	\newcommand{\Rep}{\mathbf{Rep}}
    43	\newcommand{\Vect}{\mathbf{Vect}}
    44	\newcommand{\Phys}{\mathbf{Phys}}
    45	\newcommand{\Info}{\mathbf{Info}}
    46	\newcommand{\Phase}{\mathbf{Phase}}
    47	\newcommand{\BG}{\mathrm{B}G}
    48	\newcommand{\Bord}{\mathbf{Bord}}
    49	\newcommand{\Cob}{\mathbf{Cob}}
    50	\newcommand{\MTC}{\mathbf{MTC}}
    51	\newcommand{\Tr}{\mathrm{Tr}}
    52	\newcommand{\id}{\mathrm{id}}
    53	
    54	\title{Law II --- Phase-bound Matter:\\
    55	  Functorial Classification of Thermodynamic and Topological Phases}
    56	\author{MagnetonIO Research}
    57	\date{April 2026}
    58	
    59	% --- GrokRxiv-style sidebar (Stage 6) -----------------------------------
    60	\AddEverypageHook{%
    61	  \begin{tikzpicture}[remember picture,overlay]
    62	    \node[anchor=west,xshift=2pt,yshift=0pt,
    63	          rotate=90,
    64	          font=\scriptsize\sffamily\color{gray!70}]
    65	      at (current page.west)
    66	      {GrokRxiv \textbullet\ Emergent Spacetime Dynamics \textbullet\ Law II / IV \textbullet\ MagnetonIO Research \textbullet\ \today};
    67	  \end{tikzpicture}%
    68	}
    69	% -----------------------------------------------------------------------
    70	
    71	\begin{document}
    72	
    73	\maketitle
    74	
    75	\begin{abstract}
    76	We present the second installment of the modular research series \emph{Emergent Spacetime
    77	Dynamics}. Building \emph{strictly modularly} on the categorical primitives established
    78	in Law~I --- the matter--information functor $M:\Phys\to\Info$, the symmetric monoidal
    79	structure of physical composition, and the sheaf semantics of local observables --- we
    80	classify phases of matter as functorial equivalence classes. We first formalise the
    81	Landau paradigm as the connected-component invariant
    82	$\pi_{0}([\BG,\Ham_{0}]^{\mathrm{eq}})$, where $\Ham_{0}$ is the groupoid of gapped local
    83	Hamiltonians under gap-preserving adiabatic equivalence and the superscript ``eq''
    84	restricts to the on-site $G$-action. We then
    85	generalise beyond Landau by showing that topological order in $(2{+}1)$D corresponds to
    86	unitary modular tensor categories (MTCs), arising as Drinfeld centers
    87	$\mathcal{Z}(\mathcal{C})$ of unitary fusion categories. Symmetry-protected topological
    88	(SPT) phases are classified by group cohomology $H^{d+1}(G,U(1))$, identified with the
    89	homotopy classes of pointed maps $[\BG,\mathrm{B}^{d+1}U(1)]$. The topological
    90	entanglement entropy
    91	$\gamma=\log\mathcal{D}$ is constructed as the value of an entanglement-entropy functor
    92	on a connected disk; we show it is invariant under the equivalence relation of finite-depth
    93	local circuits. We provide worked computations for the toric code, the SSH chain, and the
    94	Levin--Wen string-net model, and we expose the precise composition hooks that Law~III
    95	will consume in order to lift these classifications to the periodically driven setting.
    96	This paper is part of an explicitly \emph{modular} framework: each law is a self-standing
    97	mathematical layer that composes functorially onto the prior laws, producing emergent
    98	properties at each level of composition. We do \emph{not} claim a unified theory.
    99	\end{abstract}
   100	
   101	\tableofcontents
   102	
   103	\section{Introduction}
   104	\label{sec:intro}
   105	
   106	\subsection{Position in the modular series}
   107	
   108	This paper is Paper~II of four in the modular research series \emph{Emergent Spacetime
   109	Dynamics}. The series is organised as a sequence of categorical layers, each composing
   110	on the previous via an explicit functorial lifting:
   111	\[
   112	\text{Law I} \;\xrightarrow{\,\mathrm{Lift}_{\mathrm{I}\to\mathrm{II}}\,}\;
   113	\text{Law II} \;\xrightarrow{\,\mathrm{Lift}_{\mathrm{II}\to\mathrm{III}}\,}\;
   114	\text{Law III} \;\xrightarrow{\,\mathrm{Lift}_{\mathrm{III}\to\mathrm{IV}}\,}\;
   115	\text{Law IV.}
   116	\]
   117	Law~I (\emph{Mathematical Formalisms}, MagnetonIO Research) established the categorical
   118	grammar that all subsequent laws share: symmetric monoidal categories, dagger-compact
   119	closed categories for quantum systems, sheaves and topoi for local observables, operads
   120	and factorisation algebras for QFT-style composition, the matter--information functor
   121	$M:\Phys\to\Info$, and a type-theoretic encoding of these structures.
   122	The present Paper~II uses these primitives to classify phases of matter --- both
   123	thermodynamic and topological --- as functorial equivalence classes. We work entirely
   124	in the language of Law~I.
   125	
   126	We emphasise that the framework is \emph{modular}, not unified. Each law contributes one
   127	self-standing mathematical layer; emergent properties at each layer arise from the
   128	\emph{composition} of layers, not from any single overarching theory.
   129	
   130	\subsection{One-page recap of Law I}
   131	\label{sec:lawI-recap}
   132	
   133	For convenience we collect the Law~I primitives we will need, fixing notation and
   134	references for the remainder of the paper.
   135	
   136	\begin{description}[leftmargin=1.5em,style=nextline]
   137	  \item[(L1.1) Symmetric monoidal category]
   138	  A symmetric monoidal category $(\mathcal{C},\otimes,I,\alpha,\lambda,\rho,\sigma)$
   139	  consists of a category $\mathcal{C}$, a tensor functor
   140	  ${\otimes:\mathcal{C}\times\mathcal{C}\to\mathcal{C}}$, a unit object $I$, and natural
   141	  isomorphisms (associator $\alpha$, unitors $\lambda,\rho$, symmetry $\sigma$)
   142	  satisfying Mac~Lane's pentagon and triangle axioms together with the symmetry
   143	  hexagons. Mac~Lane's coherence theorem guarantees that all rebracketings commute, so
   144	  diagrams of structural isomorphisms can be elided in calculations.
   145	
   146	  \item[(L1.2) Dagger-compact closed structure]
   147	  A $\dagger$-category is a category equipped with an involutive contravariant identity-
   148	  on-objects functor $\dagger:\mathcal{C}^{\mathrm{op}}\to\mathcal{C}$. A
   149	  $\dagger$-compact closed category additionally has duals
   150	  $A\mapsto A^{*}$ with unit $\eta_{A}:I\to A^{*}\otimes A$ and counit
   151	  $\varepsilon_{A}:A\otimes A^{*}\to I$. The category $\FHilb$ of finite-dimensional
   152	  Hilbert spaces with linear maps is the canonical example. Traces, partial traces and
   153	  the Born rule arise from $(\eta,\varepsilon)$.
   154	
   155	  \item[(L1.3) Matter--information functor]
   156	  Law~I posits a symmetric monoidal functor
   157	  $M:\Phys\to\Info$
   158	  from a category of physical systems to a category of information-theoretic structures
   159	  (sets of states, density matrices, classical channels, quantum channels). Whenever a
   160	  physical category has a composition (tensor product), $M$ preserves it.
   161	  Concretely, the prototypical instance of $M$ sends a quantum system with Hilbert
   162	  space $\mathcal{H}\in\FHilb$ to its space of density matrices
   163	  $M(\mathcal{H})=\{\rho\in\mathrm{End}(\mathcal{H}) : \rho\geq 0,\;\Tr\rho=1\}$,
   164	  regarded as the object of statistical states; on morphisms (unitary or completely
   165	  positive maps) $M$ acts by push-forward. We use $M$ in the present paper to translate
   166	  ``Hilbert space of microstates'' (an object of $\Phys$) into ``probability simplex of
   167	  accessible macrostates'' (an object of $\Info$).
   168	
   169	  \item[(L1.4) Sheaf semantics of local observables]
   170	  Law~I formalises local observables as a sheaf
   171	  $\mathcal{O}:\mathrm{Open}(X)^{\mathrm{op}}\to\mathbf{Alg}$ assigning algebras of
   172	  operators to open regions. We use this to formulate locality conditions for order
   173	  parameters and entanglement-entropy regions in this paper.
   174	
   175	  \item[(L1.5) Functorial semantics]
   176	  Following Lawvere, Law~I treats algebraic theories as monoidal categories whose
   177	  product-preserving functors into a base category are models. We instantiate this in
   178	  \cref{sec:landau} by viewing a Landau theory as a functor $\BG\to\Ham$.
   179	\end{description}
   180	
   181	When we cite ``(L1.k)'' below we are using the Law~I primitive of the same number.
   182	
   183	\subsection{Outline}
   184	
   185	The paper is organised as follows. In \cref{sec:phases-as-classes} we define the category
   186	$\Ham$ of gapped Hamiltonians on a fixed lattice and introduce the equivalence relation
   187	of \emph{gap-preserving adiabatic deformation}; phases are equivalence classes (i.e.\
   188	connected components of $\Ham$). We then define the functor pullback that classifies
   189	phases under symmetry. In \cref{sec:landau} we recover Landau's order-parameter
   190	paradigm in this language. In \cref{sec:spt} we treat SPT phases via group cohomology and
   191	identify the classifying functor with a generalised cohomology functor.
   192	\Cref{sec:mtc} sets up unitary modular tensor categories as the data of a $(2{+}1)$D
   193	topological phase, with Kitaev's quantum double and the Levin--Wen construction
   194	as worked examples. \Cref{sec:eee} defines an entanglement-entropy functor and
   195	proves the Kitaev--Preskill formula for $\gamma=\log\mathcal{D}$ in our setting.
   196	\Cref{sec:examples} works through three canonical examples: the toric code, the SSH
   197	chain, and the Fibonacci Levin--Wen model. \Cref{sec:law3-hooks} states the precise
   198	composition hooks Law~III will consume. \Cref{sec:open} lists open problems, and
   199	\cref{sec:conclusion} concludes.
   200	
   201	\section{Mathematical Framework: Phases as Equivalence Classes under Functor Pullback}
   202	\label{sec:phases-as-classes}
   203	
   204	\subsection{The category of gapped Hamiltonians}
   205	
   206	Fix a (regular, finite or countable) lattice $\Lambda$ and a finite-dimensional on-site
   207	Hilbert space $\mathfrak{h}$. Following Law~I (L1.2), the total Hilbert space is the
   208	infinite tensor product (or a thermodynamic limit thereof)
   209	$\mathcal{H}_{\Lambda}=\bigotimes_{x\in\Lambda}\mathfrak{h}$, an object of (a suitable
   210	completion of) $\FHilb$.
   211	
   212	\begin{definition}[Local Hamiltonian]
   213	\label{def:local-ham}
   214	A \emph{local Hamiltonian} on $\Lambda$ is a sum
   215	\[
   216	H \;=\; \sum_{X\subset\Lambda} h_{X}, \qquad h_{X}\in\mathrm{End}(\mathcal{H}_{X}),
   217	\]
   218	where each $h_{X}$ is supported on a finite region $X\subset\Lambda$ with diameter
   219	bounded by a fixed range $r$, and the operator norm of $h_{X}$ is uniformly bounded.
   220	\end{definition}
   221	
   222	\begin{definition}[Gap]
   223	\label{def:gap}
   224	A local Hamiltonian $H$ is \emph{gapped} with gap $\Delta>0$ if its spectrum on
   225	$\mathcal{H}_{\Lambda}$ has a single (possibly degenerate) ground subspace separated
   226	from the rest of the spectrum by at least $\Delta$, uniformly as $|\Lambda|\to\infty$.
   227	\end{definition}
   228	
   229	\begin{definition}[Category $\Ham$]
   230	\label{def:ham-cat}
   231	The category $\Ham=\Ham(\Lambda,\mathfrak{h})$ has:
   232	\begin{itemize}
   233	  \item objects: gapped local Hamiltonians on $\Lambda$;
   234	  \item morphisms $H_{0}\to H_{1}$: gap-preserving piecewise-smooth paths
   235	    $\{H_{s}\}_{s\in[0,1]}$ of local Hamiltonians with $H_{s=0}=H_{0}$, $H_{s=1}=H_{1}$,
   236	    and $\inf_{s}\Delta(H_{s})>0$;
   237	  \item composition: concatenation of paths;
   238	  \item identity: the constant path.
   239	\end{itemize}
   240	\end{definition}
   241	
   242	By construction $\Ham$ is a groupoid (every path is reversible), and morphisms are
   243	homotopic iff they are connected through a homotopy of gap-preserving paths. We will
   244	write $\pi_{0}(\Ham)$ for the set of connected components.
   245	
   246	\begin{remark}
   247	$\Ham$ is symmetric monoidal: the tensor product
   248	$H \boxtimes H'$ of two Hamiltonians on disjoint lattices is again a gapped local
   249	Hamiltonian on the union lattice; gap-preserving paths tensor componentwise. This is the
   250	direct image under the matter--information functor $M$ (L1.3) of the symmetric monoidal
   251	structure on $\Phys$.
   252	\end{remark}
   253	
   254	\subsection{Phases as functorial equivalence classes}
   255	
   256	\begin{definition}[Phase]
   257	\label{def:phase}
   258	A \emph{phase} of matter (in the present setting) is a connected component of $\Ham$:
   259	\[
   260	\Phase \;=\; \pi_{0}(\Ham).

exec
/usr/local/bin/zsh -lc 'rg -n "(''^!|Warning|LaTeX Warning|Package .* Warning|Overfull|Underfull|Undefined|Citation|Reference|Rerun|Missing|Error|Emergency stop|Fatal)" papers/phase-bound-matter/paper.log' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
574:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
603:Package everypage Warning: Functionality similar to this package has recently
609:Package everypage Warning: You appear to be running a version of LaTeX
825:Overfull \hbox (0.56433pt too wide) in paragraph at lines 234--237
834:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
838:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
845:Overfull \hbox (24.79782pt too wide) detected at line 560
856:Overfull \hbox (11.49728pt too wide) in paragraph at lines 585--588
865:Overfull \hbox (30.93155pt too wide) in paragraph at lines 597--606
874:Overfull \hbox (0.57367pt too wide) in paragraph at lines 640--644
882:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
886:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
891:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
895:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
899:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
903:Overfull \hbox (17.39302pt too wide) detected at line 983
909:!\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 g[]; [] ; g[]\OT1/cmr/m/n/12 )[]\OML/cmm/m/i
915:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
919:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
923:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
927:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
931:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
935:Overfull \hbox (31.5991pt too wide) in paragraph at lines 1097--1099
943:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
947:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
951:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
955:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
959:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
963:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
967:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
971:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
975:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
979:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
983:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
987:Overfull \hbox (25.07924pt too wide) in paragraph at lines 1174--1177

codex
The log shows no fatal compilation stop, but it does show package deprecation warnings, PDF bookmark warnings, and several overfull boxes. I’m checking the corresponding source spans now.
exec
/usr/local/bin/zsh -lc "nl -ba papers/phase-bound-matter/paper.tex | sed -n '520,620p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
   520	$
   521	is recovered as the action of $\mathcal{L}_{H}$ on a generating loop in $\BG$, weighted
   522	by the relevant invariant polynomials in $V$.
   523	\end{remark}
   524	
   525	\subsection{Landau is not enough}
   526	
   527	The Landau classification is precisely the data
   528	$(V,\langle\Phi\rangle\text{ up to orbit})$. Two limitations are immediate.
   529	\begin{enumerate}[label=(\roman*)]
   530	  \item It is local: it sees only the value of an on-site (or short-range) functional.
   531	  \item It is symmetry-breaking-centric: it distinguishes phases via the residual
   532	    subgroup $H\subseteq G$ stabilising $\langle\Phi\rangle$.
   533	\end{enumerate}
   534	A topological phase is, by definition, one where $\langle\Phi\rangle\equiv 0$ for every
   535	local $\Phi$ and yet the ground subspace has structure (degeneracy, anyonic excitations,
   536	non-trivial entanglement) detectable only nonlocally. The Landau functor of a
   537	topological phase is trivial; we need a richer invariant.
   538	
   539	\section{Symmetry-Protected Topological Phases via Group Cohomology}
   540	\label{sec:spt}
   541	
   542	\subsection{SPT phases as the SSB-trivial subset}
   543	
   544	\begin{definition}[SPT phase]
   545	\label{def:spt}
   546	A \emph{symmetry-protected topological (SPT) phase} of $G$-symmetric Hamiltonians is an
   547	element of $\ker U_{*}\subseteq\pi_{0}(\Ham_{G})$: a $G$-symmetric phase that becomes
   548	trivial upon forgetting $G$-symmetry, but is nontrivial as a $G$-symmetric phase.
   549	\end{definition}
   550	
   551	\subsection{Group cohomology}
   552	
   553	For a group $G$ and a $G$-module $M$, the standard bar complex computes group
   554	cohomology. The cochain in degree $n$ is the abelian group
   555	$C^{n}(G,M)=\{f:G^{n}\to M\}$, with differential
   556	\[
   557	(\delta f)(g_{1},\ldots,g_{n+1}) = g_{1}\!\cdot f(g_{2},\ldots,g_{n+1})
   558	- \sum_{i=1}^{n}(-1)^{i-1} f(g_{1},\ldots,g_{i}g_{i+1},\ldots,g_{n+1})
   559	+(-1)^{n}f(g_{1},\ldots,g_{n}).
   560	\]
   561	We write
   562	$Z^{n}=\ker\delta$, $B^{n}=\mathrm{im}\,\delta$, and
   563	$H^{n}(G,M)=Z^{n}/B^{n}$. We work with $M=U(1)$ throughout, with the trivial action.
   564	
   565	\subsection{The Chen--Gu--Liu--Wen classification}
   566	
   567	\begin{theorem}[Chen--Gu--Liu--Wen \cite{ChenGuLiuWen2013}]
   568	\label{thm:CGLW}
   569	Let $G$ be a finite group acting on-site, and let $d\geq 1$. The set of bosonic SPT
   570	phases on $\Lambda=\mathbb{Z}^{d}$ with on-site $G$-symmetry is in bijection with
   571	$H^{d+1}(G,U(1))$.
   572	\end{theorem}
   573	
   574	The bijection is constructive: given a cocycle $\omega\in Z^{d+1}(G,U(1))$, one builds a
   575	fixed-point Hamiltonian whose ground state is a sum of group elements weighted by
   576	$\omega$ on simplices of a triangulation. We will not reproduce the full construction
   577	here; see \cite{ChenGuLiuWen2013}. The key categorical content for us is:
   578	
   579	\begin{proposition}[SPT classification as a functor]
   580	\label{prop:spt-functor}
   581	There is a functor
   582	\[
   583	\mathrm{SPT}^{d}: \mathbf{Grp} \to \mathbf{Ab}, \qquad
   584	G \mapsto H^{d+1}(G,U(1)),
   585	\]
   586	and the assignment $H\mapsto[\omega_{H}]$ refines the phase classification map
   587	$\pi_{0}(\Ham_{G})\to H^{d+1}(G,U(1))$ on the SPT subset.
   588	\end{proposition}
   589	
   590	\begin{proof}
   591	$H^{d+1}(-,U(1))$ is functorial in $G$ via pullback along group homomorphisms; the map
   592	on phases is induced by restriction of the symmetry action.
   593	\end{proof}
   594	
   595	\begin{example}[Haldane phase]
   596	\label{ex:haldane}
   597	For $G=SO(3)$, $d=1$ (1D spin chain), one has $H^{2}(SO(3),U(1))\cong\mathbb{Z}_{2}$
   598	\cite{ChenGuLiuWen2013}. The symmetry $G=SO(3)$ is the rotational symmetry of an
   599	isotropic Heisenberg spin-1 chain (e.g.\ the AKLT chain
   600	$H_{\mathrm{AKLT}}=\sum_{i}\bigl[\vec{S}_{i}\!\cdot\vec{S}_{i+1}+\tfrac{1}{3}(\vec{S}_{i}\!\cdot\vec{S}_{i+1})^{2}\bigr]$):
   601	each site carries the spin-1 representation, and on-site $SO(3)$ acts diagonally on the
   602	chain. The non-trivial element of $H^{2}(SO(3),U(1))$ corresponds to the AKLT/Haldane
   603	phase. Concretely, the relevant $2$-cocycle is the projective representation class of
   604	$SO(3)$ on the boundary spin-$\tfrac{1}{2}$ degree of freedom that emerges at each end
   605	of an open AKLT chain.
   606	\end{example}
   607	
   608	\begin{example}[1D fermionic SPT]
   609	\label{ex:1d-fermionic}
   610	The Kitaev chain (1D class D superconductor) is classified by
   611	$H^{2}(\mathbb{Z}_{2}^{f},U(1))\cong\mathbb{Z}_{2}$ in the bosonic-shadow framework, but
   612	the full fermionic classification uses spin cobordism rather than group cohomology
   613	\cite{FreedHopkins2021}. We mention this only to flag that the classification
   614	$H^{d+1}(G,U(1))$ is the bosonic answer; fermionic systems require an upgrade to
   615	generalised cohomology, which is the open-problem item in \cref{sec:open}.
   616	\end{example}
   617	
   618	\subsection{The classifying-space picture}
   619	
   620	The cohomology group $H^{n}(G,U(1))$ is the set of homotopy classes of pointed maps

exec
/usr/local/bin/zsh -lc "nl -ba papers/phase-bound-matter/paper.tex | sed -n '630,660p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
   630	\section{Modular Tensor Categories and Topological Order}
   631	\label{sec:mtc}
   632	
   633	We now leave the Landau and SPT regimes and treat the most informationally rich phases:
   634	those with topological order.
   635	
   636	\subsection{Unitary fusion categories}
   637	
   638	\begin{definition}[Unitary fusion category (UFC)]
   639	\label{def:ufc}
   640	A UFC $\mathcal{C}$ is a $\mathbb{C}$-linear semisimple monoidal $\dagger$-category
   641	with finitely many isomorphism classes of simple objects $\{X_{i}\}_{i\in I}$, a simple
   642	unit object $\mathbf{1}=X_{0}$, dual objects $X_{i}^{*}$, and unitary
   643	associators (F-matrices) satisfying the Mac~Lane pentagon and unitarity.
   644	\end{definition}
   645	
   646	We write $N_{ij}^{k}\in\mathbb{Z}_{\geq 0}$ for the fusion multiplicity:
   647	$X_{i}\otimes X_{j}\cong\bigoplus_{k}N_{ij}^{k}X_{k}$.
   648	
   649	\subsection{Modular tensor categories}
   650	
   651	\begin{definition}[MTC]
   652	\label{def:mtc}
   653	A \emph{modular tensor category} is a UFC $\mathcal{C}$ equipped with a unitary braiding
   654	$\beta_{X,Y}:X\otimes Y\to Y\otimes X$ and a ribbon twist $\theta_{X}:X\to X$ such that
   655	the modular $S$-matrix
   656	\[
   657	S_{ij} = \frac{1}{\mathcal{D}}\Tr(\beta_{X_{j},X_{i}}\circ\beta_{X_{i},X_{j}}),
   658	\qquad \mathcal{D}=\sqrt{\sum_{i}d_{i}^{2}},
   659	\]
   660	is non-degenerate, where $d_{i}$ is the quantum dimension of $X_{i}$.

exec
/usr/local/bin/zsh -lc "nl -ba papers/phase-bound-matter/paper.tex | sed -n '950,1010p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
   950	\subsection{Example 3: Doubled Fibonacci (Levin--Wen)}
   951	
   952	By \cref{thm:lw} and \cref{ex:fib}, the Levin--Wen model with input $\mathcal{C}_{0}=
   953	\mathrm{Fib}$ is a non-abelian topologically ordered phase with anyon MTC
   954	$\mathcal{Z}(\mathrm{Fib})=\mathrm{Fib}\boxtimes\overline{\mathrm{Fib}}$. The total
   955	quantum dimension is
   956	\[
   957	\mathcal{D} = (1+\phi^{2})^{1/2}\cdot(1+\phi^{2})^{1/2} = 1+\phi^{2}=2+\phi,
   958	\]
   959	so $\gamma=\log(2+\phi)\approx 1.288$. The braid group representation on the fusion space
   960	of $n$ Fibonacci anyons is dense in $SU(d_{n})$, the basis of universal topological
   961	quantum computation \cite{Wang2010}.
   962	
   963	\subsection{Example 4: Explicit $\mathbb{Z}_{2}$ cocycles}
   964	\label{ex:z2-cocycle}
   965	
   966	To make \cref{prop:spt-functor} concrete we compute $H^{2}(\mathbb{Z}_{2},U(1))$ in
   967	two distinct module structures: \emph{trivial} action (relevant for unitary on-site
   968	$\mathbb{Z}_{2}$ symmetry) and \emph{anti-unitary} action $U_{T}(1)$ (relevant for
   969	time-reversal). We emphasise that \emph{neither} is the Haldane-phase classifying group
   970	--- the Haldane phase is protected by the on-site $SO(3)$ symmetry of the AKLT spin-1
   971	chain, with $H^{2}(SO(3),U(1))\cong\mathbb{Z}_{2}$ (\cref{ex:haldane}). The
   972	$\mathbb{Z}_{2}^{T}$ time-reversal SPT we compute below is a \emph{different} $\mathbb{Z}_{2}$
   973	class, realised e.g.\ in 1D Haldane-Dzyaloshinskii-Moriya chains protected by time
   974	reversal alone. We work multiplicatively (cochains take values in $U(1)$ written with
   975	multiplicative composition), which is the convention most natural for SPT applications.
   976	
   977	The bar complex differential for an abelian-valued cochain on a group $G$ with module
   978	action $g\cdot a$ is
   979	\[
   980	(\delta^{n}\omega)(g_{1},\ldots,g_{n+1}) = (g_{1}\cdot\omega(g_{2},\ldots,g_{n+1}))
   981	\cdot \prod_{i=1}^{n}\omega(g_{1},\ldots,g_{i}g_{i+1},\ldots,g_{n+1})^{(-1)^{i}}
   982	\cdot \omega(g_{1},\ldots,g_{n})^{(-1)^{n+1}}.
   983	\]
   984	For a $1$-cochain $f:G\to U(1)$ this gives
   985	\begin{equation}
   986	\label{eq:delta1-mult}
   987	(\delta^{1}f)(g_{1},g_{2}) = (g_{1}\cdot f(g_{2}))\cdot f(g_{1}g_{2})^{-1}\cdot f(g_{1}).
   988	\end{equation}
   989	For a $2$-cochain $\omega:G^{2}\to U(1)$ the cocycle condition $\delta^{2}\omega=1$ is
   990	\begin{equation}
   991	\label{eq:cocycle2-mult}
   992	(g_{1}\cdot\omega(g_{2},g_{3}))\cdot\omega(g_{1}g_{2},g_{3})^{-1}\cdot\omega(g_{1},g_{2}g_{3})\cdot\omega(g_{1},g_{2})^{-1}=1.
   993	\end{equation}
   994	
   995	\paragraph{Case 1: trivial action ($G=\mathbb{Z}_{2}=\{e,g\}$, $g\cdot a=a$).}
   996	Normalise $\omega(e,*)=\omega(*,e)=1$ (always permissible by passing to the normalised
   997	bar complex). Setting $g_{1}=g_{2}=g_{3}=g$ in \cref{eq:cocycle2-mult} and using
   998	$g^{2}=e$ gives
   999	\[
  1000	\omega(g,g)\cdot\omega(e,g)^{-1}\cdot\omega(g,e)\cdot\omega(g,g)^{-1}=1,
  1001	\]
  1002	which is automatic from normalisation. So the only datum is $\omega(g,g)=z\in U(1)$, and
  1003	\emph{every} $z\in U(1)$ defines a normalised cocycle.
  1004	
  1005	For coboundaries, with $f:\mathbb{Z}_{2}\to U(1)$, $f(e)=1$, $f(g)=t$, equation
  1006	\cref{eq:delta1-mult} for trivial action gives
  1007	\[
  1008	(\delta^{1}f)(g,g) = f(g)\cdot f(g^{2})^{-1}\cdot f(g) = t\cdot 1^{-1}\cdot t = t^{2}.
  1009	\]
  1010	Hence the coboundaries are exactly the squares $\{t^{2}:t\in U(1)\}$. Since $U(1)$ is

exec
/usr/local/bin/zsh -lc "nl -ba papers/phase-bound-matter/paper.tex | sed -n '1085,1185p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
  1085	The code distance $d$ equals the length of the shortest non-contractible loop,
  1086	$d=L=\sqrt{n/2}$. Thus the toric code is a $[[2L^{2},2,L]]$ stabiliser code. This is the
  1087	discrete realisation of the abstract data captured in the MTC $\Rep(D(\mathbb{Z}_{2}))$.
  1088	
  1089	\subsection{Example 7: Stacking and the abelian-group structure on SPT phases}
  1090	\label{ex:stacking}
  1091	
  1092	SPT phases form an abelian group under stacking: given two $G$-symmetric Hamiltonians
  1093	$H_{1},H_{2}$ on disjoint copies of the lattice, $H_{1}\boxtimes H_{2}$ is a
  1094	$G$-symmetric Hamiltonian on the union (with diagonal $G$-action). Trivial phase is the
  1095	unit; inverse is the time-reversal of the layer.
  1096	
  1097	Under \cref{prop:spt-functor}, this stacking map matches addition in the cohomology
  1098	group $H^{d+1}(G,U(1))$:
  1099	\[
  1100	[\omega_{H_{1}\boxtimes H_{2}}] = [\omega_{H_{1}}] + [\omega_{H_{2}}] \in H^{d+1}(G,U(1)).
  1101	\]
  1102	This is the categorical statement that ``stacking SPTs adds their cocycles.''
  1103	
  1104	\section{Composition Hooks for Law III}
  1105	\label{sec:law3-hooks}
  1106	
  1107	We close by stating the precise data Law~III is to consume in lifting Law~II to the
  1108	periodically driven setting. The reader of Law~III should treat this section as an
  1109	interface specification.
  1110	
  1111	\subsection{Hook 1: The category $\Ham$ extends to $\Ham_{T\text{-per}}$}
  1112	
  1113	Define $\Ham_{T\text{-per}}$ as the category whose objects are
  1114	$T$-periodic paths $H:S^{1}_{T}\to\Ham$ landing on gapped Hamiltonians and whose
  1115	morphisms are gap-preserving homotopies through $T$-periodic families. The static
  1116	embedding $\iota:\Ham\hookrightarrow\Ham_{T\text{-per}}$ sends $H$ to the constant path.
  1117	
  1118	\subsection{Hook 2: Symmetry group enlarges by $\mathbb{Z}_{T}$}
  1119	
  1120	The on-site symmetry $G$ in Law~II is enlarged in Law~III by the discrete
  1121	time-translation symmetry $\mathbb{Z}_{T}$ generated by the period operator. The relevant
  1122	classifying space becomes $\BG\times B\mathbb{Z}_{T}$, and the SPT-style classification
  1123	is by $H^{d+2}(G\times\mathbb{Z}_{T},U(1))$ in spatial dimension $d$ (the extra degree
  1124	arises from the $S^{1}$ factor in spacetime).
  1125	
  1126	\subsection{Hook 3: MTC enriches by $\Rep(\mathbb{Z}_{T})$}
  1127	
  1128	The MTC of an equilibrium topological phase is $\mathcal{C}$. The Floquet enrichment is
  1129	\[
  1130	\mathcal{C}_{T} = \mathcal{C}\boxtimes\Rep(\mathbb{Z}_{T}),
  1131	\]
  1132	encoding micromotion-twisted sectors. Anomalous Floquet phases (Rudner--Lindner type)
  1133	correspond to MTCs in this enrichment that are not products of an equilibrium MTC with
  1134	$\Rep(\mathbb{Z}_{T})$.
  1135	
  1136	\subsection{Hook 4: TEE extends to Floquet TEE}
  1137	
  1138	The Floquet entanglement-entropy functor
  1139	\[
  1140	S_{T}: \mathbf{Reg}_{\Lambda}^{\mathrm{op}}\times\mathbb{Z}_{T}\to\mathbb{R}_{\geq 0},
  1141	\qquad (A,n)\mapsto S(A;\text{at stroboscopic time }nT),
  1142	\]
  1143	has a topological constant $\gamma_{T}=\log\mathcal{D}_{T}$ where $\mathcal{D}_{T}$ is
  1144	the total quantum dimension of $\mathcal{C}_{T}$.
  1145	
  1146	\subsection{Hook 5: Composition functor}
  1147	
  1148	The lifting from Law~II to Law~III is the functor
  1149	\[
  1150	\mathrm{Lift}_{\mathrm{II}\to\mathrm{III}}:
  1151	[\BG,\Ham] \to [\mathrm{B}(G\times\mathbb{Z}_{T}),\Ham_{T\text{-per}}],
  1152	\qquad F\mapsto \mathrm{Fl}(F),
  1153	\]
  1154	where $\mathrm{Fl}(F)$ is the Floquet-enriched functor. Time-crystalline phases are
  1155	detected by natural transformations $\eta:\mathrm{Fl}(F)\Rightarrow\mathrm{Fl}^{\mathbb{Z}_{2}}(F)$
  1156	that are not isomorphisms (i.e.\ that detect period doubling).
  1157	
  1158	\section{Results}
  1159	\label{sec:results}
  1160	
  1161	We summarise the principal results of this paper.
  1162	\begin{enumerate}[label=R\arabic*.,leftmargin=2.4em]
  1163	  \item \emph{Phases as connected components.} Phases of matter on a fixed lattice are
  1164	    elements of $\pi_{0}(\Ham)$, the connected components of the groupoid of gapped
  1165	    local Hamiltonians under gap-preserving adiabatic equivalence
  1166	    (\cref{def:phase}).
  1167	  \item \emph{Symmetric phases as functor-pullback classes.} The category of $G$-symmetric
  1168	    Hamiltonians is equivalent to the functor category $[\BG,\Ham_{0}]^{\mathrm{eq}}$,
  1169	    so symmetric phases are functorial equivalence classes
  1170	    (\cref{prop:hamG-as-functor}).
  1171	  \item \emph{Landau as functorial semantics.} The Landau classification is the
  1172	    natural-isomorphism classification of order-parameter functors $\mathcal{L}_{H}:
  1173	    \BG\to\Vect$ (\cref{prop:landau}).
  1174	  \item \emph{SPT as group cohomology, functorially.} The classification map
  1175	    $\pi_{0}(\Ham_{G})\to H^{d+1}(G,U(1))$ refines to a functor
  1176	    $\mathrm{SPT}^{d}:\mathbf{Grp}\to\mathbf{Ab}$ (\cref{prop:spt-functor}).
  1177	  \item \emph{Topological order is MTC data.} A $(2{+}1)$D topologically ordered phase is
  1178	    classified by a unitary modular tensor category, arising as the Drinfeld center of
  1179	    a fusion category (Levin--Wen), with the data lifted from Law~I via the functor
  1180	    $\mathcal{Z}$ (\cref{eq:lift1to2}).
  1181	  \item \emph{TEE as a phase invariant.} Topological entanglement entropy
  1182	    $\gamma=\log\mathcal{D}$ is constant on each phase (\cref{cor:gamma-invariant}) and
  1183	    is computed by the Kitaev--Preskill formula (\cref{thm:kp}).
  1184	  \item \emph{Composition hooks.} We have stated five precise hooks
  1185	    (\cref{sec:law3-hooks}) by which Law~III may consume Law~II to produce Floquet

exec
/usr/local/bin/zsh -lc "sed -n '800,1000p' papers/phase-bound-matter/paper.log" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
LaTeX Font Info:    Trying to load font information for U+msa on input line 74.

(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd
File: umsa.fd 2013/01/14 v3.01 AMS symbols A
)
LaTeX Font Info:    Trying to load font information for U+msb on input line 74.


(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd
File: umsb.fd 2013/01/14 v3.01 AMS symbols B
) (./paper.toc
[1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}{/usr/l
ocal/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}

]
[2])
\tf@toc=\write5
\openout5 = `paper.toc'.

 [3] [4]
LaTeX Font Info:    Trying to load font information for U+euf on input line 207
.
 (/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/ueuf.fd
File: ueuf.fd 2013/01/14 v3.01 Euler Fraktur
)
Overfull \hbox (0.56433pt too wide) in paragraph at lines 234--237
[]\OT1/cmr/m/n/12 morphisms $\OML/cmm/m/it/12 H[] \OMS/cmsy/m/n/12 ! \OML/cmm/m
/it/12 H[]$\OT1/cmr/m/n/12 : gap-preserving piecewise-smooth paths $\OMS/cmsy/m
/n/12 f\OML/cmm/m/it/12 H[]\OMS/cmsy/m/n/12 g[]$ \OT1/cmr/m/n/12 of lo-cal Hami
l-
 []

[5]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 295.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 295.

LaTeX Font Info:    Font shape `OT1/cmss/m/it' in size <8> not available
(Font)              Font shape `OT1/cmss/m/sl' tried instead on input line 326.

[6] [7] [8] [9]
Overfull \hbox (24.79782pt too wide) detected at line 560
\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 ^^Nf\OT1/cmr/m/n/12 )(\OML/cmm/m/it/12 g[]; [
] ; g[]\OT1/cmr/m/n/12 ) = \OML/cmm/m/it/12 g[]  \OMS/cmsy/m/n/12 ^^A \OML/cmm/
m/it/12 f\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 g[]; [] ; g[]\OT1/cmr/m/n/12 ) \OMS/
cmsy/m/n/12 ^^@ []\OT1/cmr/m/n/12 (\OMS/cmsy/m/n/12 ^^@\OT1/cmr/m/n/12 1)[]\OML
/cmm/m/it/12 f\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 g[]; [] ; g[]g[]; [] ; g[]\OT1/
cmr/m/n/12 ) + (\OMS/cmsy/m/n/12 ^^@\OT1/cmr/m/n/12 1)[]\OML/cmm/m/it/12 f\OT1/
cmr/m/n/12 (\OML/cmm/m/it/12 g[]; [] ; g[]\OT1/cmr/m/n/12 )\OML/cmm/m/it/12 :
 []


Overfull \hbox (11.49728pt too wide) in paragraph at lines 585--588
\OT1/cmr/m/it/12 and the as-sign-ment $\OML/cmm/m/it/12 H \OMS/cmsy/m/n/12 7! \
OT1/cmr/m/n/12 [\OML/cmm/m/it/12 ![]\OT1/cmr/m/n/12 ]$ \OT1/cmr/m/it/12 re-fine
s the phase clas-si-fi-ca-tion map $\OML/cmm/m/it/12 ^^Y[]\OT1/cmr/m/n/12 ([][]
) \OMS/cmsy/m/n/12 ! \OML/cmm/m/it/12 H[]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 G; U
\OT1/cmr/m/n/12 (1))$
 []


Overfull \hbox (30.93155pt too wide) in paragraph at lines 597--606
[]\OT1/cmr/bx/n/12 Example 4.4 \OT1/cmr/m/n/12 (Hal-dane phase)\OT1/cmr/bx/n/12
 . []\OT1/cmr/m/n/12 For $\OML/cmm/m/it/12 G \OT1/cmr/m/n/12 = \OML/cmm/m/it/12
 SO\OT1/cmr/m/n/12 (3)$, $\OML/cmm/m/it/12 d \OT1/cmr/m/n/12 = 1$ (1D spin chai
n), one has $\OML/cmm/m/it/12 H[]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 SO\OT1/cmr/m
/n/12 (3)\OML/cmm/m/it/12 ; U\OT1/cmr/m/n/12 (1)) []
 []

[10]
Overfull \hbox (0.57367pt too wide) in paragraph at lines 640--644
[]\OT1/cmr/bx/n/12 Definition 5.1 \OT1/cmr/m/n/12 (Uni-tary fu-sion cat-e-gory 
(UFC))\OT1/cmr/bx/n/12 . []\OT1/cmr/m/n/12 A UFC $\OMS/cmsy/m/n/12 C$ \OT1/cmr/
m/n/12 is a $\U/msb/m/n/12 C$\OT1/cmr/m/n/12 -linear semisim-ple monoidal
 []

[11] [12] [13]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 832.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 832.

[14] [15]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 963.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 963.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 963.


Overfull \hbox (17.39302pt too wide) detected at line 983
\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 ^^N[]!\OT1/cmr/m/n/12 )(\OML/cmm/m/it/12 g[];
 [] ; g[]\OT1/cmr/m/n/12 ) = (\OML/cmm/m/it/12 g[] \OMS/cmsy/m/n/12 ^^A \OML/cm
m/m/it/12 !\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 g[]; [] ; g[]\OT1/cmr/m/n/12 )) \O
MS/cmsy/m/n/12 ^^A [] \OML/cmm/m/it/12 !\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 g[]; 
[] ; g[]g[]; [] ; g[]\OT1/cmr/m/n/12 )[] \OMS/cmsy/m/n/12 ^^A \OML/cmm/m/it/12 
!\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 g[]; [] ; g[]\OT1/cmr/m/n/12 )[]\OML/cmm/m/i
t/12 :
 []

[16] [17]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1051.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 1051.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\times' on input line 1051.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 1051.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1051.


Overfull \hbox (31.5991pt too wide) in paragraph at lines 1097--1099
[]\OT1/cmr/m/n/12 Under the-o-rem [][]4.3[][], this stack-ing map matches ad-di
-tion in the co-ho-mol-ogy group $\OML/cmm/m/it/12 H[]\OT1/cmr/m/n/12 (\OML/cmm
/m/it/12 G; U\OT1/cmr/m/n/12 (1))$: 
 []

[18]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1111.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1111.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1111.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 1111.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1111.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1118.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 1118.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1118.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1126.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 1126.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1126.

[19]
Overfull \hbox (25.07924pt too wide) in paragraph at lines 1174--1177
[]\OT1/cmr/m/it/12 SPT as group co-ho-mol-ogy, func-to-ri-ally. \OT1/cmr/m/n/12
 The clas-si-fi-ca-tion map $\OML/cmm/m/it/12 ^^Y[]\OT1/cmr/m/n/12 ([][]) \OMS/
cmsy/m/n/12 ! \OML/cmm/m/it/12 H[]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 G; U\OT1/cm
r/m/n/12 (1))$
 []

[20] [21] [22] [23] (./paper.aux)
 ***********
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
 ***********
Package rerunfilecheck Info: File `paper.out' has not changed.
(rerunfilecheck)             Checksum: A227A1608868DEBA9017E05E57CC5B56;12101.

exec
/usr/local/bin/zsh -lc "nl -ba papers/phase-bound-matter/paper.tex | sed -n '810,845p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
exec
/usr/local/bin/zsh -lc "nl -ba papers/phase-bound-matter/paper.tex | sed -n '1038,1060p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
exec
/usr/local/bin/zsh -lc "nl -ba papers/phase-bound-matter/paper.tex | sed -n '280,335p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
   810	\begin{proof}[Proof idea]
   811	The Kitaev--Preskill construction uses the alternating sum
   812	$S_{KP} = -S(A_{1})-S(A_{2})-S(A_{3})+S(A_{1}\cup A_{2})+S(A_{2}\cup A_{3})
   813	+S(A_{1}\cup A_{3})-S(A_{1}\cup A_{2}\cup A_{3})$
   814	for three regions $A_{1},A_{2},A_{3}$ meeting at a tri-junction. The boundary-length
   815	contributions cancel exactly, leaving the topological constant
   816	$S_{KP}=-\gamma=-\log\mathcal{D}$. Independently and contemporaneously, Levin and Wen
   817	\cite{LevinWen2006} gave an alternative two-region construction extracting the same
   818	topological constant $\gamma$.
   819	\end{proof}
   820	
   821	\begin{corollary}[$\gamma$ is a phase invariant]
   822	\label{cor:gamma-invariant}
   823	$\gamma$ is constant on each connected component of $\Ham$ (i.e.\ on each phase),
   824	because gap-preserving paths cannot change the MTC.
   825	\end{corollary}
   826	
   827	\begin{example}[Toric code TEE]
   828	For the toric code, $\mathcal{D}=2$ and $\gamma=\log 2$, in agreement with numerical
   829	\cite{Kitaev2003} and analytical \cite{KitaevPreskill2006} results.
   830	\end{example}
   831	
   832	\section{Renormalization Group as a Functor on $\Ham$}
   833	\label{sec:rg}
   834	
   835	We pause to make one further connection to Law~I that will be needed by Laws~III and IV: the
   836	renormalization group (RG) acting on $\Ham$.
   837	
   838	\subsection{Block-spin RG as a coarsening functor}
   839	
   840	Fix a block-size $b\geq 2$ and group sites of $\Lambda$ into blocks of $b^{d}$ sites in
   841	spatial dimension $d$. Each block carries a Hilbert space $\mathfrak{h}^{\otimes b^{d}}$
   842	of which we project onto a chosen subspace $\mathfrak{h}'\hookrightarrow
   843	\mathfrak{h}^{\otimes b^{d}}$. The induced map on Hamiltonians is the action of the
   844	block-spin RG transformation $R_{b}:\Ham(\Lambda,\mathfrak{h})\to\Ham(\Lambda',
   845	\mathfrak{h}')$ where $\Lambda'$ is the rescaled lattice.

 succeeded in 0ms:
  1038	this is a \emph{different} $\mathbb{Z}_{2}$ from that of the Haldane phase
  1039	(\cref{ex:haldane}), which is classified by $H^{2}(SO(3),U(1))$ rather than by the
  1040	$\mathbb{Z}_{2}^{T}$ cohomology computed here.
  1041	
  1042	\paragraph{Why the trivial-action $\mathbb{Z}_{2}$ has no SPT in 1D.}
  1043	The vanishing $H^{2}(\mathbb{Z}_{2},U(1))=0$ does \emph{not} mean ``no on-site
  1044	$\mathbb{Z}_{2}$ SPT exists''; it means that with on-site \emph{single-copy}
  1045	$\mathbb{Z}_{2}$ symmetry alone there is no 1D SPT. The well-known cluster-state SPT in
  1046	1D is protected by $\mathbb{Z}_{2}\times\mathbb{Z}_{2}$, with non-trivial class in
  1047	$H^{2}(\mathbb{Z}_{2}\times\mathbb{Z}_{2},U(1))=\mathbb{Z}_{2}$ (one of the K\"unneth
  1048	cross-terms). This illustrates the dependence of the SPT classification on the
  1049	\emph{choice} of symmetry group, even at fixed dimension.
  1050	
  1051	\subsection{Example 5: $\mathbb{Z}_{2}\times\mathbb{Z}_{2}$ in 2D}
  1052	\label{ex:z2z2-2d}
  1053	
  1054	In 2D, the relevant group is $H^{3}(\mathbb{Z}_{2}\times\mathbb{Z}_{2},U(1))$. By
  1055	K\"unneth and the standard computation,
  1056	\[
  1057	H^{3}(\mathbb{Z}_{2}\times\mathbb{Z}_{2},U(1)) \cong \mathbb{Z}_{2}^{3},
  1058	\]
  1059	giving eight distinct $\mathbb{Z}_{2}\times\mathbb{Z}_{2}$ SPT phases in 2D. Three of
  1060	these come from the individual $\mathbb{Z}_{2}$ factors ($\mathbb{Z}_{2}^{2}$ from each

 succeeded in 0ms:
   280	if $[U_{g},H]=0$ for all $g\in G$.
   281	\end{definition}
   282	
   283	\begin{definition}[Category $\Ham_{G}$]
   284	\label{def:HamG}
   285	The category $\Ham_{G}$ has $G$-symmetric Hamiltonians as objects, and gap-preserving
   286	paths $\{H_{s}\}$ \emph{through $G$-symmetric Hamiltonians} as morphisms.
   287	\end{definition}
   288	
   289	The forgetful functor $U:\Ham_{G}\to\Ham$ remembers only the underlying Hamiltonian
   290	without its $G$-equivariance. The induced map on connected components
   291	$U_{*}:\pi_{0}(\Ham_{G})\to\pi_{0}(\Ham)$ is in general neither injective nor
   292	surjective: phases that are distinct under $G$-symmetry can become equivalent when the
   293	symmetry is forgotten (this is precisely the SPT phenomenon, \cref{sec:spt}).
   294	
   295	\subsection{The classifying space of $G$ as a one-object category}
   296	
   297	For a group $G$, write $\BG$ for the one-object groupoid with morphism set $G$ and
   298	composition given by group multiplication. A functor $\BG\to\mathcal{D}$ for any category
   299	$\mathcal{D}$ picks out an object $D$ and a homomorphism $G\to\mathrm{Aut}_{\mathcal{D}}(D)$.
   300	
   301	\begin{proposition}[Symmetric Hamiltonians as $\BG$-functors]
   302	\label{prop:hamG-as-functor}
   303	Let $\Ham_{0}$ denote the homotopy 1-category of $\Ham$: its objects are gapped local
   304	Hamiltonians on $(\Lambda,\mathfrak{h})$, and its morphisms are \emph{homotopy classes}
   305	of gap-preserving paths. Explicitly,
   306	$\mathrm{Hom}_{\Ham_{0}}(H,H')$ is the set of path-homotopy classes
   307	$[\{H_{s}\}_{s\in[0,1]}]$ where $H_{s=0}=H$, $H_{s=1}=H'$, and $\inf_{s}\Delta(H_{s})>0$,
   308	under the equivalence relation that two paths are identified iff they are homotopic
   309	through gap-preserving paths fixing endpoints. Composition is concatenation of paths.
   310	With this definition $\mathrm{Hom}_{\Ham_{0}}(H,H)$ is a group (the fundamental group of
   311	the gapped locus at the basepoint $H$). Note that $\Ham_{0}=\pi_{\leq 1}(\Ham)$ is the
   312	$1$-truncation of the full $\infty$-groupoid $\Ham$; we will not need higher homotopy
   313	in this paper. Let
   314	$[\BG,\Ham_{0}]^{\mathrm{eq}}$ denote the full subcategory of the functor category
   315	$[\BG,\Ham_{0}]$ consisting of those functors $F$ for which the induced homomorphism
   316	$G\to\mathrm{Aut}_{\Ham_{0}}(F(\ast))$ factors through the homomorphism
   317	$\rho_{\mathrm{ad}}:G\to\mathrm{Aut}_{\Ham_{0}}(F(\ast))$ given by adjoint action
   318	$\rho_{\mathrm{ad}}(g)=\mathrm{Ad}_{U_{g}}$ where $\mathrm{Ad}_{U_{g}}(H)=U_{g}H
   319	U_{g}^{\dagger}$. (For $G$-symmetric Hamiltonians this adjoint action is the identity
   320	loop; the data of the functor is precisely a recording of which on-site action $U_{g}$
   321	is being used.) Then
   322	\[
   323	\Ham_{G} \;\simeq\; [\BG,\Ham_{0}]^{\mathrm{eq}},
   324	\]
   325	as groupoids.
   326	\end{proposition}
   327	
   328	\begin{proof}
   329	We construct mutually inverse functors and check that they are equivalences.
   330	
   331	\emph{Functor $\Phi:\Ham_{G}\to[\BG,\Ham_{0}]^{\mathrm{eq}}$.}
   332	Given a $G$-symmetric Hamiltonian $H$ (so $[U_{g},H]=0$ for all $g\in G$), define a
   333	functor $F_{H}:\BG\to\Ham_{0}$ by setting $F_{H}(\ast)=H$ and, for each $g\in G$,
   334	$F_{H}(g):=[\mathrm{Ad}_{U_{g}}]\in\mathrm{Aut}_{\Ham_{0}}(H)$, the homotopy class of
   335	the loop $s\mapsto U_{g(s)}HU_{g(s)}^{\dagger}$ where $g(s)$ is any path in

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(ref|cref|Cref|cite|label)\\{\" papers/phase-bound-matter/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
exec
/usr/local/bin/zsh -lc "rg -n \"(undefined|Undefined|Citation .* undefined|Reference .* undefined|multiply defined|Label\\(s\\)|There were undefined|Rerun to get|LaTeX Warning)\" papers/phase-bound-matter/paper.log" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 exited 1 in 0ms:
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(ref|cref|Cref|cite|label)\{)
                                    ^
error: unopened group

exec
/usr/local/bin/zsh -lc "rg -n '\\\\(ref|cref|Cref|cite|label)\\{' papers/phase-bound-matter/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
104:\label{sec:intro}
131:\label{sec:lawI-recap}
178:  \cref{sec:landau} by viewing a Landau theory as a functor $\BG\to\Ham$.
185:The paper is organised as follows. In \cref{sec:phases-as-classes} we define the category
189:phases under symmetry. In \cref{sec:landau} we recover Landau's order-parameter
190:paradigm in this language. In \cref{sec:spt} we treat SPT phases via group cohomology and
192:\Cref{sec:mtc} sets up unitary modular tensor categories as the data of a $(2{+}1)$D
194:as worked examples. \Cref{sec:eee} defines an entanglement-entropy functor and
196:\Cref{sec:examples} works through three canonical examples: the toric code, the SSH
197:chain, and the Fibonacci Levin--Wen model. \Cref{sec:law3-hooks} states the precise
198:composition hooks Law~III will consume. \Cref{sec:open} lists open problems, and
199:\cref{sec:conclusion} concludes.
202:\label{sec:phases-as-classes}
213:\label{def:local-ham}
223:\label{def:gap}
230:\label{def:ham-cat}
257:\label{def:phase}
276:\label{def:sym-action}
284:\label{def:HamG}
293:symmetry is forgotten (this is precisely the SPT phenomenon, \cref{sec:spt}).
302:\label{prop:hamG-as-functor}
389:anomalies, which we treat in \cref{sec:spt} via group cohomology.
393:\Cref{prop:hamG-as-functor} is the formal mechanism by which Law~I's functorial
403:\label{def:sym-phase}
414:\label{thm:phase-classification}
420:$\ast$, by Chen--Gu--Wen \cite{ChenGuLiuWen2013}. The forgetful map
424:$\mathrm{SPT}^{d}(G)$ defined in \cref{def:spt}. Concretely we have a sequence of
439:by gap-preserving deformations \cite{ChenGuLiuWen2013}. By definition of SRE, every SRE
444:definition (\cref{def:spt}). Surjectivity onto the kernel: any
453:this is the standard Goldstone classification \cite{LandauLifshitz1980}.
466:\label{sec:landau}
469:language of \cref{sec:phases-as-classes}. This serves three purposes: it shows the
478:\label{def:op-rep}
489:\label{def:landau-functor}
501:\label{prop:landau}
513:same gap-preserving phase \cite{LandauLifshitz1980,Wilson1983}.
540:\label{sec:spt}
545:\label{def:spt}
567:\begin{theorem}[Chen--Gu--Liu--Wen \cite{ChenGuLiuWen2013}]
568:\label{thm:CGLW}
577:here; see \cite{ChenGuLiuWen2013}. The key categorical content for us is:
580:\label{prop:spt-functor}
596:\label{ex:haldane}
598:\cite{ChenGuLiuWen2013}. The symmetry $G=SO(3)$ is the rotational symmetry of an
609:\label{ex:1d-fermionic}
613:\cite{FreedHopkins2021}. We mention this only to flag that the classification
615:generalised cohomology, which is the open-problem item in \cref{sec:open}.
625:identification in \cref{sec:law3-hooks} to formulate the lifting to Floquet phases:
631:\label{sec:mtc}
639:\label{def:ufc}
652:\label{def:mtc}
665:\cite{Muger2003}, $S$ is non-degenerate iff the M\"uger center of $\mathcal{C}$ is trivial.
671:\label{thm:top-order-mtc}
680:    \cite{Wang2010}). At $g=1$ this gives $\mathrm{GSD}(1)=|I|$ (number of simple
684:Conversely, the Levin--Wen string-net construction \cite{LevinWen2005} produces, from a
696:\label{ex:toric}
709:\label{eq:toric-ham}
716:plays a central role in fault-tolerant quantum computation \cite{Kitaev2003}.
720:\begin{theorem}[Levin--Wen \cite{LevinWen2005}]
721:\label{thm:lw}
731:\label{ex:fib}
736:topological quantum computation \cite{Wang2010}.
746:\label{eq:lift1to2}
756:\label{sec:eee}
771:\label{def:regcat}
777:\label{def:s-functor}
794:\begin{theorem}[Kitaev--Preskill, Levin--Wen \cite{KitaevPreskill2006}]
795:\label{thm:kp}
800:\label{eq:kp}
817:\cite{LevinWen2006} gave an alternative two-region construction extracting the same
822:\label{cor:gamma-invariant}
829:\cite{Kitaev2003} and analytical \cite{KitaevPreskill2006} results.
833:\label{sec:rg}
848:\label{prop:rg-functor}
857:times the projector overlap, which is bounded uniformly along the path \cite{Wilson1983}.
864:\label{def:rg-fixed}
870:The toric code Hamiltonian \cref{eq:toric-ham} is an exact RG fixed point: the block
891:\cite{Wilson1983}, critical points are described by conformal field theories (CFTs); the
899:\label{sec:examples}
903:We summarise the analysis of \cref{ex:toric} and \cref{eq:toric-ham} in our language:
920:\label{eq:ssh}
936:\cite{FreedHopkins2021}, with the non-trivial element matching the parity of the number
941:\cref{sec:open}.
952:By \cref{thm:lw} and \cref{ex:fib}, the Levin--Wen model with input $\mathcal{C}_{0}=
961:quantum computation \cite{Wang2010}.
964:\label{ex:z2-cocycle}
966:To make \cref{prop:spt-functor} concrete we compute $H^{2}(\mathbb{Z}_{2},U(1))$ in
971:chain, with $H^{2}(SO(3),U(1))\cong\mathbb{Z}_{2}$ (\cref{ex:haldane}). The
986:\label{eq:delta1-mult}
991:\label{eq:cocycle2-mult}
997:bar complex). Setting $g_{1}=g_{2}=g_{3}=g$ in \cref{eq:cocycle2-mult} and using
1006:\cref{eq:delta1-mult} for trivial action gives
1018:Now $g\cdot f(g)=f(g)^{-1}$, so equation \cref{eq:delta1-mult} with $g_{1}=g_{2}=g$ gives
1024:into \cref{eq:cocycle2-mult},
1037:spin-$\tfrac{1}{2}$ \cite{ChenGuLiuWen2013}. As noted at the head of this subsection,
1039:(\cref{ex:haldane}), which is classified by $H^{2}(SO(3),U(1))$ rather than by the
1052:\label{ex:z2z2-2d}
1066:\label{ex:toric-stab}
1069:\cref{eq:toric-ham} is the parent Hamiltonian of the stabiliser group
1090:\label{ex:stacking}
1097:Under \cref{prop:spt-functor}, this stacking map matches addition in the cohomology
1105:\label{sec:law3-hooks}
1159:\label{sec:results}
1166:    (\cref{def:phase}).
1170:    (\cref{prop:hamG-as-functor}).
1173:    \BG\to\Vect$ (\cref{prop:landau}).
1176:    $\mathrm{SPT}^{d}:\mathbf{Grp}\to\mathbf{Ab}$ (\cref{prop:spt-functor}).
1180:    $\mathcal{Z}$ (\cref{eq:lift1to2}).
1182:    $\gamma=\log\mathcal{D}$ is constant on each phase (\cref{cor:gamma-invariant}) and
1183:    is computed by the Kitaev--Preskill formula (\cref{thm:kp}).
1185:    (\cref{sec:law3-hooks}) by which Law~III may consume Law~II to produce Floquet
1190:\label{sec:discussion}
1207:    open problem 3 in \cref{sec:open}).
1219:Our setup is closest to that of \cite{LevinWen2005, Wang2010} for $(2{+}1)$D and to
1220:\cite{ChenGuLiuWen2013} for SPT phases. The cobordism-classification programme of
1221:\cite{FreedHopkins2021} extends the SPT classification to fermionic and anti-unitary
1228:\label{sec:open}
1235:    \cref{prop:spt-functor} to a functor on the category of finite groups equipped with
1240:    categorical answer would generalise \cref{thm:lw} from $(2{+}1)$D to $(3{+}1)$D.
1247:    of \cref{thm:CGLW} from groups $G$ to fusion categories $\mathcal{S}$ acting as
1257:\label{sec:conclusion}
1291:\cite{LawI} provides the categorical primitives invoked throughout this paper.

exec
/usr/local/bin/zsh -lc "rg -n '\\\\begin\\{thebibliography\\}|\\\\bibitem' papers/phase-bound-matter/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
1293:\begin{thebibliography}{99}
1295:\bibitem{Kitaev2003}
1299:\bibitem{Kitaev2006}
1303:\bibitem{Wen1990}
1307:\bibitem{Wen2002}
1312:\bibitem{ChenGuLiuWen2013}
1317:\bibitem{LevinWen2005}
1322:\bibitem{LevinWen2006}
1326:\bibitem{KitaevPreskill2006}
1330:\bibitem{Atiyah1988}
1334:\bibitem{BaezDolan1995}
1338:\bibitem{LandauLifshitz1980}
1342:\bibitem{Wilson1983}
1346:\bibitem{Wang2010}
1350:\bibitem{RowellWang2018}
1354:\bibitem{FreedHopkins2021}
1358:\bibitem{Muger2003}
1362:\bibitem{Lawvere1963}
1366:\bibitem{AbramskyCoecke2004}
1370:\bibitem{LawI}

exec
/usr/local/bin/zsh -lc "sed -n '580,615p' papers/phase-bound-matter/paper.log" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
84.
)
\Hy@SectionHShift=\skip57
) (/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty
Package: cleveref 2018/03/27 v0.21.4 Intelligent cross-referencing
Package cleveref Info: `hyperref' support loaded on input line 2370.
LaTeX Info: Redefining \cref on input line 2370.
LaTeX Info: Redefining \Cref on input line 2370.
LaTeX Info: Redefining \crefrange on input line 2370.
LaTeX Info: Redefining \Crefrange on input line 2370.
LaTeX Info: Redefining \cpageref on input line 2370.
LaTeX Info: Redefining \Cpageref on input line 2370.
LaTeX Info: Redefining \cpagerefrange on input line 2370.
LaTeX Info: Redefining \Cpagerefrange on input line 2370.
LaTeX Info: Redefining \labelcref on input line 2370.
LaTeX Info: Redefining \labelcpageref on input line 2370.
Package cleveref Info: `amsthm' support loaded on input line 3026.
)
==> First Aid for cleveref.sty applied!
(/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty
Package: everypage 2020/10/17 R2.0b Hooks to run on every page


Package everypage Warning: Functionality similar to this package has recently
(everypage)                been implemented in LaTeX. This package is now in
(everypage)                legacy status.
(everypage)                Please, don't use it in new documents and packages.


Package everypage Warning: You appear to be running a version of LaTeX
(everypage)                providing the new functionality.
(everypage)                Doing the best to deliver the original `everypage`
(everypage)                interface on top of it. Strict equivalence is
(everypage)                not possible, breakage may occur.
(everypage)                If truly needed, Use `everypage-1x` to force the
(everypage)                loading of an older code base.

exec
/usr/local/bin/zsh -lc "rg -n 'Underfull|Overfull|Package hyperref Warning|Package everypage Warning|Font shape' papers/phase-bound-matter/paper.log" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
603:Package everypage Warning: Functionality similar to this package has recently
609:Package everypage Warning: You appear to be running a version of LaTeX
825:Overfull \hbox (0.56433pt too wide) in paragraph at lines 234--237
834:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
838:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
841:LaTeX Font Info:    Font shape `OT1/cmss/m/it' in size <8> not available
842:(Font)              Font shape `OT1/cmss/m/sl' tried instead on input line 326.
845:Overfull \hbox (24.79782pt too wide) detected at line 560
856:Overfull \hbox (11.49728pt too wide) in paragraph at lines 585--588
865:Overfull \hbox (30.93155pt too wide) in paragraph at lines 597--606
874:Overfull \hbox (0.57367pt too wide) in paragraph at lines 640--644
882:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
886:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
891:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
895:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
899:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
903:Overfull \hbox (17.39302pt too wide) detected at line 983
915:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
919:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
923:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
927:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
931:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
935:Overfull \hbox (31.5991pt too wide) in paragraph at lines 1097--1099
943:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
947:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
951:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
955:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
959:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
963:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
967:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
971:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
975:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
979:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
983:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
987:Overfull \hbox (25.07924pt too wide) in paragraph at lines 1174--1177

exec
/usr/local/bin/zsh -lc "nl -ba papers/phase-bound-matter/paper.tex | sed -n '880,950p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
exec
/usr/local/bin/zsh -lc "rg -n '"'^'"\\\\(section|subsection|subsubsection|paragraph)\\{' papers/phase-bound-matter/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
103:\section{Introduction}
106:\subsection{Position in the modular series}
130:\subsection{One-page recap of Law I}
183:\subsection{Outline}
201:\section{Mathematical Framework: Phases as Equivalence Classes under Functor Pullback}
204:\subsection{The category of gapped Hamiltonians}
254:\subsection{Phases as functorial equivalence classes}
295:\subsection{The classifying space of $G$ as a one-object category}
400:\subsection{Phases under symmetry as functor pullbacks}
465:\section{Landau Theory in Categorical Form}
475:\subsection{Order parameters as local sections}
525:\subsection{Landau is not enough}
539:\section{Symmetry-Protected Topological Phases via Group Cohomology}
542:\subsection{SPT phases as the SSB-trivial subset}
551:\subsection{Group cohomology}
565:\subsection{The Chen--Gu--Liu--Wen classification}
618:\subsection{The classifying-space picture}
630:\section{Modular Tensor Categories and Topological Order}
636:\subsection{Unitary fusion categories}
649:\subsection{Modular tensor categories}
668:\subsection{Topological order as MTC data}
689:\subsection{Kitaev's quantum double and the toric code}
718:\subsection{Levin--Wen string-nets and Drinfeld centers}
739:\subsection{Compositional connection to Law I}
755:\section{Entanglement Entropy as a Functor}
761:\subsection{Reduced density matrices and von Neumann entropy}
768:\subsection{The entanglement-entropy functor}
792:\subsection{The Kitaev--Preskill formula}
832:\section{Renormalization Group as a Functor on $\Ham$}
838:\subsection{Block-spin RG as a coarsening functor}
861:\subsection{Fixed points and phase representatives}
887:\subsection{Critical points and CFT}
898:\section{Worked Examples}
901:\subsection{Example 1: The toric code}
915:\subsection{Example 2: The SSH chain (1D SPT)}
950:\subsection{Example 3: Doubled Fibonacci (Levin--Wen)}
963:\subsection{Example 4: Explicit $\mathbb{Z}_{2}$ cocycles}
995:\paragraph{Case 1: trivial action ($G=\mathbb{Z}_{2}=\{e,g\}$, $g\cdot a=a$).}
1016:\paragraph{Case 2: anti-unitary action $U_{T}(1)$ ($G=\mathbb{Z}_{2}^{T}$, $g\cdot a=
1042:\paragraph{Why the trivial-action $\mathbb{Z}_{2}$ has no SPT in 1D.}
1051:\subsection{Example 5: $\mathbb{Z}_{2}\times\mathbb{Z}_{2}$ in 2D}
1065:\subsection{Example 6: Toric code as a stabiliser code}
1089:\subsection{Example 7: Stacking and the abelian-group structure on SPT phases}
1104:\section{Composition Hooks for Law III}
1111:\subsection{Hook 1: The category $\Ham$ extends to $\Ham_{T\text{-per}}$}
1118:\subsection{Hook 2: Symmetry group enlarges by $\mathbb{Z}_{T}$}
1126:\subsection{Hook 3: MTC enriches by $\Rep(\mathbb{Z}_{T})$}
1136:\subsection{Hook 4: TEE extends to Floquet TEE}
1146:\subsection{Hook 5: Composition functor}
1158:\section{Results}
1189:\section{Discussion}
1192:\subsection{Why functorial classification?}
1202:\subsection{What this paper does \emph{not} claim}
1217:\subsection{Relation to other categorical frameworks}
1227:\section{Open Problems}
1256:\section{Conclusion}
1280:\paragraph{Acknowledgements.}
1285:\paragraph{Code availability.}

 succeeded in 0ms:
   880	The set of RG fixed points up to gap-preserving deformation is a complete (and minimal)
   881	set of phase representatives: every phase contains at least one RG fixed point, and two
   882	fixed points in the same phase are related by a deformation. This justifies the practice
   883	of taking the toric code as the canonical representative of $\mathbb{Z}_{2}$ topological
   884	order.
   885	\end{remark}
   886	
   887	\subsection{Critical points and CFT}
   888	
   889	A non-fixed but RG-invariant point --- a fixed point of the RG flow on the space of
   890	Hamiltonian densities --- is a critical point. By the operator-product-expansion formalism
   891	\cite{Wilson1983}, critical points are described by conformal field theories (CFTs); the
   892	data of a CFT (central charge, primary spectrum, OPE coefficients) is the algebraic
   893	content of the critical point. We will not develop CFT here, but we note that critical
   894	points are \emph{not} objects of $\Ham$ (they are gapless), so they sit in the
   895	boundary $\partial\Ham$ of the gapped category. Phase boundaries are exactly such
   896	critical points.
   897	
   898	\section{Worked Examples}
   899	\label{sec:examples}
   900	
   901	\subsection{Example 1: The toric code}
   902	
   903	We summarise the analysis of \cref{ex:toric} and \cref{eq:toric-ham} in our language:
   904	\begin{itemize}
   905	  \item \emph{Phase}: A topologically ordered phase, distinct from any Landau phase.
   906	  \item \emph{MTC}: $\Rep(D(\mathbb{Z}_{2}))$ with simple objects
   907	    $\{\mathbf{1},e,m,\varepsilon\}$, all quantum dimensions $1$, $\mathcal{D}=2$.
   908	  \item \emph{Functorial picture}: The functor $\BG\to\Ham$ for $G=\mathbb{Z}_{2}$ (the
   909	    fermion-parity symmetry) lands on $H_{\mathrm{TC}}$; the topological invariant is the
   910	    isomorphism class of the resulting MTC, not the order parameter.
   911	  \item \emph{TEE}: $\gamma=\log 2$.
   912	  \item \emph{Code}: $[[n=2L^{2},k=2,d=L]]$ on an $L\times L$ torus.
   913	\end{itemize}
   914	
   915	\subsection{Example 2: The SSH chain (1D SPT)}
   916	
   917	The Su--Schrieffer--Heeger model is a 1D fermionic chain with alternating hopping
   918	amplitudes $t_{1},t_{2}>0$:
   919	\begin{equation}
   920	\label{eq:ssh}
   921	H_{\mathrm{SSH}} = \sum_{j}\Big(\!-t_{1}\,c^{\dagger}_{2j-1}c_{2j}
   922	- t_{1}\,c^{\dagger}_{2j}c_{2j-1}
   923	- t_{2}\,c^{\dagger}_{2j}c_{2j+1}
   924	- t_{2}\,c^{\dagger}_{2j+1}c_{2j}\Big)
   925	\end{equation}
   926	For chiral symmetry $\Gamma=\sigma_{z}$, the model has two phases: $t_{1}>t_{2}$
   927	(trivial) and $t_{1}<t_{2}$ (topological). The relevant classification is subtle
   928	because the SSH model is a \emph{free-fermion} system, and the interplay of chiral
   929	symmetry, fermionic statistics and particle-hole/charge-conjugation structure pushes
   930	the classification beyond bosonic group cohomology and into the framework of
   931	$K$-theory and spin cobordism.
   932	\emph{Bosonic-only} cohomology with on-site $\mathbb{Z}_{2}$-symmetry gives
   933	$H^{2}(\mathbb{Z}_{2},U(1))=0$, so the SSH model is \emph{not} a non-trivial bosonic
   934	SPT. The genuine non-triviality of the SSH model is fermionic: it is classified by spin
   935	cobordism, $\Omega^{2}_{\mathrm{Spin}}(B\mathbb{Z}_{2}^{\Gamma},U(1))\cong\mathbb{Z}_{2}$
   936	\cite{FreedHopkins2021}, with the non-trivial element matching the parity of the number
   937	of zero modes at the boundary. Equivalently, the chiral-symmetry-protected topological
   938	invariant is the winding number of the off-diagonal block of the Bloch Hamiltonian.
   939	We mention SSH here precisely to underline that the bosonic group-cohomology answer is
   940	\emph{insufficient} for fermionic systems: this is the substance of open problem~O1 in
   941	\cref{sec:open}.
   942	
   943	In our setting, the SSH chain is a worked instance of $\Ham_{G}\to\pi_{0}$ with
   944	$G=\mathbb{Z}_{2}^{\Gamma}$ (chiral symmetry), and the topological invariant is the map
   945	\[
   946	\pi_{0}(\Ham_{\mathbb{Z}_{2}^{\Gamma}})_{\mathrm{SSH}} \;\to\; \mathbb{Z}_{2},
   947	\quad H\mapsto\#\{\text{zero modes at boundary}\}\bmod 2.
   948	\]
   949	
   950	\subsection{Example 3: Doubled Fibonacci (Levin--Wen)}

exec
/usr/local/bin/zsh -lc "nl -ba papers/phase-bound-matter/paper.tex | sed -n '1058,1088p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
  1058	\]
  1059	giving eight distinct $\mathbb{Z}_{2}\times\mathbb{Z}_{2}$ SPT phases in 2D. Three of
  1060	these come from the individual $\mathbb{Z}_{2}$ factors ($\mathbb{Z}_{2}^{2}$ from each
  1061	copy of $H^{3}(\mathbb{Z}_{2},U(1))=\mathbb{Z}_{2}$), and the remaining factor of
  1062	$\mathbb{Z}_{2}$ arises from the K\"unneth cross-term, corresponding to a mixed
  1063	mutual-statistics SPT.
  1064	
  1065	\subsection{Example 6: Toric code as a stabiliser code}
  1066	\label{ex:toric-stab}
  1067	
  1068	We expand the link between Law~II and quantum information. The toric code Hamiltonian
  1069	\cref{eq:toric-ham} is the parent Hamiltonian of the stabiliser group
  1070	\[
  1071	\mathcal{S} = \langle A_{v}, B_{p} : v\in V(\Lambda),\ p\in F(\Lambda)\rangle
  1072	\subset\mathcal{P}_{n}
  1073	\]
  1074	where $\mathcal{P}_{n}$ is the Pauli group on $n=2L^{2}$ qubits (one per edge of an
  1075	$L\times L$ torus). The stabiliser group satisfies $|\mathcal{S}|=2^{n-2}$ (two relations
  1076	$\prod_{v}A_{v}=\prod_{p}B_{p}=\mathbb{1}$), so the codespace has dimension
  1077	$2^{n}/2^{n-2}=4$, matching the four-fold degeneracy on the torus.
  1078	
  1079	The two logical qubits are encoded by non-contractible Wilson loops:
  1080	\[
  1081	\overline{X}_{1} = \prod_{e\in C_{1}}\sigma^{x}_{e},\quad
  1082	\overline{Z}_{1} = \prod_{e\in \widetilde C_{1}}\sigma^{z}_{e},\quad
  1083	\overline{X}_{2}, \overline{Z}_{2} \text{ from the second non-contractible cycle.}
  1084	\]
  1085	The code distance $d$ equals the length of the shortest non-contractible loop,
  1086	$d=L=\sqrt{n/2}$. Thus the toric code is a $[[2L^{2},2,L]]$ stabiliser code. This is the
  1087	discrete realisation of the abstract data captured in the MTC $\Rep(D(\mathbb{Z}_{2}))$.
  1088	

exec
/usr/local/bin/zsh -lc "nl -ba papers/phase-bound-matter/paper.tex | sed -n '1188,1270p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
  1188	
  1189	\section{Discussion}
  1190	\label{sec:discussion}
  1191	
  1192	\subsection{Why functorial classification?}
  1193	
  1194	The choice to classify phases as functorial equivalence classes is not aesthetic. It is
  1195	forced by the modular composition principle of the series: each law must produce data
  1196	that the next law can consume \emph{as a category}, not merely as a set or group. The set
  1197	$\pi_{0}(\Ham)$ alone is too coarse to support the lifting to Floquet phases (Law~III)
  1198	or to information geometry (Law~IV); we need at minimum the category $\Ham_{G}$ and the
  1199	fusion/braiding data of MTCs to be available as categorical structure that the next
  1200	law's functor can act on.
  1201	
  1202	\subsection{What this paper does \emph{not} claim}
  1203	
  1204	This paper does \emph{not} claim:
  1205	\begin{enumerate}[label=(\roman*)]
  1206	  \item A complete classification of $(3{+}1)$D topological phases (this is open; cf.\
  1207	    open problem 3 in \cref{sec:open}).
  1208	  \item A categorical framework for fracton order (this is genuinely open; the
  1209	    string-net construction does not directly apply because of the sub-extensive
  1210	    ground-state degeneracy).
  1211	  \item A non-perturbative bridge to quantum gravity (this is the territory of Law~IV).
  1212	\end{enumerate}
  1213	We are explicit that the modular framework is not a unified theory and that the
  1214	classification at the topological-order level is the most rigorous tier; the lifting to
  1215	Law~III and beyond carries increasing speculative content.
  1216	
  1217	\subsection{Relation to other categorical frameworks}
  1218	
  1219	Our setup is closest to that of \cite{LevinWen2005, Wang2010} for $(2{+}1)$D and to
  1220	\cite{ChenGuLiuWen2013} for SPT phases. The cobordism-classification programme of
  1221	\cite{FreedHopkins2021} extends the SPT classification to fermionic and anti-unitary
  1222	symmetries; the bosonic group-cohomology classification we use here is the simpler
  1223	sub-case. Our explicit functorial reformulation in terms of the Law~I primitives
  1224	$M:\Phys\to\Info$ and the sheaf semantics is the new contribution; the underlying
  1225	mathematical results are due to the cited authors.
  1226	
  1227	\section{Open Problems}
  1228	\label{sec:open}
  1229	
  1230	We list, in order of decreasing rigor of currently available techniques, open problems
  1231	that bear directly on the modular composition.
  1232	
  1233	\begin{enumerate}[label=O\arabic*.,leftmargin=2.5em]
  1234	  \item \emph{Fermionic SPT classification beyond bosonic shadow.} Extend
  1235	    \cref{prop:spt-functor} to a functor on the category of finite groups equipped with
  1236	    a $\mathbb{Z}_{2}^{f}$-extension, taking values in spin-cobordism cohomology
  1237	    $\Omega^{*}_{\mathrm{Spin}}(\BG,U(1))$.
  1238	  \item \emph{$(3{+}1)$D topological order.} Is every $(3{+}1)$D topological phase the
  1239	    boundary of a $(4{+}1)$D Walker--Wang model with input fusion 2-category? A
  1240	    categorical answer would generalise \cref{thm:lw} from $(2{+}1)$D to $(3{+}1)$D.
  1241	  \item \emph{Fracton order.} Find a categorical framework that captures the
  1242	    sub-extensive ground-state degeneracy and immobile excitations of fracton phases.
  1243	    The string-net construction does \emph{not} apply.
  1244	  \item \emph{Functorial RG.} Make precise Wilson's RG as a functor (or 2-functor) on
  1245	    $\Ham$. Are RG fixed points exactly the rigid objects?
  1246	  \item \emph{Non-invertible categorical symmetries.} Generalise the SPT classification
  1247	    of \cref{thm:CGLW} from groups $G$ to fusion categories $\mathcal{S}$ acting as
  1248	    symmetries; the relevant cohomology is the second cohomology of $\mathcal{S}$ in
  1249	    $U(1)$.
  1250	  \item \emph{Fibration of phases over the parameter space.} Make precise the
  1251	    fibration $\mathrm{Phases}\to\mathrm{Couplings}$ whose fibres are connected
  1252	    components of $\Ham$, and study its monodromy (this connects to Law~IV's
  1253	    information geometry).
  1254	\end{enumerate}
  1255	
  1256	\section{Conclusion}
  1257	\label{sec:conclusion}
  1258	
  1259	We have provided a functorial classification of phases of matter, building strictly on
  1260	the categorical primitives of Law~I and producing in clean form the data Law~III will
  1261	consume. The principal conceptual point is that phases are equivalence classes of
  1262	functors, not just states; the Landau paradigm and its topological generalisations both
  1263	fit into this scheme, with the difference being the target category (Vect for Landau,
  1264	Ham for SPT, MTC for topologically ordered phases). The topological entanglement entropy
  1265	$\gamma=\log\mathcal{D}$ provides the principal numerical bridge between the algebraic
  1266	data (the MTC) and the physical state (the ground subspace).
  1267	
  1268	The composition with Law~III is by replacing the symmetry group $G$ with $G\times
  1269	\mathbb{Z}_{T}$ and the static category $\Ham$ with $\Ham_{T\text{-per}}$; the
  1270	mathematical content of Law~III consists precisely in identifying the natural

codex
Reviewed `paper.tex` against `paper.log`.

No fatal compilation errors. PDF was produced. No undefined references/citations found. No underfull boxes found.

**Issues**

| Line(s) | Issue | Concrete fix |
|---|---|---|
| 10, 60 | `everypage` is legacy; log warns it may break on current LaTeX. | Remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` with `\AddToHook{shipout/foreground}{...}`. |
| 295, 832, 963, 1051, 1111, 1118, 1126 | Math in section/subsection titles causes `hyperref` PDF-string warnings. | Wrap titles with `\texorpdfstring`, e.g. `\subsection{\texorpdfstring{Example 5: $\mathbb{Z}_{2}\times\mathbb{Z}_{2}$ in 2D}{Example 5: Z2 x Z2 in 2D}}`. |
| 326 | Font substitution: `OT1/cmss/m/it` unavailable at size 8. | Add `\usepackage[T1]{fontenc}` and `\usepackage{lmodern}` in the preamble. |
| 234-237 | Minor overfull box in itemized morphism line. | Break the item after `morphisms $H_0\to H_1$:` or shorten `gap-preserving piecewise-smooth paths`. |
| 557-560 | Display equation overfull by `24.8pt`. | Use `aligned` and split the bar differential across 3 lines. |
| 585-588 | Proposition text overfull by `11.5pt`. | Put `H\mapsto[\omega_H]` and `\pi_0(\Ham_G)\to H^{d+1}(G,U(1))` in a displayed equation. |
| 597-606 | Haldane example overfull by `30.9pt`, mainly the inline AKLT Hamiltonian. | Move `H_{\mathrm{AKLT}}=...` into a displayed `equation`/`aligned` block. |
| 640-644 | Minor overfull box in definition heading/body. | Shorten optional title to `[UFC]` or start body on a new sentence after `A UFC $\mathcal C$ is`. |
| 980-983 | Multiplicative differential display overfull by `17.4pt`. | Split with `aligned`, putting each product factor on its own line. |
| 1097-1099 | Paragraph overfull by `31.6pt`. | Put `H^{d+1}(G,U(1))` or the whole stacking statement into display math. |
| 1174-1177 | Enumerated result item overfull by `25.1pt`. | Break after “classification map” and display `\pi_0(\Ham_G)\to H^{d+1}(G,U(1))`. |
| 901-1089 | Style inconsistency: “Worked Examples” uses numbered subsection titles `Example 1` through `Example 7`, while earlier examples use theorem `example` environments. | Use one style consistently: either convert these to `\begin{example}[...]` or rename subsections without manual `Example N:` prefixes. |
2026-04-30T17:11:44.765283Z ERROR codex_core::session: failed to record rollout items: thread 019ddf5e-8634-72e1-a734-5ef068a03463 not found
tokens used
102,569
Reviewed `paper.tex` against `paper.log`.

No fatal compilation errors. PDF was produced. No undefined references/citations found. No underfull boxes found.

**Issues**

| Line(s) | Issue | Concrete fix |
|---|---|---|
| 10, 60 | `everypage` is legacy; log warns it may break on current LaTeX. | Remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` with `\AddToHook{shipout/foreground}{...}`. |
| 295, 832, 963, 1051, 1111, 1118, 1126 | Math in section/subsection titles causes `hyperref` PDF-string warnings. | Wrap titles with `\texorpdfstring`, e.g. `\subsection{\texorpdfstring{Example 5: $\mathbb{Z}_{2}\times\mathbb{Z}_{2}$ in 2D}{Example 5: Z2 x Z2 in 2D}}`. |
| 326 | Font substitution: `OT1/cmss/m/it` unavailable at size 8. | Add `\usepackage[T1]{fontenc}` and `\usepackage{lmodern}` in the preamble. |
| 234-237 | Minor overfull box in itemized morphism line. | Break the item after `morphisms $H_0\to H_1$:` or shorten `gap-preserving piecewise-smooth paths`. |
| 557-560 | Display equation overfull by `24.8pt`. | Use `aligned` and split the bar differential across 3 lines. |
| 585-588 | Proposition text overfull by `11.5pt`. | Put `H\mapsto[\omega_H]` and `\pi_0(\Ham_G)\to H^{d+1}(G,U(1))` in a displayed equation. |
| 597-606 | Haldane example overfull by `30.9pt`, mainly the inline AKLT Hamiltonian. | Move `H_{\mathrm{AKLT}}=...` into a displayed `equation`/`aligned` block. |
| 640-644 | Minor overfull box in definition heading/body. | Shorten optional title to `[UFC]` or start body on a new sentence after `A UFC $\mathcal C$ is`. |
| 980-983 | Multiplicative differential display overfull by `17.4pt`. | Split with `aligned`, putting each product factor on its own line. |
| 1097-1099 | Paragraph overfull by `31.6pt`. | Put `H^{d+1}(G,U(1))` or the whole stacking statement into display math. |
| 1174-1177 | Enumerated result item overfull by `25.1pt`. | Break after “classification map” and display `\pi_0(\Ham_G)\to H^{d+1}(G,U(1))`. |
| 901-1089 | Style inconsistency: “Worked Examples” uses numbered subsection titles `Example 1` through `Example 7`, while earlier examples use theorem `example` environments. | Use one style consistently: either convert these to `\begin{example}[...]` or rename subsections without manual `Example N:` prefixes. |

## Fixes applied (Stage 5 round 1)

- Added `\usepackage[T1]{fontenc}` and `\usepackage{lmodern}` to fix font substitution warnings.
- Wrapped section/subsection titles containing math with `\texorpdfstring` for `hyperref` PDF-string warnings: `\section{Renormalization Group...}`, `\subsection{Example 4: Z_2 cocycles}`, `\subsection{Example 5: Z_2 x Z_2 in 2D}`, `\subsection{Hook 1: ...}`, `\subsection{Hook 2: ...}`, `\subsection{Hook 3: ...}`.
- Split the multiplicative bar-complex differential and the additive bar differential into `align*` blocks to remove overfull boxes.
- Moved the inline AKLT Hamiltonian into a displayed equation (`\label{eq:aklt}`).
- Split the SPT-classification map into a displayed equation in Prop \ref{prop:spt-functor}.
- Reworded the stacking paragraph in Example 7 to remove the 31.6pt overfull box.
- Reworked the SPT result item in Section \ref{sec:results} to display the classification map.

After fixes the only remaining overfull boxes are 0.60 pt at lines 236 and 652, which are sub-pixel and not visually visible.
