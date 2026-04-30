---
reviewer: codex (OpenAI)
type: formatting
paper: frequency-modulated-processes
date: 2026-04-30T15:57:10Z
---

Reading additional input from stdin...
OpenAI Codex v0.125.0 (research preview)
--------
workdir: /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
model: gpt-5.5
provider: openai
approval: never
sandbox: danger-full-access
reasoning effort: high
reasoning summaries: none
session id: 019ddf1b-c489-74c2-b2d8-9ed9c31594c4
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex for formatting issues only: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fixes. Be concise.
codex
I’ll inspect the TeX source and, if the local toolchain is present, run a non-editing compile/log check so the findings are based on actual LaTeX output as well as source line review.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/frequency-modulated-processes.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% Core math
     4	\usepackage{amsmath, amssymb, amsthm, mathrsfs}
     5	
     6	% Diagrams
     7	\usepackage{tikz-cd}
     8	\usepackage{tikz}
     9	\usetikzlibrary{calc, arrows.meta, decorations.pathmorphing, decorations.markings}
    10	
    11	% References
    12	\usepackage{hyperref}
    13	\usepackage{cleveref}
    14	
    15	% Graphics
    16	\usepackage{graphicx}
    17	
    18	% Page layout
    19	\usepackage[margin=1in]{geometry}
    20	
    21	% GrokRxiv sidebar
    22	\usepackage{everypage}
    23	\usepackage{xcolor}
    24	
    25	% Listings for code
    26	\usepackage{listings}
    27	\lstset{
    28	  basicstyle=\ttfamily\small,
    29	  breaklines=true,
    30	  showstringspaces=false,
    31	  columns=flexible,
    32	  keepspaces=true,
    33	}
    34	
    35	% Theorem environments
    36	\newtheorem{theorem}{Theorem}[section]
    37	\newtheorem{proposition}[theorem]{Proposition}
    38	\newtheorem{lemma}[theorem]{Lemma}
    39	\newtheorem{corollary}[theorem]{Corollary}
    40	\theoremstyle{definition}
    41	\newtheorem{definition}[theorem]{Definition}
    42	\newtheorem{example}[theorem]{Example}
    43	\theoremstyle{remark}
    44	\newtheorem{remark}[theorem]{Remark}
    45	
    46	% GrokRxiv DOI Sidebar
    47	\definecolor{grokgray}{RGB}{110,110,110}
    48	\AddEverypageHook{%
    49	  \ifnum\value{page}=1
    50	    \begin{tikzpicture}[remember picture, overlay]
    51	      \node[
    52	        rotate=90,
    53	        anchor=south,
    54	        font=\Large\sffamily\bfseries\color{grokgray},
    55	        inner sep=0pt
    56	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    57	      {GrokRxiv:2026.04.frequency-modulated-processes\quad
    58	       [\,cond-mat.str-el\,]\quad
    59	       30 Apr 2026};
    60	    \end{tikzpicture}
    61	  \fi
    62	}
    63	
    64	% Custom commands
    65	\newcommand{\C}{\mathcal{C}}
    66	\newcommand{\D}{\mathcal{D}}
    67	\newcommand{\Hcal}{\mathcal{H}}
    68	\newcommand{\F}{\mathcal{F}}
    69	\newcommand{\G}{\mathcal{G}}
    70	\newcommand{\Z}{\mathbb{Z}}
    71	\newcommand{\R}{\mathbb{R}}
    72	\newcommand{\N}{\mathbb{N}}
    73	\newcommand{\Cmplx}{\mathbb{C}}
    74	\newcommand{\T}{\mathbb{T}}
    75	\newcommand{\one}{\mathbf{1}}
    76	\newcommand{\HF}{H_{F}}
    77	\newcommand{\Heff}{H_{\mathrm{eff}}}
    78	\newcommand{\Floq}{\mathsf{Floq}}
    79	\newcommand{\Ham}{\mathsf{Ham}}
    80	\newcommand{\QChan}{\mathsf{QChan}}
    81	\newcommand{\Phase}{\mathsf{Phase}}
    82	\newcommand{\Cat}{\mathsf{Cat}}
    83	\newcommand{\BG}{\mathbf{B}G}
    84	\newcommand{\Res}{\mathrm{Res}}
    85	\newcommand{\Hilb}{\mathsf{Hilb}}
    86	
    87	\title{Law III --- Frequency-modulated Processes:\\
    88	Floquet Phases as Natural Transformations}
    89	\author{MagnetonIO Research \\
    90	\textit{Emergent Spacetime Dynamics Series} \\
    91	\textit{Paper 3 of 4 (Modular Composition)} \\
    92	\texttt{research@magneton.io}}
    93	\date{30 April 2026}
    94	
    95	\begin{document}
    96	\maketitle
    97	
    98	\begin{abstract}
    99	We develop the third law of a four-paper modular framework for emergent phases of matter from quantum information through category theory. Building directly on Law~I (categorical primitives) and Law~II (functorial classification of equilibrium phases), Law~III lifts the static phase-classification framework to a temporal setting in which a periodic Hamiltonian $H(t+T)=H(t)$ defines a monoidal functor from the discrete circle category $\mathbf{B}\mathbb{Z}_T$ to the dagger-monoidal category of quantum channels. We show that Floquet evolution is naturally a $2$-categorical structure: a Floquet system is a $1$-cell, micromotion data are $2$-cells, and Floquet phase transitions are connected components of the space of natural transformations between Floquet functors. We prove that the Magnus expansion provides a colimit construction for an asymptotic effective Hamiltonian functor whose finite truncations factor through the Law~II equilibrium phase functor, formalising the prethermal correspondence between Floquet and equilibrium phase classifications. Two emergent phenomena are then characterised as natural-transformation invariants with no equilibrium analog: discrete time crystals, which we encode as obstruction $2$-cells detecting spontaneous breaking of the temporal $\mathbb{Z}_n$ symmetry of the drive, and anomalous Floquet topological insulators, classified by a Floquet winding number $\nu\in\mathbb{Z}$ on the spatio-temporal Brillouin torus $\mathrm{BZ}\times S^1$. We work out two extended examples --- the periodically kicked Ising chain (giving a paradigmatic discrete time crystal) and the periodically driven Su-Schrieffer-Heeger (SSH) model (giving an anomalous Floquet edge mode at quasi-energy $\pi$) --- and verify the framework numerically with a small Haskell library that implements a first-order Magnus solver, a stroboscopic kicked-Ising simulator, and property tests for unitarity and periodicity. We conclude by exhibiting explicit composition hooks for Law~IV: the Sambe-space functor $\mathcal{S}\colon \Floq \to \Hilb_\infty$ produces an extended quantum-information substrate from which the holographic and information-geometric structures of Law~IV can be assembled. We emphasise throughout that this is a \emph{modular} composition --- each layer adds one categorical dimension rather than collapsing into a single unified theory.
   100	\end{abstract}
   101	
   102	\tableofcontents
   103	\newpage
   104	
   105	\section{Introduction}
   106	\label{sec:intro}
   107	
   108	\subsection{Position in the modular series}
   109	
   110	This is Paper~3 of the four-paper modular research programme \emph{Emergent Spacetime Dynamics}. The series formalises a hierarchy of emergent phenomena in quantum many-body systems through category theory, organised as a sequence of compositional liftings:
   111	\begin{equation}
   112	\label{eq:lifting-tower}
   113	\Cat_{\mathrm{mon}} \xrightarrow{\;\mathrm{Lift}_{\mathrm{I}\to\mathrm{II}}\;} \Phase_{\mathrm{eq}} \xrightarrow{\;\mathrm{Lift}_{\mathrm{II}\to\mathrm{III}}\;} \Phase_{\mathrm{Floq}} \xrightarrow{\;\mathrm{Lift}_{\mathrm{III}\to\mathrm{IV}}\;} \mathsf{InfoGeom}.
   114	\end{equation}
   115	We stress at the outset that this is a \emph{modular} framework, not a unified one: each lift is a distinct functor, and the emergent properties at each stage are produced by the composition itself rather than reducible to any single prior layer. The third paper, presented here, covers the lift from equilibrium-phase functors to Floquet-phase functors; that is, it extends the categorical phase-classification machinery of Law~II by one monoidal dimension --- time --- producing as emergent phenomena: (a)~discrete time-crystalline order, (b)~anomalous Floquet topological insulators with no equilibrium analog, and (c)~prethermal Floquet engineering of effective Hamiltonians.
   116	
   117	\subsection{Recap of Laws I and II}
   118	
   119	\paragraph{Law~I: Categorical Primitives.} Law~I established the shared categorical grammar: symmetric monoidal categories (SMCs)~\cite{maclane1998}, dagger-compact categories~\cite{abramsky2004}, sheaves, topoi~\cite{lurie2009}, operads, and their type-theoretic encodings. The central object is the SMC $(\C,\otimes,I)$ together with structural natural isomorphisms (associator, unitors, braiding) satisfying Mac Lane coherence~\cite{maclane1998}. Finite-dimensional quantum mechanics (which suffices for our lattice-model setting) is the dagger-compact category $\mathsf{FHilb}$ of finite-dimensional Hilbert spaces~\cite{abramsky2004}; processes are morphisms; tensor product is system composition; and string diagrams are sound and complete by Joyal--Street. Law~I distilled the slogan: a physical theory is a symmetric monoidal functor $Z\colon \C_{\mathrm{geo}} \to \mathsf{FHilb}$, with $\C_{\mathrm{geo}}$ a category of geometric or process data; the prototypical example is Atiyah's TQFT~\cite{atiyah1988} and its extended cousins~\cite{baezdolan1995}.
   120	
   121	\paragraph{Law~II: Phase-bound Matter.} Law~II used the Law~I grammar to classify equilibrium phases of matter as functors from a symmetry-group category to a category of gapped Hamiltonians, equipped with morphisms given by adiabatic deformations. Concretely, a phase with on-site symmetry group $G$ is a homotopy class of functors
   122	\begin{equation}
   123	F\colon \mathbf{B}G \longrightarrow \Ham_{\mathrm{gap}},
   124	\end{equation}
   125	where $\mathbf{B}G$ is the one-object delooping. Symmetry-protected topological (SPT) phases are classified by the (cobordism-) cohomology of $\mathbf{B}G$~\cite{chen2013}; topologically ordered phases are classified by modular tensor categories (MTCs)~\cite{kitaev2003,wen2004}; a phase transition is a natural transformation that fails to be invertible at the Hamiltonian level (the gap closes).
   126	
   127	\subsection{What Law~III adds}
   128	
   129	Law~III adjoins to Law~II a single new categorical dimension: a $\mathbb{Z}_T$-grading representing periodic time evolution. The Schr\"odinger equation with a $T$-periodic Hamiltonian $H(t+T)=H(t)$ produces, by the Floquet theorem~\cite{floquet1883,shirley1965}, a one-cycle unitary $U(T)= \mathcal{T}\exp\bigl(-i\!\int_0^T H(t)\,dt\bigr)$ whose spectrum (the quasi-energy spectrum) lives on a torus $S^1=(-\pi/T,\pi/T]$ rather than on the real line. Functorially, this means Floquet evolution is best understood as a monoidal functor from the discrete circle category to the category of quantum channels.
   130	
   131	The framework yields three emergent phenomena that are absent from Law~II:
   132	\begin{enumerate}
   133	\item \emph{Discrete time crystals} (DTCs)~\cite{else2016,khemani2016}: spontaneous breaking of the discrete time-translation symmetry of the drive, manifested as a local order parameter oscillating at $nT$ for some integer $n>1$.
   134	\item \emph{Anomalous Floquet topological insulators}~\cite{rudner2020}: phases with chiral edge modes at quasi-energy~$\pi$ despite vanishing Chern numbers in every band, classified by a $\mathbb{Z}$-valued Floquet winding number on $\mathrm{BZ}\times S^1$.
   135	\item \emph{Prethermal Floquet engineering}~\cite{bukov2015,abanin2015}: an exponentially long time window during which the dynamics is governed by an effective Hamiltonian $\Heff$ obtained by truncating the Magnus expansion, allowing engineered phases not present in the parent static system.
   136	\end{enumerate}
   137	
   138	The classification of Floquet topological phases by $K$-theory~\cite{roy2017} is the temporal analog of Kitaev's $10$-fold way; we recover it categorically in \cref{sec:floquet-topological}.
   139	
   140	\subsection{Outline}
   141	
   142	\Cref{sec:framework} sets up the categorical framework: the circle category, the Sambe-space construction, and the Floquet functor. \Cref{sec:periodic-endo} shows that periodic Hamiltonians are endomorphisms in a fibred $2$-category. \Cref{sec:magnus} develops the Magnus and Floquet--Magnus expansions as a natural construction of an asymptotic effective-Hamiltonian functor. \Cref{sec:dtc} treats discrete time crystals as obstruction $2$-cells. \Cref{sec:floquet-topological} classifies Floquet topological insulators. \Cref{sec:prethermal} discusses prethermalisation and heating. \Cref{sec:examples} works out two extended examples: the kicked Ising chain and the driven SSH model. \Cref{sec:open} lists open problems. \Cref{sec:conclusion} provides a brief conclusion and a precise statement of the composition hooks consumed by Law~IV.
   143	
   144	\section{Mathematical Framework: Floquet Theory in Categorical Form}
   145	\label{sec:framework}
   146	
   147	\subsection{The discrete circle category}
   148	
   149	\begin{definition}[Discrete circle category]
   150	\label{def:circle-cat}
   151	Fix a period $T>0$. The \emph{discrete circle category at scale $T$}, denoted $\mathbf{B}\Z_T$, is the delooping of the integers $\Z$ \emph{decorated by the parameter $T$}: it has a single object $*$ and morphism set $\mathrm{Hom}(*,*) = \Z$, with composition being addition. The subscript $T$ is \emph{not} a modulus and does not impose modular arithmetic on $\Z$; it is a metadatum recording the period that the generating morphism $1\in\Z$ is meant to represent (i.e.\ ``one period of duration $T$''). Equivalently, $\mathbf{B}\Z_T$ is the delooping of $\pi_1(S^1)\cong\Z$ viewed as the discrete-time-translation group of a continuous circle of circumference $T$. We write $\mathbf{B}\Z_T^+$ for the wide subcategory generated by the positive integers (forward time only).
   152	\end{definition}
   153	
   154	\begin{remark}[On the notation $\Z_T$]
   155	\label{rem:zt-notation}
   156	The subscript $T$ in $\Z_T$ is a notational decoration recording the period $T$ as a parameter, not a quotient. We use this slightly non-standard convention because the period $T$ enters the categorical Floquet picture only through its action on the morphisms (each morphism $n\in\Z$ stands for ``$n$ stroboscopic periods of duration $T$''), not through any modular reduction. Where modular arithmetic is genuinely intended in the paper (e.g.\ in $\R/T\Z$ for the continuum circle), we write the quotient explicitly.
   157	\end{remark}
   158	
   159	\begin{definition}[Continuous-time circle category]
   160	\label{def:cts-circle}
   161	The continuous-time circle category $\mathbf{B}S^1$ has one object and morphism space $S^1=\R/T\Z$ with composition given by addition modulo $T$. As a topological category, $\mathbf{B}S^1$ has trivial $\pi_0$ and $\pi_1(\mathbf{B}S^1)\cong\Z$ encoding winding number.
   162	\end{definition}
   163	
   164	The continuum-time analog above uses the topological group $S^1=\R/T\Z$ delooped to the topological category $\mathbf{B}S^1$.
   165	
   166	\subsection{The category of quantum channels}
   167	
   168	We work in the dagger-symmetric monoidal category $\QChan$ of finite-dimensional quantum channels. Objects are finite-dimensional Hilbert spaces $\Hcal$; morphisms $\Hcal\to\Hcal'$ are completely positive trace-preserving (CPTP) maps. Tensor product is the standard tensor of Hilbert spaces and Stinespring dilation of channels; the dagger is given by the adjoint channel under the Hilbert--Schmidt inner product.
   169	
   170	We will at times restrict to the wide subcategory $\mathsf{Unit}\subset\QChan$ of unitary channels, which is itself a dagger-monoidal subcategory. A unitary channel is the conjugation $\rho\mapsto U\rho U^\dagger$ for some unitary $U$.
   171	
   172	\subsection{The Floquet functor}
   173	
   174	\begin{definition}[Floquet functor]
   175	\label{def:floquet-functor}
   176	A \emph{Floquet system} on a Hilbert space $\Hcal$ with period $T$ is a strong monoidal functor
   177	\begin{equation}
   178	\Floq\colon \mathbf{B}\Z_T \longrightarrow \mathsf{Unit}\subset\QChan
   179	\end{equation}
   180	sending the generating morphism $1\in\Z=\mathrm{Hom}(*,*)$ to a unitary channel $\Floq(1)=\mathcal{U}_T\colon\Hcal\to\Hcal$, where $\mathcal{U}_T(\rho)=U(T)\,\rho\,U(T)^\dagger$ for the one-period evolution operator $U(T)$.
   181	\end{definition}
   182	
   183	\begin{remark}
   184	\Cref{def:floquet-functor} captures only the stroboscopic content of a Floquet system; the micromotion is recovered by lifting to the continuous-time category. The full Floquet system is a continuous functor $\widetilde{\Floq}\colon\mathbf{B}S^1\to\mathsf{Unit}$, whose restriction along the discretisation $\mathbf{B}\Z_T\hookrightarrow\mathbf{B}S^1$ recovers \cref{def:floquet-functor}.
   185	\end{remark}
   186	
   187	\begin{theorem}[Floquet decomposition, categorical form]
   188	\label{thm:floquet-decomp}
   189	Let $\widetilde{\Floq}\colon\mathbf{B}S^1\to\mathsf{Unit}$ be a continuous Floquet functor. Then there exist:
   190	\begin{enumerate}
   191	\item a unitary endomorphism $U_F=e^{-i\HF T}$ (the stroboscopic Floquet operator), uniquely determined by $\widetilde{\Floq}$ up to multiplication of $\HF$ by integer multiples of $\omega = 2\pi/T$,
   192	\item a continuous family $P\colon S^1\to\mathrm{End}(\Hcal)$ of unitary operators with $P(0)=\one$ (the micromotion), such that
   193	\end{enumerate}
   194	\begin{equation}
   195	\widetilde{\Floq}(t)(\rho) = P(t)\,e^{-i\HF t}\,\rho\,e^{i\HF t}\,P(t)^\dagger \qquad \forall t\in\R/T\Z.
   196	\end{equation}
   197	\end{theorem}
   198	
   199	\begin{proof}[Proof sketch]
   200	This is the operator-level statement of the classical Floquet theorem~\cite{floquet1883}. Continuity of $\widetilde{\Floq}$ furnishes a continuous evolution $U(t,0)$ with $U(T,0)$ unitary. By spectral calculus, take any branch of the logarithm to define $\HF=\frac{i}{T}\log U(T,0)$; then $P(t):=U(t,0)\,e^{i\HF t}$ is by construction $T$-periodic and equals the identity at $t=0$. The functorial wrapping in $\QChan$ is just the conjugation action.
   201	\end{proof}
   202	
   203	\subsection{Sambe space and the spectral side}
   204	
   205	The quasi-energy spectrum lives on the Pontryagin dual $\widehat{\Z}=S^1$. To work with quasi-energies as a self-adjoint operator spectrum, we introduce the \emph{Sambe space}~\cite{sambe1973}.
   206	
   207	\begin{definition}[Sambe space]
   208	\label{def:sambe}
   209	Let $\Hcal$ be a finite-dimensional Hilbert space and $T>0$. The \emph{Sambe space} associated to the period $T$ is the (separable) Hilbert space
   210	\begin{equation}
   211	\mathcal{S}_T(\Hcal) \;:=\; L^2(S^1_T)\otimes\Hcal,
   212	\end{equation}
   213	where $S^1_T = \R/T\Z$ with normalised Haar measure $dt/T$. Its Fourier basis $\{e_n=e^{i n\omega t}\}_{n\in\Z}$ decomposes $\mathcal{S}_T(\Hcal)=\bigoplus_{n\in\Z}\Hcal_n$ with each $\Hcal_n\cong\Hcal$.
   214	\end{definition}
   215	
   216	\begin{definition}[Quasi-energy operator]
   217	\label{def:quasi-energy}
   218	Given a smooth $T$-periodic curve $H\colon S^1_T\to\mathrm{Herm}(\Hcal)$, the \emph{quasi-energy operator} on $\mathcal{S}_T(\Hcal)$ is
   219	\begin{equation}
   220	K \;:=\; H(t)\;-\;i\partial_t.
   221	\end{equation}
   222	Its eigenvalues $\{\varepsilon_\alpha+n\omega : \alpha,n\}$ are organised in $\Z$-shifted ladders, and its eigenvectors $\psi_\alpha=e^{-i\varepsilon_\alpha t}u_\alpha(t)$ are the Floquet modes.
   223	\end{definition}
   224	
   225	\begin{proposition}[Sambe-space functor]
   226	\label{prop:sambe-functor}
   227	The assignment $\Hcal\mapsto\mathcal{S}_T(\Hcal)$, $f\mapsto\one\otimes f$ extends to a strong monoidal functor
   228	\begin{equation}
   229	\mathcal{S}_T\colon \QChan_{\mathrm{fin}} \longrightarrow \Hilb_{\mathrm{sep}},
   230	\end{equation}
   231	that intertwines the Floquet functor $\Floq$ with the diagonal action of $K$ on $\mathcal{S}_T(\Hcal)$.
   232	\end{proposition}
   233	
   234	\begin{proof}
   235	\emph{Strong monoidality.} We work with the natural lax-monoidal structure for which the structural map
   236	\begin{equation*}
   237	\mu_{\Hcal,\Hcal'}\colon \mathcal{S}_T(\Hcal)\otimes_{L^2(S^1_T)}\mathcal{S}_T(\Hcal')\;\xrightarrow{\;\cong\;}\;\mathcal{S}_T(\Hcal\otimes\Hcal')
   238	\end{equation*}
   239	sends a simple tensor $(f\otimes\psi)\otimes_{L^2(S^1_T)}(g\otimes\psi')$ to $(fg)\otimes(\psi\otimes\psi')$, where $fg$ denotes pointwise multiplication of $f,g\in L^2(S^1_T)\cap C^\infty(S^1_T)$ (the smooth subspace, which is dense). Here we view $\Hilb_{\mathrm{sep}}$ as enriched-monoidal over the commutative $C^*$-algebra $L^2(S^1_T)\cap L^\infty(S^1_T)$, and the relative tensor product $\otimes_{L^2(S^1_T)}$ is the standard module tensor over this algebra. With this convention, $\mu_{\Hcal,\Hcal'}$ is well-defined on the dense subspace of simple tensors of smooth functions and finite-rank Hilbert-space vectors, and extends by continuity (in the natural Hilbert-space norm on the relative tensor product) to a unitary isomorphism on the full tensor product space. The pentagon axiom for $\mu$ reduces to associativity of pointwise multiplication of smooth functions tensored with associativity of the standard $\otimes$ on Hilbert spaces; the triangle axiom is similarly straightforward. (If the relative tensor product is replaced by the bare tensor $\otimes$, then $\mu$ becomes lax-monoidal rather than strong-monoidal, with the failure measured by an $L^2(S^1_T)$-valued density; the proposition holds in either form, but only the relative-tensor version is strongly monoidal.).
   240	
   241	\emph{Intertwining of $\widetilde{\Floq}$ with $K$.} By \cref{thm:floquet-decomp},
   242	the continuous Floquet functor $\widetilde{\Floq}$ acts on the standard
   243	Hilbert space $\Hcal$ by conjugation with $U(t,0)=P(t)e^{-i\HF t}$. Lifting to
   244	the Sambe space $\mathcal{S}_T(\Hcal)$, we use the unitary isomorphism that
   245	maps a Floquet mode $\psi_\alpha\in\Hcal$ to the joint Sambe-eigenvector
   246	$e_n\otimes u_\alpha\in L^2(S^1_T)\otimes\Hcal$, where $u_\alpha(t)=
   247	e^{i\varepsilon_\alpha t}P(t)\psi_\alpha$. Under this identification:
   248	\begin{enumerate}
   249	\item The quasi-energy operator $K = H(t) - i\partial_t$ is diagonal on
   250	each $e_n\otimes u_\alpha$, with eigenvalue $\varepsilon_\alpha + n\omega$.
   251	This is the standard ladder structure of Sambe space \cite{sambe1973}.
   252	\item The conjugation-by-$\widetilde{\Floq}(t)$ on $\Hcal$ corresponds, after
   253	the same identification, to conjugation by $e^{-iKt}$ on $\mathcal{S}_T(\Hcal)$
   254	(both act on each ladder rung by multiplication by
   255	$e^{-i(\varepsilon_\alpha+n\omega)t}$ and on the $L^2(S^1_T)$ factor by
   256	shifting Fourier modes consistently with the periodicity of $P(t)$).
   257	\end{enumerate}
   258	Hence the diagram
   259	\begin{equation*}
   260	\begin{tikzcd}

exec
/usr/local/bin/zsh -lc 'pwd && rg --files' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 193ms:
src/frequency-modulated-processes/src/Floquet/Types.hs
src/frequency-modulated-processes/src/Floquet/Magnus.hs
src/frequency-modulated-processes/src/Floquet/Linalg.hs
src/frequency-modulated-processes/src/Floquet/KickedIsing.hs
src/frequency-modulated-processes/frequency-modulated-processes.cabal
src/frequency-modulated-processes/test/Spec.hs
src/frequency-modulated-processes/app/Main.hs
src/mathematical-formalisms/src/Categorical/Core.hs
src/mathematical-formalisms/src/Categorical/Monoidal.hs
src/mathematical-formalisms/src/Categorical/Functor1.hs
src/mathematical-formalisms/src/Categorical/Examples.hs
src/mathematical-formalisms/src/Categorical/MatterInfo.hs
src/mathematical-formalisms/test/Spec.hs
src/mathematical-formalisms/mathematical-formalisms.cabal
src/mathematical-formalisms/app/Main.hs
src/information-bearing-structures/src/Law4/Stabiliser.hs
src/information-bearing-structures/src/Law4/HaPPY.hs
src/information-bearing-structures/src/Law4/Properties.hs
src/information-bearing-structures/src/Law4/Fisher.hs
src/information-bearing-structures/src/Law4/Pauli.hs
src/information-bearing-structures/law4.cabal
src/information-bearing-structures/test/Spec.hs
src/information-bearing-structures/app/Main.hs
src/phase-bound-matter/src/PhaseBoundMatter/Anyon.hs
src/phase-bound-matter/src/PhaseBoundMatter/Functor.hs
src/phase-bound-matter/src/PhaseBoundMatter/Phase.hs
src/phase-bound-matter/src/PhaseBoundMatter/Symmetry.hs
src/phase-bound-matter/src/PhaseBoundMatter/ToricCode.hs
src/phase-bound-matter/src/PhaseBoundMatter/GroupCohomology.hs
src/phase-bound-matter/src/PhaseBoundMatter/Entropy.hs
src/phase-bound-matter/phase-bound-matter.cabal
src/phase-bound-matter/test/Spec.hs
src/phase-bound-matter/app/Main.hs
reviews/frequency-modulated-processes-review-round-3.md
reviews/phase-bound-matter-review-round-1.md
reviews/frequency-modulated-processes-review.md
reviews/information-bearing-structures-review-round-1.md
reviews/frequency-modulated-processes-review-round-2.md
reviews/frequency-modulated-processes-codex-review.md
reviews/mathematical-formalisms-review-round-2.md
reviews/mathematical-formalisms-review-round-1.md
reviews/information-bearing-structures-review-round-2.md
reviews/frequency-modulated-processes-review-round-1.md
reviews/information-bearing-structures-review-round-3.md
reviews/phase-bound-matter-review-round-2.md
reviews/frequency-modulated-processes-review-round-4.md
sources/context.txt
README.md
papers/mathematical-formalisms/paper.tex
papers/mathematical-formalisms/paper.pdf
papers/latex/frequency-modulated-processes.pdf
papers/latex/frequency-modulated-processes.tex
papers/information-bearing-structures/paper.tex
papers/information-bearing-structures/paper.pdf
papers/phase-bound-matter/paper.tex
papers/phase-bound-matter/paper.pdf

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/frequency-modulated-processes.tex | sed -n '261,620p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
   261	\Hcal \arrow[r,"\widetilde{\Floq}(t)"]\arrow[d,"\mathcal{S}_T"'] & \Hcal \arrow[d,"\mathcal{S}_T"]\\
   262	\mathcal{S}_T(\Hcal) \arrow[r,"\mathrm{Ad}(e^{-iKt})"'] & \mathcal{S}_T(\Hcal)
   263	\end{tikzcd}
   264	\end{equation*}
   265	commutes for every $t\in S^1_T$, which is exactly the intertwining claimed.
   266	\end{proof}
   267	
   268	\Cref{prop:sambe-functor} is the key bridge to Law~IV: the extended Hilbert space $\mathcal{S}_T(\Hcal)$ is exactly the kind of structure (graded by an external label $n\in\Z$) on which holographic codes (Law~IV) operate. We will use this in \cref{sec:conclusion}.
   269	
   270	\subsection{Notation and conventions}
   271	
   272	We set $\hbar=1$ throughout. Hamiltonians are bounded self-adjoint operators on a finite-dimensional Hilbert space; this restriction avoids domain issues but limits the framework to lattice models, which suffices for our purposes. The drive frequency is $\omega=2\pi/T$. The local energy scale is denoted $J$; the high-frequency regime is $\omega\gg J$.
   273	
   274	\section{Periodic Hamiltonians as Endomorphisms}
   275	\label{sec:periodic-endo}
   276	
   277	\subsection{The category of $T$-periodic Hamiltonians}
   278	
   279	\begin{definition}[Periodic-Hamiltonian category]
   280	\label{def:phamcat}
   281	Fix a period $T>0$. The category $\Ham_T$ has:
   282	\begin{itemize}
   283	\item objects: pairs $(\Hcal,H)$ where $\Hcal$ is a finite-dimensional Hilbert space and $H\colon S^1_T\to\mathrm{Herm}(\Hcal)$ is a smooth $T$-periodic curve of self-adjoint operators;
   284	\item morphisms $(\Hcal,H)\to(\Hcal',H')$: linear isometries $V\colon\Hcal\to\Hcal'$ such that $VH(t)=H'(t)V$ for all $t$.
   285	\end{itemize}
   286	\end{definition}
   287	
   288	The category $\Ham_T$ is symmetric monoidal: the tensor product of objects $(\Hcal_1,H_1)$ and $(\Hcal_2,H_2)$ is the pair $(\Hcal_1\otimes\Hcal_2,\,H_1(t)\otimes\one+\one\otimes H_2(t))$, with structural isomorphisms inherited from $\Hilb$.
   289	
   290	\subsection{Floquet evolution as a strong monoidal functor}
   291	
   292	\begin{definition}[The graded unitary category $\mathsf{Unit}_{\Z}$]
   293	\label{def:unit-z}
   294	The \emph{$\Z$-graded unitary category} $\mathsf{Unit}_{\Z}$ has
   295	\begin{itemize}
   296	\item objects: finite-dimensional Hilbert spaces $\Hcal$;
   297	\item morphisms $\Hcal\to\Hcal'$: pairs $(n,W)$ with $n\in\Z$ and $W\colon\Hcal\to\Hcal'$ a unitary linear map (in particular, $\Hcal$ and $\Hcal'$ have the same dimension whenever a morphism exists between them);
   298	\item identity: $\mathrm{id}_{\Hcal}=(0,\one_{\Hcal})$;
   299	\item composition of $(m,W')\colon\Hcal'\to\Hcal''$ with $(n,W)\colon\Hcal\to\Hcal'$ is
   300	$(m,W')\circ(n,W) := (n+m,\,W'\,W)$.
   301	\end{itemize}
   302	The integer label $n$ records the number of stroboscopic periods that the morphism represents; it is additive under composition and trivial on identities. The category $\mathsf{Unit}_{\Z}$ inherits a symmetric monoidal structure from the standard tensor product of Hilbert spaces: on objects, $\Hcal\otimes\Hcal'$ is the usual tensor; on morphisms,
   303	\begin{equation*}
   304	(n,W)\otimes(n',W') := (n+n',\,W\otimes W')
   305	\end{equation*}
   306	i.e.\ the $\Z$-grading on a tensor product of morphisms is the \emph{sum} of the gradings (consistent with the additive structure of $\Z$ under composition), and the underlying unitaries tensor in the usual way. Equivalently, $\mathsf{Unit}_{\Z}$ is $\mathsf{Unit}$ enriched over the discrete strict monoidal category associated with $(\Z,+,0)$.
   307	\end{definition}
   308	
   309	To make the period-counting structure of Floquet evolution \emph{functorial}, we should not interpret intertwining isometries between distinct Floquet systems as carrying an a-priori period count. Instead, an intertwiner is a static identification of two systems and naturally has period count $0$; the period count is a separate piece of data, generated by the cyclic action of the Floquet operator on each fixed system. We make this precise as follows.
   310	
   311	\begin{theorem}[Floquet evolution as a functor to graded unitaries]
   312	\label{thm:floquet-evol}
   313	The Floquet evolution data assemble into a strong monoidal functor
   314	\begin{equation}
   315	\mathrm{Ev}_T\colon \Ham_T \longrightarrow \mathsf{Unit}_{\Z}
   316	\end{equation}
   317	defined on objects by $\mathrm{Ev}_T(\Hcal,H)=\Hcal$ and on morphisms by $\mathrm{Ev}_T(V)=(0,V)$ for every intertwining isometry $V\colon(\Hcal,H)\to(\Hcal',H')$ (including $V=\one$, which is sent to $(0,\one)$ as the identity of $\Hcal$).
   318	
   319	The Floquet operator data are encoded as an additional natural transformation
   320	\begin{equation}
   321	\Phi\colon \mathrm{Ev}_T \;\Longrightarrow\; \mathrm{Ev}_T,
   322	\end{equation}
   323	whose component at $(\Hcal,H)$ is the morphism $(1,U_F^{(H)})\in\mathrm{Hom}_{\mathsf{Unit}_{\Z}}(\Hcal,\Hcal)$, where $U_F^{(H)}=U_H(T,0)$ is the one-period stroboscopic operator of $H$. Naturality of $\Phi$ at an intertwiner $V$ is the relation
   324	\begin{equation}
   325	(0,V)\circ(1,U_F^{(H)}) \;=\; (1,U_F^{(H')})\circ(0,V),\qquad\text{i.e.}\qquad VU_F^{(H)}=U_F^{(H')}V,
   326	\end{equation}
   327	which holds because $V$ intertwines $H(t)$ and $H'(t)$ pointwise in $t$, hence intertwines their time-ordered exponentials.
   328	\end{theorem}
   329	
   330	\begin{remark}[Why intertwiners carry grading $0$]
   331	\label{rem:ev-grading-zero}
   332	A morphism in $\Ham_T$ is a \emph{static} identification of two periodic Hamiltonian systems, not a time evolution. Its image under $\mathrm{Ev}_T$ accordingly sits in the grading-$0$ part of $\mathsf{Unit}_{\Z}$, where ``no period elapses''. The temporal cyclic generator (the Floquet operator) is encoded by the natural transformation $\Phi$, which produces grading-$1$ endomorphisms of each individual object. Iterations $\Phi^{\circ k}$ have grading $k$, so the period-counting structure lives entirely in the natural-transformation slot, separate from the static categorical structure of $\Ham_T$. This separation is exactly the categorical analog of the operator-vs.-state distinction in physics: the Floquet operator $U_F$ is a dynamical generator, distinct from a structural identification of two systems.
   333	\end{remark}
   334	
   335	\begin{proof}[Proof of \cref{thm:floquet-evol}]
   336	\emph{Functoriality of $\mathrm{Ev}_T$.} On objects: well-defined. On morphisms: $\mathrm{Ev}_T(\mathrm{id})=(0,\one)=\mathrm{id}_{\Hcal}$ in $\mathsf{Unit}_{\Z}$. For composition,
   337	$\mathrm{Ev}_T(V'\circ V)=(0,V'V)=(0,V')\circ(0,V)=\mathrm{Ev}_T(V')\circ\mathrm{Ev}_T(V)$,
   338	where the middle equality uses the composition rule of \cref{def:unit-z}. Thus $\mathrm{Ev}_T$ is a functor.
   339	
   340	\emph{Naturality of $\Phi$.} The intertwiner relation $VH(t)V^\dagger=H'(t)$ propagates through time-ordered exponentials: setting $U_H(t,0)=\mathcal{T}\exp(-i\int_0^t H(s)ds)$ and similarly for $U_{H'}$,
   341	\begin{equation*}
   342	VU_H(T,0) \;=\; \bigl(\mathcal{T}\exp(-i\!\smallint_0^T VH(s)V^\dagger V\,ds)\bigr)V \;=\; U_{H'}(T,0)V.
   343	\end{equation*}
   344	Hence the naturality square for $\Phi$ at $V$ commutes.
   345	
   346	\emph{Strong monoidality of $\mathrm{Ev}_T$.} On the underlying functor: $\mathrm{Ev}_T$ commutes with $\otimes$ on objects and morphisms because all morphisms are sent to grading $0$, and $(0,W_1)\otimes(0,W_2)=(0,W_1\otimes W_2)$. The structural isomorphism $\mu_{\Hcal_1,\Hcal_2}$ is the identity. The natural transformation $\Phi$ is monoidal in the sense that $\Phi_{\Hcal_1\otimes\Hcal_2}=\Phi_{\Hcal_1}\otimes\Phi_{\Hcal_2}$ exactly when the joint Hamiltonian is a sum of commuting pieces (which is the case in $\Ham_T$ as defined). This satisfies the pentagon and triangle coherence axioms trivially since $\mu$ is the identity.
   347	\end{proof}
   348	
   349	\subsection{Endomorphisms and stroboscopic dynamics}
   350	
   351	Restricting to a single Hilbert space, $\Ham_T$ becomes a one-object category whose endomorphisms are $T$-periodic Hamiltonians and whose composition is conjugation by the evolution. The image under $\mathrm{Ev}_T$ is then a one-object subcategory of $\mathsf{Unit}_{\Z}$, that is, a $\Z$-graded group of unitaries: stroboscopic dynamics is generated by $U(T)$, and the integer label tracks the number of periods. This is the precise sense in which a Floquet system is an endomorphism in the categorical framework.
   352	
   353	\begin{remark}
   354	The $\Z$-grading on $\mathsf{Unit}_{\Z}$ is essential: it is what distinguishes Floquet evolution from a static one-shot evolution. Forgetting the grading produces the underlying static functor; recalling it brings back the temporal structure that supports Floquet phases.
   355	\end{remark}
   356	
   357	\subsection{2-categorical extension}
   358	
   359	To accommodate continuous deformations of the drive (and to express Floquet phase transitions as connected components of a path space), we lift $\Ham_T$ to a $2$-category.
   360	
   361	\begin{definition}[The $2$-category $\mathfrak{H}_T$]
   362	\label{def:2cat-Ham}
   363	The $2$-category $\mathfrak{H}_T$ has the same objects and $1$-morphisms as $\Ham_T$, and $2$-morphisms given by smooth homotopies $h\colon[0,1]\to\Ham_T(H,H')$ between intertwining isometries, modulo reparametrisation. Vertical and horizontal compositions are concatenation and pointwise tensor.
   364	\end{definition}
   365	
   366	\begin{proposition}[Floquet evolution as a $2$-functor]
   367	\label{prop:2-floquet}
   368	The Floquet evolution map extends to a strict $2$-functor $\mathrm{Ev}_T\colon\mathfrak{H}_T\to\mathfrak{U}_{\Z}$, where $\mathfrak{U}_{\Z}$ is the $2$-category of $\Z$-graded unitaries with $2$-morphisms given by adiabatic homotopies.
   369	\end{proposition}
   370	
   371	The proof is a check of strict $2$-functoriality from naturality of time-ordered exponentials in the Hamiltonian curve; we omit details. The point is that Floquet phase transitions are connected components of the $2$-morphism space:
   372	\begin{equation}
   373	\pi_0\bigl(\mathrm{Hom}_{\mathfrak{U}_{\Z}}(U_F,U_F')\bigr) \;=\; \text{Floquet phase classes}.
   374	\end{equation}
   375	A natural transformation between Floquet functors is therefore precisely a path between drives that may or may not cross a quasi-energy gap closure; phase boundaries correspond to homotopy classes for which no gap-preserving path exists.
   376	
   377	\section{Magnus Expansion and Asymptotic Effective Hamiltonians}
   378	\label{sec:magnus}
   379	
   380	\subsection{Magnus expansion}
   381	
   382	\begin{theorem}[Magnus, 1954~\cite{magnus1954}]
   383	\label{thm:magnus}
   384	Let $A\colon[0,T]\to\mathrm{End}(\Hcal)$ be smooth. The unique solution $X(t)$ of $\dot X(t)=A(t)X(t)$, $X(0)=\one$, can be written $X(t)=\exp(\Omega(t))$ with $\Omega(t)=\sum_{n\geq 1}\Omega_n(t)$ and
   385	\begin{align}
   386	\Omega_1(t)&=\int_0^t A(t_1)\,dt_1,\\
   387	\Omega_2(t)&=\frac{1}{2}\int_0^t\!\!\int_0^{t_1} [A(t_1),A(t_2)]\,dt_2\,dt_1,\\
   388	\Omega_3(t)&=\frac{1}{6}\int_0^t\!\!\int_0^{t_1}\!\!\int_0^{t_2}\bigl([A(t_1),[A(t_2),A(t_3)]]+[[A(t_1),A(t_2)],A(t_3)]\bigr)\,dt_3\,dt_2\,dt_1,
   389	\end{align}
   390	and so on. The series converges for $\int_0^t\|A(s)\|\,ds < \pi$.
   391	\end{theorem}
   392	
   393	Specialising to a $T$-periodic Hamiltonian $H(t)$ and stroboscopic time $t=T$, the Magnus series gives the formal Floquet Hamiltonian:
   394	\begin{equation}
   395	\HF \;=\; \frac{1}{T}\sum_{n\geq 1}\Omega_n(T)\big|_{A(t)=-iH(t)}\,.
   396	\end{equation}
   397	
   398	\subsection{High-frequency expansion}
   399	
   400	\begin{theorem}[Floquet--Magnus expansion]
   401	\label{thm:fm-expansion}
   402	For $\omega=2\pi/T\gg J=\sup_t\|H(t)\|$, the Floquet Hamiltonian admits the asymptotic expansion
   403	\begin{align}
   404	\HF^{(0)} &= \overline{H} \;:=\; \frac{1}{T}\int_0^T H(t)\,dt,\\
   405	\HF^{(1)} &= \frac{1}{2iT}\int_0^T\!\int_0^{t_1}[H(t_1),H(t_2)]\,dt_2\,dt_1,\\
   406	\HF^{(2)} &= \mathcal{O}\bigl((J/\omega)^2 J\bigr),
   407	\end{align}
   408	with the truncation $\HF^{(\leq N)}=\sum_{n=0}^N\HF^{(n)}$ approximating $\HF$ up to a remainder bounded by $(J/\omega)^N J$ for $N$ less than an optimal order $N^*\sim\omega/J$.
   409	\end{theorem}
   410	
   411	\begin{proof}[Proof sketch]
   412	Combine \cref{thm:magnus} with the periodicity of $H$ and rescale by $T$. The remainder estimate uses Cauchy estimates on the iterated commutators with $\|[H(t_1),H(t_2)]\|\leq 2J^2$. The optimal truncation $N^*$ arises because the Magnus series is an asymptotic series (it does not converge for generic interacting models); see~\cite{bukov2015,abanin2015} for sharp bounds and the Abanin--De~Roeck--Huveneers proof that the prethermal time scale is $\tau^*\sim e^{c\omega/J}$.
   413	\end{proof}
   414	
   415	\subsection{The effective-Hamiltonian functor}
   416	
   417	\begin{definition}[Effective-Hamiltonian functor at order $N$]
   418	\label{def:Heff}
   419	Let $\Ham$ denote the category of (gapped) static Hamiltonians: objects are pairs $(\Hcal,H_0)$ with $H_0\in\mathrm{Herm}(\Hcal)$, and morphisms are intertwining isometries (the time-independent counterpart of $\Ham_T$). The order-$N$ effective-Hamiltonian functor $\Heff^{(\leq N)}\colon \Ham_T \to \Ham$ assigns to a $T$-periodic Hamiltonian $(\Hcal,H)$ the static operator $\HF^{(\leq N)}\in\mathrm{Herm}(\Hcal)$ defined by \cref{thm:fm-expansion}. To an intertwining isometry $V\colon(\Hcal,H)\to(\Hcal',H')$ in $\Ham_T$ (which by definition satisfies $VH(t)=H'(t)V$ for all $t\in S^1_T$) it assigns the \emph{same} underlying isometry $V$, now viewed as a morphism $(\Hcal,\HF^{(\leq N)})\to(\Hcal',\HF'^{(\leq N)})$ in $\Ham$. The fact that $V\HF^{(\leq N)} = \HF'^{(\leq N)} V$ --- i.e.\ that the isometry $V$ does intertwine the static effective Hamiltonians --- is the content of \cref{prop:heff-functor} below: $V$ intertwines all iterated commutators of $H$ with itself, hence each Magnus term $\Omega_n$, hence the truncated effective Hamiltonian $\HF^{(\leq N)}$.
   420	\end{definition}
   421	
   422	\begin{proposition}[Functoriality of $\Heff^{(\leq N)}$]
   423	\label{prop:heff-functor}
   424	$\Heff^{(\leq N)}$ is a well-defined functor for each $N\in\N$, and the family $\{\Heff^{(\leq N)}\}_{N\in\N}$ is a directed system in the functor category $[\Ham_T,\Ham]$.
   425	\end{proposition}
   426	
   427	\begin{proof}
   428	On morphisms: if $V$ intertwines $H$ and $H'$ at every $t$, then it intertwines all iterated commutators $[H(t_1),[\dots[H(t_{n-1}),H(t_n)]\dots]]$ and hence each $\Omega_n$, hence $\HF^{(\leq N)}$. Functoriality (preservation of identity and composition) is immediate. The system $\{\Heff^{(\leq N)}\}$ is directed because each $\Heff^{(\leq N+1)}$ differs from $\Heff^{(\leq N)}$ by the addition of a single new term. The colimit (in the limit sense, on objects where the Magnus series converges) is the formal Floquet Hamiltonian $\HF$.
   429	\end{proof}
   430	
   431	\subsection{Compositional lifting from Law~II}
   432	
   433	The crucial structural fact is that the prethermal regime allows us to view a Floquet phase as a Law~II equilibrium phase of $\Heff$.
   434	
   435	In what follows we use the symbol $\Floq_{(-)}$ to denote the \emph{Floquet phase-classification functor} with source $\Ham_T$ (rather than the bare Floquet system $\Floq$ of \cref{def:floquet-functor}, whose source is $\mathbf{B}\Z_T$). Concretely, $\Floq_{(-)}$ takes a $T$-periodic Hamiltonian $(\Hcal,H)$ and returns the connected component of its stroboscopic operator $U_F^{(H)}$ within the moduli space of gapped Floquet operators, i.e.\ its Floquet phase class. Similarly, $\Phase_{\Floq}$ denotes the discrete category of Floquet phase classes (objects: connected components of gapped Floquet operators; morphisms: identity components and inclusions of stratified strata).
   436	
   437	\begin{theorem}[Prethermal compositional lifting]
   438	\label{thm:prethermal-lift}
   439	There is a commutative diagram of functors (up to natural isomorphism, on the full prethermal subcategory $\Ham_T^{\mathrm{preth}}\subset\Ham_T$ on which the Magnus truncation error is below the gap):
   440	\begin{equation}
   441	\begin{tikzcd}
   442	\Ham_T^{\mathrm{preth}} \arrow[r,"\Heff^{(\leq N)}"] \arrow[d,"\Floq_{(-)}"'] & \Ham \arrow[d,"\mathrm{PhaseFunc}"]\\
   443	\Phase_{\Floq} \arrow[r,"\mathrm{Forget}"'] & \Phase_{\mathrm{eq}}
   444	\end{tikzcd}
   445	\end{equation}
   446	Here $\Ham$ denotes the category of static (time-independent) gapped Hamiltonians with adiabatic-deformation morphisms, $\mathrm{PhaseFunc}$ is the Law~II equilibrium-phase classification functor, and $\mathrm{Forget}\colon\Phase_{\Floq}\to\Phase_{\mathrm{eq}}$ forgets the temporal $\Z$-grading by mapping a Floquet phase to the equilibrium phase of the underlying Hamiltonian.
   447	\end{theorem}
   448	
   449	\begin{proof}[Proof sketch]
   450	For times $t\leq\tau^*=e^{c\omega/J}$, the Floquet evolution is approximated by $e^{-i\Heff^{(\leq N)} t}$ to within an error of order $(J/\omega)^N$. Since gapped equilibrium phases are stable under perturbations of strength below the gap $\Delta$, restricting to the prethermal subcategory $\Ham_T^{\mathrm{preth}}$ on which the Magnus truncation error is below the gap guarantees that the prethermal Floquet phase agrees with the equilibrium phase of $\Heff^{(\leq N)}$. Beyond $\tau^*$, the heating regime takes over and the diagram fails to commute --- this failure is what supports genuinely non-equilibrium Floquet phases (\cref{sec:dtc,sec:floquet-topological}).
   451	\end{proof}
   452	
   453	\Cref{thm:prethermal-lift} is the precise sense in which Law~III lifts Law~II: \emph{prethermal} Floquet phases are equilibrium phases of an effective Hamiltonian, while \emph{anomalous} Floquet phases are obstructions to the lift.
   454	
   455	\section{Discrete Time-Crystal Phases}
   456	\label{sec:dtc}
   457	
   458	\subsection{Definition and physical setup}
   459	
   460	\begin{definition}[Discrete time crystal]
   461	\label{def:dtc}
   462	A \emph{discrete time crystal} (DTC) of order $n\geq 2$ is a Floquet system $\Floq\colon\mathbf{B}\Z_T\to\mathsf{Unit}$ together with a local order parameter $\mathcal{O}_x$ (Hermitian, supported in a region around site $x$) and a state $|\psi_0\rangle$ such that:
   463	\begin{enumerate}
   464	\item Spontaneous time-translation symmetry breaking: $\langle\psi_0|\Floq(k)\mathcal{O}_x\Floq(k)^\dagger|\psi_0\rangle$ has period exactly $nT$ in the stroboscopic step $k$, even though $\Floq$ has period $T$.
   465	\item Long-range order: the value of the order parameter does not decay in the thermodynamic limit, $\lim_{L\to\infty}|\langle\mathcal{O}_x\rangle|>0$.
   466	\item Robustness: the period-$nT$ oscillation persists under generic small perturbations of the drive that respect $T$-periodicity.
   467	\end{enumerate}
   468	\end{definition}
   469	
   470	The seminal construction~\cite{else2016} uses an MBL-stabilised Ising chain (\cref{sec:examples}). Experimental realisations are reported in~\cite{zhang2017,choi2017}.
   471	
   472	\subsection{DTC as an obstruction $2$-cell}
   473	
   474	We now state our central categorical result for DTCs. Throughout this subsection, we work in the setting where the system has a global discrete symmetry $\Z_n$ acting unitarily by some operator $S$ commuting with the drive. The drive symmetry partitions the Hilbert space into a direct sum of \emph{symmetry sectors} indexed by $\Z_n$-characters, and the drive can spontaneously break $\Z_n$ to a smaller subgroup.
   475	
   476	\begin{definition}[Iterated and restricted Floquet functors]
   477	\label{def:iterated-restricted}
   478	Let $\Floq\colon\mathbf{B}\Z_T\to\mathsf{Unit}$ be a Floquet system with stroboscopic operator $U_F$. We define two associated Floquet functors:
   479	\begin{enumerate}
   480	\item the \emph{iterated} Floquet functor
   481	$\Floq^{[n]}\colon\mathbf{B}\Z_{nT}\to\mathsf{Unit}$
   482	that sends the generator of $\Z=\mathrm{Hom}_{\mathbf{B}\Z_{nT}}(*,*)$ to the unitary channel
   483	$\rho\mapsto U_F^n\,\rho\,(U_F^n)^\dagger$;
   484	\item the \emph{restricted} Floquet functor
   485	$\Res_{nT}\Floq\colon\mathbf{B}\Z_{nT}\to\mathsf{Unit}$
   486	obtained by restriction along the inclusion $\mathbf{B}(n\Z)\hookrightarrow\mathbf{B}\Z$ and the canonical re-labelling that views an $n$-fold iterated $T$-periodic dynamics as a single morphism in $\mathbf{B}\Z_{nT}$.
   487	\end{enumerate}
   488	On objects (Hilbert spaces) both functors agree; on morphisms they both send the generator of $\Z$ to a unitary channel implemented by $U_F^n$. The two functors are therefore literally equal as functors of plain (forgetful) data.
   489	\end{definition}
   490	
   491	The point is now that to detect a DTC one must \emph{enrich} both functors with the data of the global symmetry $S$ and ask whether they agree as functors landing in the symmetry-equivariant subcategory $\mathsf{Unit}^{\Z_n}\subset\mathsf{Unit}$.
   492	
   493	\begin{definition}[Symmetry-equivariant Floquet functors]
   494	\label{def:symmetric-floquet}
   495	Let $S\in U(\Hcal)$ implement a $\Z_n$ symmetry of the drive ($SH(t)=H(t)S$ for all $t$). Define the symmetry-equivariant lifts
   496	\begin{align}
   497	\Floq^{[n]}_S,\;\Res_{nT}\Floq^S\colon\mathbf{B}\Z_{nT}\;&\longrightarrow\;\mathsf{Unit}^{\Z_n},
   498	\end{align}
   499	where $\mathsf{Unit}^{\Z_n}$ is the category whose objects are pairs $(\Hcal, S)$ of a Hilbert space and a $\Z_n$-symmetry, and whose morphisms are unitaries that commute with $S$. The first sends the generator of $\Z$ to $U_F^n$ together with $S$; the second sends it to $U_F^n$ together with the \emph{stroboscopically-induced symmetry} $S' = U_F S U_F^{-1}$ (which need not equal $S$ when the drive permutes symmetry sectors).
   500	\end{definition}
   501	
   502	\begin{theorem}[DTC obstruction]
   503	\label{thm:dtc-obstruction}
   504	Let $(\Floq, S)$ be a Floquet system with $\Z_n$-symmetry $S$. The system realises a discrete time crystal of order $n$ if and only if the canonical natural transformation
   505	\begin{equation}
   506	\eta\colon \Res_{nT}\Floq^S \;\Longrightarrow\; \Floq^{[n]}_S
   507	\end{equation}
   508	(whose component at the unique object is the unitary $U_F^n$, intended to identify the two pairs $(\Hcal,U_F SU_F^{-1})$ and $(\Hcal,S)$) fails to be an isomorphism in $\mathsf{Unit}^{\Z_n}$. The failure occurs precisely because the two source/target pairs in the enriched category $\mathsf{Unit}^{\Z_n}$ have \emph{different} symmetry-generator data ($U_F SU_F^{-1}$ versus $S$), so any prospective component $U_F^n$ does not commute with the relevant symmetry data, breaking the equivariance condition required to be an isomorphism in $\mathsf{Unit}^{\Z_n}$. Equivalently, the relation $U_F S U_F^{-1} = S$ fails. After the symmetry-forgetting functor $\mathsf{Unit}^{\Z_n}\to\mathsf{Unit}$ (which drops the symmetry data), $\eta$ recovers being an isomorphism.
   509	\end{theorem}
   510	
   511	\begin{proof}[Proof sketch]
   512	``$\Rightarrow$'': If the system is a DTC of order $n$, then by \cref{def:dtc} there exists an order parameter $\mathcal{O}_x$ whose stroboscopic expectation has period exactly $nT$. Let $|\psi\rangle$ be a symmetry-broken state in the thermodynamic-limit sense, so $\langle\psi|\mathcal{O}_x|\psi\rangle\neq 0$ but $S$ permutes the $n$ symmetry-broken states cyclically. Then $U_F$ shifts the order parameter by one cyclic step in this $\Z_n$-orbit: $U_F\mathcal{O}_x U_F^{-1}=\zeta\,\mathcal{O}_x$ where $\zeta=e^{2\pi i k/n}$ for some $k$ coprime to $n$ (in the symmetry-broken sector). Equivalently, $U_F S U_F^{-1}\neq S$: the drive maps $S$ to $U_F S U_F^{-1}$, which is a conjugate of $S$ by $U_F$ (and not equal to $S$ itself), so the equivariance square fails. This is exactly the statement that $\eta$ fails to be an isomorphism in $\mathsf{Unit}^{\Z_n}$. Forgetting the symmetry, $\eta$ becomes the bare unitary $U_F^n$, which is an isomorphism.
   513	
   514	``$\Leftarrow$'': If $U_F S U_F^{-1}\neq S$ but $U_F^n S U_F^{-n}=S$ (which holds because conjugation by $U_F$ defines an action of $\Z$ on the symmetry generator that must factor through $\Z_n$ by finiteness of the symmetry data), then there is a non-trivial cyclic action of $\Z_n$ on $S$ by conjugation by $U_F$. Diagonalising $U_F$ in the simultaneous eigenbasis of $U_F^n$ shows that $U_F$ has eigenvalues $\zeta_k\,e^{-i\varepsilon}$ with $\zeta_k$ ranging over the $n$th roots of unity within each $U_F^n$-eigenspace. Picking an eigenvector and an order parameter operator overlapping multiple $\zeta_k$-sectors yields period-$nT$ oscillation of the expectation value, proving the system is a DTC of order $n$.
   515	\end{proof}
   516	
   517	\Cref{thm:dtc-obstruction} reformulates the physics of DTCs as an obstruction theory: a DTC is the obstruction to the relation $[U_F,S]=0$ holding strictly. The symmetry-forgetting functor witnesses that the obstruction is not visible to the bare stroboscopic dynamics; it lives in the $\Z_n$-equivariant enrichment.
   518	
   519	\subsection{Period-doubling and $\Z_2$ DTCs}
   520	
   521	The simplest case is $n=2$. The DTC obstruction class then lives in the $\Z_2$-graded part of $\mathrm{End}(U_F)$ that anticommutes with the drive symmetry. We will see in \cref{sec:examples} that the kicked Ising chain produces exactly this structure: $U_F$ has eigenvalues $\pm e^{-i\varepsilon}$ paired by the global Ising symmetry, giving period-$2T$ oscillation of $\langle\sigma^z_i\rangle$.
   522	
   523	\subsection{Stability and MBL}
   524	
   525	The Else--Bauer--Nayak theorem~\cite{else2016} guarantees stability of the DTC under generic perturbations preserving $T$-periodicity, provided the system is many-body localised (MBL). MBL is the obstruction to thermalisation in disordered interacting systems and protects the symmetry-broken sector from heating to infinite temperature. Recent reviews~\cite{else2020review} survey continuous time crystals and DTC variants in clean systems via prethermal mechanisms.
   526	
   527	\section{Floquet Topological Insulators}
   528	\label{sec:floquet-topological}
   529	
   530	\subsection{Floquet--Bloch theory}
   531	
   532	For a spatially periodic system on a $d$-dimensional lattice, the static Bloch theorem decomposes the Hamiltonian into a family $\{H(\mathbf{k})\}_{\mathbf{k}\in\mathrm{BZ}}$ on a finite-dimensional fibre. Adding $T$-periodic time dependence gives a family $H(\mathbf{k},t)$ doubly periodic in $(\mathbf{k},t)\in\mathrm{BZ}\times S^1$.
   533	
   534	\begin{definition}[Floquet--Bloch evolution]
   535	\label{def:floquet-bloch}
   536	The Floquet--Bloch unitary is the family $U(\mathbf{k},t):=\mathcal{T}\exp\bigl(-i\!\int_0^t H(\mathbf{k},s)\,ds\bigr)$, viewed as a smooth map $U\colon\mathrm{BZ}\times[0,T]\to\mathrm{U}(N)$ with $U(\mathbf{k},0)=\one$.
   537	\end{definition}
   538	
   539	\subsection{Floquet winding number}
   540	
   541	\begin{definition}[Floquet winding number, $d=2$]
   542	\label{def:winding}
   543	For a $2$-dimensional system with full quasi-energy gap at $\varepsilon=\pi$, the \emph{Floquet winding number} is
   544	\begin{equation}
   545	\nu \;:=\; \frac{1}{8\pi^2}\int_{\mathrm{BZ}\times S^1}\!\!\mathrm{Tr}\bigl[\bigl(U^\dagger\,dU\bigr)^3\bigr]\;\in\;\Z.
   546	\end{equation}
   547	\end{definition}
   548	
   549	\begin{theorem}[Anomalous Floquet bulk-boundary correspondence~\cite{rudner2020}]
   550	\label{thm:rudner-lindner}
   551	For a $2$D anomalous Floquet insulator with Floquet winding number $\nu$ at quasi-energy gap $\pi$, the open-boundary spectrum has $\nu$ chiral edge modes traversing the gap, even when all bulk Bloch bands have vanishing Chern number.
   552	\end{theorem}
   553	
   554	The proof uses a homotopy from $U(\mathbf{k},t)$ to a periodic ``return map'' that explicitly counts the chiral edge modes; we refer to~\cite{rudner2020} for details.
   555	
   556	\subsection{Categorical reformulation}
   557	
   558	Functorially, the Floquet--Bloch evolution is a functor $\mathrm{BZ}\times \mathbf{B}S^1\to\mathsf{Unit}$ where $\mathrm{BZ}$ is viewed as the discrete symmetric monoidal groupoid of crystal momenta. The winding number arises as a degree of the map to $\mathrm{U}(N)$; this is precisely a homotopy-class invariant of the natural transformation classifying the Floquet system.
   559	
   560	\begin{definition}[Trivial Floquet--Bloch evolution]
   561	\label{def:trivial-fb}
   562	The \emph{trivial Floquet--Bloch evolution} on a $2$D system with $N$ bands is the constant functor
   563	$U_{\mathrm{triv}}\colon\mathrm{BZ}\times[0,T]\to\mathrm{U}(N)$,
   564	$(\mathbf{k},t)\mapsto\one_N$. As a Floquet--Bloch evolution it produces zero quasi-energy spectrum (gap at $\pi$ trivially) and zero edge modes.
   565	\end{definition}
   566	
   567	\begin{proposition}[Floquet topological invariant as natural-transformation class]
   568	\label{prop:floquet-natural}
   569	Let $\mathrm{Floq}^{2D}_\Delta$ denote the moduli space of $2$D Floquet--Bloch evolutions with full quasi-energy gap at $\varepsilon=\pi$ of size at least $\Delta>0$, viewed as a topological space with the compact-open topology. Then:
   570	\begin{enumerate}
   571	\item $\pi_0(\mathrm{Floq}^{2D}_\Delta) \cong \Z$, with the isomorphism given by the Floquet winding number $\nu$ of \cref{def:winding}.
   572	\item Equivalently, two gapped Floquet--Bloch systems $U,U'$ are connected by a gap-preserving path in $\mathrm{Floq}^{2D}_\Delta$ if and only if $\nu(U)=\nu(U')$.
   573	\item The Floquet winding number $\nu(U)$ is therefore the obstruction class, in $\pi_0(\mathrm{Floq}^{2D}_\Delta)\cong\Z$, to the existence of a gap-preserving natural transformation (i.e.\ homotopy of Floquet--Bloch functors) from the trivial Floquet--Bloch evolution $U_{\mathrm{triv}}$ of \cref{def:trivial-fb} to $U$.
   574	\end{enumerate}
   575	\end{proposition}
   576	
   577	\begin{proof}
   578	A gapped Floquet--Bloch evolution $U(\mathbf{k},t)$ defines a continuous map $\mathrm{BZ}\times[0,T]\to\mathrm{U}(N)$ which, by full $\pi$-gap and the Floquet decomposition, can be deformed (without closing the $\pi$-gap) to a periodic ``return map'' $\widetilde{U}\colon\mathrm{BZ}\times S^1\to\mathrm{U}(N)$. As $\mathrm{BZ}\times S^1\cong T^3$ and $\pi_3(\mathrm{U}(N))=\Z$ for $N$ large, the homotopy classes of such maps are labelled by an integer; the integral expression in \cref{def:winding} computes precisely this homotopy class. Item~(2) follows because a gap-preserving path is a homotopy in $\mathrm{Floq}^{2D}_\Delta$, which preserves the connected component. Item~(3) is the special case where one endpoint is the trivial evolution: the obstruction class to homotoping any $U$ to $U_{\mathrm{triv}}$ is exactly $\nu(U)\in\Z$.
   579	\end{proof}
   580	
   581	\subsection{Periodic table for Floquet topological insulators}
   582	
   583	The full periodic table of Floquet topological phases extends the equilibrium $10$-fold way (Altland--Zirnbauer) by a $\Z_2$-graded $K$-theory enhancement; the result~\cite{roy2017} is that each entry of the equilibrium table acquires (at most) one extra $\Z$ or $\Z_2$ factor for the anomalous Floquet contribution.
   584	
   585	\begin{theorem}[Roy--Harper periodic table~\cite{roy2017}]
   586	\label{thm:roy-harper}
   587	Let $K_{\mathrm{eq}}^{s,d}$ denote the equilibrium $K$-theory group for symmetry class $s$ in spatial dimension $d$ (Kitaev table). The Floquet $K$-theory satisfies
   588	\begin{equation}
   589	K_{\mathrm{Floq}}^{s,d} \;\cong\; K_{\mathrm{eq}}^{s,d}\;\oplus\;K_{\mathrm{eq}}^{s,d-1}.
   590	\end{equation}
   591	\end{theorem}
   592	
   593	The first summand classifies bands individually (the equilibrium Chern numbers); the second summand classifies the anomalous Floquet contribution (the Floquet winding numbers).
   594	
   595	\begin{remark}
   596	\Cref{thm:roy-harper} can be read categorically as the splitting of a long exact sequence in $K$-theory induced by the cofibre sequence $S^1\to D^2\to S^2$ and the K\"unneth theorem applied to $\mathrm{BZ}\times S^1$. The categorical content is: the temporal direction $S^1$ is one categorical dimension lower than the spatial one, and adds one shifted copy of the equilibrium classification.
   597	\end{remark}
   598	
   599	\section{Prethermalisation and Heating}
   600	\label{sec:prethermal}
   601	
   602	\subsection{Prethermal time scale}
   603	
   604	\begin{theorem}[Abanin--De Roeck--Ho--Huveneers~\cite{abanin2015}]
   605	\label{thm:abanin}
   606	Let $H(t)$ be a $T$-periodic, locally-bounded Hamiltonian on a lattice with local energy scale $J$. There exist constants $C,c>0$ depending only on the lattice geometry such that, for $\omega>CJ$, there is a quasi-local effective Hamiltonian $\Heff$ with
   607	\begin{equation}
   608	\bigl\|U(nT)-e^{-i\Heff\,nT}\bigr\| \leq C n J\,e^{-c\omega/J}\qquad\text{for}\quad nT\leq\tau^*=\frac{1}{J}\,e^{c\omega/J}.
   609	\end{equation}
   610	\end{theorem}
   611	
   612	In words: the stroboscopic dynamics is approximated by a static effective Hamiltonian for an exponentially long time scale.
   613	
   614	\subsection{Three regimes}
   615	
   616	The Floquet dynamics on a generic interacting lattice has three regimes:
   617	\begin{enumerate}
   618	\item \emph{Initial transient}, $t\lesssim T$: full $H(t)$ matters; Magnus expansion not yet an approximation.
   619	\item \emph{Prethermal}, $T\lesssim t\lesssim\tau^*$: dynamics governed by $\Heff^{(\leq N^*)}$. Here \cref{thm:prethermal-lift} applies and Floquet phases are equilibrium phases of $\Heff$.
   620	\item \emph{Heating}, $t\gtrsim\tau^*$: system absorbs energy from the drive, eventually reaching infinite temperature in a generic interacting bulk~\cite{lazarides2014,dalessio2014}.

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/frequency-modulated-processes.tex | sed -n '621,1040p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
   621	\end{enumerate}
   622	
   623	\subsection{MBL evades heating}
   624	
   625	Many-body localised (MBL) systems do not thermalise: emergent local integrals of motion forbid energy absorption beyond a finite bandwidth. Consequently, MBL Floquet systems can support \emph{stable} (rather than just prethermal) DTC and SPT phases. This is the rigorous content of the Else--Bauer--Nayak theorem.
   626	
   627	\begin{remark}
   628	The prethermal-vs-MBL distinction is reflected in the categorical framework: prethermal phases factor through \cref{thm:prethermal-lift}, while MBL Floquet phases do not (the diagram fails to close even on an exponentially long time scale; the obstruction class is non-trivial). This is the precise sense in which DTCs and AFIs are genuinely non-equilibrium phases.
   629	\end{remark}
   630	
   631	\section{Worked Examples}
   632	\label{sec:examples}
   633	
   634	\subsection{The kicked Ising chain (DTC)}
   635	
   636	\subsubsection{Definition}
   637	
   638	The kicked Ising chain on $L$ sites is governed by the period-$T$ Hamiltonian
   639	\begin{equation}
   640	H(t) = \begin{cases}
   641	H_x = \sum_i h_x\,\sigma^x_i & 0\leq t<T/2,\\
   642	H_z = \sum_i J_i\,\sigma^z_i\sigma^z_{i+1}+\sum_i h_z^{(i)}\,\sigma^z_i & T/2\leq t<T,
   643	\end{cases}
   644	\end{equation}
   645	with $J_i,h_z^{(i)}$ disordered couplings (drawn i.i.d.\ from a uniform distribution to enable MBL). The Floquet operator is
   646	\begin{equation}
   647	U_F = e^{-iH_z T/2}\,e^{-iH_x T/2}.
   648	\end{equation}
   649	
   650	\subsubsection{Period-doubling at the $\pi$-pulse}
   651	
   652	For $h_x T/2 = \pi/2$ (a perfect $\pi$-pulse), $e^{-iH_x T/2}=\prod_i\sigma^x_i=:P$ flips every spin. Then $U_F = e^{-iH_z T/2}P$ commutes with $\prod_i\sigma^z_i$ but anticommutes with the $\sigma^z_i$ operators on every site. Consequently, $\langle\psi_0|\sigma^z_i(nT)|\psi_0\rangle=(-1)^n\langle\sigma^z_i\rangle$ for any product state polarised in $\sigma^z$.
   653	
   654	\begin{proposition}
   655	\label{prop:kicked-ising-dtc}
   656	The kicked Ising chain at $h_x T/2=\pi/2+\delta$ with disordered $J_i,h_z^{(i)}$ realises a $\Z_2$ DTC for $|\delta|<\delta_c$, where $\delta_c>0$ is the MBL stability threshold. The DTC obstruction $\eta$ of \cref{thm:dtc-obstruction} has order exactly $2$.
   657	\end{proposition}
   658	
   659	\begin{proof}[Proof sketch]
   660	At $\delta=0$ the DTC is exact. For $\delta\neq 0$, the perturbation $e^{-i\delta\sum_i\sigma^x_i}$ tilts the spin-flip but, because of MBL, the dressed local order parameter $\widetilde{\sigma}^z_i$ continues to anticommute with the dressed spin-flip $\widetilde{P}$. Stability is the content of~\cite{else2016}; we have nothing to add.
   661	\end{proof}
   662	
   663	\subsubsection{Numerical verification}
   664	
   665	The accompanying Haskell library (in the companion repository at \texttt{src/frequency-modulated-processes/}) implements a stroboscopic simulator of the kicked Ising chain on $L\leq 6$ sites and verifies the period-doubling of $\langle\sigma^z_i(nT)\rangle$ over multiple stroboscopic steps. The simulation uses an exact construction of the $2^L\times 2^L$ Floquet operator (via ordered exponentials of the piecewise-constant kicked Hamiltonian) and tracks the local magnetisation of a $\hat{z}$-polarised initial state. The numerical output of \texttt{cabal run fmp-demo} shows
   666	\begin{equation*}
   667	\langle\sigma^z_0(nT)\rangle = (-1)^n + \mathcal{O}(10^{-13})\quad\text{for}\;n=0,1,\ldots,10
   668	\end{equation*}
   669	which is the period-$2T$ DTC signature claimed by \cref{prop:kicked-ising-dtc}.
   670	
   671	\subsection{The driven SSH model (AFI edge mode at $\varepsilon=\pi$)}
   672	
   673	\subsubsection{Definition}
   674	
   675	The Su--Schrieffer--Heeger model is a $1$D bipartite hopping chain. We periodically modulate the dimerisation:
   676	\begin{equation}
   677	H(t) = \begin{cases}
   678	H_{\mathrm{intra}} = \sum_n J_1\bigl(c_{n,A}^\dagger c_{n,B}+\mathrm{h.c.}\bigr) & 0\leq t<T/2,\\
   679	H_{\mathrm{inter}} = \sum_n J_2\bigl(c_{n,B}^\dagger c_{n+1,A}+\mathrm{h.c.}\bigr) & T/2\leq t<T,
   680	\end{cases}
   681	\end{equation}
   682	where $A,B$ label sublattices.
   683	
   684	\subsubsection{Floquet edge modes at $\varepsilon=0$ and $\varepsilon=\pi$}
   685	
   686	For $J_1 T/2 = J_2 T/2 = \pi/2$, the Floquet operator on a cylinder has zero-energy edge modes at both quasi-energies $\varepsilon=0$ and $\varepsilon=\pi$, even though the time-averaged Hamiltonian is gapless and topologically trivial. The phase is detected by a non-zero Floquet winding number on a $\Z_2$-graded extension of \cref{def:winding} appropriate to $1$D systems.
   687	
   688	\begin{proposition}
   689	\label{prop:driven-ssh}
   690	The driven SSH model in the regime $J_1 T/2,J_2T/2\in(\pi/4,3\pi/4)$ realises an anomalous Floquet topological insulator with one chiral edge mode at $\varepsilon=\pi$ and one at $\varepsilon=0$.
   691	\end{proposition}
   692	
   693	\begin{proof}[Proof sketch]
   694	Compute the Floquet--Bloch unitary $U(k,T)=e^{-iH_{\mathrm{inter}}(k)T/2}\,e^{-iH_{\mathrm{intra}}(k)T/2}$. At the special point $J_1T/2=J_2T/2=\pi/2$ both factors are $\pi$-rotations on opposite sublattice axes; their product traces out a $2\pi$-winding of the Floquet--Bloch unitary $U(k,t)$ as $(k,t)$ ranges over the spatio-temporal Brillouin torus, contributing winding number $1$ in the homotopy class $\pi_3(\mathrm{U}(N))=\Z$. By bulk--boundary correspondence~\cite{rudner2020}, this gives one chiral edge mode at $\varepsilon=\pi$.
   695	\end{proof}
   696	
   697	\subsubsection{Comparison with equilibrium}
   698	
   699	The static SSH model has only the $\varepsilon=0$ edge mode (when topological); the $\varepsilon=\pi$ edge mode is genuinely Floquet --- it has no equilibrium counterpart and is detected only by the Floquet winding number, not by any time-averaged invariant.
   700	
   701	\section{Open Problems}
   702	\label{sec:open}
   703	
   704	\begin{enumerate}
   705	\item \emph{Continuous time crystals.} Spontaneous breaking of \emph{continuous} time-translation symmetry in a closed quantum system is forbidden by Watanabe--Oshikawa~\cite{watanabe2015} for the ground state, but variations under drive or in dissipative settings remain open~\cite{khemani2019}.
   706	\item \emph{Floquet phases in $(3+1)$D.} Extending the Roy--Harper periodic table~\cite{roy2017} to interacting systems in $3+1$ dimensions, including possible non-Abelian Floquet phases.
   707	\item \emph{Floquet many-body scars.} Periodic drive stabilising scar states in non-integrable models; relationship between scars and DTC order.
   708	\item \emph{Categorical Floquet RG.} A renormalisation-group fixed-point structure on $\Ham_T$, in particular the existence of Floquet conformal field theories as fixed points of the temporal periodicity.
   709	\item \emph{Composition with Law~IV.} What is the holographic dual of a Floquet CFT? Does the AdS bulk become time-dependent, or does it acquire a temporal $S^1$ factor (giving an AdS-cylindrical bulk)? Initial work~\cite{anous2020} suggests both.
   710	\item \emph{Beyond stroboscopic equivalence.} The categorical equivalence relation on $\Ham_T$ that captures Floquet phases is broader than stroboscopic equivalence (which fixes $U_F$ up to similarity) but narrower than micromotion-blind equivalence; identifying the correct intermediate equivalence is open.
   711	\end{enumerate}
   712	
   713	\section{Discussion: The Modular Composition Hooks}
   714	\label{sec:discussion}
   715	
   716	We close by stating explicitly the data that Law~III exposes for consumption by Law~IV.
   717	
   718	\begin{enumerate}
   719	\item \emph{Sambe-space functor} $\mathcal{S}_T\colon\QChan\to\Hilb_{\mathrm{sep}}$ (\cref{prop:sambe-functor}). Law~IV will use $\mathcal{S}_T$ as the source category for an information-geometric extension: the Bures metric on $\mathcal{S}_T(\Hcal)$, restricted to a smooth family of Floquet states, is the candidate Floquet Fisher metric whose holographic interpretation will be developed in Paper~4.
   720	\item \emph{Effective-Hamiltonian functor} $\Heff^{(\leq N)}$ (\cref{def:Heff}). Law~IV uses this to reduce holographic Floquet questions to (perturbed) holographic equilibrium questions in the prethermal regime, leveraging existing AdS/CFT results.
   721	\item \emph{Floquet topological invariants} (\cref{def:winding,prop:floquet-natural}). Law~IV interprets these as $K$-theoretic data on the boundary of an emergent bulk; the AFI winding number will be the temporal companion to the bulk Chern--Simons level.
   722	\item \emph{DTC obstruction $2$-cells} (\cref{thm:dtc-obstruction}). In Law~IV these will become non-trivial $2$-cells in the holographic functor, plausibly dual to time-periodic bulk geometries (perhaps related to Floquet-analog wormholes; cf.~\cite{anous2020}).
   723	\end{enumerate}
   724	
   725	We emphasise once more: this is a \emph{modular} pipeline. Law~IV does not subsume Law~III, nor does Law~III subsume Law~II. Each lift is a proper functor with its own emergent invariants. The composition $\mathrm{Lift}_{\mathrm{III}\to\mathrm{IV}}\circ\mathrm{Lift}_{\mathrm{II}\to\mathrm{III}}$ produces precisely the categorical substrate over which the Fisher--Bures information geometry of Law~IV is defined.
   726	
   727	\section{Conclusion}
   728	\label{sec:conclusion}
   729	
   730	We have presented Law~III of the modular Emergent Spacetime Dynamics framework: a categorical theory of frequency-modulated quantum processes. The central technical contributions are:
   731	\begin{itemize}
   732	\item A $2$-categorical formulation of Floquet evolution as a strict $2$-functor $\mathrm{Ev}_T\colon\mathfrak{H}_T\to\mathfrak{U}_{\Z}$ (\cref{prop:2-floquet}).
   733	\item A directed-system formulation of the Magnus expansion as an asymptotic effective-Hamiltonian functor (\cref{prop:heff-functor}), and a precise prethermal compositional lifting theorem (\cref{thm:prethermal-lift}).
   734	\item A reformulation of discrete time crystals as obstruction $2$-cells in the comparison between restricted and iterated Floquet drives (\cref{thm:dtc-obstruction}).
   735	\item A reformulation of Floquet winding numbers as obstruction classes for natural transformations between Floquet--Bloch functors (\cref{prop:floquet-natural}), recovering the Roy--Harper periodic table~\cite{roy2017}.
   736	\item Explicit composition hooks --- the Sambe-space functor, the effective-Hamiltonian functor, the Floquet topological invariants, and the DTC obstruction $2$-cells --- for Law~IV.
   737	\end{itemize}
   738	
   739	The Haskell artifacts in the accompanying repository implement a first-order Magnus solver, a kicked-Ising-chain simulator, and property tests for unitarity and periodicity, providing an executable correspondence between the categorical framework and concrete numerics.
   740	
   741	The next paper in the series, Law~IV (\emph{Information-bearing Structures}), takes the categorical substrate exhibited by the composition $\mathrm{Lift}_{\mathrm{II}\to\mathrm{III}}\circ\mathrm{Lift}_{\mathrm{I}\to\mathrm{II}}$ and lifts it once more, this time to information geometry: the Fisher--Bures metric on the space of Floquet states becomes a Riemannian structure from which holographic spacetime emerges. The full hierarchy
   742	\begin{equation*}
   743	\mathrm{MonCat}\;\longrightarrow\;\Phase_{\mathrm{eq}}\;\longrightarrow\;\Phase_{\Floq}\;\longrightarrow\;\mathsf{InfoGeom}
   744	\end{equation*}
   745	is the modular pipeline through which classical spacetime emerges from categorical quantum information. The present paper provides the third stage; the fourth is the subject of Paper~4.
   746	
   747	\section*{Acknowledgements}
   748	
   749	The author thanks the authors of~\cite{floquet1883,shirley1965,bukov2015,else2016,khemani2016,rudner2020,roy2017} for providing the conceptual scaffolding on which the categorical reformulation rests. The Haskell community is acknowledged for the linear-types extension that makes type-level encoding of unitary evolution practical.
   750	
   751	\begin{thebibliography}{99}
   752	
   753	\bibitem{floquet1883}
   754	G.~Floquet,
   755	\emph{Sur les \'equations diff\'erentielles lin\'eaires \`a coefficients p\'eriodiques},
   756	Annales de l'\'Ecole Normale Sup\'erieure \textbf{12} (1883), 47--88.
   757	
   758	\bibitem{shirley1965}
   759	J.~H.~Shirley,
   760	\emph{Solution of the Schr\"odinger equation with a Hamiltonian periodic in time},
   761	Phys.\ Rev.\ \textbf{138} (1965), B979--B987.
   762	
   763	\bibitem{magnus1954}
   764	W.~Magnus,
   765	\emph{On the exponential solution of differential equations for a linear operator},
   766	Comm.\ Pure Appl.\ Math.\ \textbf{7} (1954), 649--673.
   767	
   768	\bibitem{sambe1973}
   769	H.~Sambe,
   770	\emph{Steady states and quasi-energies of a quantum-mechanical system in an oscillating field},
   771	Phys.\ Rev.\ A \textbf{7} (1973), 2203--2213.
   772	
   773	\bibitem{bukov2015}
   774	M.~Bukov, L.~D'Alessio, A.~Polkovnikov,
   775	\emph{Universal high-frequency behavior of periodically driven systems: from dynamical stabilization to Floquet engineering},
   776	Adv.\ Phys.\ \textbf{64} (2015), 139--226.
   777	
   778	\bibitem{else2016}
   779	D.~V.~Else, B.~Bauer, C.~Nayak,
   780	\emph{Floquet time crystals},
   781	Phys.\ Rev.\ Lett.\ \textbf{117} (2016), 090402.
   782	
   783	\bibitem{khemani2016}
   784	V.~Khemani, A.~Lazarides, R.~Moessner, S.~L.~Sondhi,
   785	\emph{Phase structure of driven quantum systems},
   786	Phys.\ Rev.\ Lett.\ \textbf{116} (2016), 250401.
   787	
   788	\bibitem{rudner2020}
   789	M.~S.~Rudner, N.~H.~Lindner,
   790	\emph{Band structure engineering and non-equilibrium dynamics in Floquet topological insulators},
   791	Nature Reviews Physics \textbf{2} (2020), 229--244.
   792	
   793	\bibitem{roy2017}
   794	R.~Roy, F.~Harper,
   795	\emph{Periodic table for Floquet topological insulators},
   796	Phys.\ Rev.\ B \textbf{96} (2017), 155118.
   797	
   798	\bibitem{abanin2015}
   799	D.~A.~Abanin, W.~De~Roeck, F.~Huveneers,
   800	\emph{Exponentially slow heating in periodically driven many-body systems},
   801	Phys.\ Rev.\ Lett.\ \textbf{115} (2015), 256803.
   802	
   803	\bibitem{zhang2017}
   804	J.~Zhang \emph{et al.},
   805	\emph{Observation of a discrete time crystal},
   806	Nature \textbf{543} (2017), 217--220.
   807	
   808	\bibitem{choi2017}
   809	S.~Choi \emph{et al.},
   810	\emph{Observation of discrete time-crystalline order in a disordered dipolar many-body system},
   811	Nature \textbf{543} (2017), 221--225.
   812	
   813	\bibitem{else2020review}
   814	D.~V.~Else, C.~Monroe, C.~Nayak, N.~Y.~Yao,
   815	\emph{Discrete time crystals},
   816	Annual Review of Condensed Matter Physics \textbf{11} (2020), 467--499.
   817	
   818	\bibitem{watanabe2015}
   819	H.~Watanabe, M.~Oshikawa,
   820	\emph{Absence of quantum time crystals},
   821	Phys.\ Rev.\ Lett.\ \textbf{114} (2015), 251603.
   822	
   823	\bibitem{khemani2019}
   824	V.~Khemani, R.~Moessner, S.~L.~Sondhi,
   825	\emph{A brief history of time crystals},
   826	arXiv:1910.10745 (2019).
   827	
   828	\bibitem{anous2020}
   829	T.~Anous, J.~Sonner,
   830	\emph{Phases of scrambling in eigenstates},
   831	SciPost Phys.\ \textbf{7} (2019), 003. (Cited for Floquet/holographic discussion.)
   832	
   833	\bibitem{lurie2009}
   834	J.~Lurie,
   835	\emph{Higher Topos Theory},
   836	Annals of Math.\ Studies \textbf{170}, Princeton University Press, 2009.
   837	
   838	\bibitem{maclane1998}
   839	S.~Mac Lane,
   840	\emph{Categories for the Working Mathematician}, 2nd ed.,
   841	Springer GTM \textbf{5}, 1998.
   842	
   843	\bibitem{abramsky2004}
   844	S.~Abramsky, B.~Coecke,
   845	\emph{A categorical semantics of quantum protocols},
   846	Proc.\ 19th IEEE LICS (2004), 415--425.
   847	
   848	\bibitem{baezdolan1995}
   849	J.~C.~Baez, J.~Dolan,
   850	\emph{Higher-dimensional algebra and topological quantum field theory},
   851	J.\ Math.\ Phys.\ \textbf{36} (1995), 6073--6105.
   852	
   853	\bibitem{atiyah1988}
   854	M.~F.~Atiyah,
   855	\emph{Topological quantum field theories},
   856	Publ.\ Math.\ IH\'ES \textbf{68} (1988), 175--186.
   857	
   858	\bibitem{wen2004}
   859	X.-G.~Wen,
   860	\emph{Quantum Field Theory of Many-body Systems}, Oxford, 2004.
   861	
   862	\bibitem{kitaev2003}
   863	A.~Y.~Kitaev,
   864	\emph{Fault-tolerant quantum computation by anyons},
   865	Annals Phys.\ \textbf{303} (2003), 2--30.
   866	
   867	\bibitem{chen2013}
   868	X.~Chen, Z.-C.~Gu, Z.-X.~Liu, X.-G.~Wen,
   869	\emph{Symmetry protected topological orders and the group cohomology of their symmetry group},
   870	Phys.\ Rev.\ B \textbf{87} (2013), 155114.
   871	
   872	\bibitem{lazarides2014}
   873	A.~Lazarides, A.~Das, R.~Moessner,
   874	\emph{Equilibrium states of generic quantum systems subject to periodic driving},
   875	Phys.\ Rev.\ E \textbf{90} (2014), 012110.
   876	
   877	\bibitem{dalessio2014}
   878	L.~D'Alessio, M.~Rigol,
   879	\emph{Long-time behavior of isolated periodically driven interacting lattice systems},
   880	Phys.\ Rev.\ X \textbf{4} (2014), 041048.
   881	
   882	\end{thebibliography}
   883	
   884	\end{document}

codex
The source is a single standalone article. I found several obvious long inline/display constructs, so I’m compiling into a temp directory next to check actual errors, unresolved refs, and box warnings without editing the repo.
exec
/usr/local/bin/zsh -lc 'command -v latexmk || command -v pdflatex || command -v tectonic || true' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
/Library/TeX/texbin/latexmk

exec
/usr/local/bin/zsh -lc 'mkdir -p /tmp/fmp-latex-review && latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=/tmp/fmp-latex-review papers/latex/frequency-modulated-processes.tex' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 3923ms:
Rc files read (in order):
  NONE
Latexmk: This is Latexmk, John Collins, 9 March 2026. Version 4.88.
No existing .aux file, so I'll make a simple one, and require run of *latex.
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Category 'other':
  Rerun of 'pdflatex' forced or previously required:
    Reason or flag: 'Initial setup'

------------
Run number 1 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/fmp-latex-review"  "papers/latex/frequency-modulated-processes.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./papers/latex/frequency-modulated-processes.tex
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/article.cls
Document Class: article 2025/01/22 v1.4n Standard LaTeX document class
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/size12.clo))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsmath.sty
For additional information on amsmath, use the `?' option.
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amstext.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsgen.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsbsy.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsopn.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amssymb.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amsfonts.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amscls/amsthm.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/jknapltx/mathrsfs.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/frontendlayer/tikz.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgf.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfrcs.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-common.te
x)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-latex.def
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfrcs.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/pgf.revision.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgfcore.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/graphics.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-def/pdftex.def)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/systemlayer/pgfsys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeyslibraryfil
tered.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgf.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-pdftex.d
ef
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-common-p
df.def)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsyssoftpath.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsysprotocol.
code.tex)) (/usr/local/texlive/2026/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/color.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/mathcolor.ltx))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcore.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathutil.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathparser.code.tex
)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.basic
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.trigo
nometric.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.rando
m.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.compa
rison.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.base.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.round
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.misc.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.integ
erarithmetics.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathcalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfloat.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfint.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepoints.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathconst
ruct.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathusage
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorescopes.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoregraphicst
ate.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretransform
ations.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorequick.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreobjects.c
ode.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathproce
ssing.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorearrows.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreshade.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreimage.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreexternal.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorelayers.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretranspare
ncy.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepatterns.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorerdf.code.
tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleshapes.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleplot.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-0-65.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-1-18.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgffor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfkeys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/math/pgfmath.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgffor.code.tex))

(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/tikz.cod
e.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryplothan
dlers.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmodulematrix.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarytopaths.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/tikz-cd/tikzlibrarycd.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarymatrix.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibraryquotes.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryarrows.
meta.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarycalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.pathmorphing.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduledecoration
s.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/decorations/pgfli
brarydecorations.pathmorphing.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.markings.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/decorations/pgfli
brarydecorations.markings.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/kvsetkeys/kvsetkeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/kvdefinekeys/kvdefinekeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdfescape/pdfescape.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/ltxcmds/ltxcmds.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdftexcmds/pdftexcmds.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/infwarerr/infwarerr.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hycolor/hycolor.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/nameref.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/refcount/refcount.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/gettitlestring/gettitlestring.s
ty (/usr/local/texlive/2026/texmf-dist/tex/latex/kvoptions/kvoptions.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/etoolbox/etoolbox.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/stringenc/stringenc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/pd1enc.def)
(/usr/local/texlive/2026/texmf-dist/tex/generic/intcalc/intcalc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/puenc.def)
(/usr/local/texlive/2026/texmf-dist/tex/latex/url/url.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/bitset/bitset.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/bigintcalc/bigintcalc.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hpdftex.def
(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty

(/usr/local/texlive/2026/texmf-dist/tex/generic/uniquecounter/uniquecounter.sty
))) (/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty)
==> First Aid for cleveref.sty applied!
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty

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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstpatch.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.cfg))
==> First Aid for listings.sty no longer applied!
    Expected:
        2024/09/23 1.10c (Carsten Heinz)
    but found:
        2025/11/14 1.11b (Carsten Heinz)
    so I'm assuming it got fixed.
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/fmp-latex-review/frequency-modulated-processes.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/jknapltx/ursfs.fd)
No file frequency-modulated-processes.toc.
[1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}]
[2]

LaTeX Warning: Citation `maclane1998' on page 3 undefined on input line 119.


LaTeX Warning: Citation `abramsky2004' on page 3 undefined on input line 119.


LaTeX Warning: Citation `lurie2009' on page 3 undefined on input line 119.


LaTeX Warning: Citation `maclane1998' on page 3 undefined on input line 119.


LaTeX Warning: Citation `abramsky2004' on page 3 undefined on input line 119.


LaTeX Warning: Citation `atiyah1988' on page 3 undefined on input line 119.


LaTeX Warning: Citation `baezdolan1995' on page 3 undefined on input line 119.


LaTeX Warning: Citation `chen2013' on page 3 undefined on input line 125.


LaTeX Warning: Citation `kitaev2003' on page 3 undefined on input line 125.


LaTeX Warning: Citation `wen2004' on page 3 undefined on input line 125.


LaTeX Warning: Citation `floquet1883' on page 3 undefined on input line 129.


LaTeX Warning: Citation `shirley1965' on page 3 undefined on input line 129.

[3]

LaTeX Warning: Citation `else2016' on page 4 undefined on input line 133.


LaTeX Warning: Citation `khemani2016' on page 4 undefined on input line 133.


LaTeX Warning: Citation `rudner2020' on page 4 undefined on input line 134.


LaTeX Warning: Citation `bukov2015' on page 4 undefined on input line 135.


LaTeX Warning: Citation `abanin2015' on page 4 undefined on input line 135.


LaTeX Warning: Citation `roy2017' on page 4 undefined on input line 138.


LaTeX Warning: Reference `sec:floquet-topological' on page 1 undefined on input
 line 138.


LaTeX Warning: Reference `sec:framework' on page 1 undefined on input line 142.



LaTeX Warning: Reference `sec:periodic-endo' on page 1 undefined on input line 
142.


LaTeX Warning: Reference `sec:magnus' on page 1 undefined on input line 142.


LaTeX Warning: Reference `sec:dtc' on page 1 undefined on input line 142.


LaTeX Warning: Reference `sec:floquet-topological' on page 1 undefined on input
 line 142.


LaTeX Warning: Reference `sec:prethermal' on page 1 undefined on input line 142
.


LaTeX Warning: Reference `sec:examples' on page 1 undefined on input line 142.


LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 142.


LaTeX Warning: Reference `sec:conclusion' on page 1 undefined on input line 142
.

[4]

LaTeX Warning: Reference `def:floquet-functor' on page 1 undefined on input lin
e 184.


LaTeX Warning: Reference `def:floquet-functor' on page 1 undefined on input lin
e 184.

[5]

LaTeX Warning: Citation `floquet1883' on page 6 undefined on input line 200.


LaTeX Warning: Citation `sambe1973' on page 6 undefined on input line 205.


Overfull \hbox (12.32542pt too wide) in paragraph at lines 218--219
[]\OT1/cmr/bx/n/12 Definition 2.8 \OT1/cmr/m/n/12 (Quasi-en-ergy op-er-a-tor)\O
T1/cmr/bx/n/12 . []\OT1/cmr/m/n/12 Given a smooth $\OML/cmm/m/it/12 T$\OT1/cmr/
m/n/12 -periodic curve $\OML/cmm/m/it/12 H [] [] S[] \OMS/cmsy/m/n/12 ! []\OT1/
cmr/m/n/12 (\OMS/cmsy/m/n/12 H\OT1/cmr/m/n/12 )$,
[6]

LaTeX Warning: Reference `thm:floquet-decomp' on page 1 undefined on input line
 241.


LaTeX Warning: Citation `sambe1973' on page 7 undefined on input line 251.


LaTeX Warning: Reference `prop:sambe-functor' on page 1 undefined on input line
 268.


LaTeX Warning: Reference `sec:conclusion' on page 1 undefined on input line 268
.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 277.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 277.

[7] [8{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1
.enc}]

LaTeX Warning: Reference `thm:floquet-evol' on page 1 undefined on input line 3
35.


LaTeX Warning: Reference `def:unit-z' on page 1 undefined on input line 338.

[9] (/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/ueuf.fd)

LaTeX Warning: Citation `magnus1954' on page 10 undefined on input line 382.

[10]

LaTeX Warning: Reference `thm:magnus' on page 1 undefined on input line 412.


LaTeX Warning: Citation `bukov2015' on page 11 undefined on input line 412.


LaTeX Warning: Citation `abanin2015' on page 11 undefined on input line 412.


LaTeX Warning: Reference `thm:fm-expansion' on page 1 undefined on input line 4
19.


LaTeX Warning: Reference `prop:heff-functor' on page 1 undefined on input line 
419.

[11]

LaTeX Warning: Reference `def:floquet-functor' on page 1 undefined on input lin
e 435.


Overfull \hbox (12.4461pt too wide) in paragraph at lines 445--447
\OT1/cmr/m/it/12 Here $[]$ de-notes the cat-e-gory of static (time-independent)
 gapped Hamil-to-ni-ans with adiabatic-

LaTeX Warning: Reference `sec:floquet-topological' on page 1 undefined on input
 line 450.


LaTeX Warning: Reference `sec:dtc' on page 1 undefined on input line 450.

[12]

LaTeX Warning: Reference `thm:prethermal-lift' on page 1 undefined on input lin
e 453.


LaTeX Warning: Citation `else2016' on page 13 undefined on input line 470.


LaTeX Warning: Reference `sec:examples' on page 1 undefined on input line 470.


LaTeX Warning: Citation `zhang2017' on page 13 undefined on input line 470.


LaTeX Warning: Citation `choi2017' on page 13 undefined on input line 470.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 472.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 472.

[13]

LaTeX Warning: Reference `def:dtc' on page 1 undefined on input line 512.


LaTeX Warning: Reference `thm:dtc-obstruction' on page 1 undefined on input lin
e 517.

[14]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 519.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 519.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 519.


LaTeX Warning: Reference `sec:examples' on page 1 undefined on input line 521.


LaTeX Warning: Citation `else2016' on page 15 undefined on input line 525.


LaTeX Warning: Citation `else2020review' on page 15 undefined on input line 525
.


Overfull \hbox (8.35799pt too wide) in paragraph at lines 536--537
[]\OT1/cmr/bx/n/12 Definition 6.1 \OT1/cmr/m/n/12 (Flo-quet--Bloch evo-lu-tion)
\OT1/cmr/bx/n/12 . []\OT1/cmr/m/n/12 The Floquet--Bloch uni-tary is the fam-ily
 $\OML/cmm/m/it/12 U\OT1/cmr/m/n/12 (\OT1/cmr/bx/n/12 k\OML/cmm/m/it/12 ; t\OT1
/cmr/m/n/12 ) :=

LaTeX Warning: Citation `rudner2020' on page 15 undefined on input line 549.


LaTeX Warning: Citation `rudner2020' on page 15 undefined on input line 554.

[15]

LaTeX Warning: Reference `def:winding' on page 1 undefined on input line 571.


LaTeX Warning: Reference `def:trivial-fb' on page 1 undefined on input line 573
.


LaTeX Warning: Reference `def:winding' on page 1 undefined on input line 578.


LaTeX Warning: Citation `roy2017' on page 16 undefined on input line 583.


LaTeX Warning: Citation `roy2017' on page 16 undefined on input line 585.


LaTeX Warning: Reference `thm:roy-harper' on page 1 undefined on input line 596
.

[16]

LaTeX Warning: Citation `abanin2015' on page 17 undefined on input line 604.


LaTeX Warning: Reference `thm:prethermal-lift' on page 1 undefined on input lin
e 619.


LaTeX Warning: Citation `lazarides2014' on page 17 undefined on input line 620.



LaTeX Warning: Citation `dalessio2014' on page 17 undefined on input line 620.


LaTeX Warning: Reference `thm:prethermal-lift' on page 1 undefined on input lin
e 628.

[17]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 650.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 650.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 650.


LaTeX Warning: Reference `thm:dtc-obstruction' on page 1 undefined on input lin
e 656.


LaTeX Warning: Citation `else2016' on page 18 undefined on input line 660.


Overfull \hbox (80.41516pt too wide) in paragraph at lines 665--666
\OT1/cmr/m/n/12 The ac-com-pa-ny-ing Haskell li-brary (in the com-pan-ion repos
-i-tory at \OT1/cmtt/m/n/12 src/frequency-modulated-processes/\OT1/cmr/m/n/12 )


LaTeX Warning: Reference `prop:kicked-ising-dtc' on page 1 undefined on input l
ine 669.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 671.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\varepsilon' on input line 671.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 671.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 671.

[18]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\varepsilon' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\varepsilon' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.


LaTeX Warning: Reference `def:winding' on page 1 undefined on input line 686.


LaTeX Warning: Citation `rudner2020' on page 19 undefined on input line 694.


LaTeX Warning: Citation `watanabe2015' on page 19 undefined on input line 705.


LaTeX Warning: Citation `khemani2019' on page 19 undefined on input line 705.


LaTeX Warning: Citation `roy2017' on page 19 undefined on input line 706.


LaTeX Warning: Citation `anous2020' on page 19 undefined on input line 709.

[19]

LaTeX Warning: Reference `prop:sambe-functor' on page 1 undefined on input line
 719.


LaTeX Warning: Reference `def:Heff' on page 1 undefined on input line 720.


LaTeX Warning: Reference `prop:floquet-natural' on page 1 undefined on input li
ne 721.


LaTeX Warning: Reference `def:winding' on page 1 undefined on input line 721.


LaTeX Warning: Reference `thm:dtc-obstruction' on page 1 undefined on input lin
e 722.


LaTeX Warning: Citation `anous2020' on page 20 undefined on input line 722.


LaTeX Warning: Reference `prop:2-floquet' on page 1 undefined on input line 732
.


LaTeX Warning: Reference `prop:heff-functor' on page 1 undefined on input line 
733.


LaTeX Warning: Reference `thm:prethermal-lift' on page 1 undefined on input lin
e 733.


LaTeX Warning: Reference `thm:dtc-obstruction' on page 1 undefined on input lin
e 734.


LaTeX Warning: Reference `prop:floquet-natural' on page 1 undefined on input li
ne 735.


LaTeX Warning: Citation `roy2017' on page 20 undefined on input line 735.

[20]

LaTeX Warning: Citation `floquet1883' on page 21 undefined on input line 749.


LaTeX Warning: Citation `shirley1965' on page 21 undefined on input line 749.


LaTeX Warning: Citation `bukov2015' on page 21 undefined on input line 749.


LaTeX Warning: Citation `else2016' on page 21 undefined on input line 749.


LaTeX Warning: Citation `khemani2016' on page 21 undefined on input line 749.


LaTeX Warning: Citation `rudner2020' on page 21 undefined on input line 749.


LaTeX Warning: Citation `roy2017' on page 21 undefined on input line 749.

[21]
Underfull \hbox (badness 2762) in paragraph at lines 824--827
[]\OT1/cmr/m/n/12 V. Khe-mani, R. Moess-ner, S. L. Sondhi, \OT1/cmr/m/it/12 A b
rief his-tory of time crys-tals\OT1/cmr/m/n/12 ,
[22] [23] (/private/tmp/fmp-latex-review/frequency-modulated-processes.aux)

LaTeX Warning: There were undefined references.


LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.


Package rerunfilecheck Warning: File `frequency-modulated-processes.out' has ch
anged.
(rerunfilecheck)                Rerun to get outlines right
(rerunfilecheck)                or use package `bookmark'.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cmextra/cmex8.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist
/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/f
onts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fon
ts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmss8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/euler/eufm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/symbols/msbm7.pfb></usr/local/texlive/2026/texmf-dist/fonts/typ
e1/public/cm-super/sfrm1200.pfb>
Output written on /private/tmp/fmp-latex-review/frequency-modulated-processes.p
df (23 pages, 411400 bytes).
Transcript written on /private/tmp/fmp-latex-review/frequency-modulated-process
es.log.
Latexmk: Getting log file '/private/tmp/fmp-latex-review/frequency-modulated-processes.log'
Latexmk: Examining '/private/tmp/fmp-latex-review/frequency-modulated-processes.fls'
Latexmk: Examining '/private/tmp/fmp-latex-review/frequency-modulated-processes.log'
Latexmk: Missing input file 'frequency-modulated-processes.toc' message in .log file:
  No file frequency-modulated-processes.toc.
Latexmk: References changed.
Latexmk: References changed.
Latexmk: Log file says output to '/private/tmp/fmp-latex-review/frequency-modulated-processes.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/fmp-latex-review/frequency-modulated-processes.aux
  /private/tmp/fmp-latex-review/frequency-modulated-processes.out
  /private/tmp/fmp-latex-review/frequency-modulated-processes.toc

------------
Run number 2 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/fmp-latex-review"  "papers/latex/frequency-modulated-processes.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./papers/latex/frequency-modulated-processes.tex
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/article.cls
Document Class: article 2025/01/22 v1.4n Standard LaTeX document class
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/size12.clo))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsmath.sty
For additional information on amsmath, use the `?' option.
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amstext.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsgen.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsbsy.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsopn.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amssymb.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amsfonts.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amscls/amsthm.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/jknapltx/mathrsfs.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/frontendlayer/tikz.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgf.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfrcs.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-common.te
x)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-latex.def
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfrcs.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/pgf.revision.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgfcore.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/graphics.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-def/pdftex.def)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/systemlayer/pgfsys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeyslibraryfil
tered.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgf.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-pdftex.d
ef
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-common-p
df.def)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsyssoftpath.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsysprotocol.
code.tex)) (/usr/local/texlive/2026/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/color.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/mathcolor.ltx))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcore.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathutil.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathparser.code.tex
)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.basic
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.trigo
nometric.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.rando
m.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.compa
rison.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.base.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.round
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.misc.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.integ
erarithmetics.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathcalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfloat.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfint.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepoints.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathconst
ruct.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathusage
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorescopes.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoregraphicst
ate.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretransform
ations.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorequick.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreobjects.c
ode.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathproce
ssing.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorearrows.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreshade.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreimage.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreexternal.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorelayers.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretranspare
ncy.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepatterns.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorerdf.code.
tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleshapes.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleplot.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-0-65.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-1-18.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgffor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfkeys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/math/pgfmath.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgffor.code.tex))

(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/tikz.cod
e.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryplothan
dlers.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmodulematrix.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarytopaths.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/tikz-cd/tikzlibrarycd.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarymatrix.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibraryquotes.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryarrows.
meta.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarycalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.pathmorphing.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduledecoration
s.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/decorations/pgfli
brarydecorations.pathmorphing.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.markings.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/decorations/pgfli
brarydecorations.markings.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/kvsetkeys/kvsetkeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/kvdefinekeys/kvdefinekeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdfescape/pdfescape.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/ltxcmds/ltxcmds.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdftexcmds/pdftexcmds.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/infwarerr/infwarerr.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hycolor/hycolor.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/nameref.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/refcount/refcount.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/gettitlestring/gettitlestring.s
ty (/usr/local/texlive/2026/texmf-dist/tex/latex/kvoptions/kvoptions.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/etoolbox/etoolbox.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/stringenc/stringenc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/pd1enc.def)
(/usr/local/texlive/2026/texmf-dist/tex/generic/intcalc/intcalc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/puenc.def)
(/usr/local/texlive/2026/texmf-dist/tex/latex/url/url.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/bitset/bitset.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/bigintcalc/bigintcalc.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hpdftex.def
(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty

(/usr/local/texlive/2026/texmf-dist/tex/generic/uniquecounter/uniquecounter.sty
))) (/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty)
==> First Aid for cleveref.sty applied!
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty

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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstpatch.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.cfg))
==> First Aid for listings.sty no longer applied!
    Expected:
        2024/09/23 1.10c (Carsten Heinz)
    but found:
        2025/11/14 1.11b (Carsten Heinz)
    so I'm assuming it got fixed.
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/fmp-latex-review/frequency-modulated-processes.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/private/tmp/fmp-latex-review/frequency-modulated-processes.out)
(/private/tmp/fmp-latex-review/frequency-modulated-processes.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/jknapltx/ursfs.fd)
(/private/tmp/fmp-latex-review/frequency-modulated-processes.toc [1{/usr/local/
texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4]
[5] [6]
Overfull \hbox (12.32542pt too wide) in paragraph at lines 218--219
[]\OT1/cmr/bx/n/12 Definition 2.8 \OT1/cmr/m/n/12 (Quasi-en-ergy op-er-a-tor)\O
T1/cmr/bx/n/12 . []\OT1/cmr/m/n/12 Given a smooth $\OML/cmm/m/it/12 T$\OT1/cmr/
m/n/12 -periodic curve $\OML/cmm/m/it/12 H [] [] S[] \OMS/cmsy/m/n/12 ! []\OT1/
cmr/m/n/12 (\OMS/cmsy/m/n/12 H\OT1/cmr/m/n/12 )$,
[7]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 277.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 277.

[8] [9{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1
.enc}]
Overfull \hbox (20.52359pt too wide) in paragraph at lines 336--339
[]\OT1/cmr/m/it/12 Functoriality of $[][]$. \OT1/cmr/m/n/12 On ob-jects: well-d
efined. On mor-phisms: $[][]([]) =
[10] (/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/ueuf.fd) [11]
[12]
Overfull \hbox (12.4461pt too wide) in paragraph at lines 445--447
\OT1/cmr/m/it/12 Here $[]$ de-notes the cat-e-gory of static (time-independent)
 gapped Hamil-to-ni-ans with adiabatic-
[13]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 472.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 472.

[14] [15]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 519.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 519.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 519.


Overfull \hbox (8.35799pt too wide) in paragraph at lines 536--537
[]\OT1/cmr/bx/n/12 Definition 6.1 \OT1/cmr/m/n/12 (Flo-quet--Bloch evo-lu-tion)
\OT1/cmr/bx/n/12 . []\OT1/cmr/m/n/12 The Floquet--Bloch uni-tary is the fam-ily
 $\OML/cmm/m/it/12 U\OT1/cmr/m/n/12 (\OT1/cmr/bx/n/12 k\OML/cmm/m/it/12 ; t\OT1
/cmr/m/n/12 ) :=
[16] [17] [18]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 650.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 650.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 650.


Overfull \hbox (80.41516pt too wide) in paragraph at lines 665--666
\OT1/cmr/m/n/12 The ac-com-pa-ny-ing Haskell li-brary (in the com-pan-ion repos
-i-tory at \OT1/cmtt/m/n/12 src/frequency-modulated-processes/\OT1/cmr/m/n/12 )


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 671.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\varepsilon' on input line 671.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 671.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 671.

[19]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\varepsilon' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\varepsilon' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.

[20] [21] [22]
Underfull \hbox (badness 2762) in paragraph at lines 824--827
[]\OT1/cmr/m/n/12 V. Khe-mani, R. Moess-ner, S. L. Sondhi, \OT1/cmr/m/it/12 A b
rief his-tory of time crys-tals\OT1/cmr/m/n/12 ,
[23] [24] (/private/tmp/fmp-latex-review/frequency-modulated-processes.aux)

LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cmextra/cmex8.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist
/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/f
onts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fon
ts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmss8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/euler/eufm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/symbols/msbm7.pfb></usr/local/texlive/2026/texmf-dist/fonts/typ
e1/public/cm-super/sfrm1200.pfb>
Output written on /private/tmp/fmp-latex-review/frequency-modulated-processes.p
df (24 pages, 422502 bytes).
Transcript written on /private/tmp/fmp-latex-review/frequency-modulated-process
es.log.
Latexmk: Getting log file '/private/tmp/fmp-latex-review/frequency-modulated-processes.log'
Latexmk: Examining '/private/tmp/fmp-latex-review/frequency-modulated-processes.fls'
Latexmk: Examining '/private/tmp/fmp-latex-review/frequency-modulated-processes.log'
Latexmk: References changed.
Latexmk: Log file says output to '/private/tmp/fmp-latex-review/frequency-modulated-processes.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/fmp-latex-review/frequency-modulated-processes.aux
  /private/tmp/fmp-latex-review/frequency-modulated-processes.toc

------------
Run number 3 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/fmp-latex-review"  "papers/latex/frequency-modulated-processes.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./papers/latex/frequency-modulated-processes.tex
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/article.cls
Document Class: article 2025/01/22 v1.4n Standard LaTeX document class
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/size12.clo))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsmath.sty
For additional information on amsmath, use the `?' option.
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amstext.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsgen.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsbsy.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsopn.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amssymb.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amsfonts.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amscls/amsthm.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/jknapltx/mathrsfs.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/frontendlayer/tikz.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgf.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfrcs.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-common.te
x)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-latex.def
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfrcs.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/pgf.revision.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgfcore.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/graphics.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-def/pdftex.def)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/systemlayer/pgfsys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeyslibraryfil
tered.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgf.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-pdftex.d
ef
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-common-p
df.def)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsyssoftpath.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsysprotocol.
code.tex)) (/usr/local/texlive/2026/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/color.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/mathcolor.ltx))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcore.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathutil.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathparser.code.tex
)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.basic
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.trigo
nometric.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.rando
m.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.compa
rison.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.base.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.round
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.misc.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.integ
erarithmetics.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathcalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfloat.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfint.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepoints.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathconst
ruct.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathusage
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorescopes.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoregraphicst
ate.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretransform
ations.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorequick.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreobjects.c
ode.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathproce
ssing.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorearrows.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreshade.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreimage.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreexternal.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorelayers.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretranspare
ncy.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepatterns.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorerdf.code.
tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleshapes.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleplot.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-0-65.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-1-18.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgffor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfkeys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/math/pgfmath.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgffor.code.tex))

(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/tikz.cod
e.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryplothan
dlers.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmodulematrix.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarytopaths.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/tikz-cd/tikzlibrarycd.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarymatrix.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibraryquotes.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryarrows.
meta.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarycalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.pathmorphing.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduledecoration
s.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/decorations/pgfli
brarydecorations.pathmorphing.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.markings.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/decorations/pgfli
brarydecorations.markings.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/kvsetkeys/kvsetkeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/kvdefinekeys/kvdefinekeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdfescape/pdfescape.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/ltxcmds/ltxcmds.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdftexcmds/pdftexcmds.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/infwarerr/infwarerr.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hycolor/hycolor.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/nameref.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/refcount/refcount.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/gettitlestring/gettitlestring.s
ty (/usr/local/texlive/2026/texmf-dist/tex/latex/kvoptions/kvoptions.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/etoolbox/etoolbox.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/stringenc/stringenc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/pd1enc.def)
(/usr/local/texlive/2026/texmf-dist/tex/generic/intcalc/intcalc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/puenc.def)
(/usr/local/texlive/2026/texmf-dist/tex/latex/url/url.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/bitset/bitset.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/bigintcalc/bigintcalc.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hpdftex.def
(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty

(/usr/local/texlive/2026/texmf-dist/tex/generic/uniquecounter/uniquecounter.sty
))) (/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty)
==> First Aid for cleveref.sty applied!
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty

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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstpatch.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.cfg))
==> First Aid for listings.sty no longer applied!
    Expected:
        2024/09/23 1.10c (Carsten Heinz)
    but found:
        2025/11/14 1.11b (Carsten Heinz)
    so I'm assuming it got fixed.
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/fmp-latex-review/frequency-modulated-processes.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/private/tmp/fmp-latex-review/frequency-modulated-processes.out)
(/private/tmp/fmp-latex-review/frequency-modulated-processes.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/jknapltx/ursfs.fd)
(/private/tmp/fmp-latex-review/frequency-modulated-processes.toc [1{/usr/local/
texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4]
[5] [6]
Overfull \hbox (12.32542pt too wide) in paragraph at lines 218--219
[]\OT1/cmr/bx/n/12 Definition 2.8 \OT1/cmr/m/n/12 (Quasi-en-ergy op-er-a-tor)\O
T1/cmr/bx/n/12 . []\OT1/cmr/m/n/12 Given a smooth $\OML/cmm/m/it/12 T$\OT1/cmr/
m/n/12 -periodic curve $\OML/cmm/m/it/12 H [] [] S[] \OMS/cmsy/m/n/12 ! []\OT1/
cmr/m/n/12 (\OMS/cmsy/m/n/12 H\OT1/cmr/m/n/12 )$,
[7]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 277.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 277.

[8] [9{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1
.enc}]
Overfull \hbox (20.52359pt too wide) in paragraph at lines 336--339
[]\OT1/cmr/m/it/12 Functoriality of $[][]$. \OT1/cmr/m/n/12 On ob-jects: well-d
efined. On mor-phisms: $[][]([]) =
[10] (/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/ueuf.fd) [11]
[12]
Overfull \hbox (12.4461pt too wide) in paragraph at lines 445--447
\OT1/cmr/m/it/12 Here $[]$ de-notes the cat-e-gory of static (time-independent)
 gapped Hamil-to-ni-ans with adiabatic-
[13]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 472.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 472.

[14] [15]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 519.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 519.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 519.


Overfull \hbox (8.35799pt too wide) in paragraph at lines 536--537
[]\OT1/cmr/bx/n/12 Definition 6.1 \OT1/cmr/m/n/12 (Flo-quet--Bloch evo-lu-tion)
\OT1/cmr/bx/n/12 . []\OT1/cmr/m/n/12 The Floquet--Bloch uni-tary is the fam-ily
 $\OML/cmm/m/it/12 U\OT1/cmr/m/n/12 (\OT1/cmr/bx/n/12 k\OML/cmm/m/it/12 ; t\OT1
/cmr/m/n/12 ) :=
[16] [17] [18]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 650.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 650.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 650.


Overfull \hbox (80.41516pt too wide) in paragraph at lines 665--666
\OT1/cmr/m/n/12 The ac-com-pa-ny-ing Haskell li-brary (in the com-pan-ion repos
-i-tory at \OT1/cmtt/m/n/12 src/frequency-modulated-processes/\OT1/cmr/m/n/12 )


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 671.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\varepsilon' on input line 671.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 671.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 671.

[19]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\varepsilon' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\varepsilon' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.

[20] [21] [22]
Underfull \hbox (badness 2762) in paragraph at lines 824--827
[]\OT1/cmr/m/n/12 V. Khe-mani, R. Moess-ner, S. L. Sondhi, \OT1/cmr/m/it/12 A b
rief his-tory of time crys-tals\OT1/cmr/m/n/12 ,
[23] [24] (/private/tmp/fmp-latex-review/frequency-modulated-processes.aux) )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cmextra/cmex8.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist
/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/f
onts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fon
ts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmss8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/euler/eufm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/symbols/msbm7.pfb></usr/local/texlive/2026/texmf-dist/fonts/typ
e1/public/cm-super/sfrm1200.pfb>
Output written on /private/tmp/fmp-latex-review/frequency-modulated-processes.p
df (24 pages, 422500 bytes).
Transcript written on /private/tmp/fmp-latex-review/frequency-modulated-process
es.log.
Latexmk: Getting log file '/private/tmp/fmp-latex-review/frequency-modulated-processes.log'
Latexmk: Examining '/private/tmp/fmp-latex-review/frequency-modulated-processes.fls'
Latexmk: Examining '/private/tmp/fmp-latex-review/frequency-modulated-processes.log'
Latexmk: Log file says output to '/private/tmp/fmp-latex-review/frequency-modulated-processes.pdf'
Latexmk: All targets (/private/tmp/fmp-latex-review/frequency-modulated-processes.pdf) are up-to-date


codex
The document compiles successfully after latexmk’s reruns: no fatal errors and no unresolved citations/references remain. The remaining concrete issues are package/bookmark warnings plus box warnings from specific source regions.
exec
/usr/local/bin/zsh -lc 'rg -n "(Warning|Overfull|Underfull|undefined|multiply defined|Rerun)" /tmp/fmp-latex-review/frequency-modulated-processes.log' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
606:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
654:Package everypage Warning: Functionality similar to this package has recently
660:Package everypage Warning: You appear to be running a version of LaTeX
820:Overfull \hbox (12.32542pt too wide) in paragraph at lines 218--219
829:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
833:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
838:Overfull \hbox (20.52359pt too wide) in paragraph at lines 336--339
850:Overfull \hbox (12.4461pt too wide) in paragraph at lines 445--447
857:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
861:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
866:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
870:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
874:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
878:Overfull \hbox (8.35799pt too wide) in paragraph at lines 536--537
887:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
891:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
895:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
899:Overfull \hbox (80.41516pt too wide) in paragraph at lines 665--666
906:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
910:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
914:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
918:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
923:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
927:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
931:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
935:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
939:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
943:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
947:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
951:Underfull \hbox (badness 2762) in paragraph at lines 824--827

exec
/usr/local/bin/zsh -lc "sed -n '646,668p;816,956p' /tmp/fmp-latex-review/frequency-modulated-processes.log" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
\Gm@layouthoffset=\dimen287
\Gm@layoutvoffset=\dimen288
\Gm@dimlist=\toks41
)
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
\openout5 = `frequency-modulated-processes.toc'.

 [3] [4]
[5] [6]
Overfull \hbox (12.32542pt too wide) in paragraph at lines 218--219
[]\OT1/cmr/bx/n/12 Definition 2.8 \OT1/cmr/m/n/12 (Quasi-en-ergy op-er-a-tor)\O
T1/cmr/bx/n/12 . []\OT1/cmr/m/n/12 Given a smooth $\OML/cmm/m/it/12 T$\OT1/cmr/
m/n/12 -periodic curve $\OML/cmm/m/it/12 H [] [] S[] \OMS/cmsy/m/n/12 ! []\OT1/
cmr/m/n/12 (\OMS/cmsy/m/n/12 H\OT1/cmr/m/n/12 )$,
 []

[7]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 277.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 277.

[8] [9{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1
.enc}]
Overfull \hbox (20.52359pt too wide) in paragraph at lines 336--339
[]\OT1/cmr/m/it/12 Functoriality of $[][]$. \OT1/cmr/m/n/12 On ob-jects: well-d
efined. On mor-phisms: $[][]([]) =
 []

[10]
LaTeX Font Info:    Trying to load font information for U+euf on input line 361
.
 (/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/ueuf.fd
File: ueuf.fd 2013/01/14 v3.01 Euler Fraktur
) [11]
[12]
Overfull \hbox (12.4461pt too wide) in paragraph at lines 445--447
\OT1/cmr/m/it/12 Here $[]$ de-notes the cat-e-gory of static (time-independent)
 gapped Hamil-to-ni-ans with adiabatic-
 []

[13]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 472.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 472.

[14] [15]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 519.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 519.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 519.


Overfull \hbox (8.35799pt too wide) in paragraph at lines 536--537
[]\OT1/cmr/bx/n/12 Definition 6.1 \OT1/cmr/m/n/12 (Flo-quet--Bloch evo-lu-tion)
\OT1/cmr/bx/n/12 . []\OT1/cmr/m/n/12 The Floquet--Bloch uni-tary is the fam-ily
 $\OML/cmm/m/it/12 U\OT1/cmr/m/n/12 (\OT1/cmr/bx/n/12 k\OML/cmm/m/it/12 ; t\OT1
/cmr/m/n/12 ) :=
 []

[16] [17] [18]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 650.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 650.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 650.


Overfull \hbox (80.41516pt too wide) in paragraph at lines 665--666
\OT1/cmr/m/n/12 The ac-com-pa-ny-ing Haskell li-brary (in the com-pan-ion repos
-i-tory at \OT1/cmtt/m/n/12 src/frequency-modulated-processes/\OT1/cmr/m/n/12 )

 []


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 671.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\varepsilon' on input line 671.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 671.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 671.

[19]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\varepsilon' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\varepsilon' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 684.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 684.

[20] [21] [22]
Underfull \hbox (badness 2762) in paragraph at lines 824--827
[]\OT1/cmr/m/n/12 V. Khe-mani, R. Moess-ner, S. L. Sondhi, \OT1/cmr/m/it/12 A b
rief his-tory of time crys-tals\OT1/cmr/m/n/12 ,
 []

[23] [24] (/private/tmp/fmp-latex-review/frequency-modulated-processes.aux)

exec
/usr/local/bin/zsh -lc 'command -v chktex || true' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
/Library/TeX/texbin/chktex

exec
/usr/local/bin/zsh -lc "chktex -q -I0 -f '%f:%l:%c:%d:%k:%n:%m
' papers/latex/frequency-modulated-processes.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 exited 2 in 0ms:
papers/latex/frequency-modulated-processes.tex:99:2004:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.
papers/latex/frequency-modulated-processes.tex:106:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:119:17:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.
papers/latex/frequency-modulated-processes.tex:119:755:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:121:18:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.
papers/latex/frequency-modulated-processes.tex:129:419:1:Warning:9:`)' expected, found `]'.
papers/latex/frequency-modulated-processes.tex:131:74:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.
papers/latex/frequency-modulated-processes.tex:142:284:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:142:842:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.
papers/latex/frequency-modulated-processes.tex:145:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:150:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:155:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:160:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:168:390:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:175:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:180:168:1:Warning:3:You should enclose the previous parenthesis with `{}'.
papers/latex/frequency-modulated-processes.tex:188:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:195:70:1:Warning:3:You should enclose the previous parenthesis with `{}'.
papers/latex/frequency-modulated-processes.tex:208:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:213:101:2:Warning:3:You should enclose the previous parenthesis with `{}'.
papers/latex/frequency-modulated-processes.tex:217:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:226:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:251:53:1:Warning:2:Non-breaking space (`~') should have been used.
papers/latex/frequency-modulated-processes.tex:261:16:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:261:37:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:261:48:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:261:62:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:261:83:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:261:97:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:262:31:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:262:53:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:268:54:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.
papers/latex/frequency-modulated-processes.tex:275:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:280:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:293:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:312:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:331:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:362:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:367:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:378:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:383:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:400:24:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:401:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:406:40:1:Warning:3:You should enclose the previous parenthesis with `{}'.
papers/latex/frequency-modulated-processes.tex:408:119:1:Warning:3:You should enclose the previous parenthesis with `{}'.
papers/latex/frequency-modulated-processes.tex:412:389:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:412:399:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:418:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:423:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:424:99:2:Warning:3:You should enclose the previous parenthesis with `{}'.
papers/latex/frequency-modulated-processes.tex:438:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:442:34:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:442:51:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:442:63:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:442:75:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:442:95:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:442:114:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:443:25:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:443:41:1:Warning:18:Use either `` or '' as an alternative to `"'.
papers/latex/frequency-modulated-processes.tex:450:146:1:Warning:3:You should enclose the previous parenthesis with `{}'.
papers/latex/frequency-modulated-processes.tex:453:78:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.
papers/latex/frequency-modulated-processes.tex:456:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:461:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:464:98:1:Warning:3:You should enclose the previous parenthesis with `{}'.
papers/latex/frequency-modulated-processes.tex:477:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:483:33:1:Warning:3:You should enclose the previous parenthesis with `{}'.
papers/latex/frequency-modulated-processes.tex:494:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:503:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:525:9:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:525:16:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:528:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:530:20:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:532:145:2:Warning:3:You should enclose the previous parenthesis with `{}'.
papers/latex/frequency-modulated-processes.tex:534:27:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:535:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:536:12:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:542:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:545:101:1:Warning:3:You should enclose the previous parenthesis with `{}'.
papers/latex/frequency-modulated-processes.tex:550:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:558:26:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:560:35:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:561:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:562:26:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:564:44:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:568:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:569:72:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:572:39:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:573:211:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:573:253:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:578:17:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:583:101:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:585:20:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:586:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:600:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:604:23:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:604:33:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:604:37:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:605:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:625:291:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:625:298:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:632:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:652:290:1:Warning:3:You should enclose the previous parenthesis with `{}'.
papers/latex/frequency-modulated-processes.tex:655:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:667:35:1:Warning:3:You should enclose the previous parenthesis with `{}'.
papers/latex/frequency-modulated-processes.tex:675:7:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:675:19:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:689:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:694:20:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:694:270:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:694:443:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:702:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:705:159:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:706:59:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:709:84:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.
papers/latex/frequency-modulated-processes.tex:714:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:716:87:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.
papers/latex/frequency-modulated-processes.tex:721:242:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:725:124:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.
papers/latex/frequency-modulated-processes.tex:725:364:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:728:1:1:Warning:24:Delete this space to maintain correct pagereferences.
papers/latex/frequency-modulated-processes.tex:735:116:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:735:182:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:736:182:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.
papers/latex/frequency-modulated-processes.tex:741:299:2:Warning:8:Wrong length of dash may have been used.
papers/latex/frequency-modulated-processes.tex:884:1:0:Warning:17:Number of `(' doesn't match the number of `)'!
papers/latex/frequency-modulated-processes.tex:884:1:0:Warning:17:Number of `[' doesn't match the number of `]'!

codex
Checked with `latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error` into `/tmp/fmp-latex-review`.

No fatal compilation errors, missing packages, unresolved citations, or broken `\ref`/`\cref` targets after reruns.

Issues found:

- [frequency-modulated-processes.tex:22](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:22): `everypage` is legacy and warns on current LaTeX.  
  Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` with kernel `\AddToHook{shipout/background}{...}`.

- [frequency-modulated-processes.tex:277](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:277), [472](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:472), [519](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:519), [650](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:650), [671](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:671), [684](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:684): math in section titles causes `hyperref` PDF bookmark warnings.  
  Fix: wrap math with `\texorpdfstring`, e.g. `\texorpdfstring{$\varepsilon=\pi$}{epsilon=pi}` and `\texorpdfstring{$\Z_2$}{Z2}`.

- [frequency-modulated-processes.tex:218](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:218): overfull hbox, 12.3pt, from long theorem-heading/opening sentence.  
  Fix: force the definition body onto a new line or shorten/split the opening sentence.

- [frequency-modulated-processes.tex:336](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:336): overfull hbox, 20.5pt, from dense inline equations in the proof.  
  Fix: move the identity/composition equations into display math.

- [frequency-modulated-processes.tex:445](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:445): overfull hbox, 12.4pt, after the diagram/explanatory sentence.  
  Fix: split the long “Here ...” sentence or put the `\mathrm{Forget}\colon ...` signature in display math.

- [frequency-modulated-processes.tex:536](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:536): overfull hbox, 8.4pt, from long inline definition of `U(\mathbf{k},t)`.  
  Fix: make the formula a displayed equation.

- [frequency-modulated-processes.tex:665](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:665): severe overfull hbox, 80.4pt, caused by unbreakable `\texttt{src/frequency-modulated-processes/}`.  
  Fix: use `\path{src/frequency-modulated-processes/}` and add `\usepackage{xurl}`, or insert manual `\allowbreak`s.

- [frequency-modulated-processes.tex:824](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:824): underfull hbox in bibliography item.  
  Fix: add `\raggedright` inside `thebibliography`, or add a small global `\emergencystretch=2em` before the bibliography.
2026-04-30T15:59:11.916158Z ERROR codex_core::session: failed to record rollout items: thread 019ddf1b-c489-74c2-b2d8-9ed9c31594c4 not found
tokens used
75,749
Checked with `latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error` into `/tmp/fmp-latex-review`.

No fatal compilation errors, missing packages, unresolved citations, or broken `\ref`/`\cref` targets after reruns.

Issues found:

- [frequency-modulated-processes.tex:22](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:22): `everypage` is legacy and warns on current LaTeX.  
  Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` with kernel `\AddToHook{shipout/background}{...}`.

- [frequency-modulated-processes.tex:277](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:277), [472](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:472), [519](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:519), [650](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:650), [671](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:671), [684](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:684): math in section titles causes `hyperref` PDF bookmark warnings.  
  Fix: wrap math with `\texorpdfstring`, e.g. `\texorpdfstring{$\varepsilon=\pi$}{epsilon=pi}` and `\texorpdfstring{$\Z_2$}{Z2}`.

- [frequency-modulated-processes.tex:218](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:218): overfull hbox, 12.3pt, from long theorem-heading/opening sentence.  
  Fix: force the definition body onto a new line or shorten/split the opening sentence.

- [frequency-modulated-processes.tex:336](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:336): overfull hbox, 20.5pt, from dense inline equations in the proof.  
  Fix: move the identity/composition equations into display math.

- [frequency-modulated-processes.tex:445](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:445): overfull hbox, 12.4pt, after the diagram/explanatory sentence.  
  Fix: split the long “Here ...” sentence or put the `\mathrm{Forget}\colon ...` signature in display math.

- [frequency-modulated-processes.tex:536](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:536): overfull hbox, 8.4pt, from long inline definition of `U(\mathbf{k},t)`.  
  Fix: make the formula a displayed equation.

- [frequency-modulated-processes.tex:665](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:665): severe overfull hbox, 80.4pt, caused by unbreakable `\texttt{src/frequency-modulated-processes/}`.  
  Fix: use `\path{src/frequency-modulated-processes/}` and add `\usepackage{xurl}`, or insert manual `\allowbreak`s.

- [frequency-modulated-processes.tex:824](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:824): underfull hbox in bibliography item.  
  Fix: add `\raggedright` inside `thebibliography`, or add a small global `\emergencystretch=2em` before the bibliography.
