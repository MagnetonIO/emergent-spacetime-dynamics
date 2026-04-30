---
reviewer: codex (OpenAI)
type: formatting
paper: synthesis
date: 2026-04-30T17:38:33Z
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
session id: 019ddf78-955f-7d63-b4e8-8be84215dc0d
--------
user
Review /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling. List all issues.
codex
I’ll inspect the TeX source and cross-check its package usage, citations/labels/refs, and likely compile blockers from the file itself. Since the sandbox is read-only, I’ll avoid running a full LaTeX build that would write aux files.
exec
/usr/local/bin/zsh -lc 'wc -l papers/synthesis/paper.tex' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
    1672 papers/synthesis/paper.tex

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(documentclass|usepackage|input|include|bibliography|bibliographystyle|addbibresource|cite|ref|label|eqref|autoref|cref|Cref|begin\\{|end\\{|includegraphics|TODO|todo|undefined|Package|newcommand|renewcommand|DeclareMathOperator|operatorname|mathbb|mathcal|bm|boldsymbol|textcolor|SI|si|url|href)\" papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(documentclass|usepackage|input|include|bibliography|bibliographystyle|addbibresource|cite|ref|label|eqref|autoref|cref|Cref|begin\{|end\{|includegraphics|TODO|todo|undefined|Package|newcommand|renewcommand|DeclareMathOperator|operatorname|mathbb|mathcal|bm|boldsymbol|textcolor|SI|si|url|href))
                                                                                                                                                                                                                                                                                                              ^
error: unopened group

exec
/usr/local/bin/zsh -lc 'rg --files papers/synthesis' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
papers/synthesis/paper.tex
papers/synthesis/paper.pdf

codex
The synthesis folder only contains `paper.tex` and an existing `paper.pdf`, so there are no separate included TeX files to chase. I’m reading the source in chunks now and will use lightweight parsing to catch undefined labels/cites and package-command mismatches.
exec
/usr/local/bin/zsh -lc "nl -ba papers/synthesis/paper.tex | sed -n '1,220p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% Core math
     4	\usepackage{amsmath, amssymb, amsthm}
     5	\usepackage{mathtools}
     6	
     7	% Diagrams
     8	\usepackage{tikz-cd}
     9	\usepackage{tikz}
    10	\usetikzlibrary{arrows, decorations.pathmorphing, positioning, calc, shapes.geometric, fit, backgrounds, chains}
    11	
    12	% References and links
    13	\usepackage{hyperref}
    14	\usepackage{cleveref}
    15	
    16	% Graphics
    17	\usepackage{graphicx}
    18	
    19	% Page layout
    20	\usepackage[margin=1in]{geometry}
    21	
    22	% Sidebar
    23	\usepackage{everypage}
    24	\usepackage{xcolor}
    25	\usepackage{booktabs}
    26	\usepackage{enumitem}
    27	
    28	\hypersetup{
    29	  colorlinks=true,
    30	  linkcolor=blue!55!black,
    31	  citecolor=blue!55!black,
    32	  urlcolor=blue!55!black
    33	}
    34	
    35	% Theorem environments
    36	\newtheorem{theorem}{Theorem}[section]
    37	\newtheorem{proposition}[theorem]{Proposition}
    38	\newtheorem{lemma}[theorem]{Lemma}
    39	\newtheorem{corollary}[theorem]{Corollary}
    40	\newtheorem{conjecture}[theorem]{Conjecture}
    41	\theoremstyle{definition}
    42	\newtheorem{definition}[theorem]{Definition}
    43	\newtheorem{example}[theorem]{Example}
    44	\theoremstyle{remark}
    45	\newtheorem{remark}[theorem]{Remark}
    46	\newtheorem{hook}[theorem]{Composition Hook}
    47	\newtheorem{theme}[theorem]{Cross-cutting Theme}
    48	\newtheorem{emerg}[theorem]{Emergent Property}
    49	
    50	% Macros
    51	\newcommand{\C}{\mathcal{C}}
    52	\newcommand{\D}{\mathcal{D}}
    53	\newcommand{\E}{\mathcal{E}}
    54	\newcommand{\Phys}{\mathbf{Phys}}
    55	\newcommand{\Info}{\mathbf{Info}}
    56	\newcommand{\Hilb}{\mathbf{Hilb}}
    57	\newcommand{\FHilb}{\mathbf{FHilb}}
    58	\newcommand{\Vect}{\mathbf{Vect}}
    59	\newcommand{\Set}{\mathbf{Set}}
    60	\newcommand{\Cob}{\mathbf{Cob}}
    61	\newcommand{\Bord}{\mathbf{Bord}}
    62	\newcommand{\Cat}{\mathbf{Cat}}
    63	\newcommand{\Ham}{\mathbf{Ham}}
    64	\newcommand{\Phase}{\mathbf{Phase}}
    65	\newcommand{\Floq}{\mathbf{Floq}}
    66	\newcommand{\InfoGeom}{\mathbf{InfoGeom}}
    67	\newcommand{\Theory}{\mathbf{Theory}}
    68	\newcommand{\Rep}{\mathbf{Rep}}
    69	\newcommand{\QChan}{\mathbf{QChan}}
    70	\newcommand{\op}{\mathrm{op}}
    71	\newcommand{\id}{\mathrm{id}}
    72	\newcommand{\Hom}{\mathrm{Hom}}
    73	\newcommand{\End}{\mathrm{End}}
    74	\newcommand{\Tr}{\mathrm{Tr}}
    75	\newcommand{\Ob}{\mathrm{Ob}}
    76	\newcommand{\AdS}{\mathrm{AdS}}
    77	\newcommand{\CFT}{\mathrm{CFT}}
    78	\newcommand{\Area}{\operatorname{Area}}
    79	\newcommand{\BG}{\mathrm{B}G}
    80	\newcommand{\Z}{\mathbb{Z}}
    81	\newcommand{\R}{\mathbb{R}}
    82	\newcommand{\enc}{\mathrm{enc}}
    83	\newcommand{\Lift}{\mathrm{Lift}}
    84	\newcommand{\HaPPY}{\textsc{HaPPY}}
    85	
    86	% GrokRxiv sidebar
    87	\definecolor{grokgray}{RGB}{110,110,110}
    88	\AddEverypageHook{%
    89	  \ifnum\value{page}=1
    90	    \begin{tikzpicture}[remember picture, overlay]
    91	      \node[
    92	        rotate=90,
    93	        anchor=south,
    94	        font=\Large\sffamily\bfseries\color{grokgray},
    95	        inner sep=0pt
    96	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    97	      {GrokRxiv:2026.04.synthesis\quad
    98	       [\,math-ph\,$\cap$\,hep-th\,]\quad
    99	       30 Apr 2026};
   100	    \end{tikzpicture}
   101	  \fi
   102	}
   103	
   104	\title{Synthesis --- Modular Composition of\\
   105	Information, Phase, Modulation, and Geometry}
   106	
   107	\author{MagnetonIO Research \\
   108	\textit{Emergent Spacetime Dynamics Series, Synthesis Paper}}
   109	
   110	\date{30 April 2026}
   111	
   112	\begin{document}
   113	\maketitle
   114	
   115	\begin{abstract}
   116	We present the synthesis paper of the four-paper modular research series
   117	\emph{Emergent Spacetime Dynamics}. Rather than proposing a unified theory, we
   118	articulate a precise \emph{modular} thesis: each of Laws I--IV (Mathematical
   119	Formalisms; Phase-bound Matter; Frequency-modulated Processes;
   120	Information-bearing Structures) is a self-standing categorical layer, and the
   121	emergent properties at every level arise from the \emph{composition} of prior
   122	laws via explicit functorial liftings, not from any single law in isolation.
   123	The contributions of this synthesis are sixfold. First, we provide a hook
   124	ledger tabulating, for each Composition Hook $\mathsf{H1}$--$\mathsf{H8}$
   125	declared in Part~I, the precise law in which it is consumed and the typed
   126	output it produces. Second, we exhibit the compositional functor chain $\Phys
   127	\to \Info_{1} \to \Info_{2} \to \Info_{3} \to \Info_{4}$ as a $1$-cell in a
   128	$2$-category $\Theory$ of physical theories, identifying which hook each lift
   129	consumes and producing in each layer a typed output that the next layer plugs
   130	into. Third, we identify six cross-cutting themes that thread all four papers
   131	--- entanglement entropy as a quantitative through-line, symmetry-protected
   132	structure, fixed-point reasoning, functorial pullback, dagger preservation,
   133	and obstruction $2$-cells --- and articulate each as a precise statement that
   134	survives the hierarchical composition. Fourth, we offer a numbered catalogue
   135	of twelve \emph{emergent properties}, each annotated with the lowest
   136	law-level at which it appears together with a proof sketch that the property
   137	is not derivable from any subset of strictly fewer laws within the proposed
   138	schema; this generalises Proposition 8.2 of Part~IV. Fifth, we enumerate
   139	eleven open compositional problems, several of which constitute testable
   140	predictions or formalisation gaps. Sixth and finally, we close with a
   141	programmatic outlook on extensions of the framework to de Sitter holography,
   142	fault-tolerant quantum simulation, and quantum gravity. We emphasise
   143	throughout that the framework is \emph{modular, not unified}: replacing any
   144	single law with a different filling of its typed hook leaves the remaining
   145	composition intact.
   146	\end{abstract}
   147	
   148	\tableofcontents
   149	
   150	\section{Introduction: the Modular Thesis}
   151	\label{sec:intro}
   152	
   153	\subsection{Modular composition versus unification}
   154	
   155	Theoretical physics is replete with attempts at unification --- single
   156	overarching frameworks intended to subsume previously disparate phenomena under
   157	a common mathematical roof. The four-paper research series of which the present
   158	work is the synthesis was constructed with a deliberately different ambition.
   159	We do \emph{not} propose a unified theory of emergent spacetime. We propose a
   160	\emph{modular} framework: a sequence of categorical layers, each of which is
   161	self-standing and of independent mathematical interest, equipped with explicit
   162	\emph{composition hooks} along which the layers compose by functorial liftings.
   163	
   164	The distinction is not cosmetic. A unified theory aspires to derive all of its
   165	content from one set of axioms; a modular framework asks instead, for each
   166	property of interest, \emph{at what level of compositional layering} that
   167	property emerges, and \emph{from which composition step} it arises. The
   168	distinction makes a substantive difference to mathematical practice. In a
   169	unified framework, every result must in principle be derivable from the
   170	foundational axioms. In a modular framework, certain results are
   171	\emph{compositional invariants}: they make sense only at a specific layer, and
   172	are non-derivable from any subset of strictly fewer layers.
   173	
   174	\subsection{The four constituent papers}
   175	
   176	The series consists of four papers, each refereed in its own right, plus the
   177	present synthesis:
   178	
   179	\begin{itemize}[leftmargin=2em]
   180	  \item \textbf{Part I --- Mathematical Formalisms}~\cite{partI}: establishes
   181	    the categorical grammar (symmetric monoidal $(\infty, n)$-categories,
   182	    sheaves, topoi, operads, dagger structure, type-theoretic encoding) and
   183	    declares eight Composition Hooks $\mathsf{H1}$--$\mathsf{H8}$ together with
   184	    a matter--information functor $M : \Phys \to \Info$.
   185	  \item \textbf{Part II --- Phase-bound Matter}~\cite{partII}: classifies
   186	    equilibrium thermodynamic and topological phases as functorial equivalence
   187	    classes $\pi_0([BG, \Ham])$, identifies modular tensor categories with
   188	    topologically ordered phases (Drinfeld center construction), classifies SPT
   189	    phases by $H^{d+1}(G, U(1))$, and establishes topological entanglement
   190	    entropy $\gamma = \log \mathcal{D}$ as a phase invariant. Consumes hooks
   191	    $\mathsf{H1}, \mathsf{H2}, \mathsf{H4}, \mathsf{H8}$ from Part~I and exposes
   192	    five further hooks for Part~III.
   193	  \item \textbf{Part III --- Frequency-modulated Processes}~\cite{partIII}:
   194	    lifts the static framework temporally. Floquet evolution becomes a strong
   195	    monoidal functor $F : B\Z_T \to \QChan$; periodic Hamiltonians become
   196	    endomorphisms in a fibred $2$-category; the Magnus expansion is recast as
   197	    a directed colimit producing an asymptotic effective-Hamiltonian functor;
   198	    discrete time crystals arise as obstruction $2$-cells; the Floquet winding
   199	    number classifies anomalous Floquet topological insulators. Consumes
   200	    hooks $\mathsf{H3}, \mathsf{H6}$ and exposes the Sambe-space functor and
   201	    DTC obstruction data for Part~IV.
   202	  \item \textbf{Part IV --- Information-bearing Structures}~\cite{partIV}:
   203	    recasts quantum error correction as a $\dagger$-categorical sub-object
   204	    embedding, exhibits the HaPPY holographic tensor network as the
   205	    realisation of an isometric bulk-to-boundary functor, derives the
   206	    Ryu--Takayanagi area law from operator-algebra QEC, and establishes the
   207	    Fisher--Bures metric as a Riemannian structure on parametric state
   208	    families. Consumes hooks $\mathsf{H5}, \mathsf{H7}$ and includes
   209	    Proposition 8.2 of Part~IV (\emph{non-derivability from any single prior
   210	    law}), the modular thesis specialised to emergent geometry.
   211	\end{itemize}
   212	
   213	\subsection{Contributions of the synthesis}
   214	
   215	The present paper does not introduce new mathematical objects; instead it
   216	articulates the compositional architecture of the series and enumerates its
   217	emergent content. We make six contributions.
   218	
   219	\begin{enumerate}
   220	  \item \textbf{Hook ledger.} We tabulate, for each hook $\mathsf{H}_i$

exec
/usr/local/bin/zsh -lc "nl -ba papers/synthesis/paper.tex | sed -n '221,520p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
   221	    declared in Part~I, the precise law in which it is consumed and the
   222	    typed output produced (\Cref{sec:hook-ledger}).
   223	  \item \textbf{Compositional 2-functor diagram.} We exhibit the chain
   224	    $\Phys \to \Info_1 \to \Info_2 \to \Info_3 \to \Info_4$ as a 2-functor in
   225	    a $2$-category $\Theory$ of physical theories
   226	    (\Cref{sec:functor-chain}). The diagram is presented in TikZ.
   227	  \item \textbf{Cross-cutting themes.} We isolate six themes appearing across
   228	    multiple papers: entanglement entropy as quantitative through-line,
   229	    symmetry-protected structure, fixed-point reasoning, functorial pullback,
   230	    dagger preservation, and obstruction $2$-cells (\Cref{sec:themes}).
   231	  \item \textbf{Emergent property catalogue.} We catalogue twelve
   232	    emergent properties, each labelled with the law-level at which it appears
   233	    and a proof sketch of its non-derivability from a strict subset of laws
   234	    (\Cref{sec:catalogue}).
   235	  \item \textbf{Open compositional problems.} We enumerate eleven open
   236	    problems, each with a clear formalisation gap or testable consequence
   237	    (\Cref{sec:open}).
   238	  \item \textbf{Outlook.} We close with a programmatic statement of how the
   239	    framework might be extended to de Sitter holography, quantum gravity, and
   240	    fault-tolerant quantum simulation (\Cref{sec:conclusion}).
   241	\end{enumerate}
   242	
   243	\subsection{What this synthesis does not claim}
   244	
   245	We are explicit about the scope. This paper does \emph{not} claim:
   246	\begin{enumerate}[label=(\roman*), leftmargin=2.4em]
   247	  \item that the four-paper series solves the problem of quantum gravity;
   248	  \item that the modular composition is unique --- alternative fillings of any
   249	    given hook produce different composite frameworks;
   250	  \item that the highest-level emergent claims (Fisher--Bures = AdS metric;
   251	    Floquet holography) are theorems --- in the highest layers they are
   252	    conjectures whose status is discussed in the relevant paper;
   253	  \item that the framework subsumes algebraic QFT, the Haag--Kastler
   254	    formalism, factorisation algebras, or any other categorical formulation of
   255	    field theory; we view those as parallel formalisms compatible at the
   256	    Law~I level.
   257	\end{enumerate}
   258	We do claim that the framework is internally consistent, that each
   259	compositional step is a precise functorial operation (with degrees of rigour
   260	varying by layer, increasing with conjectural content at higher layers), and
   261	that the modular reading of emergent geometry is structurally illuminating.
   262	
   263	\subsection{Plan of the paper}
   264	
   265	\Cref{sec:recap} provides one-page recapitulations of the categorical
   266	primitives contributed by each of Laws I--IV. \Cref{sec:hook-ledger} tabulates
   267	the eight Composition Hooks and their consumption sites.
   268	\Cref{sec:functor-chain} presents the compositional functor chain as a
   269	2-functor diagram in $\Theory$ and articulates the typed semantics of each
   270	lift. \Cref{sec:themes} isolates the six cross-cutting themes.
   271	\Cref{sec:catalogue} catalogues twelve emergent properties with
   272	non-derivability sketches. \Cref{sec:open} lists eleven open compositional
   273	problems. \Cref{sec:conclusion} concludes.
   274	
   275	\section{Recap of Laws I--IV}
   276	\label{sec:recap}
   277	
   278	We summarise each constituent paper, focusing on the categorical primitives
   279	each contributes. The summaries are deliberately brief; the reader is
   280	referred to the constituent papers for derivations and worked examples.
   281	
   282	\subsection{Part I: categorical primitives and the matter--information
   283	  functor}
   284	\label{sec:recap-I}
   285	
   286	Part~I~\cite{partI} fixes the language of the series. Its central primitives
   287	are:
   288	
   289	\paragraph{Symmetric monoidal dagger categories.} A category $\C$ is
   290	symmetric monoidal if it is equipped with a tensor product
   291	$\otimes : \C \times \C \to \C$, a unit object $I$, and natural isomorphisms
   292	(associator, unitors, symmetry) satisfying Mac Lane's coherence axioms. It is
   293	\emph{dagger} if equipped with an involutive contravariant identity-on-objects
   294	functor $\dagger : \C^\op \to \C$. It is \emph{compact closed} if every object
   295	$A$ has a dual $A^*$ together with unit $\eta_A : I \to A^* \otimes A$ and
   296	counit $\varepsilon_A : A \otimes A^* \to I$ satisfying the snake equations.
   297	
   298	\paragraph{The matter--information functor.} Part~I posits two specific
   299	$\dagger$-symmetric monoidal compact closed categories, $\Phys$ (modelling
   300	physical processes) and $\Info$ (modelling informational descriptions), and
   301	a \emph{matter--information functor} $M : \Phys \to \Info$ that is strong
   302	monoidal and dagger-preserving. Both source and target are objects of the
   303	$2$-category $\Theory$ defined in \Cref{def:theory}. The functor $M$ is
   304	determined on a generating set under the cobordism hypothesis, and
   305	preservation of duals under $M$ implies a Born-rule-type formula on
   306	traceable processes (Theorem 3.5 of Part~I).
   307	
   308	\paragraph{Sheaves, topoi, and operads.} Part~I formalises locality of
   309	observables as a sheaf condition on a Grothendieck site $(\C, J)$, internal
   310	logic via the Mitchell--B\'enabou language of a topos, and algebraic structure
   311	via operads acting on objects of $\Info$. These constructions supply hooks
   312	$\mathsf{H4}$ (sheaf), $\mathsf{H5}$ (operadic), and $\mathsf{H8}$
   313	(type-theoretic).
   314	
   315	\paragraph{Composition hooks $\mathsf{H1}$--$\mathsf{H8}$.} Part~I declares
   316	eight hooks~\cite[Section 2.3]{partI}:
   317	\begin{itemize}[leftmargin=2em]
   318	\item $\mathsf{H1}$ \emph{(Symmetry-action hook)}: $\rho : B\mathcal{G} \to
   319	  \mathrm{Aut}(\Phys)$.
   320	\item $\mathsf{H2}$ \emph{(Hamiltonian hook)}: $\Ham \hookrightarrow \Phys$
   321	  closed under tensor.
   322	\item $\mathsf{H3}$ \emph{(Floquet hook)}: $B\Z \to \mathrm{Aut}(\Phys)$.
   323	\item $\mathsf{H4}$ \emph{(Sheaf hook)}: a Grothendieck site $(\C, J)$.
   324	\item $\mathsf{H5}$ \emph{(Operadic hook)}: an operad $O$ acting on an object
   325	  of $\Info$.
   326	\item $\mathsf{H6}$ \emph{(Dagger hook)}: $\dagger$ on $\Phys$ preserved by
   327	  $M$.
   328	\item $\mathsf{H7}$ \emph{(Compact-closure hook)}: duals in $\Phys$ and
   329	  $\Info$.
   330	\item $\mathsf{H8}$ \emph{(Type-theoretic hook)}: internal language
   331	  $\mathcal{L}(\Info)$ from a topos structure.
   332	\end{itemize}
   333	
   334	These hooks are the contract between Part~I and the rest of the series.
   335	
   336	\subsection{Part II: phases as functorial equivalence classes}
   337	\label{sec:recap-II}
   338	
   339	Part~II~\cite{partII} consumes hooks $\mathsf{H1}$, $\mathsf{H2}$,
   340	$\mathsf{H4}$, $\mathsf{H8}$ from Part~I and produces a functorial
   341	classification of phases of matter.
   342	
   343	\paragraph{Phases.} A phase of matter on a fixed lattice is a connected
   344	component $[H] \in \pi_0(\Ham)$ of the groupoid of gapped local Hamiltonians
   345	under gap-preserving adiabatic equivalence. For $G$-symmetric Hamiltonians,
   346	the relevant category is the functor category $[\BG, \Ham_0]^{\mathrm{eq}}$,
   347	and a $G$-symmetric phase is a connected component $\pi_0([\BG,
   348	\Ham_0]^{\mathrm{eq}})$.
   349	
   350	\paragraph{Landau as functorial semantics.} A Landau phase with order
   351	parameter in representation $V$ of $G$ is a functor $\mathcal{L}_H : \BG \to
   352	\Vect$ assigning to the unique object the order parameter space and to each
   353	group element a representation matrix; the Ginzburg--Landau free energy is
   354	the action of this functor on generating morphisms.
   355	
   356	\paragraph{Topological order and MTCs.} A $(2{+}1)$D topologically ordered
   357	phase is classified by a unitary modular tensor category (UMTC) $\mathcal{C}$.
   358	The Levin--Wen string-net construction realises every UFC $\mathcal{C}$ as a
   359	Hamiltonian with anyon content $\mathcal{Z}(\mathcal{C})$ (the Drinfeld
   360	center). Topologically ordered phases are connected components of UMTCs (modulo
   361	appropriate equivalences); the assignment is the functor
   362	$\mathcal{Z} : \mathbf{FusionCat} \to \mathbf{BraidedMonCat}$.
   363	
   364	\paragraph{SPT phases by group cohomology.} Bosonic SPT phases in $d$ spatial
   365	dimensions with on-site symmetry $G$ are classified by elements of $H^{d+1}(G,
   366	U(1))$. The classification is a functor $\mathrm{SPT}^d : \mathbf{Grp} \to
   367	\mathbf{Ab}$ refining $\pi_0(\Ham_G)^{\mathrm{SRE}} \hookrightarrow H^{d+1}(G,
   368	U(1))$.
   369	
   370	\paragraph{Topological entanglement entropy.} For a gapped topological ground
   371	state, the entanglement entropy of a disk-shaped region $A$ obeys $S(A) =
   372	\alpha |\partial A| - \gamma + O(1/|A|)$, with $\gamma = \log \mathcal{D}$ the
   373	total quantum dimension; $\gamma$ is invariant on each phase under
   374	finite-depth local circuits (Theorem 6.5 of Part~II).
   375	
   376	\paragraph{Hooks for Part~III.} Part~II declares five further hooks consumed
   377	by Part~III: extension of $\Ham$ to $\Ham_{T\text{-per}}$; enlargement of
   378	symmetry by $\Z_T$; MTC enrichment by $\Rep(\Z_T)$; Floquet TEE; and the
   379	composition functor $\mathrm{Lift}_{\mathrm{II}\to\mathrm{III}}$.
   380	
   381	\subsection{Part III: Floquet phases as natural transformations}
   382	\label{sec:recap-III}
   383	
   384	Part~III~\cite{partIII} consumes Part~I's hooks $\mathsf{H3}, \mathsf{H6}$
   385	plus Part~II's five hooks, and produces a temporal lifting of the equilibrium
   386	phase classification.
   387	
   388	\paragraph{The Floquet functor.} A $T$-periodic Hamiltonian $H(t+T) = H(t)$
   389	defines a strong monoidal functor $F : B\Z_T \to \QChan$ from the discrete
   390	circle category to the dagger-monoidal category of quantum channels;
   391	$F(\overline{1}_{\Z_T}) = U(T) = \mathcal{T}\exp(-i \int_0^T H(t) \, dt)$
   392	generates the stroboscopic dynamics.
   393	
   394	\paragraph{2-categorical structure.} A Floquet system is a $1$-cell in a
   395	fibred $2$-category $\mathfrak{H}_T$ over $B\Z_T$; micromotion data are
   396	$2$-cells; the Sambe-space construction $\mathcal{S} : \QChan \to \Hilb_\infty$
   397	embeds Floquet systems into a separable Hilbert space carrying the extended
   398	quasi-energy ladder.
   399	
   400	\paragraph{Magnus expansion as colimit.} The Floquet--Magnus series
   401	$H_F = H^{(0)} + H^{(1)} + \cdots$ is recast as the directed colimit of an
   402	asymptotic effective-Hamiltonian functor $H_{\text{eff}}^{(\leq N)}$. The
   403	prethermal regime $t \leq \tau_* \sim \exp(c\,\omega/J)$ is exactly where the
   404	truncated functor factors through the Part~II equilibrium classifier.
   405	
   406	\paragraph{Time crystals as obstruction $2$-cells.} A discrete time crystal
   407	(DTC) is the obstruction $2$-cell to the existence of an isomorphism between
   408	the iterated $T$-periodic functor and a single $nT$-periodic functor
   409	(Theorem 4.3 of Part~III). Period-doubling is captured by a non-invertible
   410	$\eta : \mathrm{Fl}(F) \Rightarrow \mathrm{Fl}^{\Z_2}(F)$.
   411	
   412	\paragraph{Floquet topological invariants.} The Floquet winding number
   413	$\nu = \frac{1}{24\pi^2} \int_{\mathrm{BZ} \times S^1} \Tr[(U^\dagger \, dU)^3]
   414	\in \Z$ classifies anomalous Floquet topological insulators with no
   415	equilibrium analog (Roy--Harper periodic table).
   416	
   417	\paragraph{Hooks for Part~IV.} Part~III exposes four hooks: the Sambe-space
   418	functor; the effective-Hamiltonian functor; the Floquet topological
   419	invariants; and the DTC obstruction $2$-cells.
   420	
   421	\subsection{Part IV: emergent geometry from compositional information}
   422	\label{sec:recap-IV}
   423	
   424	Part~IV~\cite{partIV} consumes hooks $\mathsf{H5}$, $\mathsf{H7}$ from Part~I
   425	plus the four Part~III hooks. Its central thesis is that the composition of
   426	Laws I--III is sufficient to produce emergent Riemannian geometry on state
   427	space.
   428	
   429	\paragraph{Quantum error correction as a $\dagger$-functor.} A QECC is an
   430	isometric sub-object embedding $\enc : \Hilb_L \hookrightarrow \Hilb_P$ in
   431	$\dagger$-Hilb. The Knill--Laflamme conditions become the assertion that a
   432	naturality square commutes (\cite[Section 3]{partIV}).
   433	
   434	\paragraph{HaPPY holographic codes.} On a $\{5,4\}$ pentagonal tiling of
   435	$\mathbb{H}^2$, perfect tensors with $[[6,1,4]]$ structure assemble into an
   436	isometry $V : \Hilb_{\mathrm{bulk}} \to \Hilb_{\mathrm{boundary}}$. The
   437	discrete Ryu--Takayanagi formula
   438	\[
   439	S(A) = |\gamma_A| \log d + S_{\mathrm{bulk}}^\psi(W(A))
   440	\]
   441	is exact in this discrete model.
   442	
   443	\paragraph{Fisher--Bures metric.} For a parametric family $\{\rho_\theta\}$ of
   444	density matrices, the quantum Fisher metric
   445	$g_{ij}^Q(\theta) = \tfrac{1}{2} \Tr(\rho_\theta \{L_i, L_j\})$ is a
   446	Riemannian metric. By Chentsov's theorem, the classical Fisher metric is the
   447	unique (up to scale) monotone metric on the simplex of probabilities.
   448	
   449	\paragraph{Non-derivability (Proposition 8.2 of Part~IV).} The Fisher--Bures
   450	metric and the Ryu--Takayanagi area formula are not derivable, within the
   451	proposed schema, from Law~I alone, nor from Law~II alone, nor from Law~III
   452	alone. They emerge in the image of the composite lifting $L = L_{III\to IV}
   453	\circ L_{II\to III} \circ L_{I \to II}$. Worked counterexamples are exhibited
   454	in Part~IV.
   455	
   456	\paragraph{Outputs.} Part~IV produces an emergent metric functor
   457	$g : \Theta \to \mathbf{Riem}$ assigning to each parametric family a
   458	Riemannian metric on its parameter manifold, together with the holographic
   459	functor $H : \mathbf{BoundaryRegion} \to \mathbf{BulkRegion}$ encoding
   460	entanglement-wedge reconstruction.
   461	
   462	\section{Hook Ledger}
   463	\label{sec:hook-ledger}
   464	
   465	We tabulate, for each Composition Hook declared in Part~I, the lift in which
   466	it is consumed and the typed output produced. The ledger is the central
   467	reference for the compositional structure of the series. We use the
   468	convention that ``consumed at lift $L_{X\to Y}$'' means the hook is required
   469	in the construction of the functor $L_{X\to Y}$ as part of producing $Y$ as
   470	the lifted layer; the matter--information functor $M : \Phys \to \Info_1$ is
   471	itself dagger-preserving and compact-closure-preserving, so we list
   472	$\mathsf{H6}$ and $\mathsf{H7}$ as inherent properties of $M$ that propagate
   473	upward.
   474	
   475	\begin{center}
   476	\small
   477	\renewcommand{\arraystretch}{1.18}
   478	\begin{tabular}{@{}llp{7.5cm}@{}}
   479	\toprule
   480	Hook & Consumed at lift & Typed output (signature in target layer) \\
   481	\midrule
   482	$\mathsf{H1}$ Symmetry-action & $L_{I\to II}$, $L_{II\to III}$ &
   483	  $\rho_G : BG \to \mathrm{Aut}(\Ham)$ at $L_{I\to II}$; $\rho_{G \times
   484	  \Z_T} : B(G \times \Z_T) \to \mathrm{Aut}(\Ham_{T\text{-per}})$ at
   485	  $L_{II\to III}$. \\
   486	$\mathsf{H2}$ Hamiltonian & $L_{I\to II}$, $L_{II\to III}$ &
   487	  Wide monoidal sub-category $\Ham \hookrightarrow \Phys$ at $L_{I\to
   488	  II}$; $\Ham_{T\text{-per}} = \mathrm{Fun}(S^1_T, \Ham)$ at $L_{II\to
   489	  III}$. \\
   490	$\mathsf{H3}$ Floquet $B\Z$ & $L_{II\to III}$ &
   491	  Strong monoidal functor $F : B\Z_T \to \QChan$ (Part~III
   492	  Definition 3.2). \\
   493	$\mathsf{H4}$ Sheaf & $L_{I\to II}$, $L_{III\to IV}$ &
   494	  Sheaf $\mathcal{O}_{\mathrm{loc}} : \mathbf{Open}(\Lambda)^{\op} \to
   495	  \Vect$ of local order parameters at $L_{I\to II}$; sheaf
   496	  $\mathcal{O}_{\partial} : \mathbf{Reg}(\partial \mathrm{AdS})^{\op}
   497	  \to \mathbf{Alg}$ of boundary CFT data at $L_{III\to IV}$. \\
   498	$\mathsf{H5}$ Operadic & $L_{III\to IV}$ &
   499	  $E_n$-operad action $\alpha : E_n \to \mathbf{End}_{\mathbf{FactAlg}}
   500	  (\mathcal{O}_{\partial})$ on the boundary factorisation algebra. \\
   501	$\mathsf{H6}$ Dagger & $M$ (inherent), $L_{II\to III}$, $L_{III\to IV}$ &
   502	  $\dagger : \C^{\op} \to \C$ preserved by $M$; unitarity $U(T)^\dagger
   503	  U(T) = \id$ of Floquet evolution at $L_{II\to III}$; isometry
   504	  $V^\dagger V = \id_{L}$ of QEC encoder at $L_{III\to IV}$. \\
   505	$\mathsf{H7}$ Compact-closure & $M$ (inherent), $L_{III\to IV}$ &
   506	  Duals $A^*$, $\eta_A, \varepsilon_A$ inherited from $\Phys$;
   507	  trace-functional $\Tr : \End(A) \to I$ used in
   508	  $S(A) = \Area(\gamma_A) / 4G_N$ at $L_{III\to IV}$. \\
   509	$\mathsf{H8}$ Type-theoretic & $L_{I\to II}, L_{II\to III}, L_{III\to IV}$ &
   510	  Internal language $\mathcal{L}(\Info_i)$ together with a Haskell
   511	  realisation: QuickCheck category laws ($i=2$), Magnus solver
   512	  ($i=3$), HaPPY pentagon code and Fisher--Bures metric ($i=4$). \\
   513	\bottomrule
   514	\end{tabular}
   515	\end{center}
   516	
   517	\smallskip
   518	
   519	The ledger illuminates three structural facts. First, the consumption pattern
   520	is \emph{layered but not linear}: hook $\mathsf{H4}$ (sheaf), for instance,

exec
/usr/local/bin/zsh -lc "rg -n -F '\\\\' papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
104:\title{Synthesis --- Modular Composition of\\
107:\author{MagnetonIO Research \\
480:Hook & Consumed at lift & Typed output (signature in target layer) \\
485:  $L_{II\to III}$. \\
489:  III}$. \\
492:  Definition 3.2). \\
497:  \to \mathbf{Alg}$ of boundary CFT data at $L_{III\to IV}$. \\
500:  (\mathcal{O}_{\partial})$ on the boundary factorisation algebra. \\
504:  $V^\dagger V = \id_{L}$ of QEC encoder at $L_{III\to IV}$. \\
508:  $S(A) = \Area(\gamma_A) / 4G_N$ at $L_{III\to IV}$. \\
512:  ($i=3$), HaPPY pentagon code and Fisher--Bures metric ($i=4$). \\
735:\node[layer] (I1) at (0, -2.0)     {Part I: $\Info_1$\\\footnotesize$(\dagger,\otimes)$ + hooks $\mathsf{H1}$--$\mathsf{H8}$};
736:\node[layer] (I2) at (0, -4.4)     {Part II: $\Info_2 = [\BG,\Ham]$\\\footnotesize Phases as $\pi_0$};
737:\node[layer] (I3) at (0, -6.8)     {Part III: $\Info_3 = [\,B(G{\times}\Z_T),\,\Ham_{T\text{-per}}]$\\\footnotesize Floquet phases};
738:\node[layer] (I4) at (0, -9.2)     {Part IV: $\Info_4$ = QEC + Fisher--Bures\\\footnotesize Emergent metric};
756:\node[emerg, anchor=east] (e2) at (-3.4, -3.2) {Long-range entanglement;\\ TEE $\gamma=\log\mathcal{D}$};
757:\node[emerg, anchor=east] (e3) at (-3.4, -5.6) {Time crystals;\\ AFI winding $\nu$};
758:\node[emerg, anchor=east] (e4) at (-3.4, -8.0) {Ryu--Takayanagi;\\ Fisher--Bures metric};
1209:\# & Property & Layer & Non-derivability witness \\
1211:1 & $\dagger$-symmetric monoidal structure       & I       & cartesian categories \\
1212:2 & Born rule                                    & I       & non-compact-closed cat. \\
1213:3 & Long-range entanglement                      & II      & $\FHilb$ alone \\
1214:4 & TEE $\gamma = \log \mathcal{D}$              & II      & SRE phases \\
1215:5 & Anyonic statistics                           & II      & symmetric MC alone \\
1216:6 & Discrete time crystals                       & III     & equilibrium SSB \\
1217:7 & AFI winding number                           & III     & equilibrium Chern bands \\
1218:8 & Prethermal phases                            & III     & static $H$ alone \\
1219:9 & QEC structure of LRE                         & II + IV & Part~II w/o $\dagger$ \\
1220:10 & Holographic isometry $V$                    & IV      & Part~I alone (no LRE) \\
1221:11 & Ryu--Takayanagi area formula                & IV      & Part~III w/o LRE \\
1222:12 & Fisher--Bures metric                        & IV      & Any proper subset of \{I, II, III\} alone \\

exec
/usr/local/bin/zsh -lc "nl -ba papers/synthesis/paper.tex | sed -n '521,860p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
   521	is consumed at lift $L_{I\to II}$ (for local order parameters) and again at
   522	lift $L_{III\to IV}$ (for boundary CFT data), bypassing $L_{II\to III}$.
   523	This non-linearity is essential. The modular framework is not a chain in the
   524	sense of a totally ordered sequence of consumptions; it is a typed graph in
   525	which each hook is consumed wherever needed downstream of Part~I.
   526	
   527	Second, hooks $\mathsf{H6}$ (dagger) and $\mathsf{H7}$ (compact-closure) are
   528	\emph{inherent} to the matter--information functor $M$ itself: they are
   529	preservation properties of $M$ rather than data consumed only at a single
   530	lift. We mark them in the ledger as ``inherent'' at $M$ and additionally
   531	list the lifts where the inherited structure is actively used to construct
   532	new typed output (e.g.\ $\mathsf{H7}$ at $L_{III\to IV}$ for the trace
   533	structure entering Ryu--Takayanagi).
   534	
   535	Third, every hook is consumed somewhere downstream. Part~I does not declare
   536	unused slots: each $\mathsf{H}_i$ has at least one downstream consumer. This
   537	is not an accident; it is the methodological discipline of declaring hooks
   538	only when they correspond to anticipated downstream needs.
   539	
   540	\subsection{Mechanism of hook interpretation by lifts}
   541	\label{sec:hook-mechanism}
   542	
   543	We make explicit the categorical operation by which each lift interprets
   544	the hooks it consumes; the prose mirrors the formal type signatures of
   545	\Cref{def:hook-sig}. For each lift $L_{X \to Y}$ and each hook
   546	$\mathsf{H}_i$ consumed at that lift, the operation is one of the
   547	following four: \emph{pullback}, \emph{enrichment}, \emph{tensor product},
   548	or \emph{fibration}. We give one representative example for each lift.
   549	
   550	\paragraph{$L_{I \to II}$, hook $\mathsf{H1}$ (symmetry-action) by
   551	pullback.}
   552	Given the realisation $\rho : BG \to \mathrm{Aut}(\Ham)$ of $\mathsf{H1}$
   553	in $\Info_1$, the lift $L_{I \to II}$ produces the functor category $[BG,
   554	\Ham]$ as the categorical pullback of $\rho$ along the constant functor
   555	from the terminal category $*$ to $\mathrm{Aut}(\Ham)$. Connected
   556	components $\pi_0([BG, \Ham])$ are the $G$-symmetric phases. The lift's
   557	input is the realisation of $\mathsf{H1}$; its output is the functor
   558	category. This is the standard categorical content of Part~II,
   559	Section~3.
   560	
   561	\paragraph{$L_{I \to II}$, hook $\mathsf{H4}$ (sheaf) by pullback.}
   562	The sheaf $\mathcal{O}_{\mathrm{loc}} : \mathbf{Open}(\Lambda)^{\op} \to
   563	\Vect$ realising $\mathsf{H4}$ is pulled back along the assignment
   564	$U \mapsto$ (order-parameter expectation in region $U$) to produce, for
   565	each $G$-symmetric Hamiltonian $H$, a sheaf of order parameters whose
   566	non-trivial sections detect spontaneous symmetry breaking. This is
   567	Landau theory in functorial form (Part~II Section~4).
   568	
   569	\paragraph{$L_{II \to III}$, hook $\mathsf{H3}$ (Floquet $B\Z$) by
   570	enrichment.}
   571	The Floquet enrichment functor takes a phase functor $F : BG \to \Ham$
   572	and produces $\mathrm{Fl}(F) : B(G \times \Z_T) \to \Ham_{T\text{-per}}$
   573	by enriching the symmetry category with the temporal $\Z_T$-factor and
   574	the Hamiltonian category with the $T$-periodic extension
   575	$\Ham_{T\text{-per}}$. Both enrichments are tensor products of
   576	categories: $B(G \times \Z_T) = BG \boxtimes B\Z_T$ and
   577	$\Ham_{T\text{-per}} = \mathrm{Fun}(S^1_T, \Ham)$. This is precisely the
   578	content of Part~II Section~13's Hook 5.
   579	
   580	\paragraph{$L_{III \to IV}$, hook $\mathsf{H4}$ (sheaf) by fibration.}
   581	The boundary CFT sheaf $\mathcal{O}_{\partial}$ realising $\mathsf{H4}$ in
   582	$\Info_4$ is constructed as the fibration over $\mathbf{Reg}(\partial
   583	\mathrm{AdS})$ whose fibre at $A$ is the algebra of CFT operators
   584	supported in $A$. The lift $L_{III \to IV}$ pulls this sheaf back along
   585	the holographic functor $H : \mathbf{BoundaryRegion} \to
   586	\mathbf{BulkRegion}$ to produce the entanglement-wedge-reconstructed bulk
   587	sheaf. This is the categorical content of Part~IV Section~4.
   588	
   589	\paragraph{$L_{III \to IV}$, hook $\mathsf{H7}$ (compact-closure) by
   590	tensor product.}
   591	The trace structure $\Tr$ inherited from $M$ is composed with the
   592	encoder $V : \Hilb_L \hookrightarrow \Hilb_P$ to produce the
   593	boundary-region partial trace $\Tr_{\bar A} \circ V$, whose von Neumann
   594	entropy obeys the discrete Ryu--Takayanagi formula $S(A) =
   595	|\gamma_A| \log d$. This is Part~IV Theorem~4.5.
   596	
   597	\smallskip
   598	
   599	These five examples cover all four operation types (pullback,
   600	enrichment, tensor product, fibration) used by the lifts. Every other
   601	hook consumption falls under one of these four operations; the full
   602	catalogue is straightforward but tedious and is left to the constituent
   603	papers.
   604	
   605	\section{The Compositional Functor Chain}
   606	\label{sec:functor-chain}
   607	
   608	We now make precise the compositional structure of the series as a chain of
   609	functors in a $2$-category $\Theory$ of physical theories.
   610	
   611	\subsection{The 2-category $\Theory$}
   612	
   613	\begin{definition}[Hook signatures]
   614	\label{def:hook-sig}
   615	A \emph{hook signature} is a typed placeholder denoting a piece of
   616	categorical structure that a downstream functor may consume. Concretely,
   617	each of $\mathsf{H1}$--$\mathsf{H8}$ has a fixed signature:
   618	\begin{itemize}[leftmargin=2em]
   619	\item $\mathsf{H1}$ is a functor $\rho : B\mathcal{G} \to \mathrm{Aut}(\C)$
   620	  for a designated symmetry data category $\mathcal{G}$;
   621	\item $\mathsf{H2}$ is a wide monoidal sub-category $\Ham
   622	  \hookrightarrow \C$;
   623	\item $\mathsf{H3}$ is a functor $\sigma : B\Z \to \mathrm{Aut}(\C)$;
   624	\item $\mathsf{H4}$ is a Grothendieck site $(\C_J, J)$ together with a
   625	  sheaf-of-observables functor $\C_J^{\op} \to \Set$ landing in $\C$;
   626	\item $\mathsf{H5}$ is an operad $O$ together with an action $O \to
   627	  \mathbf{End}_\C(A)$ on a designated object $A \in \C$;
   628	\item $\mathsf{H6}$ is a $\dagger$-structure $\dagger : \C^{\op} \to \C$
   629	  with $(f^\dagger)^\dagger = f$;
   630	\item $\mathsf{H7}$ is a compact-closure structure (duals $A^*$, units
   631	  $\eta_A : I \to A^* \otimes A$, counits $\varepsilon_A : A \otimes A^*
   632	  \to I$);
   633	\item $\mathsf{H8}$ is an internal language $\mathcal{L}(\C)$ obtained
   634	  from a topos structure on $\C$, together with a chosen interpretation
   635	  of $\mathcal{L}(\C)$ in a programming language (e.g.\ Haskell with
   636	  \texttt{LinearTypes}).
   637	\end{itemize}
   638	A category $\C$ is said to \emph{declare} a hook if it has the
   639	corresponding structure; it is said to \emph{realise} a hook if the
   640	structure is concretely populated by Part~I-style data.
   641	\end{definition}
   642	
   643	\begin{definition}[$\Theory$]
   644	\label{def:theory}
   645	The $2$-category $\Theory$ has:
   646	\begin{itemize}[leftmargin=2em]
   647	\item \emph{$0$-cells (objects):} pairs $(\C, D)$ where $\C$ is a
   648	  symmetric monoidal $\dagger$-category and $D \subseteq \{\mathsf{H1},
   649	  \ldots, \mathsf{H8}\}$ is the subset of \emph{declared} hooks of $\C$
   650	  (in the sense of \Cref{def:hook-sig}). The category $\Phys$ corresponds
   651	  to $(\Phys, \emptyset)$ (no hooks declared yet), and the layers
   652	  $\Info_1, \ldots, \Info_4$ correspond to progressively larger declared
   653	  sets along the chain \eqref{eq:main-chain}.
   654	\item \emph{$1$-cells (morphisms):} hook-respecting strong monoidal
   655	  $\dagger$-functors $F : (\C, D) \to (\C', D')$, meaning $F$ is strong
   656	  monoidal and $\dagger$-preserving, $D \subseteq D'$, and for every
   657	  $\mathsf{H} \in D$, the realisation of $\mathsf{H}$ in $\C$ maps under
   658	  $F$ to a realisation of $\mathsf{H}$ in $\C'$ of the same signature.
   659	\item \emph{$2$-cells:} monoidal natural transformations $\eta : F \Rightarrow
   660	  G$ between such functors, additionally compatible with the realisation
   661	  data of all hooks in $D$.
   662	\end{itemize}
   663	Composition of $1$-cells is the obvious composition of functors;
   664	the identity $1$-cell is the identity functor; vertical and horizontal
   665	composition of $2$-cells follow the standard rules of a strict
   666	$2$-category.
   667	\end{definition}
   668	
   669	\begin{remark}
   670	\Cref{def:theory} is a deliberately minimal abstraction. We do not claim it
   671	is the most general or natural definition; the point is that the
   672	compositional content of the four-paper series fits inside it. Possible
   673	refinements --- to a $(\infty,2)$-category of theories, or to a
   674	homotopy-coherent variant accommodating gauge symmetries as $\infty$-groupoids
   675	--- are open formalisation problems (\Cref{sec:open}).
   676	\end{remark}
   677	
   678	\subsection{The chain of $1$-cells}
   679	
   680	The compositional content of the series is the following chain of $1$-cells
   681	in $\Theory$:
   682	
   683	\begin{equation}
   684	\label{eq:main-chain}
   685	\Phys \xrightarrow{\;M\;} \Info_1 \xrightarrow{\;L_{I \to II}\;} \Info_2
   686	\xrightarrow{\;L_{II \to III}\;} \Info_3 \xrightarrow{\;L_{III \to IV}\;}
   687	\Info_4
   688	\end{equation}
   689	
   690	with the following typed semantics:
   691	
   692	\begin{itemize}[leftmargin=2em]
   693	\item $M : \Phys \to \Info_1$ is the matter--information functor of Part~I:
   694	  strong monoidal, $\dagger$-preserving, fully determined by its action on
   695	  generators (under the cobordism hypothesis).
   696	\item $L_{I \to II} : \Info_1 \to \Info_2$ takes a symmetric monoidal
   697	  $\dagger$-category $\C$ and produces the functor category $[\BG, \C]$ of
   698	  $G$-symmetric phases (for each symmetry group $G$); the connected
   699	  components $\pi_0([\BG, \C])$ are the phases.
   700	\item $L_{II \to III} : \Info_2 \to \Info_3$ takes an equilibrium phase
   701	  functor $F : \BG \to \Ham$ to its Floquet enrichment $\mathrm{Fl}(F) :
   702	  B(G \times \Z_T) \to \Ham_{T\text{-per}}$; the connected components of the
   703	  resulting functor category include time-crystalline and anomalous Floquet
   704	  phases.
   705	\item $L_{III \to IV} : \Info_3 \to \Info_4$ takes a Floquet phase functor
   706	  to its information-geometric structure: the Sambe-space embedding (Part~III
   707	  output), the QEC code structure for long-range entangled subspaces, and
   708	  the Fisher--Bures metric on the parametric state manifold.
   709	\end{itemize}
   710	
   711	\subsection{Diagrammatic presentation}
   712	
   713	\Cref{fig:main-diagram} presents the chain as a $2$-functor diagram in
   714	$\Theory$, with composition hooks annotated at each lift.
   715	
   716	\begin{figure}[ht]
   717	\centering
   718	\begin{tikzpicture}[
   719	  node distance=11mm and 22mm,
   720	  every node/.style={align=center},
   721	  layer/.style={
   722	    rectangle, rounded corners, draw=blue!50!black, very thick,
   723	    fill=blue!8, inner sep=8pt, minimum width=37mm, minimum height=14mm
   724	  },
   725	  hooks/.style={
   726	    rectangle, draw=gray!50, fill=gray!8, inner sep=4pt,
   727	    font=\footnotesize\sffamily
   728	  },
   729	  emerg/.style={
   730	    rectangle, draw=red!55!black, fill=red!8, inner sep=4pt,
   731	    font=\footnotesize\itshape
   732	  }
   733	]
   734	\node[layer] (P)  at (0, 0)        {$\Phys$};
   735	\node[layer] (I1) at (0, -2.0)     {Part I: $\Info_1$\\\footnotesize$(\dagger,\otimes)$ + hooks $\mathsf{H1}$--$\mathsf{H8}$};
   736	\node[layer] (I2) at (0, -4.4)     {Part II: $\Info_2 = [\BG,\Ham]$\\\footnotesize Phases as $\pi_0$};
   737	\node[layer] (I3) at (0, -6.8)     {Part III: $\Info_3 = [\,B(G{\times}\Z_T),\,\Ham_{T\text{-per}}]$\\\footnotesize Floquet phases};
   738	\node[layer] (I4) at (0, -9.2)     {Part IV: $\Info_4$ = QEC + Fisher--Bures\\\footnotesize Emergent metric};
   739	
   740	\draw[->, thick] (P) -- node[right=2pt, font=\small]{$M$ (matter--info)} (I1);
   741	\draw[->, thick] (I1) -- node[right=2pt, font=\small]{$L_{I\to II}$} (I2);
   742	\draw[->, thick] (I2) -- node[right=2pt, font=\small]{$L_{II\to III}$} (I3);
   743	\draw[->, thick] (I3) -- node[right=2pt, font=\small]{$L_{III\to IV}$} (I4);
   744	
   745	\node[hooks, anchor=west] (h1) at (3.4, -1.0)  {$M$ inherent: $\mathsf{H6}$ ($\dagger$), $\mathsf{H7}$ (compact)};
   746	\node[hooks, anchor=west] (h2) at (3.4, -3.2)  {$L_{I\to II}$ uses: $\mathsf{H1}, \mathsf{H2}, \mathsf{H4}, \mathsf{H8}$};
   747	\node[hooks, anchor=west] (h3) at (3.4, -5.6)  {$L_{II\to III}$ uses: $\mathsf{H1}, \mathsf{H2}, \mathsf{H3}, \mathsf{H6}, \mathsf{H8}$};
   748	\node[hooks, anchor=west] (h4) at (3.4, -8.0)  {$L_{III\to IV}$ uses: $\mathsf{H4}, \mathsf{H5}, \mathsf{H6}, \mathsf{H7}, \mathsf{H8}$};
   749	
   750	\draw[->, gray!60, dashed] (h1) -- (P.east);
   751	\draw[->, gray!60, dashed] (h2) -- (I1.east);
   752	\draw[->, gray!60, dashed] (h3) -- (I2.east);
   753	\draw[->, gray!60, dashed] (h4) -- (I3.east);
   754	
   755	\node[emerg, anchor=east] (e1) at (-3.4, -1.0) {(Born rule)};
   756	\node[emerg, anchor=east] (e2) at (-3.4, -3.2) {Long-range entanglement;\\ TEE $\gamma=\log\mathcal{D}$};
   757	\node[emerg, anchor=east] (e3) at (-3.4, -5.6) {Time crystals;\\ AFI winding $\nu$};
   758	\node[emerg, anchor=east] (e4) at (-3.4, -8.0) {Ryu--Takayanagi;\\ Fisher--Bures metric};
   759	
   760	\draw[->, red!50!black, dotted] (I1.west) -- (e1);
   761	\draw[->, red!50!black, dotted] (I2.west) -- (e2);
   762	\draw[->, red!50!black, dotted] (I3.west) -- (e3);
   763	\draw[->, red!50!black, dotted] (I4.west) -- (e4);
   764	\end{tikzpicture}
   765	\caption{Compositional functor chain of the four-paper series. Solid
   766	arrows are $1$-cells in $\Theory$ (functorial liftings). Dashed gray
   767	arrows show which hooks are consumed by each lift, as detailed in the
   768	ledger (\Cref{sec:hook-ledger}). Dotted red arrows indicate emergent
   769	properties produced at each layer. The diagram is hierarchical: each
   770	layer plugs into the typed slots declared by its predecessors and
   771	exposes new typed slots for its successors.}
   772	\label{fig:main-diagram}
   773	\end{figure}
   774	
   775	\subsection{Coherence of the composition}
   776	
   777	\begin{theorem}[Composition is well-typed]
   778	\label{thm:composition}
   779	Within $\Theory$, the composition
   780	\[
   781	L := L_{III \to IV} \circ L_{II \to III} \circ L_{I \to II} \circ M : \Phys
   782	\to \Info_4
   783	\]
   784	is a well-defined $1$-cell. In particular, every hook consumed by an
   785	intermediate lift is supplied by a strictly earlier layer; no hook is left
   786	unfilled.
   787	\end{theorem}
   788	
   789	\begin{proof}[Proof sketch]
   790	By the hook ledger of \Cref{sec:hook-ledger}, each lift consumes only
   791	Part~I-declared hooks $\mathsf{H1}$--$\mathsf{H8}$ together with the
   792	forward-pointing hooks declared by its strict predecessor (the five
   793	Part~II hooks for $L_{II\to III}$; the four Part~III hooks for
   794	$L_{III\to IV}$). Hooks $\mathsf{H6}$ and $\mathsf{H7}$ are inherent to
   795	$M$ (dagger and compact-closure preservation) and are inherited by every
   796	downstream layer, so the lifts are free to consume them where needed.
   797	Composition of $1$-cells in $\Theory$ requires hook-respecting strong
   798	monoidal $\dagger$-functors; each constituent $L_{i\to i+1}$ is so by
   799	Part~II Proposition 2.14 ($L_{I\to II}$), Part~III Proposition 4.6
   800	($L_{II\to III}$), and Part~IV Remark 8.1 ($L_{III\to IV}$). Composition
   801	is associative by the functoriality of all constituents, and the
   802	identity $1$-cells are preserved.
   803	\end{proof}
   804	
   805	\begin{remark}[Rigour gradient and its implications]
   806	\label{rem:limit-rigour}
   807	\Cref{thm:composition} is a structural assertion about the typed signature
   808	of the composition. It is \emph{not} a statement that the highest-level
   809	emergent claims (e.g.\ that the Fisher--Bures metric on a CFT state space
   810	agrees with the bulk AdS metric) are theorems. The rigour profile is
   811	layered:
   812	\begin{itemize}[leftmargin=2em]
   813	\item $L_{I \to II}$ is mathematically rigorous: the SPT classification by
   814	  $H^{d+1}(G, U(1))$ \cite{chen2013}, the MTC classification of $(2{+}1)$D
   815	  topological phases \cite{kitaev2003, levinwen2005}, and the
   816	  Kitaev--Preskill--Levin--Wen formula for $\gamma$ \cite{kitaevpreskill2006}
   817	  are provably correct.
   818	\item $L_{II \to III}$ is rigorous in the prethermal regime $t \leq \tau_*
   819	  \sim \exp(c\,\omega/J)$ and for MBL-protected DTCs \cite{else2016,
   820	  bukov2015}, but breaks down in the heating regime where it currently
   821	  lacks a categorical formulation.
   822	\item $L_{III \to IV}$ is rigorous in the discrete HaPPY model
   823	  \cite{pyhp2015} (where the Ryu--Takayanagi formula is exact) and in the
   824	  semiclassical limit of continuum holography \cite{ryutakayanagi2006,
   825	  fghmv2014}, but the full non-perturbative continuum statement
   826	  (Miyaji--Takayanagi conjecture \cite{miyajitakayanagi2015}) remains
   827	  open.
   828	\end{itemize}
   829	This gradient has three concrete implications. (1)~\emph{Testability is
   830	layered}: the modular thesis is empirically testable at the lower layers
   831	(SPT phases observed in cold-atom and topological-insulator experiments;
   832	DTCs observed in trapped-ion arrays \cite{zhang2017}; HaPPY-style codes
   833	implementable on near-term NISQ devices) and currently structural at the
   834	highest layer (continuum holographic claims). (2)~\emph{Verifiability of
   835	non-derivability}: \Cref{prop:gen-nonderiv} is provably tight at the
   836	discrete level (where Part~IV exhibits explicit counterexamples), and
   837	remains a structural assertion at the continuum level. (3)~\emph{Robustness
   838	of the modular thesis}: even in the conjectural regime, the modular thesis
   839	is well-typed (\Cref{thm:composition}); refining the conjectural lifts to
   840	theorems is a research programme, not a pre-condition for the framework's
   841	utility. Part~IV is explicit about this gradient and presents its
   842	constituent results layer by layer.
   843	\end{remark}
   844	
   845	\subsection{The composite as a $1$-cell, and Proposition 8.2 generalised}
   846	
   847	The composite $L : \Phys \to \Info_4$ produces an emergent geometry from a
   848	quantum-information substrate. The non-derivability content is:
   849	
   850	\begin{proposition}[Generalised non-derivability]
   851	\label{prop:gen-nonderiv}
   852	For each strict subset $S \subsetneq \{I, II, III, IV\}$, there exists a
   853	filling of the hooks of $\bigcup_{i \in S} \mathrm{Part}_i$ that produces
   854	no element of $\Info_4$ exhibiting the Fisher--Bures Riemannian metric of
   855	Part~IV. Equivalently, the composite $L$ is not factorable through any
   856	proper sub-chain of \eqref{eq:main-chain}.
   857	\end{proposition}
   858	
   859	\begin{proof}[Proof sketch]
   860	The case $S = \{I, II, III\}$ is precisely Proposition 8.2 of Part~IV, whose

exec
/usr/local/bin/zsh -lc "nl -ba papers/synthesis/paper.tex | sed -n '861,1260p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
   861	proof exhibits explicit counterexamples in $\FHilb$, in the toric code, and
   862	in any Floquet system on a Hilbert space without long-range entanglement.
   863	For smaller subsets $S$, the same counterexamples apply: an example showing
   864	non-derivability from $\{I, II, III\}$ a fortiori shows non-derivability
   865	from any proper subset.
   866	\end{proof}
   867	
   868	\Cref{prop:gen-nonderiv} is the precise modular thesis: \emph{emergent
   869	geometry is irreducibly compositional}.
   870	
   871	\section{Cross-cutting Themes}
   872	\label{sec:themes}
   873	
   874	We now isolate six themes that thread all four constituent papers. Each is a
   875	quantitative or structural through-line whose appearance in multiple layers
   876	illuminates the compositional architecture.
   877	
   878	\subsection{Theme 1: entanglement entropy as quantitative through-line}
   879	\label{sec:theme-EE}
   880	
   881	\begin{theme}[Entanglement entropy across layers]
   882	\label{theme:EE}
   883	The von Neumann entropy $S(A) = -\Tr(\rho_A \log \rho_A)$ appears, with
   884	distinct quantitative content, at every layer of the framework:
   885	\begin{itemize}[leftmargin=2em]
   886	\item In Part~I, $S$ is the trace $\Tr$ in a compact closed dagger
   887	  category, applied to the matter--information image of a reduced density
   888	  matrix.
   889	\item In Part~II, the topological entanglement entropy $\gamma = \log
   890	  \mathcal{D}$ is a phase invariant; $S(A) = \alpha |\partial A| - \gamma +
   891	  O(1/|A|)$ on a disk.
   892	\item In Part~III, the Floquet TEE $\gamma_T = \log \mathcal{D}_T$ is a
   893	  Floquet phase invariant on the Floquet enriched MTC $\mathcal{C}_T =
   894	  \mathcal{C} \boxtimes \Rep(\Z_T)$.
   895	\item In Part~IV, the Ryu--Takayanagi formula $S(A) = \Area(\gamma_A) /
   896	  (4G_N)$ identifies entanglement entropy with the area of a bulk minimal
   897	  surface; in the discrete HaPPY model this is exact.
   898	\end{itemize}
   899	\end{theme}
   900	
   901	The progression is hierarchical. Part~I gives the categorical type of $S$:
   902	it is a functor $\mathbf{Reg}^\op \to \R_{\geq 0}$ defined as
   903	$S(A) = -\Tr(\rho_A \log \rho_A)$, where $\Tr$ is the trace of the compact
   904	closed dagger structure of $\Phys$ and $\rho_A$ is obtained by partial trace
   905	along $\eta, \varepsilon$. Part~II gives a topological constant $\gamma$
   906	that detects long-range entanglement. Part~III decorates this with a
   907	temporal index. Part~IV identifies $S$ with a geometric area. The same
   908	quantitative object acquires new meanings as we ascend.
   909	
   910	\subsection{Theme 2: symmetry-protected structure}
   911	\label{sec:theme-SPT}
   912	
   913	\begin{theme}[Symmetry across layers]
   914	\label{theme:SPT}
   915	The role of symmetry refines as the framework composes:
   916	\begin{itemize}[leftmargin=2em]
   917	\item In Part~I, hook $\mathsf{H1}$ specifies a $G$-action $\rho :
   918	  B\mathcal{G} \to \mathrm{Aut}(\Phys)$.
   919	\item In Part~II, this action classifies SPT phases by $H^{d+1}(G, U(1))$
   920	  (Chen--Gu--Liu--Wen), with the classification refining to a functor
   921	  $\mathrm{SPT}^d : \mathbf{Grp} \to \mathbf{Ab}$.
   922	\item In Part~III, the symmetry enlarges by $\Z_T$ (discrete temporal
   923	  translation); the relevant cohomology becomes $H^{d+2}(G \times \Z_T,
   924	  U(1))$.
   925	\item In Part~IV, the symmetry of the boundary CFT and its modular flow
   926	  generate the bulk emergent diffeomorphism symmetry; the modular flow is
   927	  Tomita--Takesaki theory restricted to half-spaces in the vacuum.
   928	\end{itemize}
   929	\end{theme}
   930	
   931	The pattern: a symmetry that is local in Part~I becomes a classification
   932	parameter in Part~II, gains a temporal factor in Part~III, and is finally
   933	identified with a geometric symmetry in Part~IV. This progression --- from
   934	algebraic to geometric symmetry --- directly underlies emergent properties
   935	\Cref{em:lre,em:tee,em:dtc,em:happy} of \Cref{sec:catalogue}.
   936	
   937	\subsection{Theme 3: fixed-point reasoning}
   938	\label{sec:theme-fp}
   939	
   940	\begin{theme}[Fixed points across layers]
   941	\label{theme:fp}
   942	Each layer involves a critical fixed-point construction:
   943	\begin{itemize}[leftmargin=2em]
   944	\item Part~I: Mac Lane coherence (every well-typed diagram commutes) is a
   945	  strict-monoidal fixed-point statement.
   946	\item Part~II: Renormalisation-group fixed points represent each phase
   947	  $[H] \in \pi_0(\Ham)$; an RG flow $H \to H'$ converges to a fixed point
   948	  of the coarsening functor.
   949	\item Part~III: Magnus fixed points --- the prethermal effective
   950	  Hamiltonian is the limit of the Magnus colimit on a finite truncation;
   951	  Floquet stationary states are fixed points of $U(T)$.
   952	\item Part~IV: HaPPY tensor-network fixed points are the bulk holographic
   953	  states; the Bures metric is the unique monotone metric (Chentsov fixed
   954	  point).
   955	\end{itemize}
   956	\end{theme}
   957	
   958	In every case the fixed-point structure is what makes the categorical
   959	content into a phase invariant. The dictionary fixed-point $\leftrightarrow$ phase
   960	representative is constant across layers.
   961	
   962	\subsection{Theme 4: functorial pullback}
   963	\label{sec:theme-pullback}
   964	
   965	\begin{theme}[Pullback of structure]
   966	\label{theme:pullback}
   967	The composition mechanism is functorial pullback:
   968	\begin{itemize}[leftmargin=2em]
   969	\item Part~II's classification of $G$-symmetric phases is the connected
   970	  components of the functor category $[\BG, \Ham_0]^{\mathrm{eq}}$,
   971	  obtained as pullback of the trivial $\BG$-functor along $\rho$.
   972	\item Part~III's Floquet enrichment is the pullback of the equilibrium
   973	  phase functor along the inclusion $B\Z_T \hookrightarrow B(G \times
   974	  \Z_T)$, intersected with the prethermal regime.
   975	\item Part~IV's bulk-to-boundary functor is the pullback of the global
   976	  state along the inclusion of a boundary region, mediated by the QEC
   977	  encoder.
   978	\end{itemize}
   979	\end{theme}
   980	
   981	Pullback is the universal way to ``restrict'' a structure along an
   982	inclusion or projection, and it is what makes our composition a categorical
   983	operation rather than ad-hoc gluing.
   984	
   985	\subsection{Theme 5: dagger preservation}
   986	\label{sec:theme-dagger}
   987	
   988	\begin{theme}[$\dagger$ across layers]
   989	\label{theme:dagger}
   990	The $\dagger$-structure of Part~I is preserved by every subsequent lift:
   991	\begin{itemize}[leftmargin=2em]
   992	\item Part~II requires unitary representations of $G$, so the
   993	  symmetry-action functor is $\dagger$-preserving.
   994	\item Part~III's Floquet evolution is by definition unitary; the Floquet
   995	  functor lands in $\mathbf{Unit} \subset \QChan$ (a $\dagger$-monoidal
   996	  subcategory).
   997	\item Part~IV's QEC encoder is a $\dagger$-isometry; complementary recovery
   998	  is the assertion that recovery is a $\dagger$-section of the encoder.
   999	\end{itemize}
  1000	\end{theme}
  1001	
  1002	Consequently the matter--information functor's dagger-preservation
  1003	property propagates up the chain: every emergent piece of structure inherits
  1004	unitarity. This is the categorical reason why Floquet drives are unitary
  1005	and why holographic codes are isometries.
  1006	
  1007	\subsection{Theme 6: obstruction $2$-cells}
  1008	\label{sec:theme-obstruction}
  1009	
  1010	\begin{theme}[Obstructions detect emergent phenomena]
  1011	\label{theme:obstr}
  1012	At each compositional layer, novel phenomena are detected as obstruction
  1013	$2$-cells:
  1014	\begin{itemize}[leftmargin=2em]
  1015	\item Part~II: phase transitions are non-invertible natural transformations
  1016	  $\eta : F \Rightarrow F'$ between gapped Hamiltonian functors (the
  1017	  ``obstruction'' is the gap closing).
  1018	\item Part~III: discrete time crystals are obstruction $2$-cells in the
  1019	  comparison between iterated and re-labelled Floquet drives; Floquet
  1020	  winding numbers are obstructions to homotopies of Floquet--Bloch
  1021	  functors.
  1022	\item Part~IV: the AMPS firewall paradox is an obstruction to monogamy of
  1023	  entanglement under naive locality; OAQEC complementary recovery resolves
  1024	  it by replacing local bulk operators with non-local boundary
  1025	  reconstructions.
  1026	\end{itemize}
  1027	\end{theme}
  1028	
  1029	The categorical reading: every phenomenon ``without an equilibrium analog'' or
  1030	``not derivable from local data'' is an obstruction class in the appropriate
  1031	$2$-categorical structure.
  1032	
  1033	\section{Emergent Property Catalogue}
  1034	\label{sec:catalogue}
  1035	
  1036	We now catalogue twelve emergent properties of the modular framework. Each
  1037	is labelled with the lowest law-level at which it appears and accompanied
  1038	by a proof sketch that it is non-derivable from any subset of strictly
  1039	fewer laws. The catalogue generalises Proposition 8.2 of Part~IV.
  1040	
  1041	\paragraph{Selection criterion.}
  1042	The twelve properties are selected to satisfy three criteria: (i) each is
  1043	identified as a principal mathematical or physical contribution of one of
  1044	the constituent papers; (ii) each admits an explicit non-derivability
  1045	witness exhibitable from the worked examples of the constituent papers;
  1046	and (iii) collectively they cover all four constituent papers, with at
  1047	least two properties per Part. Properties that are technically interesting
  1048	but reducible to a strict sub-chain (e.g.\ specific anyon braiding rules,
  1049	which already appear at Part~II's MTC level without needing Part~I's
  1050	operadic data) are not included.
  1051	
  1052	\paragraph{Connection to cross-cutting themes.}
  1053	Each of the six cross-cutting themes of \Cref{sec:themes} appears
  1054	concretely in the catalogue:
  1055	\begin{itemize}[leftmargin=2em]
  1056	\item \Cref{theme:EE} (entanglement entropy) underlies
  1057	  \Cref{em:tee,em:rt} via $\gamma$ and the area formula;
  1058	\item \Cref{theme:SPT} (symmetry) underlies \Cref{em:dtc,em:afi};
  1059	\item \Cref{theme:fp} (fixed points) underlies \Cref{em:preth,em:fisher};
  1060	\item \Cref{theme:pullback} (functorial pullback) underlies
  1061	  \Cref{em:lre,em:happy};
  1062	\item \Cref{theme:dagger} (dagger) underlies \Cref{em:smc,em:born,em:qec};
  1063	\item \Cref{theme:obstr} (obstruction $2$-cells) underlies
  1064	  \Cref{em:dtc,em:afi}.
  1065	\end{itemize}
  1066	Thus the themes are not parallel observations but unifying mechanisms: each
  1067	theme produces concrete emergent properties, and the modular thesis
  1068	asserts that all themes simultaneously hold along the composite $L$.
  1069	
  1070	\subsection{Layer-by-layer enumeration}
  1071	
  1072	\begin{emerg}[Strong-monoidal $\dagger$-structure]
  1073	\label{em:smc}
  1074	\textbf{Layer:} Part~I. The category $\Phys$ admits a $\dagger$-symmetric
  1075	monoidal compact closed structure (Theorem 2.7 of Part~I). \textbf{Proof of
  1076	non-derivability:} no smaller axiomatic system can simultaneously accommodate
  1077	both quantum (no-cloning, demanding non-cartesian tensor) and topological
  1078	(compact closure, demanding duals) structure. A purely cartesian category
  1079	admits diagonals and thus violates no-cloning.
  1080	\end{emerg}
  1081	
  1082	\begin{emerg}[Born-rule formula]
  1083	\label{em:born}
  1084	\textbf{Layer:} Part~I. The probability formula $p(\phi | \psi) =
  1085	|\langle \phi | \psi \rangle|^2$ arises as a categorical theorem from
  1086	compact-closure plus dagger (Theorem 3.5 of Part~I).
  1087	\textbf{Non-derivability:} the formula is built from the trace of a
  1088	composite morphism $\varepsilon \circ (\phi^\dagger \otimes \id) \circ
  1089	\eta \circ \psi : I \to I$. Without compact closure (hook
  1090	$\mathsf{H7}$), the unit $\eta$ and counit $\varepsilon$ are absent and
  1091	the trace is undefined; without dagger (hook $\mathsf{H6}$), the
  1092	adjoint $\phi^\dagger$ is undefined and the formula's symmetric form
  1093	$|\langle\phi|\psi\rangle|^2 = \langle\phi|\psi\rangle\langle\psi|\phi\rangle$
  1094	cannot be assembled. Both ingredients are inherent to $M$, so the
  1095	property emerges at Part~I and not before.
  1096	\end{emerg}
  1097	
  1098	\begin{emerg}[Long-range entanglement]
  1099	\label{em:lre}
  1100	\textbf{Layer:} Part~II. There exist gapped ground states (e.g.\ toric code)
  1101	that cannot be transformed into a product state by any finite-depth local
  1102	quantum circuit. \textbf{Non-derivability from Part~I alone:} Part~I's
  1103	categorical machinery does not specify a notion of locality without the
  1104	sheaf hook $\mathsf{H4}$; with $\mathsf{H4}$ but without a designated
  1105	sub-category $\Ham$ (hook $\mathsf{H2}$), the connected-component invariant
  1106	$\pi_0(\Ham)$ is undefined.
  1107	\end{emerg}
  1108	
  1109	\begin{emerg}[Topological entanglement entropy $\gamma = \log \mathcal{D}$]
  1110	\label{em:tee}
  1111	\textbf{Layer:} Part~II. For a topologically ordered phase, $S(A) = \alpha
  1112	|\partial A| - \gamma$ on a disk $A$, with $\gamma = \log \mathcal{D}$
  1113	universal. \textbf{Non-derivability:} requires both Part~I (compact closure
  1114	to define traces, hence entropy) and Part~II (modular tensor category data
  1115	giving $\mathcal{D}$). Neither alone produces a numerical phase invariant.
  1116	\end{emerg}
  1117	
  1118	\begin{emerg}[Anyonic statistics]
  1119	\label{em:anyon}
  1120	\textbf{Layer:} Part~II. Quasi-particles in $(2{+}1)$D topological phases obey
  1121	braided fusion rules with non-trivial topological spin $\theta_a = e^{2\pi i
  1122	h_a}$. \textbf{Non-derivability:} requires the modular tensor category data
  1123	of Part~II. Part~I alone gives only symmetric (boson/fermion) statistics; the
  1124	truly braided structure is a Part~II emergent feature.
  1125	\end{emerg}
  1126	
  1127	\begin{emerg}[Discrete time crystals (DTCs)]
  1128	\label{em:dtc}
  1129	\textbf{Layer:} Part~III. There exists a Floquet phase whose stroboscopic
  1130	order parameter oscillates with period $2T$ (twice the drive period) for all
  1131	times in the thermodynamic limit (Else--Bauer--Nayak 2016).
  1132	\textbf{Non-derivability:} requires Part~I (categorical formulation),
  1133	Part~II (spontaneous symmetry breaking machinery), \emph{and} Part~III
  1134	(Floquet hook $\mathsf{H3}$ supplying $B\Z_T$). Watanabe--Oshikawa show DTCs
  1135	are forbidden in equilibrium; they emerge only when the Floquet temporal
  1136	structure is added.
  1137	\end{emerg}
  1138	
  1139	\begin{emerg}[Anomalous Floquet topological insulators (AFI)]
  1140	\label{em:afi}
  1141	\textbf{Layer:} Part~III. The $\nu = 1$ AFI phase has chiral edge modes at
  1142	quasi-energy $\pi$ with all bulk Chern numbers vanishing.
  1143	\textbf{Non-derivability:} the bulk Chern number is a Part~II equilibrium
  1144	invariant; the AFI exists \emph{only} when this invariant vanishes, so AFI is
  1145	not a Part~II phenomenon. It is detected by the Floquet winding number
  1146	$\nu = \frac{1}{24\pi^2} \int \Tr[(U^\dagger dU)^3]$, which requires the
  1147	Part~III spatio-temporal Brillouin torus $\mathrm{BZ} \times S^1$.
  1148	\end{emerg}
  1149	
  1150	\begin{emerg}[Prethermal phases]
  1151	\label{em:preth}
  1152	\textbf{Layer:} Part~III. For drive frequency $\omega \gg J$, the system is
  1153	governed by a prethermal effective Hamiltonian for time $t \leq \tau_* \sim
  1154	\exp(c \omega/J)$. \textbf{Non-derivability:} requires the Magnus expansion
  1155	(Part~III) and the equilibrium phase classifier of Part~II to interpret
  1156	$H_{\mathrm{eff}}$ as a Part~II phase; neither alone produces the prethermal
  1157	correspondence.
  1158	\end{emerg}
  1159	
  1160	\begin{emerg}[Quantum error-correcting code structure of long-range
  1161	  entanglement]
  1162	\label{em:qec}
  1163	\textbf{Layer:} Part~IV (using Part~II). Topologically ordered phases are
  1164	quantum error-correcting codes (Bombin--Mart\'in-Delgado 2006; Kitaev 2003).
  1165	\textbf{Non-derivability from Part~II alone:} Part~II classifies the phase but
  1166	does not exhibit it as a code without the Part~I dagger structure
  1167	(hook $\mathsf{H6}$) and the Part~IV operator-algebra QEC formalism.
  1168	\end{emerg}
  1169	
  1170	\begin{emerg}[Holographic isometry]
  1171	\label{em:happy}
  1172	\textbf{Layer:} Part~IV. The HaPPY tensor network defines an isometric
  1173	embedding $V : \Hilb_{\mathrm{bulk}} \to \Hilb_{\mathrm{boundary}}$.
  1174	\textbf{Non-derivability:} requires Part~I (string-diagram/tensor-network
  1175	calculus), Part~II (long-range entanglement as the substrate), \emph{and}
  1176	Part~IV's perfect-tensor construction. The construction is constructive only
  1177	when all three are composed.
  1178	\end{emerg}
  1179	
  1180	\begin{emerg}[Ryu--Takayanagi area formula]
  1181	\label{em:rt}
  1182	\textbf{Layer:} Part~IV. $S(A) = \Area(\gamma_A) / (4G_N)$ exact in the
  1183	HaPPY model. \textbf{Non-derivability:} this is exactly Proposition 8.2 of
  1184	Part~IV. We exhibit (i) $\FHilb$ models satisfying all of Part~I but
  1185	producing no area law; (ii) Part~II models (toric code) producing $\gamma
  1186	= \log \mathcal{D}$ but no area-of-a-surface formula; (iii) Part~III models
  1187	(generic Floquet on a non-LRE Hilbert space) producing modular flow but no
  1188	area law. Only the composite $L$ produces an RT formula.
  1189	\end{emerg}
  1190	
  1191	\begin{emerg}[Fisher--Bures Riemannian metric on parametric state
  1192	  manifolds]
  1193	\label{em:fisher}
  1194	\textbf{Layer:} Part~IV. Each parametric family $\{\rho_\theta\}$ acquires a
  1195	canonical Riemannian metric $g_{ij}^Q$ from Chentsov monotonicity.
  1196	\textbf{Non-derivability:} the symmetric logarithmic derivative $L_i$
  1197	requires a smooth parametric dependence (Part~III input via the Floquet
  1198	parametric family) plus a long-range entangled substrate (Part~II input)
  1199	plus the categorical $\dagger$-structure (Part~I hook $\mathsf{H6}$).
  1200	\end{emerg}
  1201	
  1202	\subsection{Tabular summary}
  1203	
  1204	\begin{center}
  1205	\small
  1206	\renewcommand{\arraystretch}{1.18}
  1207	\begin{tabular}{@{}rlll@{}}
  1208	\toprule
  1209	\# & Property & Layer & Non-derivability witness \\
  1210	\midrule
  1211	1 & $\dagger$-symmetric monoidal structure       & I       & cartesian categories \\
  1212	2 & Born rule                                    & I       & non-compact-closed cat. \\
  1213	3 & Long-range entanglement                      & II      & $\FHilb$ alone \\
  1214	4 & TEE $\gamma = \log \mathcal{D}$              & II      & SRE phases \\
  1215	5 & Anyonic statistics                           & II      & symmetric MC alone \\
  1216	6 & Discrete time crystals                       & III     & equilibrium SSB \\
  1217	7 & AFI winding number                           & III     & equilibrium Chern bands \\
  1218	8 & Prethermal phases                            & III     & static $H$ alone \\
  1219	9 & QEC structure of LRE                         & II + IV & Part~II w/o $\dagger$ \\
  1220	10 & Holographic isometry $V$                    & IV      & Part~I alone (no LRE) \\
  1221	11 & Ryu--Takayanagi area formula                & IV      & Part~III w/o LRE \\
  1222	12 & Fisher--Bures metric                        & IV      & Any proper subset of \{I, II, III\} alone \\
  1223	\bottomrule
  1224	\end{tabular}
  1225	\end{center}
  1226	
  1227	\subsection{Compositional structure of the catalogue}
  1228	
  1229	The catalogue exhibits the modular thesis empirically: of twelve listed
  1230	emergent properties, five appear at Part~III or Part~IV (where the highest
  1231	compositional content is required), and these five are precisely those
  1232	associated with novel non-equilibrium or geometric phenomena (DTCs, AFI,
  1233	prethermal, holographic isometry, RT formula, Fisher--Bures metric). The
  1234	remaining seven appear at Parts I or II and are correspondingly more
  1235	``algebraic''.
  1236	
  1237	The non-derivability witnesses follow a uniform pattern: for each property,
  1238	we exhibit an explicit object satisfying \emph{some} subset of the prior
  1239	laws but \emph{not} the property in question. The pattern works because the
  1240	modular framework is genuinely typed: each layer adds qualitatively new
  1241	typed slots, and absent any layer, the corresponding slot is empty.
  1242	
  1243	\section{Open Compositional Problems}
  1244	\label{sec:open}
  1245	
  1246	We close with eleven open problems organised by layer. Each is either a
  1247	formalisation gap (a missing theorem in the modular composition itself) or a
  1248	testable prediction (a physical question whose answer would constrain the
  1249	framework).
  1250	
  1251	\subsection*{Problems on the lifts themselves}
  1252	
  1253	\begin{enumerate}[label=O\arabic*., leftmargin=2.6em]
  1254	
  1255	\item \emph{Categorification of the $2$-category $\Theory$.}
  1256	Refine \Cref{def:theory} to a homotopy-coherent $(\infty,2)$-category of
  1257	physical theories accommodating gauge symmetries as $\infty$-groupoids.
  1258	Determine whether the chain \eqref{eq:main-chain} extends to a full
  1259	$(\infty, 2)$-functor.
  1260	

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\([A-Za-z@]+|.)/g){print \""'$.:$1'"\\n\"}' papers/synthesis/paper.tex | sort -u" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
1000:end
1007:subsection
1008:label
100:end
1010:begin
1011:label
1014:begin
1015:item
1016:Rightarrow
1016:eta
1018:item
101:fi
1022:item
1026:end
1027:end
1033:section
1034:label
1041:paragraph
1048: 
104:\
104:title
1052:paragraph
1053:Cref
1055:begin
1056:Cref
1056:item
1057:Cref
1057:gamma
1058:Cref
1058:item
1059:Cref
1059:item
1060:Cref
1060:item
1061:Cref
1062:Cref
1062:item
1063:Cref
1063:item
1064:Cref
1065:end
1070:subsection
1072:begin
1072:dagger
1073:label
1074:Phys
1074:dagger
1074:textbf
1075:textbf
107:\
107:author
1080:end
1082:begin
1083:label
1084:phi
1084:psi
1084:textbf
1085:langle
1085:phi
1085:psi
1085:rangle
1087:textbf
1088:circ
1088:dagger
1088:id
1088:otimes
1088:phi
1088:varepsilon
1089:circ
1089:eta
1089:psi
1089:to
108:textit
1090:eta
1090:mathsf
1090:varepsilon
1091:mathsf
1092:dagger
1092:phi
1093:langle
1093:phi
1093:psi
1093:rangle
1096:end
1098:begin
1099:label
10:usetikzlibrary
1100: 
1100:textbf
1102:textbf
1104:mathsf
1105:Ham
1105:mathsf
1106:Ham
1106:pi
1107:end
1109:begin
1109:gamma
1109:log
1109:mathcal
110:date
1110:label
1111:alpha
1111:textbf
1112:gamma
1112:log
1112:mathcal
1112:partial
1113:textbf
1115:mathcal
1116:end
1118:begin
1119:label
1120:textbf
1121:pi
1121:theta
1122:textbf
1125:end
1127:begin
1128:label
1129:textbf
112:begin
1132:textbf
1133:emph
1134:Z
1134:mathsf
1137:end
1139:begin
113:maketitle
1140:label
1141:nu
1141:textbf
1142:pi
1143:textbf
1144:emph
1146:Tr
1146:dagger
1146:frac
1146:int
1146:nu
1146:pi
1147:mathrm
1147:times
1148:end
1150:begin
1151:label
1152:gg
1152:omega
1152:textbf
1153:leq
1153:sim
1153:tau
1154:exp
1154:omega
1154:textbf
1156:mathrm
1158:end
115:begin
1160:begin
1162:label
1163:textbf
1164:'
1165:textbf
1167:mathsf
1168:end
1170:begin
1171:label
1172:textbf
1173:Hilb
1173:mathrm
1173:to
1174:textbf
1175:emph
1178:end
117:emph
1180:begin
1181:label
1182:Area
1182:gamma
1182:textbf
1183:textbf
1184:FHilb
1185:gamma
1186:log
1186:mathcal
1189:end
118:emph
1191:begin
1193:label
1194:rho
1194:textbf
1194:theta
1194:{
1194:}
1196:textbf
1199:dagger
1199:mathsf
1200:end
1202:subsection
1204:begin
1205:small
1206:arraystretch
1206:renewcommand
1207:begin
1208:toprule
1209:#
1209:\
1210:midrule
1211:\
1211:dagger
1212:\
1213:FHilb
1213:\
1214:\
1214:gamma
1214:log
1214:mathcal
1215:\
1216:\
1217:\
1218:\
1219:\
1219:dagger
121:emph
1220:\
1221:\
1222:\
1222:{
1222:}
1223:bottomrule
1224:end
1225:end
1227:subsection
1238:emph
1239:emph
1243:section
1244:label
124:mathsf
1251:subsection
1253:arabic
1253:begin
1255:Theory
1255:emph
1255:item
1256:Cref
1256:infty
1257:infty
1258:eqref
1259:infty
1261:emph
1261:item
1262:to
1263:leq
1263:tau
1268:emph
1268:item
126:Phys
1270:infty
1274:emph
1274:item
1276:cite
127:Info
127:to
1281:end
1283:subsection
1285:arabic
1285:begin
1287:emph
1287:item
128:Theory
1294:emph
1294:item
1304:emph
1304:item
1307: 
1311:emph
1311:item
1314:emph
1318:end
1320:subsection
1322:arabic
1322:begin
1324:emph
1324:item
1325:Cref
1326:emph
1331:emph
1331:item
1333: 
1339:emph
1339:item
1343:Theory
1344:dagger
1347:Cref
1347:ref
1351:end
1353:section
1354:label
1356:subsection
135:emph
1363:emph
1367:begin
1368:item
1369:Cref
1370:item
1371:Cref
1372:Info
1372:Phys
1372:item
1372:to
1373:Info
1373:to
1374:Theory
1375:Cref
1376:item
1377:Cref
1378:item
1380:Cref
1381:item
1382:Cref
1383:end
1385:subsection
1387:emph
13:usepackage
1401:subsection
1406:paragraph
1413:paragraph
1415: 
1419:paragraph
1422:exp
1422:omega
1426:paragraph
1432:paragraph
1438:paragraph
143:emph
1445:subsection
1447:emph
1449:emph
1450:emph
1461:section
1467:cite
146:end
1473:emergencystretch
1474:begin
1476:bibitem
1478:emph
1482:bibitem
1484:emph
1488:bibitem
148:tableofcontents
1490:emph
1494:bibitem
1496:emph
14:usepackage
1500:bibitem
1502:emph
1503: 
1503:'
1503:textbf
1505:bibitem
1507:emph
1508: 
1508:textbf
150:section
1510:bibitem
1512:emph
1513:emph
1514:textbf
1516:bibitem
1518:emph
1519: 
151:label
1521:bibitem
1523:emph
1524: 
1524:textbf
1527:bibitem
1529:emph
1530:textbf
1532:bibitem
1534:emph
1535: 
1535:textbf
1537:bibitem
1539:emph
153:subsection
1540: 
1540:textbf
1542:bibitem
1544:emph
1546: 
1546:textbf
1548:bibitem
1550:emph
1552: 
1552:textbf
1554:bibitem
1556:emph
1557: 
1557:textbf
1559:bibitem
1561:emph
1562: 
1562:textbf
1564:bibitem
1566:emph
1567: 
1567:textbf
1569:bibitem
1571:emph
1573: 
1573:textbf
1575:bibitem
1577:emph
1579: 
1579:textbf
1581:bibitem
1583:emph
1584: 
1584:textbf
1586:bibitem
1588:emph
1590: 
1590:textbf
1592:bibitem
1594:emph
1595: 
1595:textbf
1597:bibitem
1599:emph
159:emph
1600: 
1600:textbf
1602:bibitem
1604:emph
1606: 
1606:textbf
1609:bibitem
160:emph
1611:emph
1612: 
1612:textbf
1614:bibitem
1616:emph
1617:textbf
1619:bibitem
1621:emph
1622: 
1622:textbf
1624:bibitem
1626:emph
1627: 
1627:textbf
1629:bibitem
162:emph
1631:emph
1632:textbf
1634:bibitem
1636:emph
1637: 
1637:textbf
1639:bibitem
1641:emph
1642: 
1642:textbf
1644:bibitem
1645:emph
1646:emph
1647:textbf
1649:bibitem
1651:emph
1653: 
1653:textbf
1655:bibitem
1657:emph
1658:textbf
1660:bibitem
1662:emph
1663: 
1663:textbf
1665:bibitem
1667:emph
1668: 
1668:textbf
166:emph
1670:end
1672:end
167:emph
171:emph
174:subsection
179:begin
17:usepackage
180:cite
180:item
180:textbf
181:infty
183:mathsf
184:Info
184:Phys
184:to
185:cite
185:item
185:textbf
187:Ham
187:pi
190:gamma
190:log
190:mathcal
191:mathsf
193:cite
193:item
193:textbf
195:QChan
195:Z
195:to
1:documentclass
200:mathsf
202:cite
202:item
202:textbf
203:dagger
208:mathsf
209:emph
20:usepackage
211:end
213:subsection
219:begin
220:item
220:mathsf
220:textbf
222:Cref
223:item
223:textbf
224:Info
224:Phys
224:to
225:Theory
226:Cref
227:item
227:textbf
230:Cref
231:item
231:textbf
234:Cref
235:item
235:textbf
237:Cref
238:item
238:textbf
23:usepackage
240:Cref
241:end
243:subsection
245:emph
246:begin
246:roman
247:item
248:item
24:usepackage
250:item
253:item
257:end
25:usepackage
263:subsection
265:Cref
266:Cref
268:Cref
269:Theory
26:usepackage
270:Cref
271:Cref
272:Cref
273:Cref
275:section
276:label
282:subsection
284:label
286:cite
289:C
289:paragraph
28:hypersetup
291:C
291:otimes
291:times
291:to
293:emph
294:C
294:dagger
294:emph
294:op
294:to
295:eta
295:otimes
295:to
296:otimes
296:to
296:varepsilon
298:paragraph
299:Phys
299:dagger
300:Info
301:Info
301:Phys
301:emph
301:to
303:Cref
303:Theory
308:paragraph
309:C
310:'
311:Info
312:mathsf
315:mathsf
315:paragraph
316:cite
317:begin
318:emph
318:item
318:mathcal
318:mathsf
318:rho
318:to
319:Phys
319:mathrm
320:Ham
320:Phys
320:emph
320:hookrightarrow
320:item
320:mathsf
322:Phys
322:Z
322:emph
322:item
322:mathrm
322:mathsf
322:to
323:C
323:emph
323:item
323:mathsf
324:emph
324:item
324:mathsf
325:Info
326:Phys
326:dagger
326:emph
326:item
326:mathsf
328:Phys
328:emph
328:item
328:mathsf
329:Info
330:emph
330:item
330:mathsf
331:Info
331:mathcal
332:end
336:subsection
337:label
339:cite
339:mathsf
340:mathsf
343:paragraph
344:Ham
344:in
344:pi
346:BG
346:Ham
346:mathrm
347:BG
347:pi
348:Ham
348:mathrm
350:paragraph
351:BG
351:mathcal
351:to
352:Vect
356:paragraph
357:mathcal
358:mathcal
359:mathcal
362:mathbf
362:mathcal
362:to
364:paragraph
366:mathbf
366:mathrm
366:to
367:Ham
367:hookrightarrow
367:mathbf
367:mathrm
367:pi
36:newtheorem
370:paragraph
372:alpha
372:gamma
372:log
372:mathcal
372:partial
373:gamma
376:paragraph
377:Ham
377:text
378:Rep
378:Z
379:mathrm
379:to
37:newtheorem
381:subsection
382:label
384:cite
384:mathsf
388:paragraph
389:QChan
389:Z
389:to
38:newtheorem
391:,
391:Z
391:exp
391:int
391:mathcal
391:overline
394:paragraph
395:Z
395:mathfrak
396:Hilb
396:QChan
396:infty
396:mathcal
396:to
39:newtheorem
400:paragraph
401:cdots
402:leq
402:text
403:,
403:exp
403:leq
403:omega
403:sim
403:tau
406:paragraph
40:newtheorem
410:Rightarrow
410:Z
410:eta
410:mathrm
412:paragraph
413:,
413:Tr
413:dagger
413:frac
413:int
413:mathrm
413:nu
413:pi
413:times
414:Z
414:in
417:paragraph
41:theoremstyle
421:subsection
422:label
424:cite
424:mathsf
429:dagger
429:paragraph
42:newtheorem
430:Hilb
430:enc
430:hookrightarrow
431:dagger
432:cite
434:paragraph
434:{
434:}
435:mathbb
436:Hilb
436:mathrm
436:to
438:[
439:gamma
439:log
439:mathrm
439:psi
43:newtheorem
440:]
443:paragraph
443:rho
443:theta
443:{
443:}
445:Tr
445:rho
445:tfrac
445:theta
445:{
445:}
449:paragraph
44:theoremstyle
452:to
453:circ
453:to
456:paragraph
457:Theta
457:mathbf
457:to
459:mathbf
459:to
45:newtheorem
462:section
463:label
468:to
469:to
46:newtheorem
470:Info
470:Phys
470:to
472:mathsf
475:begin
476:small
477:arraystretch
477:renewcommand
478:begin
479:toprule
47:newtheorem
480:\
481:midrule
482:mathsf
482:to
483:Ham
483:mathrm
483:rho
483:times
483:to
484:Ham
484:Z
484:mathrm
484:text
484:times
484:to
485:\
485:to
486:mathsf
486:to
487:Ham
487:Phys
487:hookrightarrow
487:to
488:Ham
488:mathrm
488:text
488:to
489:\
48:newtheorem
490:Z
490:mathsf
490:to
491:QChan
491:Z
491:to
492:\
493:mathsf
493:to
494:Lambda
494:mathbf
494:mathcal
494:mathrm
494:op
494:to
495:Vect
495:to
496:mathbf
496:mathcal
496:mathrm
496:op
496:partial
497:\
497:mathbf
497:to
498:mathsf
498:to
499:alpha
499:mathbf
499:to
4:usepackage
500:\
500:mathcal
500:partial
501:mathsf
501:to
502:C
502:dagger
502:op
502:to
503:id
503:to
504:\
504:dagger
504:id
504:to
505:mathsf
505:to
506:Phys
506:eta
506:varepsilon
507:End
507:Tr
507:to
508:Area
508:\
508:gamma
508:to
509:mathsf
509:to
510:Info
510:mathcal
512:\
513:bottomrule
514:end
515:end
517:smallskip
51:C
51:mathcal
51:newcommand
520:emph
520:mathsf
521:to
522:to
527:mathsf
528:emph
52:D
52:mathcal
52:newcommand
532: 
532:mathsf
532:to
536:mathsf
53:E
53:mathcal
53:newcommand
540:subsection
541:label
545:Cref
545:to
546:mathsf
547:emph
548:emph
54:Phys
54:mathbf
54:newcommand
550:mathsf
550:paragraph
550:to
552:Ham
552:mathrm
552:mathsf
552:rho
552:to
553:Info
553:to
554:Ham
554:rho
555:Ham
555:mathrm
556:Ham
556:pi
557:mathsf
55:Info
55:mathbf
55:newcommand
561:mathsf
561:paragraph
561:to
562:Lambda
562:mathbf
562:mathcal
562:mathrm
562:op
562:to
563:Vect
563:mathsf
564:mapsto
569:Z
569:mathsf
569:paragraph
569:to
56:Hilb
56:mathbf
56:newcommand
571:Ham
571:to
572:Ham
572:Z
572:mathrm
572:text
572:times
572:to
573:Z
575:Ham
575:text
576:Z
576:boxtimes
576:times
577:Ham
577:mathrm
577:text
57:FHilb
57:mathbf
57:newcommand
580:mathsf
580:paragraph
580:to
581:mathcal
581:mathsf
581:partial
582:Info
582:mathbf
582:partial
583:mathrm
584:to
585:mathbf
585:to
586:mathbf
589:mathsf
589:paragraph
589:to
58:Vect
58:mathbf
58:newcommand
591:Tr
592:Hilb
592:hookrightarrow
593:Tr
593:bar
593:circ
595:gamma
595:log
597:smallskip
59:Set
59:mathbf
59:newcommand
5:usepackage
605:section
606:label
609:Theory
60:Cob
60:mathbf
60:newcommand
611:Theory
611:subsection
613:begin
614:label
615:emph
617:mathsf
618:begin
619:C
619:item
619:mathcal
619:mathrm
619:mathsf
619:rho
619:to
61:Bord
61:mathbf
61:newcommand
620:mathcal
621:Ham
621:item
621:mathsf
622:C
622:hookrightarrow
623:C
623:Z
623:item
623:mathrm
623:mathsf
623:sigma
623:to
624:C
624:item
624:mathsf
625:C
625:Set
625:op
625:to
626:item
626:mathsf
626:to
627:C
627:in
627:mathbf
628:C
628:dagger
628:item
628:mathsf
628:op
628:to
629:dagger
62:Cat
62:mathbf
62:newcommand
630:item
630:mathsf
631:eta
631:otimes
631:to
631:varepsilon
632:to
633:C
633:item
633:mathcal
633:mathsf
634:C
635: 
635:C
635:mathcal
636:texttt
637:end
638:C
638:emph
639:emph
63:Ham
63:mathbf
63:newcommand
641:end
643:Theory
643:begin
644:label
645:Theory
646:begin
647:C
647:emph
647:item
648:dagger
648:mathsf
648:subseteq
648:{
649:C
649:emph
649:ldots
649:mathsf
649:}
64:Phase
64:mathbf
64:newcommand
650:Cref
650:Phys
651:Phys
651:emptyset
652:Info
652:ldots
653:eqref
654:emph
654:item
655:C
655:dagger
655:to
656:dagger
656:subseteq
657:C
657:in
657:mathsf
658:C
658:mathsf
659:Rightarrow
659:emph
659:eta
659:item
65:Floq
65:mathbf
65:newcommand
662:end
667:end
669:begin
66:InfoGeom
66:mathbf
66:newcommand
670:Cref
673:infty
674:infty
675:Cref
676:end
678:subsection
67:Theory
67:mathbf
67:newcommand
681:Theory
683:begin
684:label
685:;
685:Info
685:Phys
685:to
685:xrightarrow
686:;
686:Info
686:to
686:xrightarrow
687:Info
688:end
68:Rep
68:mathbf
68:newcommand
692:begin
693:Info
693:Phys
693:item
693:to
694:dagger
696:Info
696:item
696:to
697:BG
697:C
697:dagger
699:BG
699:C
699:pi
69:QChan
69:mathbf
69:newcommand
700:Info
700:item
700:to
701:BG
701:Ham
701:mathrm
701:to
702:Ham
702:Z
702:text
702:times
702:to
705:Info
705:item
705:to
709:end
70:mathrm
70:newcommand
70:op
711:subsection
713:Cref
714:Theory
716:begin
717:centering
718:begin
71:id
71:mathrm
71:newcommand
727:footnotesize
727:sffamily
72:Hom
72:mathrm
72:newcommand
731:footnotesize
731:itshape
734:Phys
734:node
735:Info
735:\
735:dagger
735:footnotesize
735:mathsf
735:node
735:otimes
736:BG
736:Ham
736:Info
736:\
736:footnotesize
736:node
736:pi
737:,
737:Ham
737:Info
737:Z
737:\
737:footnotesize
737:node
737:text
737:times
738:Info
738:\
738:footnotesize
738:node
73:End
73:mathrm
73:newcommand
740:draw
740:small
741:draw
741:small
741:to
742:draw
742:small
742:to
743:draw
743:small
743:to
745:dagger
745:mathsf
745:node
746:mathsf
746:node
746:to
747:mathsf
747:node
747:to
748:mathsf
748:node
748:to
74:Tr
74:mathrm
74:newcommand
750:draw
751:draw
752:draw
753:draw
755:node
756:\
756:gamma
756:log
756:mathcal
756:node
757:\
757:node
757:nu
758:\
758:node
75:Ob
75:mathrm
75:newcommand
760:draw
761:draw
762:draw
763:draw
764:end
765:caption
766:Theory
768:Cref
76:AdS
76:mathrm
76:newcommand
772:label
773:end
775:subsection
777:begin
778:label
779:Theory
77:CFT
77:mathrm
77:newcommand
780:[
781:Phys
781:circ
781:to
782:Info
782:to
783:]
787:end
789:begin
78:Area
78:newcommand
78:operatorname
790:Cref
791:mathsf
793:to
794:mathsf
794:to
797:Theory
798:dagger
798:to
799:to
79:BG
79:mathrm
79:newcommand
800:to
803:end
805:begin
806:label
807:Cref
808:emph
809: 
80:Z
80:mathbb
80:newcommand
812:begin
813:item
813:to
814:cite
815:cite
816:cite
816:gamma
818:item
818:leq
818:tau
818:to
819:,
819:cite
819:exp
819:omega
819:sim
81:R
81:mathbb
81:newcommand
822:item
822:to
823:cite
824:cite
826:cite
828:end
829:emph
82:enc
82:mathrm
82:newcommand
832:cite
834:emph
835:Cref
837:emph
839:Cref
83:Lift
83:mathrm
83:newcommand
843:end
845:subsection
847:Info
847:Phys
847:to
84:HaPPY
84:newcommand
84:textsc
850:begin
851:label
852:subsetneq
852:{
852:}
853:bigcup
853:in
853:mathrm
854:Info
856:eqref
857:end
859:begin
860:{
860:}
861:FHilb
864:{
864:}
866:end
868:Cref
868:emph
871:section
872:label
878:subsection
879:label
87:definecolor
881:begin
882:label
883:Tr
883:log
883:rho
885:begin
886:Tr
886:item
889:gamma
889:item
889:log
88:AddEverypageHook
890:alpha
890:gamma
890:mathcal
890:partial
892:gamma
892:item
892:log
892:mathcal
893:mathcal
894:Rep
894:Z
894:boxtimes
894:mathcal
895:Area
895:gamma
895:item
898:end
899:end
89:ifnum
89:value
8:usepackage
902:R
902:geq
902:mathbf
902:op
902:to
903:Tr
903:log
903:rho
904:Phys
904:rho
905:eta
905:gamma
905:varepsilon
90:begin
910:subsection
911:label
913:begin
914:label
916:begin
917:item
917:mathsf
917:rho
918:Phys
918:mathcal
918:mathrm
918:to
919:item
91:node
921:mathbf
921:mathrm
921:to
922:Z
922:item
923:Z
923:times
925:item
928:end
929:end
935:Cref
937:subsection
938:label
940:begin
941:label
943:begin
944:item
946:item
947:Ham
947:in
947:pi
947:to
949:item
94:Large
94:bfseries
94:color
94:sffamily
952:item
955:end
956:end
959:leftrightarrow
962:subsection
963:label
965:begin
966:label
968:begin
969:item
96:paperheight
970:BG
970:Ham
970:mathrm
971:BG
971:rho
972:item
973:Z
973:hookrightarrow
973:times
974:Z
975:item
978:end
979:end
97:quad
985:subsection
986:label
988:begin
988:dagger
989:label
98:,
98:cap
98:quad
990:dagger
991:begin
992:item
993:dagger
994:item
995:QChan
995:dagger
995:mathbf
995:subset
997:dagger
997:item
998:dagger
999:end
9:usepackage

exec
/usr/local/bin/zsh -lc "nl -ba papers/synthesis/paper.tex | sed -n '1261,1675p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
  1261	\item \emph{Rigorous Floquet--Floquet composition.}
  1262	The lift $L_{II \to III}$ is rigorous in the prethermal regime (time $t
  1263	\leq \tau_*$) and for MBL-protected DTCs. Outside these regimes, what is the
  1264	correct categorical statement of Floquet phase classification when the
  1265	system heats to infinite temperature? Is there a colimit-completion of the
  1266	prethermal lift that captures the heating regime?
  1267	
  1268	\item \emph{Categorical AdS/CFT.}
  1269	Formulate the AdS/CFT duality as a precise functor between well-defined
  1270	$\infty$-categories. The functor should restrict to the HaPPY isometry on
  1271	the discrete tiling and to the Maldacena duality on its semiclassical limit.
  1272	This is open at the level of both the source and the target categories.
  1273	
  1274	\item \emph{Non-perturbative Ryu--Takayanagi.}
  1275	The HaPPY model exhibits an exact RT formula. The semiclassical RT formula
  1276	\cite{ryutakayanagi2006} is rigorous to leading order in $G_N$. Is there a
  1277	non-perturbative compositional derivation interpolating these two regimes
  1278	(perhaps via the island formula and the quantum extremal surface
  1279	prescription)?
  1280	
  1281	\end{enumerate}
  1282	
  1283	\subsection*{Problems involving cross-cutting themes}
  1284	
  1285	\begin{enumerate}[label=O\arabic*., leftmargin=2.6em, resume]
  1286	
  1287	\item \emph{Floquet holography.}
  1288	What is the holographic dual of a Floquet CFT on the boundary? Does the
  1289	bulk become time-dependent in a controlled way (perhaps a slowly-rotating
  1290	geometry in the prethermal regime)? The Part~III hooks for Part~IV imply
  1291	that DTC obstruction $2$-cells should correspond to non-trivial
  1292	$2$-morphisms in the holographic functor; explicit examples are absent.
  1293	
  1294	\item \emph{Categorical fracton order.}
  1295	Fracton phases (Vijay--Haah--Fu 2016) have sub-extensive ground-state
  1296	degeneracy and sub-system symmetries, neither of which fits in the
  1297	modular tensor category framework of Part~II. Find a categorical
  1298	extension of the Part~II classification (perhaps via higher categories,
  1299	or via fusion $2$-categories) that captures fractons. This bears
  1300	directly on the modular composition since fracton phases composed with
  1301	Part~III drives produce ``fracton time crystals'' whose existence is
  1302	empirically suggested but unclassified.
  1303	
  1304	\item \emph{Fisher metric = bulk metric (Miyaji--Takayanagi).}
  1305	The Miyaji--Takayanagi conjecture asserts that the Fisher--Bures metric on
  1306	the space of CFT states equals the bulk AdS metric. Prove or disprove
  1307	this in a controlled limit (e.g.\ large-$N$, large-coupling, on a fixed
  1308	state space). A modular formulation: the conjecture asserts that the
  1309	emergent metric functor of Part~IV factors through a continuum limit.
  1310	
  1311	\item \emph{Continuous time crystals.}
  1312	The Watanabe--Oshikawa no-go theorem precludes continuous time-crystalline
  1313	phases in equilibrium. Is there a Part~III + Part~IV framework in which
  1314	\emph{quasi-continuous} time-translation symmetry breaking arises from
  1315	holographic codes whose boundary CFTs flow under irrational
  1316	modular periods?
  1317	
  1318	\end{enumerate}
  1319	
  1320	\subsection*{Problems on the modular thesis}
  1321	
  1322	\begin{enumerate}[label=O\arabic*., leftmargin=2.6em, resume]
  1323	
  1324	\item \emph{Tightness of the non-derivability proposition.}
  1325	\Cref{prop:gen-nonderiv} (and Proposition 8.2 of Part~IV) is
  1326	non-derivability \emph{within the proposed schema}. Is there a stronger
  1327	statement: that no alternative compositional framework with strictly
  1328	fewer ingredients can reproduce the Fisher--Bures metric? This is open at
  1329	the level of formalisation.
  1330	
  1331	\item \emph{Operational signature of compositionality.}
  1332	The modular thesis claims emergent properties arise only from composition.
  1333	Operationally, can we design an experiment (e.g.\ a quantum simulator
  1334	with Floquet drive on a topologically ordered substrate) whose output is
  1335	provably accessible only when all three of Parts II--III--IV's
  1336	ingredients are present? A positive answer would convert the modular
  1337	thesis from a structural to a genuinely empirical claim.
  1338	
  1339	\item \emph{Comparison with alternative compositional schemes.}
  1340	The Schreiber--Shulman cohesive HoTT framework, the Costello--Gwilliam
  1341	factorisation algebra framework, and the algebraic QFT of Haag--Kastler
  1342	each provide alternative compositional formalisms. Establish precise
  1343	comparison functors between these and our $\Theory$. The comparison
  1344	should address (a) categorical primitives (which monoidal/$\dagger$/2-categorical
  1345	data each framework axiomatises); (b) compositional rules (how each
  1346	framework builds layered constructions); (c) scope of emergent phenomena
  1347	captured (which of \Cref{em:smc}--\ref{em:fisher} each framework reaches).
  1348	Are any of them isomorphic at the Part~I level? At the Part~I + Part~II
  1349	level? What about higher levels?
  1350	
  1351	\end{enumerate}
  1352	
  1353	\section{Conclusion and Outlook}
  1354	\label{sec:conclusion}
  1355	
  1356	\subsection{Summary}
  1357	
  1358	We have presented the synthesis of a four-paper modular research series on
  1359	emergent spacetime dynamics. The central thesis is that the emergent
  1360	properties of physical structure --- from long-range entanglement and
  1361	anyonic statistics, through time crystals and anomalous Floquet
  1362	invariants, to the Ryu--Takayanagi area formula and the Fisher--Bures
  1363	metric --- are \emph{compositional}: each emerges from the layered
  1364	combination of prior categorical structures via explicit functorial
  1365	liftings, not from any single law in isolation. We have:
  1366	
  1367	\begin{itemize}[leftmargin=2em]
  1368	\item recapped the categorical primitives contributed by each constituent
  1369	  paper (\Cref{sec:recap});
  1370	\item tabulated the eight Composition Hooks of Part~I and their
  1371	  consumption sites across Parts II--IV (\Cref{sec:hook-ledger});
  1372	\item presented the compositional functor chain $\Phys \to \Info_1 \to
  1373	  \Info_2 \to \Info_3 \to \Info_4$ as a $1$-cell in a $2$-category
  1374	  $\Theory$ of physical theories, with explicit hook tracking
  1375	  (\Cref{sec:functor-chain});
  1376	\item isolated six cross-cutting themes that thread all four papers
  1377	  (\Cref{sec:themes});
  1378	\item catalogued twelve emergent properties with non-derivability
  1379	  witnesses, generalising Proposition 8.2 of Part~IV
  1380	  (\Cref{sec:catalogue});
  1381	\item enumerated eleven open compositional problems, with explicit
  1382	  formalisation gaps and testable predictions (\Cref{sec:open}).
  1383	\end{itemize}
  1384	
  1385	\subsection{Modular composition is the mechanism}
  1386	
  1387	The slogan of the series is that \emph{modular composition is the mechanism}.
  1388	This means three interrelated things. First, the framework is not a
  1389	unification: replacing any single layer with a different filling of its hook
  1390	leaves the remainder intact. Second, the framework is genuinely typed: each
  1391	hook has a categorical signature that any candidate filling must respect.
  1392	Third, the emergent content of the framework is irreducibly compositional:
  1393	no proper sub-chain produces the highest-level outputs.
  1394	
  1395	Taken together these three commitments make the modular framework an
  1396	engineering discipline as much as a mathematical one. New physical theories
  1397	can be slotted in as alternative fillings of any hook; the rest of the
  1398	framework continues to apply, with appropriate updates to the typed outputs.
  1399	The synthesis is thus an interface specification, not a closed system.
  1400	
  1401	\subsection{Outlook: extensions and applications}
  1402	
  1403	We close with six speculative directions for extending the modular
  1404	framework, ordered roughly by ambition.
  1405	
  1406	\paragraph{1. de Sitter holography.} The framework is articulated for
  1407	AdS-style holography (Part~IV). Replace the hyperbolic tiling by a
  1408	spherical or de Sitter analog and ask whether the modular composition
  1409	produces a dS bulk. The answer is presumably layer-IV-specific (the
  1410	modular composition up to Part~III is geometry-agnostic), but the precise
  1411	formulation is open.
  1412	
  1413	\paragraph{2. Quantum simulators.} The Haskell encodings in each paper
  1414	are designed for executable verification on small instances. A natural
  1415	extension is to a programmable quantum simulator (e.g.\ a NISQ device)
  1416	that realises the Part~IV holographic code on a Floquet-driven Part~II
  1417	substrate, validating the compositional thesis at experimental scale.
  1418	
  1419	\paragraph{3. Fault-tolerant computation.} Part~II topological order is the
  1420	substrate of fault-tolerant quantum computation. The Part~III Floquet
  1421	extension produces drive-stabilised codes whose error rates scale with
  1422	$\exp(c \omega / J)$ in the prethermal regime. The Part~IV holographic
  1423	extension might reveal that fault tolerance is itself an emergent
  1424	geometric property.
  1425	
  1426	\paragraph{4. Categorical machine learning.} The Fisher--Bures metric of
  1427	Part~IV is the natural geometry of statistical inference. Extending the
  1428	modular framework to encompass classical statistical learning (where
  1429	Part~II is replaced by a classification of statistical phases) is a
  1430	direction with applications to machine-learning theory.
  1431	
  1432	\paragraph{5. Higher-categorical refinements.} Each layer can be refined
  1433	to higher-categorical analogues: $(2,2)$-categorical Part~I for extended
  1434	TQFTs, fusion $2$-categories for Part~II $(3{+}1)$D topological phases,
  1435	etc. The modular composition should extend coherently; verifying this is
  1436	open work.
  1437	
  1438	\paragraph{6. Quantum gravity.} The most ambitious extension: identify
  1439	the modular framework's Part~IV outputs with the elementary quanta of
  1440	quantum gravity. The Fisher--Bures metric then becomes a candidate for
  1441	the quantum gravitational metric, and emergent diffeomorphism invariance
  1442	is a Part-IV emergent symmetry. Whether this can be made precise is the
  1443	single largest open problem of the series.
  1444	
  1445	\subsection{Final remarks}
  1446	
  1447	We end where we began. The four-paper series \emph{Emergent Spacetime
  1448	Dynamics} is a modular framework, not a unified theory. Its claims are
  1449	structural: that emergent geometry can be \emph{built}, not merely
  1450	\emph{posited}, by the compositional layering of categorical, phase,
  1451	modulation, and information-geometric structure. The synthesis is the
  1452	articulation of how this building proceeds: which hooks are consumed at
  1453	each layer, which emergent properties appear at each layer, and which are
  1454	irreducibly compositional. We hope it provides a usable framework for
  1455	further work --- both critical (challenging individual lifts or hooks) and
  1456	constructive (proposing alternative fillings) --- rather than a closed
  1457	edifice. The conviction that motivated us throughout was that physics
  1458	composes, that composition is itself a mathematical operation, and that
  1459	spacetime is one of its emergent outputs.
  1460	
  1461	\section*{Acknowledgements}
  1462	
  1463	The authors thank the Emergent Spacetime Dynamics workgroup, the
  1464	referees of Parts I--IV for productive criticism that shaped the
  1465	compositional thesis, and the broader categorical-physics community for
  1466	the foundational results on which this synthesis rests
  1467	\cite{atiyah1988, baezdolan1995, baezstay2009, abramskycoecke2004,
  1468	lurie2009, kitaev2003, levinwen2005, chen2013, kitaevpreskill2006,
  1469	else2016, khemani2016, bukov2015, rudner2020, roy2017, pyhp2015,
  1470	ryutakayanagi2006, vanraamsdonk2010, maldacena1997, maldacenasusskind2013,
  1471	amari2016, fghmv2014}.
  1472	
  1473	\emergencystretch=2em
  1474	\begin{thebibliography}{99}
  1475	
  1476	\bibitem{partI}
  1477	MagnetonIO Research,
  1478	\emph{Law I --- Mathematical Formalisms: Categorical Foundations for
  1479	  Matter--Information Correspondence},
  1480	Emergent Spacetime Dynamics, Paper 1 of 4 (2026).
  1481	
  1482	\bibitem{partII}
  1483	MagnetonIO Research,
  1484	\emph{Law II --- Phase-bound Matter: Functorial Classification of
  1485	  Thermodynamic and Topological Phases},
  1486	Emergent Spacetime Dynamics, Paper 2 of 4 (2026).
  1487	
  1488	\bibitem{partIII}
  1489	MagnetonIO Research,
  1490	\emph{Law III --- Frequency-modulated Processes: Floquet Phases as
  1491	  Natural Transformations},
  1492	Emergent Spacetime Dynamics, Paper 3 of 4 (2026).
  1493	
  1494	\bibitem{partIV}
  1495	MagnetonIO Research,
  1496	\emph{Law IV --- Information-bearing Structures: Emergent Geometry from
  1497	  Compositional Information},
  1498	Emergent Spacetime Dynamics, Paper 4 of 4 (2026).
  1499	
  1500	\bibitem{atiyah1988}
  1501	M.~Atiyah,
  1502	\emph{Topological quantum field theories},
  1503	Publ.\ Math.\ IH\'ES \textbf{68} (1988) 175--186.
  1504	
  1505	\bibitem{baezdolan1995}
  1506	J.~C.~Baez and J.~Dolan,
  1507	\emph{Higher-dimensional algebra and topological quantum field theory},
  1508	J.\ Math.\ Phys.\ \textbf{36} (1995) 6073--6105.
  1509	
  1510	\bibitem{baezstay2009}
  1511	J.~C.~Baez and M.~Stay,
  1512	\emph{Physics, topology, logic and computation: a Rosetta Stone},
  1513	in: \emph{New Structures for Physics}, Lecture Notes in Physics
  1514	\textbf{813}, Springer (2011), pp.~95--172; arXiv:0903.0340.
  1515	
  1516	\bibitem{abramskycoecke2004}
  1517	S.~Abramsky and B.~Coecke,
  1518	\emph{A categorical semantics of quantum protocols},
  1519	Proc.\ 19th IEEE Symposium on LICS (2004), pp.~415--425.
  1520	
  1521	\bibitem{lurie2009}
  1522	J.~Lurie,
  1523	\emph{Higher Topos Theory},
  1524	Annals of Math.\ Studies \textbf{170}, Princeton Univ.\ Press (2009);
  1525	arXiv:math/0608040.
  1526	
  1527	\bibitem{maclane1998}
  1528	S.~Mac~Lane,
  1529	\emph{Categories for the Working Mathematician}, 2nd ed.,
  1530	Graduate Texts in Mathematics \textbf{5}, Springer (1998).
  1531	
  1532	\bibitem{lawvere1963}
  1533	F.~W.~Lawvere,
  1534	\emph{Functorial semantics of algebraic theories},
  1535	Proc.\ Natl.\ Acad.\ Sci.\ USA \textbf{50} (1963) 869--872.
  1536	
  1537	\bibitem{kitaev2003}
  1538	A.~Y.~Kitaev,
  1539	\emph{Fault-tolerant quantum computation by anyons},
  1540	Ann.\ Phys.\ \textbf{303} (2003) 2--30; arXiv:quant-ph/9707021.
  1541	
  1542	\bibitem{levinwen2005}
  1543	M.~Levin and X.-G.~Wen,
  1544	\emph{String-net condensation: a physical mechanism for topological
  1545	  phases},
  1546	Phys.\ Rev.\ B \textbf{71} (2005) 045110; arXiv:cond-mat/0404617.
  1547	
  1548	\bibitem{chen2013}
  1549	X.~Chen, Z.-C.~Gu, Z.-X.~Liu, and X.-G.~Wen,
  1550	\emph{Symmetry-protected topological orders and the group cohomology of
  1551	  their symmetry group},
  1552	Phys.\ Rev.\ B \textbf{87} (2013) 155114; arXiv:1106.4772.
  1553	
  1554	\bibitem{kitaevpreskill2006}
  1555	A.~Kitaev and J.~Preskill,
  1556	\emph{Topological entanglement entropy},
  1557	Phys.\ Rev.\ Lett.\ \textbf{96} (2006) 110404; arXiv:hep-th/0510092.
  1558	
  1559	\bibitem{else2016}
  1560	D.~V.~Else, B.~Bauer, and C.~Nayak,
  1561	\emph{Floquet time crystals},
  1562	Phys.\ Rev.\ Lett.\ \textbf{117} (2016) 090402.
  1563	
  1564	\bibitem{khemani2016}
  1565	V.~Khemani, A.~Lazarides, R.~Moessner, and S.~L.~Sondhi,
  1566	\emph{Phase structure of driven quantum systems},
  1567	Phys.\ Rev.\ Lett.\ \textbf{116} (2016) 250401.
  1568	
  1569	\bibitem{bukov2015}
  1570	M.~Bukov, L.~D'Alessio, and A.~Polkovnikov,
  1571	\emph{Universal high-frequency behavior of periodically driven
  1572	  systems},
  1573	Adv.\ Phys.\ \textbf{64} (2015) 139--226.
  1574	
  1575	\bibitem{rudner2020}
  1576	M.~S.~Rudner and N.~H.~Lindner,
  1577	\emph{Band structure engineering and non-equilibrium dynamics in
  1578	  Floquet topological insulators},
  1579	Nat.\ Rev.\ Phys.\ \textbf{2} (2020) 229--244.
  1580	
  1581	\bibitem{roy2017}
  1582	R.~Roy and F.~Harper,
  1583	\emph{Periodic table for Floquet topological insulators},
  1584	Phys.\ Rev.\ B \textbf{96} (2017) 155118.
  1585	
  1586	\bibitem{pyhp2015}
  1587	F.~Pastawski, B.~Yoshida, D.~Harlow, and J.~Preskill,
  1588	\emph{Holographic quantum error-correcting codes: toy models for the
  1589	  bulk/boundary correspondence},
  1590	J.\ High Energy Phys.\ \textbf{2015} (2015) 149; arXiv:1503.06237.
  1591	
  1592	\bibitem{ryutakayanagi2006}
  1593	S.~Ryu and T.~Takayanagi,
  1594	\emph{Holographic derivation of entanglement entropy from AdS/CFT},
  1595	Phys.\ Rev.\ Lett.\ \textbf{96} (2006) 181602; arXiv:hep-th/0603001.
  1596	
  1597	\bibitem{vanraamsdonk2010}
  1598	M.~Van~Raamsdonk,
  1599	\emph{Building up spacetime with quantum entanglement},
  1600	Gen.\ Rel.\ Grav.\ \textbf{42} (2010) 2323--2329; arXiv:1005.3035.
  1601	
  1602	\bibitem{maldacena1997}
  1603	J.~M.~Maldacena,
  1604	\emph{The large $N$ limit of superconformal field theories and
  1605	  supergravity},
  1606	Int.\ J.\ Theor.\ Phys.\ \textbf{38} (1999) 1113--1133;
  1607	arXiv:hep-th/9711200.
  1608	
  1609	\bibitem{maldacenasusskind2013}
  1610	J.~Maldacena and L.~Susskind,
  1611	\emph{Cool horizons for entangled black holes},
  1612	Fortschr.\ Phys.\ \textbf{61} (2013) 781--811; arXiv:1306.0533.
  1613	
  1614	\bibitem{amari2016}
  1615	S.-I.~Amari,
  1616	\emph{Information Geometry and Its Applications},
  1617	Applied Mathematical Sciences \textbf{194}, Springer (2016).
  1618	
  1619	\bibitem{fghmv2014}
  1620	T.~Faulkner, M.~Guica, T.~Hartman, R.~C.~Myers, and M.~Van~Raamsdonk,
  1621	\emph{Gravitation from entanglement in holographic CFTs},
  1622	J.\ High Energy Phys.\ \textbf{2014} (2014) 051; arXiv:1312.7856.
  1623	
  1624	\bibitem{harlow2017}
  1625	D.~Harlow,
  1626	\emph{The Ryu--Takayanagi formula from quantum error correction},
  1627	Comm.\ Math.\ Phys.\ \textbf{354} (2017) 865--912; arXiv:1607.03901.
  1628	
  1629	\bibitem{schreibershulman2014}
  1630	U.~Schreiber and M.~Shulman,
  1631	\emph{Quantum gauge field theory in cohesive homotopy type theory},
  1632	EPTCS \textbf{158} (2014) 109--126; arXiv:1408.0054.
  1633	
  1634	\bibitem{costello2017}
  1635	K.~Costello and O.~Gwilliam,
  1636	\emph{Factorization Algebras in Quantum Field Theory}, Vol.~1,
  1637	New Math.\ Monographs \textbf{31}, Cambridge Univ.\ Press (2017).
  1638	
  1639	\bibitem{watanabe2015}
  1640	H.~Watanabe and M.~Oshikawa,
  1641	\emph{Absence of quantum time crystals},
  1642	Phys.\ Rev.\ Lett.\ \textbf{114} (2015) 251603.
  1643	
  1644	\bibitem{zhang2017}
  1645	J.~Zhang \emph{et al.},
  1646	\emph{Observation of a discrete time crystal},
  1647	Nature \textbf{543} (2017) 217--220.
  1648	
  1649	\bibitem{vijayhaahfu2016}
  1650	S.~Vijay, J.~Haah, and L.~Fu,
  1651	\emph{Fracton topological order, generalized lattice gauge theory and
  1652	  duality},
  1653	Phys.\ Rev.\ B \textbf{94} (2016) 235157; arXiv:1603.04442.
  1654	
  1655	\bibitem{miyajitakayanagi2015}
  1656	M.~Miyaji and T.~Takayanagi,
  1657	\emph{Surface/state correspondence as a generalized holography},
  1658	PTEP \textbf{2015} (2015) 073B03; arXiv:1503.03542.
  1659	
  1660	\bibitem{freedhopkins2021}
  1661	D.~S.~Freed and M.~J.~Hopkins,
  1662	\emph{Reflection positivity and invertible topological phases},
  1663	Geom.\ Topol.\ \textbf{25} (2021) 1165--1330; arXiv:1604.06527.
  1664	
  1665	\bibitem{joyalstreet1991}
  1666	A.~Joyal and R.~Street,
  1667	\emph{The geometry of tensor calculus I},
  1668	Adv.\ Math.\ \textbf{88} (1991) 55--112.
  1669	
  1670	\end{thebibliography}
  1671	
  1672	\end{document}

exec
/usr/local/bin/zsh -lc "perl -ne 'print \""'$.:$_" if /'"\\\\(label|ref|eqref|Cref|cite)\\{/' papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
151:\label{sec:intro}
180:  \item \textbf{Part I --- Mathematical Formalisms}~\cite{partI}: establishes
185:  \item \textbf{Part II --- Phase-bound Matter}~\cite{partII}: classifies
193:  \item \textbf{Part III --- Frequency-modulated Processes}~\cite{partIII}:
202:  \item \textbf{Part IV --- Information-bearing Structures}~\cite{partIV}:
222:    typed output produced (\Cref{sec:hook-ledger}).
226:    (\Cref{sec:functor-chain}). The diagram is presented in TikZ.
230:    dagger preservation, and obstruction $2$-cells (\Cref{sec:themes}).
234:    (\Cref{sec:catalogue}).
237:    (\Cref{sec:open}).
240:    fault-tolerant quantum simulation (\Cref{sec:conclusion}).
265:\Cref{sec:recap} provides one-page recapitulations of the categorical
266:primitives contributed by each of Laws I--IV. \Cref{sec:hook-ledger} tabulates
268:\Cref{sec:functor-chain} presents the compositional functor chain as a
270:lift. \Cref{sec:themes} isolates the six cross-cutting themes.
271:\Cref{sec:catalogue} catalogues twelve emergent properties with
272:non-derivability sketches. \Cref{sec:open} lists eleven open compositional
273:problems. \Cref{sec:conclusion} concludes.
276:\label{sec:recap}
284:\label{sec:recap-I}
286:Part~I~\cite{partI} fixes the language of the series. Its central primitives
303:$2$-category $\Theory$ defined in \Cref{def:theory}. The functor $M$ is
337:\label{sec:recap-II}
339:Part~II~\cite{partII} consumes hooks $\mathsf{H1}$, $\mathsf{H2}$,
382:\label{sec:recap-III}
384:Part~III~\cite{partIII} consumes Part~I's hooks $\mathsf{H3}, \mathsf{H6}$
422:\label{sec:recap-IV}
424:Part~IV~\cite{partIV} consumes hooks $\mathsf{H5}$, $\mathsf{H7}$ from Part~I
463:\label{sec:hook-ledger}
541:\label{sec:hook-mechanism}
545:\Cref{def:hook-sig}. For each lift $L_{X \to Y}$ and each hook
606:\label{sec:functor-chain}
614:\label{def:hook-sig}
644:\label{def:theory}
650:  (in the sense of \Cref{def:hook-sig}). The category $\Phys$ corresponds
653:  sets along the chain \eqref{eq:main-chain}.
670:\Cref{def:theory} is a deliberately minimal abstraction. We do not claim it
675:--- are open formalisation problems (\Cref{sec:open}).
684:\label{eq:main-chain}
713:\Cref{fig:main-diagram} presents the chain as a $2$-functor diagram in
768:ledger (\Cref{sec:hook-ledger}). Dotted red arrows indicate emergent
772:\label{fig:main-diagram}
778:\label{thm:composition}
790:By the hook ledger of \Cref{sec:hook-ledger}, each lift consumes only
806:\label{rem:limit-rigour}
807:\Cref{thm:composition} is a structural assertion about the typed signature
814:  $H^{d+1}(G, U(1))$ \cite{chen2013}, the MTC classification of $(2{+}1)$D
815:  topological phases \cite{kitaev2003, levinwen2005}, and the
816:  Kitaev--Preskill--Levin--Wen formula for $\gamma$ \cite{kitaevpreskill2006}
819:  \sim \exp(c\,\omega/J)$ and for MBL-protected DTCs \cite{else2016,
823:  \cite{pyhp2015} (where the Ryu--Takayanagi formula is exact) and in the
824:  semiclassical limit of continuum holography \cite{ryutakayanagi2006,
826:  (Miyaji--Takayanagi conjecture \cite{miyajitakayanagi2015}) remains
832:DTCs observed in trapped-ion arrays \cite{zhang2017}; HaPPY-style codes
835:non-derivability}: \Cref{prop:gen-nonderiv} is provably tight at the
839:is well-typed (\Cref{thm:composition}); refining the conjectural lifts to
851:\label{prop:gen-nonderiv}
856:proper sub-chain of \eqref{eq:main-chain}.
868:\Cref{prop:gen-nonderiv} is the precise modular thesis: \emph{emergent
872:\label{sec:themes}
879:\label{sec:theme-EE}
882:\label{theme:EE}
911:\label{sec:theme-SPT}
914:\label{theme:SPT}
935:\Cref{em:lre,em:tee,em:dtc,em:happy} of \Cref{sec:catalogue}.
938:\label{sec:theme-fp}
941:\label{theme:fp}
963:\label{sec:theme-pullback}
966:\label{theme:pullback}
986:\label{sec:theme-dagger}
989:\label{theme:dagger}
1008:\label{sec:theme-obstruction}
1011:\label{theme:obstr}
1034:\label{sec:catalogue}
1053:Each of the six cross-cutting themes of \Cref{sec:themes} appears
1056:\item \Cref{theme:EE} (entanglement entropy) underlies
1057:  \Cref{em:tee,em:rt} via $\gamma$ and the area formula;
1058:\item \Cref{theme:SPT} (symmetry) underlies \Cref{em:dtc,em:afi};
1059:\item \Cref{theme:fp} (fixed points) underlies \Cref{em:preth,em:fisher};
1060:\item \Cref{theme:pullback} (functorial pullback) underlies
1061:  \Cref{em:lre,em:happy};
1062:\item \Cref{theme:dagger} (dagger) underlies \Cref{em:smc,em:born,em:qec};
1063:\item \Cref{theme:obstr} (obstruction $2$-cells) underlies
1064:  \Cref{em:dtc,em:afi}.
1073:\label{em:smc}
1083:\label{em:born}
1099:\label{em:lre}
1110:\label{em:tee}
1119:\label{em:anyon}
1128:\label{em:dtc}
1140:\label{em:afi}
1151:\label{em:preth}
1162:\label{em:qec}
1171:\label{em:happy}
1181:\label{em:rt}
1193:\label{em:fisher}
1244:\label{sec:open}
1256:Refine \Cref{def:theory} to a homotopy-coherent $(\infty,2)$-category of
1258:Determine whether the chain \eqref{eq:main-chain} extends to a full
1276:\cite{ryutakayanagi2006} is rigorous to leading order in $G_N$. Is there a
1325:\Cref{prop:gen-nonderiv} (and Proposition 8.2 of Part~IV) is
1347:captured (which of \Cref{em:smc}--\ref{em:fisher} each framework reaches).
1354:\label{sec:conclusion}
1369:  paper (\Cref{sec:recap});
1371:  consumption sites across Parts II--IV (\Cref{sec:hook-ledger});
1375:  (\Cref{sec:functor-chain});
1377:  (\Cref{sec:themes});
1380:  (\Cref{sec:catalogue});
1382:  formalisation gaps and testable predictions (\Cref{sec:open}).
1467:\cite{atiyah1988, baezdolan1995, baezstay2009, abramskycoecke2004,

exec
/usr/local/bin/zsh -lc "perl -0ne 'while(/\\\\cite(?:\\[["'^'"\\]]*\\])?\\{(["'^}]*)'"\\}/g){print \""'$1'"\\n\"}' papers/synthesis/paper.tex | tr ',' '\\n' | sed 's/"'^ *//;s/ *$//'"' | sort -u" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:

abramskycoecke2004
amari2016
atiyah1988
baezdolan1995
baezstay2009
bukov2015
chen2013
else2016
fghmv2014
khemani2016
kitaev2003
kitaevpreskill2006
levinwen2005
lurie2009
maldacena1997
maldacenasusskind2013
miyajitakayanagi2015
partI
partII
partIII
partIV
pyhp2015
roy2017
rudner2020
ryutakayanagi2006
vanraamsdonk2010
zhang2017

exec
/usr/local/bin/zsh -lc "perl -0ne 'my %labels; while(/\\\\label\\{(["'^}]*)'"\\}/g){"'$labels{$1}++} my %refs; while(/'"\\\\(?:Cref|cref|ref|eqref|autoref)\\{(["'^}]*)'"\\}/g){for my "'$r (split /,/, $1){$r =~ s/''^'"\\s+|\\s+"'$//g; $refs{$r}++}} print "Undefined refs:'"\\n\"; for my "'$r (sort keys %refs){print "$r'"\\n\" unless "'$labels{$r}} print "Duplicate labels:'"\\n\"; for my "'$l (sort keys %labels){print "$l'"\\n\" if "'$labels{$l}>1} print "Unused labels:'"\\n\"; for my "'$l (sort keys %labels){print "$l'"\\n\" unless "'$refs{$l}}'"' papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
Undefined refs:
Duplicate labels:
Unused labels:
em:anyon
rem:limit-rigour
sec:hook-mechanism
sec:intro
sec:recap-I
sec:recap-II
sec:recap-III
sec:recap-IV
sec:theme-EE
sec:theme-SPT
sec:theme-dagger
sec:theme-fp
sec:theme-obstruction
sec:theme-pullback

exec
/usr/local/bin/zsh -lc 'which chktex || true' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
exec
/usr/local/bin/zsh -lc "perl -0ne 'my %cites; while(/\\\\cite(?:\\[["'^'"\\]]*\\])?\\{(["'^}]*)'"\\}/g){for my "'$c (split /,/, $1){$c =~ s/''^'"\\s+|\\s+"'$//g; $cites{$c}++}} my %bib; while(/'"\\\\bibitem\\{(["'^}]*)'"\\}/g){"'$bib{$1}++} print "Undefined cites:'"\\n\"; for my "'$c (sort keys %cites){print "$c'"\\n\" unless "'$bib{$c}} print "Duplicate bibitems:'"\\n\"; for my "'$b (sort keys %bib){print "$b'"\\n\" if "'$bib{$b}>1} print "Unused bibitems:'"\\n\"; for my "'$b (sort keys %bib){print "$b'"\\n\" unless "'$cites{$b}}'"' papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
/Library/TeX/texbin/chktex

 succeeded in 0ms:
Undefined cites:
Duplicate bibitems:
Unused bibitems:
costello2017
freedhopkins2021
harlow2017
joyalstreet1991
lawvere1963
maclane1998
schreibershulman2014
vijayhaahfu2016
watanabe2015

codex
The label/citation pass found no undefined references or citations and no duplicate labels/bibitems. I did find unused labels and unused bibliography entries, and I’m running `chktex` next to catch source-level LaTeX formatting warnings.
exec
/usr/local/bin/zsh -lc 'chktex -q -n 1 -n 3 -n 8 -n 13 -n 24 -n 36 papers/synthesis/paper.tex' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 exited 2 in 0ms:
Warning 2 in papers/synthesis/paper.tex line 653: Non-breaking space (`~') should have been used.
  sets along the chain \eqref{eq:main-chain}.  
                      ^
Warning 2 in papers/synthesis/paper.tex line 814: Non-breaking space (`~') should have been used.
  $H^{d+1}(G, U(1))$ \cite{chen2013}, the MTC classification of $(2{+}1)$D  
                    ^
Warning 2 in papers/synthesis/paper.tex line 815: Non-breaking space (`~') should have been used.
  topological phases \cite{kitaev2003, levinwen2005}, and the  
                    ^
Warning 2 in papers/synthesis/paper.tex line 816: Non-breaking space (`~') should have been used.
  Kitaev--Preskill--Levin--Wen formula for $\gamma$ \cite{kitaevpreskill2006}  
                                                   ^
Warning 2 in papers/synthesis/paper.tex line 819: Non-breaking space (`~') should have been used.
  \sim \exp(c\,\omega/J)$ and for MBL-protected DTCs \cite{else2016,  
                                                    ^
Warning 2 in papers/synthesis/paper.tex line 823: Non-breaking space (`~') should have been used.
  \cite{pyhp2015} (where the Ryu--Takayanagi formula is exact) and in the  
 ^
Warning 2 in papers/synthesis/paper.tex line 824: Non-breaking space (`~') should have been used.
  semiclassical limit of continuum holography \cite{ryutakayanagi2006,  
                                             ^
Warning 2 in papers/synthesis/paper.tex line 826: Non-breaking space (`~') should have been used.
  (Miyaji--Takayanagi conjecture \cite{miyajitakayanagi2015}) remains  
                                ^
Warning 2 in papers/synthesis/paper.tex line 832: Non-breaking space (`~') should have been used.
DTCs observed in trapped-ion arrays \cite{zhang2017}; HaPPY-style codes  
                                   ^
Warning 2 in papers/synthesis/paper.tex line 856: Non-breaking space (`~') should have been used.
proper sub-chain of \eqref{eq:main-chain}.  
                   ^
Warning 7 in papers/synthesis/paper.tex line 1164: Accent command `\'' needs use of `\i'.
quantum error-correcting codes (Bombin--Mart\'in-Delgado 2006; Kitaev 2003).  
                                            ^^
Warning 2 in papers/synthesis/paper.tex line 1258: Non-breaking space (`~') should have been used.
Determine whether the chain \eqref{eq:main-chain} extends to a full  
                           ^
Warning 2 in papers/synthesis/paper.tex line 1276: Non-breaking space (`~') should have been used.
\cite{ryutakayanagi2006} is rigorous to leading order in $G_N$. Is there a  
^
Warning 12 in papers/synthesis/paper.tex line 1406: Interword spacing (`\ ') should perhaps be used.
\paragraph{1. de Sitter holography.} The framework is articulated for  
             ^
Warning 2 in papers/synthesis/paper.tex line 1467: Non-breaking space (`~') should have been used.
\cite{atiyah1988, baezdolan1995, baezstay2009, abramskycoecke2004,  
^

exec
/usr/local/bin/zsh -lc "perl -0ne 'my @env; while(/\\\\(begin|end)\\{(["'^}]*)'"\\}/g){ if("'$1 eq "begin"){push @env, [$2,$.]} else {my $b=pop @env; if(!$b || $b->[0] ne $2){print "mismatch ending $2 near byte ".pos()."'"\\n\"}} } print \"Unclosed envs:\\n\"; print \""'$_->[0]'"\\n\" for @env;' papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
exec
/usr/local/bin/zsh -lc "rg -n \"\\\\newcommand\\{\\\\[A-Za-z]+\\}|\\\\renewcommand\\{\\\\[A-Za-z]+\\}|\\\\providecommand\\{\\\\[A-Za-z]+\\}\" papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
Unclosed envs:

 exited 2 in 0ms:
rg: regex parse error:
    (?:\newcommand\{\[A-Za-z]+\}|\renewcommand\{\[A-Za-z]+\}|\providecommand\{\[A-Za-z]+\})
                                                             ^^^
error: Unicode property not found

exec
/usr/local/bin/zsh -lc "for p in everypage.sty cleveref.sty tikz-cd.sty enumitem.sty booktabs.sty mathtools.sty; do printf '%s ' \""'$p"; kpsewhich "$p" || true; done' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 390ms:
/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty
tikz-cd.sty /usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
enumitem.sty /usr/local/texlive/2026/texmf-dist/tex/latex/enumitem/enumitem.sty
booktabs.sty /usr/local/texlive/2026/texmf-dist/tex/latex/booktabs/booktabs.sty
mathtools.sty /usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mathtools.sty

exec
/usr/local/bin/zsh -lc "perl -ne 'print \""'$.:$_" if /'"\\\\(?:newcommand|renewcommand|providecommand)\\{\\\\[A-Za-z]+\\}/' papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
51:\newcommand{\C}{\mathcal{C}}
52:\newcommand{\D}{\mathcal{D}}
53:\newcommand{\E}{\mathcal{E}}
54:\newcommand{\Phys}{\mathbf{Phys}}
55:\newcommand{\Info}{\mathbf{Info}}
56:\newcommand{\Hilb}{\mathbf{Hilb}}
57:\newcommand{\FHilb}{\mathbf{FHilb}}
58:\newcommand{\Vect}{\mathbf{Vect}}
59:\newcommand{\Set}{\mathbf{Set}}
60:\newcommand{\Cob}{\mathbf{Cob}}
61:\newcommand{\Bord}{\mathbf{Bord}}
62:\newcommand{\Cat}{\mathbf{Cat}}
63:\newcommand{\Ham}{\mathbf{Ham}}
64:\newcommand{\Phase}{\mathbf{Phase}}
65:\newcommand{\Floq}{\mathbf{Floq}}
66:\newcommand{\InfoGeom}{\mathbf{InfoGeom}}
67:\newcommand{\Theory}{\mathbf{Theory}}
68:\newcommand{\Rep}{\mathbf{Rep}}
69:\newcommand{\QChan}{\mathbf{QChan}}
70:\newcommand{\op}{\mathrm{op}}
71:\newcommand{\id}{\mathrm{id}}
72:\newcommand{\Hom}{\mathrm{Hom}}
73:\newcommand{\End}{\mathrm{End}}
74:\newcommand{\Tr}{\mathrm{Tr}}
75:\newcommand{\Ob}{\mathrm{Ob}}
76:\newcommand{\AdS}{\mathrm{AdS}}
77:\newcommand{\CFT}{\mathrm{CFT}}
78:\newcommand{\Area}{\operatorname{Area}}
79:\newcommand{\BG}{\mathrm{B}G}
80:\newcommand{\Z}{\mathbb{Z}}
81:\newcommand{\R}{\mathbb{R}}
82:\newcommand{\enc}{\mathrm{enc}}
83:\newcommand{\Lift}{\mathrm{Lift}}
84:\newcommand{\HaPPY}{\textsc{HaPPY}}
477:\renewcommand{\arraystretch}{1.18}
1206:\renewcommand{\arraystretch}{1.18}

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\begin\\{(center|figure|tabular|tikzpicture|equation|thebibliography)\\}|\\\\end\\{(center|figure|tabular|tikzpicture|equation|thebibliography)\\}|\\\\paragraph\\{|\\\\subsection\\*?\\{|\\\\section\\*?\\{\" papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\begin\{(center|figure|tabular|tikzpicture|equation|thebibliography)\}|\end\{(center|figure|tabular|tikzpicture|equation|thebibliography)\}|\paragraph\{|\subsection\*?\{|\section\*?\{)
                                                                              ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc "rg -n \"\\b([A-Z][a-z]+(?:--[A-Z][a-z]+|-[A-Z][a-z]+| [A-Z][a-z]+)*) (formula|theorem|classification|conjecture|model|codes|phases)|Part~|Section~|Theorem~|Proposition~|Definition~|Remark~|Hook [0-9]|Paper [0-9]\" papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
125:declared in Part~I, the precise law in which it is consumed and the typed
138:schema; this generalises Proposition 8.2 of Part~IV. Fifth, we enumerate
191:    $\mathsf{H1}, \mathsf{H2}, \mathsf{H4}, \mathsf{H8}$ from Part~I and exposes
192:    five further hooks for Part~III.
201:    DTC obstruction data for Part~IV.
209:    Proposition 8.2 of Part~IV (\emph{non-derivability from any single prior
221:    declared in Part~I, the precise law in which it is consumed and the
286:Part~I~\cite{partI} fixes the language of the series. Its central primitives
298:\paragraph{The matter--information functor.} Part~I posits two specific
306:traceable processes (Theorem 3.5 of Part~I).
308:\paragraph{Sheaves, topoi, and operads.} Part~I formalises locality of
315:\paragraph{Composition hooks $\mathsf{H1}$--$\mathsf{H8}$.} Part~I declares
334:These hooks are the contract between Part~I and the rest of the series.
339:Part~II~\cite{partII} consumes hooks $\mathsf{H1}$, $\mathsf{H2}$,
340:$\mathsf{H4}$, $\mathsf{H8}$ from Part~I and produces a functorial
366:U(1))$. The classification is a functor $\mathrm{SPT}^d : \mathbf{Grp} \to
374:finite-depth local circuits (Theorem 6.5 of Part~II).
376:\paragraph{Hooks for Part~III.} Part~II declares five further hooks consumed
377:by Part~III: extension of $\Ham$ to $\Ham_{T\text{-per}}$; enlargement of
381:\subsection{Part III: Floquet phases as natural transformations}
384:Part~III~\cite{partIII} consumes Part~I's hooks $\mathsf{H3}, \mathsf{H6}$
385:plus Part~II's five hooks, and produces a temporal lifting of the equilibrium
404:truncated functor factors through the Part~II equilibrium classifier.
409:(Theorem 4.3 of Part~III). Period-doubling is captured by a non-invertible
417:\paragraph{Hooks for Part~IV.} Part~III exposes four hooks: the Sambe-space
424:Part~IV~\cite{partIV} consumes hooks $\mathsf{H5}$, $\mathsf{H7}$ from Part~I
425:plus the four Part~III hooks. Its central thesis is that the composition of
437:discrete Ryu--Takayanagi formula
449:\paragraph{Non-derivability (Proposition 8.2 of Part~IV).} The Fisher--Bures
454:in Part~IV.
456:\paragraph{Outputs.} Part~IV produces an emergent metric functor
465:We tabulate, for each Composition Hook declared in Part~I, the lift in which
491:  Strong monoidal functor $F : B\Z_T \to \QChan$ (Part~III
525:which each hook is consumed wherever needed downstream of Part~I.
535:Third, every hook is consumed somewhere downstream. Part~I does not declare
558:category. This is the standard categorical content of Part~II,
559:Section~3.
567:Landau theory in functorial form (Part~II Section~4).
578:content of Part~II Section~13's Hook 5.
587:sheaf. This is the categorical content of Part~IV Section~4.
594:entropy obeys the discrete Ryu--Takayanagi formula $S(A) =
595:|\gamma_A| \log d$. This is Part~IV Theorem~4.5.
640:structure is concretely populated by Part~I-style data.
693:\item $M : \Phys \to \Info_1$ is the matter--information functor of Part~I:
706:  to its information-geometric structure: the Sambe-space embedding (Part~III
737:\node[layer] (I3) at (0, -6.8)     {Part III: $\Info_3 = [\,B(G{\times}\Z_T),\,\Ham_{T\text{-per}}]$\\\footnotesize Floquet phases};
791:Part~I-declared hooks $\mathsf{H1}$--$\mathsf{H8}$ together with the
793:Part~II hooks for $L_{II\to III}$; the four Part~III hooks for
799:Part~II Proposition 2.14 ($L_{I\to II}$), Part~III Proposition 4.6
800:($L_{II\to III}$), and Part~IV Remark 8.1 ($L_{III\to IV}$). Composition
816:  Kitaev--Preskill--Levin--Wen formula for $\gamma$ \cite{kitaevpreskill2006}
823:  \cite{pyhp2015} (where the Ryu--Takayanagi formula is exact) and in the
826:  (Miyaji--Takayanagi conjecture \cite{miyajitakayanagi2015}) remains
836:discrete level (where Part~IV exhibits explicit counterexamples), and
841:utility. Part~IV is explicit about this gradient and presents its
855:Part~IV. Equivalently, the composite $L$ is not factorable through any
860:The case $S = \{I, II, III\}$ is precisely Proposition 8.2 of Part~IV, whose
886:\item In Part~I, $S$ is the trace $\Tr$ in a compact closed dagger
889:\item In Part~II, the topological entanglement entropy $\gamma = \log
892:\item In Part~III, the Floquet TEE $\gamma_T = \log \mathcal{D}_T$ is a
895:\item In Part~IV, the Ryu--Takayanagi formula $S(A) = \Area(\gamma_A) /
901:The progression is hierarchical. Part~I gives the categorical type of $S$:
905:along $\eta, \varepsilon$. Part~II gives a topological constant $\gamma$
906:that detects long-range entanglement. Part~III decorates this with a
907:temporal index. Part~IV identifies $S$ with a geometric area. The same
917:\item In Part~I, hook $\mathsf{H1}$ specifies a $G$-action $\rho :
919:\item In Part~II, this action classifies SPT phases by $H^{d+1}(G, U(1))$
922:\item In Part~III, the symmetry enlarges by $\Z_T$ (discrete temporal
925:\item In Part~IV, the symmetry of the boundary CFT and its modular flow
931:The pattern: a symmetry that is local in Part~I becomes a classification
932:parameter in Part~II, gains a temporal factor in Part~III, and is finally
933:identified with a geometric symmetry in Part~IV. This progression --- from
944:\item Part~I: Mac Lane coherence (every well-typed diagram commutes) is a
946:\item Part~II: Renormalisation-group fixed points represent each phase
949:\item Part~III: Magnus fixed points --- the prethermal effective
952:\item Part~IV: HaPPY tensor-network fixed points are the bulk holographic
969:\item Part~II's classification of $G$-symmetric phases is the connected
972:\item Part~III's Floquet enrichment is the pullback of the equilibrium
975:\item Part~IV's bulk-to-boundary functor is the pullback of the global
990:The $\dagger$-structure of Part~I is preserved by every subsequent lift:
992:\item Part~II requires unitary representations of $G$, so the
994:\item Part~III's Floquet evolution is by definition unitary; the Floquet
997:\item Part~IV's QEC encoder is a $\dagger$-isometry; complementary recovery
1015:\item Part~II: phase transitions are non-invertible natural transformations
1018:\item Part~III: discrete time crystals are obstruction $2$-cells in the
1022:\item Part~IV: the AMPS firewall paradox is an obstruction to monogamy of
1039:fewer laws. The catalogue generalises Proposition 8.2 of Part~IV.
1049:which already appear at Part~II's MTC level without needing Part~I's
1074:\textbf{Layer:} Part~I. The category $\Phys$ admits a $\dagger$-symmetric
1075:monoidal compact closed structure (Theorem 2.7 of Part~I). \textbf{Proof of
1084:\textbf{Layer:} Part~I. The probability formula $p(\phi | \psi) =
1086:compact-closure plus dagger (Theorem 3.5 of Part~I).
1095:property emerges at Part~I and not before.
1100:\textbf{Layer:} Part~II. There exist gapped ground states (e.g.\ toric code)
1102:quantum circuit. \textbf{Non-derivability from Part~I alone:} Part~I's
1111:\textbf{Layer:} Part~II. For a topologically ordered phase, $S(A) = \alpha
1113:universal. \textbf{Non-derivability:} requires both Part~I (compact closure
1114:to define traces, hence entropy) and Part~II (modular tensor category data
1120:\textbf{Layer:} Part~II. Quasi-particles in $(2{+}1)$D topological phases obey
1123:of Part~II. Part~I alone gives only symmetric (boson/fermion) statistics; the
1124:truly braided structure is a Part~II emergent feature.
1129:\textbf{Layer:} Part~III. There exists a Floquet phase whose stroboscopic
1132:\textbf{Non-derivability:} requires Part~I (categorical formulation),
1133:Part~II (spontaneous symmetry breaking machinery), \emph{and} Part~III
1141:\textbf{Layer:} Part~III. The $\nu = 1$ AFI phase has chiral edge modes at
1143:\textbf{Non-derivability:} the bulk Chern number is a Part~II equilibrium
1145:not a Part~II phenomenon. It is detected by the Floquet winding number
1147:Part~III spatio-temporal Brillouin torus $\mathrm{BZ} \times S^1$.
1150:\begin{emerg}[Prethermal phases]
1152:\textbf{Layer:} Part~III. For drive frequency $\omega \gg J$, the system is
1155:(Part~III) and the equilibrium phase classifier of Part~II to interpret
1156:$H_{\mathrm{eff}}$ as a Part~II phase; neither alone produces the prethermal
1163:\textbf{Layer:} Part~IV (using Part~II). Topologically ordered phases are
1165:\textbf{Non-derivability from Part~II alone:} Part~II classifies the phase but
1166:does not exhibit it as a code without the Part~I dagger structure
1167:(hook $\mathsf{H6}$) and the Part~IV operator-algebra QEC formalism.
1172:\textbf{Layer:} Part~IV. The HaPPY tensor network defines an isometric
1174:\textbf{Non-derivability:} requires Part~I (string-diagram/tensor-network
1175:calculus), Part~II (long-range entanglement as the substrate), \emph{and}
1176:Part~IV's perfect-tensor construction. The construction is constructive only
1182:\textbf{Layer:} Part~IV. $S(A) = \Area(\gamma_A) / (4G_N)$ exact in the
1184:Part~IV. We exhibit (i) $\FHilb$ models satisfying all of Part~I but
1185:producing no area law; (ii) Part~II models (toric code) producing $\gamma
1186:= \log \mathcal{D}$ but no area-of-a-surface formula; (iii) Part~III models
1194:\textbf{Layer:} Part~IV. Each parametric family $\{\rho_\theta\}$ acquires a
1197:requires a smooth parametric dependence (Part~III input via the Floquet
1198:parametric family) plus a long-range entangled substrate (Part~II input)
1199:plus the categorical $\dagger$-structure (Part~I hook $\mathsf{H6}$).
1218:8 & Prethermal phases                            & III     & static $H$ alone \\
1219:9 & QEC structure of LRE                         & II + IV & Part~II w/o $\dagger$ \\
1220:10 & Holographic isometry $V$                    & IV      & Part~I alone (no LRE) \\
1221:11 & Ryu--Takayanagi area formula                & IV      & Part~III w/o LRE \\
1230:emergent properties, five appear at Part~III or Part~IV (where the highest
1290:geometry in the prethermal regime)? The Part~III hooks for Part~IV imply
1295:Fracton phases (Vijay--Haah--Fu 2016) have sub-extensive ground-state
1297:modular tensor category framework of Part~II. Find a categorical
1298:extension of the Part~II classification (perhaps via higher categories,
1301:Part~III drives produce ``fracton time crystals'' whose existence is
1305:The Miyaji--Takayanagi conjecture asserts that the Fisher--Bures metric on
1309:emergent metric functor of Part~IV factors through a continuum limit.
1313:phases in equilibrium. Is there a Part~III + Part~IV framework in which
1325:\Cref{prop:gen-nonderiv} (and Proposition 8.2 of Part~IV) is
1348:Are any of them isomorphic at the Part~I level? At the Part~I + Part~II
1370:\item tabulated the eight Composition Hooks of Part~I and their
1379:  witnesses, generalising Proposition 8.2 of Part~IV
1407:AdS-style holography (Part~IV). Replace the hyperbolic tiling by a
1410:modular composition up to Part~III is geometry-agnostic), but the precise
1416:that realises the Part~IV holographic code on a Floquet-driven Part~II
1419:\paragraph{3. Fault-tolerant computation.} Part~II topological order is the
1420:substrate of fault-tolerant quantum computation. The Part~III Floquet
1422:$\exp(c \omega / J)$ in the prethermal regime. The Part~IV holographic
1427:Part~IV is the natural geometry of statistical inference. Extending the
1429:Part~II is replaced by a classification of statistical phases) is a
1433:to higher-categorical analogues: $(2,2)$-categorical Part~I for extended
1434:TQFTs, fusion $2$-categories for Part~II $(3{+}1)$D topological phases,
1439:the modular framework's Part~IV outputs with the elementary quanta of
1480:Emergent Spacetime Dynamics, Paper 1 of 4 (2026).
1486:Emergent Spacetime Dynamics, Paper 2 of 4 (2026).
1492:Emergent Spacetime Dynamics, Paper 3 of 4 (2026).
1498:Emergent Spacetime Dynamics, Paper 4 of 4 (2026).
1626:\emph{The Ryu--Takayanagi formula from quantum error correction},

exec
/usr/local/bin/zsh -lc 'latexdef -p amsmath -p amssymb -p amsthm -p mathtools -p tikz-cd -p tikz -p hyperref -p cleveref -p graphicx -p geometry -p everypage -p xcolor -p booktabs -p enumitem C D E id Tr Area Z R 2>/dev/null || true' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 449ms:
exec
/usr/local/bin/zsh -lc 'which latexdef || true' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
/Library/TeX/texbin/latexdef

exec
/usr/local/bin/zsh -lc "perl -0ne 'while(/\\\\(begin|end)\\{(["'^}]*)'"\\}/g){my "'$line = 1 + substr($_,0,$-[0]) =~ tr/'"\\n//; print \""'$line:$1:$2'"\\n\"}' papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
90:begin:tikzpicture
100:end:tikzpicture
112:begin:document
115:begin:abstract
146:end:abstract
179:begin:itemize
211:end:itemize
219:begin:enumerate
241:end:enumerate
246:begin:enumerate
257:end:enumerate
317:begin:itemize
332:end:itemize
475:begin:center
478:begin:tabular
514:end:tabular
515:end:center
613:begin:definition
618:begin:itemize
637:end:itemize
641:end:definition
643:begin:definition
646:begin:itemize
662:end:itemize
667:end:definition
669:begin:remark
676:end:remark
683:begin:equation
688:end:equation
692:begin:itemize
709:end:itemize
716:begin:figure
718:begin:tikzpicture
764:end:tikzpicture
773:end:figure
777:begin:theorem
787:end:theorem
789:begin:proof
803:end:proof
805:begin:remark
812:begin:itemize
828:end:itemize
843:end:remark
850:begin:proposition
857:end:proposition
859:begin:proof
866:end:proof
881:begin:theme
885:begin:itemize
898:end:itemize
899:end:theme
913:begin:theme
916:begin:itemize
928:end:itemize
929:end:theme
940:begin:theme
943:begin:itemize
955:end:itemize
956:end:theme
965:begin:theme
968:begin:itemize
978:end:itemize
979:end:theme
988:begin:theme
991:begin:itemize
999:end:itemize
1000:end:theme
1010:begin:theme
1014:begin:itemize
1026:end:itemize
1027:end:theme
1055:begin:itemize
1065:end:itemize
1072:begin:emerg
1080:end:emerg
1082:begin:emerg
1096:end:emerg
1098:begin:emerg
1107:end:emerg
1109:begin:emerg
1116:end:emerg
1118:begin:emerg
1125:end:emerg
1127:begin:emerg
1137:end:emerg
1139:begin:emerg
1148:end:emerg
1150:begin:emerg
1158:end:emerg
1160:begin:emerg
1168:end:emerg
1170:begin:emerg
1178:end:emerg
1180:begin:emerg
1189:end:emerg
1191:begin:emerg
1200:end:emerg
1204:begin:center
1207:begin:tabular
1224:end:tabular
1225:end:center
1253:begin:enumerate
1281:end:enumerate
1285:begin:enumerate
1318:end:enumerate
1322:begin:enumerate
1351:end:enumerate
1367:begin:itemize
1383:end:itemize
1474:begin:thebibliography
1670:end:thebibliography
1672:end:document

exec
/usr/local/bin/zsh -lc "rg -n -F '\\C' papers/synthesis/paper.tex && rg -n -F '\\D' papers/synthesis/paper.tex && rg -n -F '\\E' papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
51:\newcommand{\C}{\mathcal{C}}
60:\newcommand{\Cob}{\mathbf{Cob}}
62:\newcommand{\Cat}{\mathbf{Cat}}
77:\newcommand{\CFT}{\mathrm{CFT}}
222:    typed output produced (\Cref{sec:hook-ledger}).
226:    (\Cref{sec:functor-chain}). The diagram is presented in TikZ.
230:    dagger preservation, and obstruction $2$-cells (\Cref{sec:themes}).
234:    (\Cref{sec:catalogue}).
237:    (\Cref{sec:open}).
240:    fault-tolerant quantum simulation (\Cref{sec:conclusion}).
265:\Cref{sec:recap} provides one-page recapitulations of the categorical
266:primitives contributed by each of Laws I--IV. \Cref{sec:hook-ledger} tabulates
268:\Cref{sec:functor-chain} presents the compositional functor chain as a
270:lift. \Cref{sec:themes} isolates the six cross-cutting themes.
271:\Cref{sec:catalogue} catalogues twelve emergent properties with
272:non-derivability sketches. \Cref{sec:open} lists eleven open compositional
273:problems. \Cref{sec:conclusion} concludes.
289:\paragraph{Symmetric monoidal dagger categories.} A category $\C$ is
291:$\otimes : \C \times \C \to \C$, a unit object $I$, and natural isomorphisms
294:functor $\dagger : \C^\op \to \C$. It is \emph{compact closed} if every object
303:$2$-category $\Theory$ defined in \Cref{def:theory}. The functor $M$ is
309:observables as a sheaf condition on a Grothendieck site $(\C, J)$, internal
323:\item $\mathsf{H4}$ \emph{(Sheaf hook)}: a Grothendieck site $(\C, J)$.
502:  $\dagger : \C^{\op} \to \C$ preserved by $M$; unitarity $U(T)^\dagger
545:\Cref{def:hook-sig}. For each lift $L_{X \to Y}$ and each hook
619:\item $\mathsf{H1}$ is a functor $\rho : B\mathcal{G} \to \mathrm{Aut}(\C)$
622:  \hookrightarrow \C$;
623:\item $\mathsf{H3}$ is a functor $\sigma : B\Z \to \mathrm{Aut}(\C)$;
624:\item $\mathsf{H4}$ is a Grothendieck site $(\C_J, J)$ together with a
625:  sheaf-of-observables functor $\C_J^{\op} \to \Set$ landing in $\C$;
627:  \mathbf{End}_\C(A)$ on a designated object $A \in \C$;
628:\item $\mathsf{H6}$ is a $\dagger$-structure $\dagger : \C^{\op} \to \C$
633:\item $\mathsf{H8}$ is an internal language $\mathcal{L}(\C)$ obtained
634:  from a topos structure on $\C$, together with a chosen interpretation
635:  of $\mathcal{L}(\C)$ in a programming language (e.g.\ Haskell with
638:A category $\C$ is said to \emph{declare} a hook if it has the
647:\item \emph{$0$-cells (objects):} pairs $(\C, D)$ where $\C$ is a
649:  \ldots, \mathsf{H8}\}$ is the subset of \emph{declared} hooks of $\C$
650:  (in the sense of \Cref{def:hook-sig}). The category $\Phys$ corresponds
655:  $\dagger$-functors $F : (\C, D) \to (\C', D')$, meaning $F$ is strong
657:  $\mathsf{H} \in D$, the realisation of $\mathsf{H}$ in $\C$ maps under
658:  $F$ to a realisation of $\mathsf{H}$ in $\C'$ of the same signature.
670:\Cref{def:theory} is a deliberately minimal abstraction. We do not claim it
675:--- are open formalisation problems (\Cref{sec:open}).
697:  $\dagger$-category $\C$ and produces the functor category $[\BG, \C]$ of
699:  components $\pi_0([\BG, \C])$ are the phases.
713:\Cref{fig:main-diagram} presents the chain as a $2$-functor diagram in
768:ledger (\Cref{sec:hook-ledger}). Dotted red arrows indicate emergent
790:By the hook ledger of \Cref{sec:hook-ledger}, each lift consumes only
807:\Cref{thm:composition} is a structural assertion about the typed signature
835:non-derivability}: \Cref{prop:gen-nonderiv} is provably tight at the
839:is well-typed (\Cref{thm:composition}); refining the conjectural lifts to
868:\Cref{prop:gen-nonderiv} is the precise modular thesis: \emph{emergent
935:\Cref{em:lre,em:tee,em:dtc,em:happy} of \Cref{sec:catalogue}.
1053:Each of the six cross-cutting themes of \Cref{sec:themes} appears
1056:\item \Cref{theme:EE} (entanglement entropy) underlies
1057:  \Cref{em:tee,em:rt} via $\gamma$ and the area formula;
1058:\item \Cref{theme:SPT} (symmetry) underlies \Cref{em:dtc,em:afi};
1059:\item \Cref{theme:fp} (fixed points) underlies \Cref{em:preth,em:fisher};
1060:\item \Cref{theme:pullback} (functorial pullback) underlies
1061:  \Cref{em:lre,em:happy};
1062:\item \Cref{theme:dagger} (dagger) underlies \Cref{em:smc,em:born,em:qec};
1063:\item \Cref{theme:obstr} (obstruction $2$-cells) underlies
1064:  \Cref{em:dtc,em:afi}.
1256:Refine \Cref{def:theory} to a homotopy-coherent $(\infty,2)$-category of
1325:\Cref{prop:gen-nonderiv} (and Proposition 8.2 of Part~IV) is
1347:captured (which of \Cref{em:smc}--\ref{em:fisher} each framework reaches).
1369:  paper (\Cref{sec:recap});
1371:  consumption sites across Parts II--IV (\Cref{sec:hook-ledger});
1375:  (\Cref{sec:functor-chain});
1377:  (\Cref{sec:themes});
1380:  (\Cref{sec:catalogue});
1382:  formalisation gaps and testable predictions (\Cref{sec:open}).
52:\newcommand{\D}{\mathcal{D}}
53:\newcommand{\E}{\mathcal{E}}
73:\newcommand{\End}{\mathrm{End}}
507:  trace-functional $\Tr : \End(A) \to I$ used in

exec
/usr/local/bin/zsh -lc "perl -ne 'my "'$n = ($_ =~ tr/$/$/); print "$.:$n:$_" if $n % 2 == 1'"' papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
126:1:output it produces. Second, we exhibit the compositional functor chain $\Phys
127:3:\to \Info_{1} \to \Info_{2} \to \Info_{3} \to \Info_{4}$ as a $1$-cell in a
318:3:\item $\mathsf{H1}$ \emph{(Symmetry-action hook)}: $\rho : B\mathcal{G} \to
319:1:  \mathrm{Aut}(\Phys)$.
347:3:and a $G$-symmetric phase is a connected component $\pi_0([\BG,
348:1:\Ham_0]^{\mathrm{eq}})$.
351:5:parameter in representation $V$ of $G$ is a functor $\mathcal{L}_H : \BG \to
352:1:\Vect$ assigning to the unique object the order parameter space and to each
365:3:dimensions with on-site symmetry $G$ are classified by elements of $H^{d+1}(G,
368:1:U(1))$.
371:3:state, the entanglement entropy of a disk-shaped region $A$ obeys $S(A) =
372:3:\alpha |\partial A| - \gamma + O(1/|A|)$, with $\gamma = \log \mathcal{D}$ the
413:1:$\nu = \frac{1}{24\pi^2} \int_{\mathrm{BZ} \times S^1} \Tr[(U^\dagger \, dU)^3]
414:1:\in \Z$ classifies anomalous Floquet topological insulators with no
452:1:alone. They emerge in the image of the composite lifting $L = L_{III\to IV}
453:1:\circ L_{II\to III} \circ L_{I \to II}$. Worked counterexamples are exhibited
483:5:  $\rho_G : BG \to \mathrm{Aut}(\Ham)$ at $L_{I\to II}$; $\rho_{G \times
484:1:  \Z_T} : B(G \times \Z_T) \to \mathrm{Aut}(\Ham_{T\text{-per}})$ at
487:3:  Wide monoidal sub-category $\Ham \hookrightarrow \Phys$ at $L_{I\to
489:1:  III}$. \\
494:1:  Sheaf $\mathcal{O}_{\mathrm{loc}} : \mathbf{Open}(\Lambda)^{\op} \to
495:3:  \Vect$ of local order parameters at $L_{I\to II}$; sheaf
496:1:  $\mathcal{O}_{\partial} : \mathbf{Reg}(\partial \mathrm{AdS})^{\op}
497:3:  \to \mathbf{Alg}$ of boundary CFT data at $L_{III\to IV}$. \\
499:3:  $E_n$-operad action $\alpha : E_n \to \mathbf{End}_{\mathbf{FactAlg}}
500:1:  (\mathcal{O}_{\partial})$ on the boundary factorisation algebra. \\
502:5:  $\dagger : \C^{\op} \to \C$ preserved by $M$; unitarity $U(T)^\dagger
503:3:  U(T) = \id$ of Floquet evolution at $L_{II\to III}$; isometry
553:5:in $\Info_1$, the lift $L_{I \to II}$ produces the functor category $[BG,
554:3:\Ham]$ as the categorical pullback of $\rho$ along the constant functor
562:1:The sheaf $\mathcal{O}_{\mathrm{loc}} : \mathbf{Open}(\Lambda)^{\op} \to
563:3:\Vect$ realising $\mathsf{H4}$ is pulled back along the assignment
582:3:$\Info_4$ is constructed as the fibration over $\mathbf{Reg}(\partial
583:3:\mathrm{AdS})$ whose fibre at $A$ is the algebra of CFT operators
585:1:the holographic functor $H : \mathbf{BoundaryRegion} \to
586:1:\mathbf{BulkRegion}$ to produce the entanglement-wedge-reconstructed bulk
594:1:entropy obeys the discrete Ryu--Takayanagi formula $S(A) =
595:1:|\gamma_A| \log d$. This is Part~IV Theorem~4.5.
621:3:\item $\mathsf{H2}$ is a wide monoidal sub-category $\Ham
622:1:  \hookrightarrow \C$;
626:5:\item $\mathsf{H5}$ is an operad $O$ together with an action $O \to
627:3:  \mathbf{End}_\C(A)$ on a designated object $A \in \C$;
631:3:  $\eta_A : I \to A^* \otimes A$, counits $\varepsilon_A : A \otimes A^*
632:1:  \to I$);
648:3:  symmetric monoidal $\dagger$-category and $D \subseteq \{\mathsf{H1},
649:3:  \ldots, \mathsf{H8}\}$ is the subset of \emph{declared} hooks of $\C$
659:3:\item \emph{$2$-cells:} monoidal natural transformations $\eta : F \Rightarrow
660:1:  G$ between such functors, additionally compatible with the realisation
701:3:  functor $F : \BG \to \Ham$ to its Floquet enrichment $\mathrm{Fl}(F) :
702:1:  B(G \times \Z_T) \to \Ham_{T\text{-per}}$; the connected components of the
818:3:\item $L_{II \to III}$ is rigorous in the prethermal regime $t \leq \tau_*
819:1:  \sim \exp(c\,\omega/J)$ and for MBL-protected DTCs \cite{else2016,
889:1:\item In Part~II, the topological entanglement entropy $\gamma = \log
891:1:  O(1/|A|)$ on a disk.
893:1:  Floquet phase invariant on the Floquet enriched MTC $\mathcal{C}_T =
894:1:  \mathcal{C} \boxtimes \Rep(\Z_T)$.
895:1:\item In Part~IV, the Ryu--Takayanagi formula $S(A) = \Area(\gamma_A) /
896:1:  (4G_N)$ identifies entanglement entropy with the area of a bulk minimal
917:5:\item In Part~I, hook $\mathsf{H1}$ specifies a $G$-action $\rho :
918:1:  B\mathcal{G} \to \mathrm{Aut}(\Phys)$.
923:1:  translation); the relevant cohomology becomes $H^{d+2}(G \times \Z_T,
924:1:  U(1))$.
973:1:  phase functor along the inclusion $B\Z_T \hookrightarrow B(G \times
974:1:  \Z_T)$, intersected with the prethermal regime.
1084:1:\textbf{Layer:} Part~I. The probability formula $p(\phi | \psi) =
1085:1:|\langle \phi | \psi \rangle|^2$ arises as a categorical theorem from
1088:1:composite morphism $\varepsilon \circ (\phi^\dagger \otimes \id) \circ
1089:1:\eta \circ \psi : I \to I$. Without compact closure (hook
1111:1:\textbf{Layer:} Part~II. For a topologically ordered phase, $S(A) = \alpha
1112:5:|\partial A| - \gamma$ on a disk $A$, with $\gamma = \log \mathcal{D}$
1121:1:braided fusion rules with non-trivial topological spin $\theta_a = e^{2\pi i
1122:1:h_a}$. \textbf{Non-derivability:} requires the modular tensor category data
1153:1:governed by a prethermal effective Hamiltonian for time $t \leq \tau_* \sim
1154:1:\exp(c \omega/J)$. \textbf{Non-derivability:} requires the Magnus expansion
1185:1:producing no area law; (ii) Part~II models (toric code) producing $\gamma
1186:1:= \log \mathcal{D}$ but no area-of-a-surface formula; (iii) Part~III models
1262:3:The lift $L_{II \to III}$ is rigorous in the prethermal regime (time $t
1263:1:\leq \tau_*$) and for MBL-protected DTCs. Outside these regimes, what is the
1372:1:\item presented the compositional functor chain $\Phys \to \Info_1 \to
1373:5:  \Info_2 \to \Info_3 \to \Info_4$ as a $1$-cell in a $2$-category

exec
/usr/local/bin/zsh -lc "perl -ne '"'$open += tr/{/{/; $close += tr/}/}/; END { print "braces open=$open close=$close diff=".($open-$close)."'"\\n\" }' papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
braces open=1047 close=1047 diff=0

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(begin|end)\\{tabular\\}|\\\\toprule|\\\\midrule|\\\\bottomrule|&|\\\\\\\\"'$" papers/synthesis/paper.tex' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(begin|end)\{tabular\}|\toprule|\midrule|\bottomrule|&|\\$)
                                        ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc "stat -f '%N %Sm %z bytes' papers/synthesis/paper.tex papers/synthesis/paper.pdf" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
papers/synthesis/paper.tex Apr 30 11:38:13 2026 78438 bytes
papers/synthesis/paper.pdf Apr 30 11:38:18 2026 432605 bytes

exec
/usr/local/bin/zsh -lc "pdfinfo papers/synthesis/paper.pdf 2>/dev/null | sed -n '1,30p' || true" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
Title:           
Subject:         
Keywords:        
Author:          
Creator:         LaTeX with hyperref
Producer:        pdfTeX-1.40.29
CreationDate:    Thu Apr 30 11:38:18 2026 CST
ModDate:         Thu Apr 30 11:38:18 2026 CST
Custom Metadata: yes
Metadata Stream: no
Tagged:          no
UserProperties:  no
Suspects:        no
Form:            none
JavaScript:      no
Pages:           26
Encrypted:       no
Page size:       612 x 792 pts (letter)
Page rot:        0
File size:       432605 bytes
Optimized:       no
PDF version:     1.7

exec
/usr/local/bin/zsh -lc "pdftotext papers/synthesis/paper.pdf - 2>/dev/null | sed -n '1,80p' || true" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 423ms:
30 Apr 2026

Synthesis — Modular Composition of
Information, Phase, Modulation, and Geometry
MagnetonIO Research
Emergent Spacetime Dynamics Series, Synthesis Paper

GrokRxiv:2026.04.synthesis

[ math-ph ∩ hep-th ]

30 April 2026
Abstract
We present the synthesis paper of the four-paper modular research series Emergent
Spacetime Dynamics. Rather than proposing a unified theory, we articulate a precise
modular thesis: each of Laws I–IV (Mathematical Formalisms; Phase-bound Matter;
Frequency-modulated Processes; Information-bearing Structures) is a self-standing categorical layer, and the emergent properties at every level arise from the composition
of prior laws via explicit functorial liftings, not from any single law in isolation. The
contributions of this synthesis are sixfold. First, we provide a hook ledger tabulating,
for each Composition Hook H1–H8 declared in Part I, the precise law in which it is
consumed and the typed output it produces. Second, we exhibit the compositional
functor chain Phys → Info1 → Info2 → Info3 → Info4 as a 1-cell in a 2-category
Theory of physical theories, identifying which hook each lift consumes and producing
in each layer a typed output that the next layer plugs into. Third, we identify six
cross-cutting themes that thread all four papers — entanglement entropy as a quantitative through-line, symmetry-protected structure, fixed-point reasoning, functorial
pullback, dagger preservation, and obstruction 2-cells — and articulate each as a precise statement that survives the hierarchical composition. Fourth, we offer a numbered
catalogue of twelve emergent properties, each annotated with the lowest law-level at
which it appears together with a proof sketch that the property is not derivable from
any subset of strictly fewer laws within the proposed schema; this generalises Proposition 8.2 of Part IV. Fifth, we enumerate eleven open compositional problems, several of
which constitute testable predictions or formalisation gaps. Sixth and finally, we close
with a programmatic outlook on extensions of the framework to de Sitter holography,
fault-tolerant quantum simulation, and quantum gravity. We emphasise throughout
that the framework is modular, not unified : replacing any single law with a different
filling of its typed hook leaves the remaining composition intact.

Contents
1 Introduction: the Modular Thesis
1.1 Modular composition versus unification . . . . . . . . . . . . . . . . . . . . .
1.2 The four constituent papers . . . . . . . . . . . . . . . . . . . . . . . . . . .
1

3
3
3

1.3
1.4
1.5

Contributions of the synthesis . . . . . . . . . . . . . . . . . . . . . . . . . .
What this synthesis does not claim . . . . . . . . . . . . . . . . . . . . . . .
Plan of the paper . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

4
4
5

2 Recap of Laws I–IV
2.1 Part I: categorical primitives and the matter–information functor . . . . . .
2.2 Part II: phases as functorial equivalence classes . . . . . . . . . . . . . . . .
2.3 Part III: Floquet phases as natural transformations . . . . . . . . . . . . . .
2.4 Part IV: emergent geometry from compositional information . . . . . . . . .

5
5
6
7
8

3 Hook Ledger
3.1 Mechanism of hook interpretation by lifts . . . . . . . . . . . . . . . . . . . .

8
10

4 The Compositional Functor Chain
4.1 The 2-category Theory . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
4.2 The chain of 1-cells . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
4.3 Diagrammatic presentation . . . . . . . . . . . . . . . . . . . . . . . . . . . .
4.4 Coherence of the composition . . . . . . . . . . . . . . . . . . . . . . . . . .

exec
/usr/local/bin/zsh -lc "perl -ne 'print \""'$.:$_" if /'"\\\\emph\\{["'^}]+'"\\}[,:;."'!?]/ || /'"\\\\textbf\\{["'^}]+'"\\}[,:;."'!?]/ || /'"\\"'$[''^$]+'"\\"'$[,:;.!?]/'"' papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
98:       [\,math-ph\,$\cap$\,hep-th\,]\quad
117:\emph{Emergent Spacetime Dynamics}. Rather than proposing a unified theory, we
124:ledger tabulating, for each Composition Hook $\mathsf{H1}$--$\mathsf{H8}$
126:output it produces. Second, we exhibit the compositional functor chain $\Phys
127:\to \Info_{1} \to \Info_{2} \to \Info_{3} \to \Info_{4}$ as a $1$-cell in a
128:$2$-category $\Theory$ of physical theories, identifying which hook each lift
133:and obstruction $2$-cells --- and articulate each as a precise statement that
135:of twelve \emph{emergent properties}, each annotated with the lowest
143:throughout that the framework is \emph{modular, not unified}: replacing any
171:\emph{compositional invariants}: they make sense only at a specific layer, and
181:    the categorical grammar (symmetric monoidal $(\infty, n)$-categories,
183:    declares eight Composition Hooks $\mathsf{H1}$--$\mathsf{H8}$ together with
184:    a matter--information functor $M : \Phys \to \Info$.
187:    classes $\pi_0([BG, \Ham])$, identifies modular tensor categories with
189:    phases by $H^{d+1}(G, U(1))$, and establishes topological entanglement
190:    entropy $\gamma = \log \mathcal{D}$ as a phase invariant. Consumes hooks
191:    $\mathsf{H1}, \mathsf{H2}, \mathsf{H4}, \mathsf{H8}$ from Part~I and exposes
195:    monoidal functor $F : B\Z_T \to \QChan$; periodic Hamiltonians become
196:    endomorphisms in a fibred $2$-category; the Magnus expansion is recast as
198:    discrete time crystals arise as obstruction $2$-cells; the Floquet winding
200:    hooks $\mathsf{H3}, \mathsf{H6}$ and exposes the Sambe-space functor and
203:    recasts quantum error correction as a $\dagger$-categorical sub-object
208:    families. Consumes hooks $\mathsf{H5}, \mathsf{H7}$ and includes
220:  \item \textbf{Hook ledger.} We tabulate, for each hook $\mathsf{H}_i$
224:    $\Phys \to \Info_1 \to \Info_2 \to \Info_3 \to \Info_4$ as a 2-functor in
225:    a $2$-category $\Theory$ of physical theories
230:    dagger preservation, and obstruction $2$-cells (\Cref{sec:themes}).
269:2-functor diagram in $\Theory$ and articulates the typed semantics of each
289:\paragraph{Symmetric monoidal dagger categories.} A category $\C$ is
291:$\otimes : \C \times \C \to \C$, a unit object $I$, and natural isomorphisms
294:functor $\dagger : \C^\op \to \C$. It is \emph{compact closed} if every object
295:$A$ has a dual $A^*$ together with unit $\eta_A : I \to A^* \otimes A$ and
296:counit $\varepsilon_A : A \otimes A^* \to I$ satisfying the snake equations.
299:$\dagger$-symmetric monoidal compact closed categories, $\Phys$ (modelling
300:physical processes) and $\Info$ (modelling informational descriptions), and
301:a \emph{matter--information functor} $M : \Phys \to \Info$ that is strong
303:$2$-category $\Theory$ defined in \Cref{def:theory}. The functor $M$ is
305:preservation of duals under $M$ implies a Born-rule-type formula on
309:observables as a sheaf condition on a Grothendieck site $(\C, J)$, internal
311:via operads acting on objects of $\Info$. These constructions supply hooks
312:$\mathsf{H4}$ (sheaf), $\mathsf{H5}$ (operadic), and $\mathsf{H8}$
315:\paragraph{Composition hooks $\mathsf{H1}$--$\mathsf{H8}$.} Part~I declares
318:\item $\mathsf{H1}$ \emph{(Symmetry-action hook)}: $\rho : B\mathcal{G} \to
320:\item $\mathsf{H2}$ \emph{(Hamiltonian hook)}: $\Ham \hookrightarrow \Phys$
322:\item $\mathsf{H3}$ \emph{(Floquet hook)}: $B\Z \to \mathrm{Aut}(\Phys)$.
323:\item $\mathsf{H4}$ \emph{(Sheaf hook)}: a Grothendieck site $(\C, J)$.
324:\item $\mathsf{H5}$ \emph{(Operadic hook)}: an operad $O$ acting on an object
325:  of $\Info$.
326:\item $\mathsf{H6}$ \emph{(Dagger hook)}: $\dagger$ on $\Phys$ preserved by
327:  $M$.
328:\item $\mathsf{H7}$ \emph{(Compact-closure hook)}: duals in $\Phys$ and
329:  $\Info$.
330:\item $\mathsf{H8}$ \emph{(Type-theoretic hook)}: internal language
331:  $\mathcal{L}(\Info)$ from a topos structure.
339:Part~II~\cite{partII} consumes hooks $\mathsf{H1}$, $\mathsf{H2}$,
340:$\mathsf{H4}$, $\mathsf{H8}$ from Part~I and produces a functorial
344:component $[H] \in \pi_0(\Ham)$ of the groupoid of gapped local Hamiltonians
345:under gap-preserving adiabatic equivalence. For $G$-symmetric Hamiltonians,
347:and a $G$-symmetric phase is a connected component $\pi_0([\BG,
351:parameter in representation $V$ of $G$ is a functor $\mathcal{L}_H : \BG \to
352:\Vect$ assigning to the unique object the order parameter space and to each
356:\paragraph{Topological order and MTCs.} A $(2{+}1)$D topologically ordered
357:phase is classified by a unitary modular tensor category (UMTC) $\mathcal{C}$.
358:The Levin--Wen string-net construction realises every UFC $\mathcal{C}$ as a
359:Hamiltonian with anyon content $\mathcal{Z}(\mathcal{C})$ (the Drinfeld
362:$\mathcal{Z} : \mathbf{FusionCat} \to \mathbf{BraidedMonCat}$.
364:\paragraph{SPT phases by group cohomology.} Bosonic SPT phases in $d$ spatial
365:dimensions with on-site symmetry $G$ are classified by elements of $H^{d+1}(G,
366:U(1))$. The classification is a functor $\mathrm{SPT}^d : \mathbf{Grp} \to
367:\mathbf{Ab}$ refining $\pi_0(\Ham_G)^{\mathrm{SRE}} \hookrightarrow H^{d+1}(G,
371:state, the entanglement entropy of a disk-shaped region $A$ obeys $S(A) =
372:\alpha |\partial A| - \gamma + O(1/|A|)$, with $\gamma = \log \mathcal{D}$ the
373:total quantum dimension; $\gamma$ is invariant on each phase under
377:by Part~III: extension of $\Ham$ to $\Ham_{T\text{-per}}$; enlargement of
378:symmetry by $\Z_T$; MTC enrichment by $\Rep(\Z_T)$; Floquet TEE; and the
379:composition functor $\mathrm{Lift}_{\mathrm{II}\to\mathrm{III}}$.
384:Part~III~\cite{partIII} consumes Part~I's hooks $\mathsf{H3}, \mathsf{H6}$
388:\paragraph{The Floquet functor.} A $T$-periodic Hamiltonian $H(t+T) = H(t)$
389:defines a strong monoidal functor $F : B\Z_T \to \QChan$ from the discrete
391:$F(\overline{1}_{\Z_T}) = U(T) = \mathcal{T}\exp(-i \int_0^T H(t) \, dt)$
394:\paragraph{2-categorical structure.} A Floquet system is a $1$-cell in a
395:fibred $2$-category $\mathfrak{H}_T$ over $B\Z_T$; micromotion data are
396:$2$-cells; the Sambe-space construction $\mathcal{S} : \QChan \to \Hilb_\infty$
401:$H_F = H^{(0)} + H^{(1)} + \cdots$ is recast as the directed colimit of an
402:asymptotic effective-Hamiltonian functor $H_{\text{eff}}^{(\leq N)}$. The
403:prethermal regime $t \leq \tau_* \sim \exp(c\,\omega/J)$ is exactly where the
406:\paragraph{Time crystals as obstruction $2$-cells.} A discrete time crystal
407:(DTC) is the obstruction $2$-cell to the existence of an isomorphism between
408:the iterated $T$-periodic functor and a single $nT$-periodic functor
410:$\eta : \mathrm{Fl}(F) \Rightarrow \mathrm{Fl}^{\Z_2}(F)$.
413:$\nu = \frac{1}{24\pi^2} \int_{\mathrm{BZ} \times S^1} \Tr[(U^\dagger \, dU)^3]
414:\in \Z$ classifies anomalous Floquet topological insulators with no
419:invariants; and the DTC obstruction $2$-cells.
424:Part~IV~\cite{partIV} consumes hooks $\mathsf{H5}$, $\mathsf{H7}$ from Part~I
429:\paragraph{Quantum error correction as a $\dagger$-functor.} A QECC is an
430:isometric sub-object embedding $\enc : \Hilb_L \hookrightarrow \Hilb_P$ in
431:$\dagger$-Hilb. The Knill--Laflamme conditions become the assertion that a
434:\paragraph{HaPPY holographic codes.} On a $\{5,4\}$ pentagonal tiling of
435:$\mathbb{H}^2$, perfect tensors with $[[6,1,4]]$ structure assemble into an
436:isometry $V : \Hilb_{\mathrm{bulk}} \to \Hilb_{\mathrm{boundary}}$. The
443:\paragraph{Fisher--Bures metric.} For a parametric family $\{\rho_\theta\}$ of
445:$g_{ij}^Q(\theta) = \tfrac{1}{2} \Tr(\rho_\theta \{L_i, L_j\})$ is a
452:alone. They emerge in the image of the composite lifting $L = L_{III\to IV}
457:$g : \Theta \to \mathbf{Riem}$ assigning to each parametric family a
459:functor $H : \mathbf{BoundaryRegion} \to \mathbf{BulkRegion}$ encoding
468:convention that ``consumed at lift $L_{X\to Y}$'' means the hook is required
469:in the construction of the functor $L_{X\to Y}$ as part of producing $Y$ as
470:the lifted layer; the matter--information functor $M : \Phys \to \Info_1$ is
472:$\mathsf{H6}$ and $\mathsf{H7}$ as inherent properties of $M$ that propagate
482:$\mathsf{H1}$ Symmetry-action & $L_{I\to II}$, $L_{II\to III}$ &
483:  $\rho_G : BG \to \mathrm{Aut}(\Ham)$ at $L_{I\to II}$; $\rho_{G \times
484:  \Z_T} : B(G \times \Z_T) \to \mathrm{Aut}(\Ham_{T\text{-per}})$ at
485:  $L_{II\to III}$. \\
486:$\mathsf{H2}$ Hamiltonian & $L_{I\to II}$, $L_{II\to III}$ &
487:  Wide monoidal sub-category $\Ham \hookrightarrow \Phys$ at $L_{I\to
488:  II}$; $\Ham_{T\text{-per}} = \mathrm{Fun}(S^1_T, \Ham)$ at $L_{II\to
490:$\mathsf{H3}$ Floquet $B\Z$ & $L_{II\to III}$ &
491:  Strong monoidal functor $F : B\Z_T \to \QChan$ (Part~III
493:$\mathsf{H4}$ Sheaf & $L_{I\to II}$, $L_{III\to IV}$ &
494:  Sheaf $\mathcal{O}_{\mathrm{loc}} : \mathbf{Open}(\Lambda)^{\op} \to
495:  \Vect$ of local order parameters at $L_{I\to II}$; sheaf
496:  $\mathcal{O}_{\partial} : \mathbf{Reg}(\partial \mathrm{AdS})^{\op}
497:  \to \mathbf{Alg}$ of boundary CFT data at $L_{III\to IV}$. \\
498:$\mathsf{H5}$ Operadic & $L_{III\to IV}$ &
499:  $E_n$-operad action $\alpha : E_n \to \mathbf{End}_{\mathbf{FactAlg}}
500:  (\mathcal{O}_{\partial})$ on the boundary factorisation algebra. \\
501:$\mathsf{H6}$ Dagger & $M$ (inherent), $L_{II\to III}$, $L_{III\to IV}$ &
502:  $\dagger : \C^{\op} \to \C$ preserved by $M$; unitarity $U(T)^\dagger
503:  U(T) = \id$ of Floquet evolution at $L_{II\to III}$; isometry
504:  $V^\dagger V = \id_{L}$ of QEC encoder at $L_{III\to IV}$. \\
505:$\mathsf{H7}$ Compact-closure & $M$ (inherent), $L_{III\to IV}$ &
506:  Duals $A^*$, $\eta_A, \varepsilon_A$ inherited from $\Phys$;
507:  trace-functional $\Tr : \End(A) \to I$ used in
508:  $S(A) = \Area(\gamma_A) / 4G_N$ at $L_{III\to IV}$. \\
509:$\mathsf{H8}$ Type-theoretic & $L_{I\to II}, L_{II\to III}, L_{III\to IV}$ &
510:  Internal language $\mathcal{L}(\Info_i)$ together with a Haskell
511:  realisation: QuickCheck category laws ($i=2$), Magnus solver
512:  ($i=3$), HaPPY pentagon code and Fisher--Bures metric ($i=4$). \\
520:is \emph{layered but not linear}: hook $\mathsf{H4}$ (sheaf), for instance,
521:is consumed at lift $L_{I\to II}$ (for local order parameters) and again at
522:lift $L_{III\to IV}$ (for boundary CFT data), bypassing $L_{II\to III}$.
527:Second, hooks $\mathsf{H6}$ (dagger) and $\mathsf{H7}$ (compact-closure) are
528:\emph{inherent} to the matter--information functor $M$ itself: they are
529:preservation properties of $M$ rather than data consumed only at a single
530:lift. We mark them in the ledger as ``inherent'' at $M$ and additionally
532:new typed output (e.g.\ $\mathsf{H7}$ at $L_{III\to IV}$ for the trace
536:unused slots: each $\mathsf{H}_i$ has at least one downstream consumer. This
545:\Cref{def:hook-sig}. For each lift $L_{X \to Y}$ and each hook
546:$\mathsf{H}_i$ consumed at that lift, the operation is one of the
547:following four: \emph{pullback}, \emph{enrichment}, \emph{tensor product},
548:or \emph{fibration}. We give one representative example for each lift.
550:\paragraph{$L_{I \to II}$, hook $\mathsf{H1}$ (symmetry-action) by
552:Given the realisation $\rho : BG \to \mathrm{Aut}(\Ham)$ of $\mathsf{H1}$
553:in $\Info_1$, the lift $L_{I \to II}$ produces the functor category $[BG,
554:\Ham]$ as the categorical pullback of $\rho$ along the constant functor
555:from the terminal category $*$ to $\mathrm{Aut}(\Ham)$. Connected
556:components $\pi_0([BG, \Ham])$ are the $G$-symmetric phases. The lift's
557:input is the realisation of $\mathsf{H1}$; its output is the functor
561:\paragraph{$L_{I \to II}$, hook $\mathsf{H4}$ (sheaf) by pullback.}
562:The sheaf $\mathcal{O}_{\mathrm{loc}} : \mathbf{Open}(\Lambda)^{\op} \to
563:\Vect$ realising $\mathsf{H4}$ is pulled back along the assignment
564:$U \mapsto$ (order-parameter expectation in region $U$) to produce, for
565:each $G$-symmetric Hamiltonian $H$, a sheaf of order parameters whose
569:\paragraph{$L_{II \to III}$, hook $\mathsf{H3}$ (Floquet $B\Z$) by
571:The Floquet enrichment functor takes a phase functor $F : BG \to \Ham$
572:and produces $\mathrm{Fl}(F) : B(G \times \Z_T) \to \Ham_{T\text{-per}}$
573:by enriching the symmetry category with the temporal $\Z_T$-factor and
574:the Hamiltonian category with the $T$-periodic extension
575:$\Ham_{T\text{-per}}$. Both enrichments are tensor products of
576:categories: $B(G \times \Z_T) = BG \boxtimes B\Z_T$ and
577:$\Ham_{T\text{-per}} = \mathrm{Fun}(S^1_T, \Ham)$. This is precisely the
580:\paragraph{$L_{III \to IV}$, hook $\mathsf{H4}$ (sheaf) by fibration.}
581:The boundary CFT sheaf $\mathcal{O}_{\partial}$ realising $\mathsf{H4}$ in
582:$\Info_4$ is constructed as the fibration over $\mathbf{Reg}(\partial
583:\mathrm{AdS})$ whose fibre at $A$ is the algebra of CFT operators
584:supported in $A$. The lift $L_{III \to IV}$ pulls this sheaf back along
585:the holographic functor $H : \mathbf{BoundaryRegion} \to
586:\mathbf{BulkRegion}$ to produce the entanglement-wedge-reconstructed bulk
589:\paragraph{$L_{III \to IV}$, hook $\mathsf{H7}$ (compact-closure) by
591:The trace structure $\Tr$ inherited from $M$ is composed with the
592:encoder $V : \Hilb_L \hookrightarrow \Hilb_P$ to produce the
593:boundary-region partial trace $\Tr_{\bar A} \circ V$, whose von Neumann
594:entropy obeys the discrete Ryu--Takayanagi formula $S(A) =
609:functors in a $2$-category $\Theory$ of physical theories.
611:\subsection{The 2-category $\Theory$}
617:each of $\mathsf{H1}$--$\mathsf{H8}$ has a fixed signature:
619:\item $\mathsf{H1}$ is a functor $\rho : B\mathcal{G} \to \mathrm{Aut}(\C)$
620:  for a designated symmetry data category $\mathcal{G}$;
621:\item $\mathsf{H2}$ is a wide monoidal sub-category $\Ham
623:\item $\mathsf{H3}$ is a functor $\sigma : B\Z \to \mathrm{Aut}(\C)$;
624:\item $\mathsf{H4}$ is a Grothendieck site $(\C_J, J)$ together with a
625:  sheaf-of-observables functor $\C_J^{\op} \to \Set$ landing in $\C$;
626:\item $\mathsf{H5}$ is an operad $O$ together with an action $O \to
627:  \mathbf{End}_\C(A)$ on a designated object $A \in \C$;
628:\item $\mathsf{H6}$ is a $\dagger$-structure $\dagger : \C^{\op} \to \C$
629:  with $(f^\dagger)^\dagger = f$;
630:\item $\mathsf{H7}$ is a compact-closure structure (duals $A^*$, units
631:  $\eta_A : I \to A^* \otimes A$, counits $\varepsilon_A : A \otimes A^*
632:  \to I$);
633:\item $\mathsf{H8}$ is an internal language $\mathcal{L}(\C)$ obtained
634:  from a topos structure on $\C$, together with a chosen interpretation
635:  of $\mathcal{L}(\C)$ in a programming language (e.g.\ Haskell with
638:A category $\C$ is said to \emph{declare} a hook if it has the
643:\begin{definition}[$\Theory$]
645:The $2$-category $\Theory$ has:
647:\item \emph{$0$-cells (objects):} pairs $(\C, D)$ where $\C$ is a
648:  symmetric monoidal $\dagger$-category and $D \subseteq \{\mathsf{H1},
649:  \ldots, \mathsf{H8}\}$ is the subset of \emph{declared} hooks of $\C$
650:  (in the sense of \Cref{def:hook-sig}). The category $\Phys$ corresponds
651:  to $(\Phys, \emptyset)$ (no hooks declared yet), and the layers
652:  $\Info_1, \ldots, \Info_4$ correspond to progressively larger declared
654:\item \emph{$1$-cells (morphisms):} hook-respecting strong monoidal
655:  $\dagger$-functors $F : (\C, D) \to (\C', D')$, meaning $F$ is strong
656:  monoidal and $\dagger$-preserving, $D \subseteq D'$, and for every
657:  $\mathsf{H} \in D$, the realisation of $\mathsf{H}$ in $\C$ maps under
658:  $F$ to a realisation of $\mathsf{H}$ in $\C'$ of the same signature.
659:\item \emph{$2$-cells:} monoidal natural transformations $\eta : F \Rightarrow
660:  G$ between such functors, additionally compatible with the realisation
661:  data of all hooks in $D$.
663:Composition of $1$-cells is the obvious composition of functors;
664:the identity $1$-cell is the identity functor; vertical and horizontal
665:composition of $2$-cells follow the standard rules of a strict
666:$2$-category.
673:refinements --- to a $(\infty,2)$-category of theories, or to a
674:homotopy-coherent variant accommodating gauge symmetries as $\infty$-groupoids
678:\subsection{The chain of $1$-cells}
680:The compositional content of the series is the following chain of $1$-cells
681:in $\Theory$:
693:\item $M : \Phys \to \Info_1$ is the matter--information functor of Part~I:
694:  strong monoidal, $\dagger$-preserving, fully determined by its action on
696:\item $L_{I \to II} : \Info_1 \to \Info_2$ takes a symmetric monoidal
697:  $\dagger$-category $\C$ and produces the functor category $[\BG, \C]$ of
698:  $G$-symmetric phases (for each symmetry group $G$); the connected
699:  components $\pi_0([\BG, \C])$ are the phases.
700:\item $L_{II \to III} : \Info_2 \to \Info_3$ takes an equilibrium phase
701:  functor $F : \BG \to \Ham$ to its Floquet enrichment $\mathrm{Fl}(F) :
705:\item $L_{III \to IV} : \Info_3 \to \Info_4$ takes a Floquet phase functor
713:\Cref{fig:main-diagram} presents the chain as a $2$-functor diagram in
714:$\Theory$, with composition hooks annotated at each lift.
734:\node[layer] (P)  at (0, 0)        {$\Phys$};
735:\node[layer] (I1) at (0, -2.0)     {Part I: $\Info_1$\\\footnotesize$(\dagger,\otimes)$ + hooks $\mathsf{H1}$--$\mathsf{H8}$};
736:\node[layer] (I2) at (0, -4.4)     {Part II: $\Info_2 = [\BG,\Ham]$\\\footnotesize Phases as $\pi_0$};
737:\node[layer] (I3) at (0, -6.8)     {Part III: $\Info_3 = [\,B(G{\times}\Z_T),\,\Ham_{T\text{-per}}]$\\\footnotesize Floquet phases};
738:\node[layer] (I4) at (0, -9.2)     {Part IV: $\Info_4$ = QEC + Fisher--Bures\\\footnotesize Emergent metric};
740:\draw[->, thick] (P) -- node[right=2pt, font=\small]{$M$ (matter--info)} (I1);
741:\draw[->, thick] (I1) -- node[right=2pt, font=\small]{$L_{I\to II}$} (I2);
742:\draw[->, thick] (I2) -- node[right=2pt, font=\small]{$L_{II\to III}$} (I3);
743:\draw[->, thick] (I3) -- node[right=2pt, font=\small]{$L_{III\to IV}$} (I4);
745:\node[hooks, anchor=west] (h1) at (3.4, -1.0)  {$M$ inherent: $\mathsf{H6}$ ($\dagger$), $\mathsf{H7}$ (compact)};
746:\node[hooks, anchor=west] (h2) at (3.4, -3.2)  {$L_{I\to II}$ uses: $\mathsf{H1}, \mathsf{H2}, \mathsf{H4}, \mathsf{H8}$};
747:\node[hooks, anchor=west] (h3) at (3.4, -5.6)  {$L_{II\to III}$ uses: $\mathsf{H1}, \mathsf{H2}, \mathsf{H3}, \mathsf{H6}, \mathsf{H8}$};
748:\node[hooks, anchor=west] (h4) at (3.4, -8.0)  {$L_{III\to IV}$ uses: $\mathsf{H4}, \mathsf{H5}, \mathsf{H6}, \mathsf{H7}, \mathsf{H8}$};
756:\node[emerg, anchor=east] (e2) at (-3.4, -3.2) {Long-range entanglement;\\ TEE $\gamma=\log\mathcal{D}$};
757:\node[emerg, anchor=east] (e3) at (-3.4, -5.6) {Time crystals;\\ AFI winding $\nu$};
766:arrows are $1$-cells in $\Theory$ (functorial liftings). Dashed gray
779:Within $\Theory$, the composition
784:is a well-defined $1$-cell. In particular, every hook consumed by an
791:Part~I-declared hooks $\mathsf{H1}$--$\mathsf{H8}$ together with the
793:Part~II hooks for $L_{II\to III}$; the four Part~III hooks for
794:$L_{III\to IV}$). Hooks $\mathsf{H6}$ and $\mathsf{H7}$ are inherent to
795:$M$ (dagger and compact-closure preservation) and are inherited by every
797:Composition of $1$-cells in $\Theory$ requires hook-respecting strong
798:monoidal $\dagger$-functors; each constituent $L_{i\to i+1}$ is so by
799:Part~II Proposition 2.14 ($L_{I\to II}$), Part~III Proposition 4.6
800:($L_{II\to III}$), and Part~IV Remark 8.1 ($L_{III\to IV}$). Composition
802:identity $1$-cells are preserved.
813:\item $L_{I \to II}$ is mathematically rigorous: the SPT classification by
814:  $H^{d+1}(G, U(1))$ \cite{chen2013}, the MTC classification of $(2{+}1)$D
816:  Kitaev--Preskill--Levin--Wen formula for $\gamma$ \cite{kitaevpreskill2006}
818:\item $L_{II \to III}$ is rigorous in the prethermal regime $t \leq \tau_*
819:  \sim \exp(c\,\omega/J)$ and for MBL-protected DTCs \cite{else2016,
822:\item $L_{III \to IV}$ is rigorous in the discrete HaPPY model
845:\subsection{The composite as a $1$-cell, and Proposition 8.2 generalised}
847:The composite $L : \Phys \to \Info_4$ produces an emergent geometry from a
852:For each strict subset $S \subsetneq \{I, II, III, IV\}$, there exists a
853:filling of the hooks of $\bigcup_{i \in S} \mathrm{Part}_i$ that produces
854:no element of $\Info_4$ exhibiting the Fisher--Bures Riemannian metric of
855:Part~IV. Equivalently, the composite $L$ is not factorable through any
860:The case $S = \{I, II, III\}$ is precisely Proposition 8.2 of Part~IV, whose
861:proof exhibits explicit counterexamples in $\FHilb$, in the toric code, and
863:For smaller subsets $S$, the same counterexamples apply: an example showing
864:non-derivability from $\{I, II, III\}$ a fortiori shows non-derivability
883:The von Neumann entropy $S(A) = -\Tr(\rho_A \log \rho_A)$ appears, with
886:\item In Part~I, $S$ is the trace $\Tr$ in a compact closed dagger
889:\item In Part~II, the topological entanglement entropy $\gamma = \log
890:  \mathcal{D}$ is a phase invariant; $S(A) = \alpha |\partial A| - \gamma +
891:  O(1/|A|)$ on a disk.
892:\item In Part~III, the Floquet TEE $\gamma_T = \log \mathcal{D}_T$ is a
893:  Floquet phase invariant on the Floquet enriched MTC $\mathcal{C}_T =
895:\item In Part~IV, the Ryu--Takayanagi formula $S(A) = \Area(\gamma_A) /
896:  (4G_N)$ identifies entanglement entropy with the area of a bulk minimal
901:The progression is hierarchical. Part~I gives the categorical type of $S$:
902:it is a functor $\mathbf{Reg}^\op \to \R_{\geq 0}$ defined as
903:$S(A) = -\Tr(\rho_A \log \rho_A)$, where $\Tr$ is the trace of the compact
904:closed dagger structure of $\Phys$ and $\rho_A$ is obtained by partial trace
905:along $\eta, \varepsilon$. Part~II gives a topological constant $\gamma$
907:temporal index. Part~IV identifies $S$ with a geometric area. The same
917:\item In Part~I, hook $\mathsf{H1}$ specifies a $G$-action $\rho :
919:\item In Part~II, this action classifies SPT phases by $H^{d+1}(G, U(1))$
921:  $\mathrm{SPT}^d : \mathbf{Grp} \to \mathbf{Ab}$.
922:\item In Part~III, the symmetry enlarges by $\Z_T$ (discrete temporal
923:  translation); the relevant cohomology becomes $H^{d+2}(G \times \Z_T,
947:  $[H] \in \pi_0(\Ham)$; an RG flow $H \to H'$ converges to a fixed point
951:  Floquet stationary states are fixed points of $U(T)$.
959:content into a phase invariant. The dictionary fixed-point $\leftrightarrow$ phase
969:\item Part~II's classification of $G$-symmetric phases is the connected
971:  obtained as pullback of the trivial $\BG$-functor along $\rho$.
973:  phase functor along the inclusion $B\Z_T \hookrightarrow B(G \times
988:\begin{theme}[$\dagger$ across layers]
990:The $\dagger$-structure of Part~I is preserved by every subsequent lift:
992:\item Part~II requires unitary representations of $G$, so the
993:  symmetry-action functor is $\dagger$-preserving.
995:  functor lands in $\mathbf{Unit} \subset \QChan$ (a $\dagger$-monoidal
997:\item Part~IV's QEC encoder is a $\dagger$-isometry; complementary recovery
998:  is the assertion that recovery is a $\dagger$-section of the encoder.
1007:\subsection{Theme 6: obstruction $2$-cells}
1013:$2$-cells:
1016:  $\eta : F \Rightarrow F'$ between gapped Hamiltonian functors (the
1018:\item Part~III: discrete time crystals are obstruction $2$-cells in the
1031:$2$-categorical structure.
1057:  \Cref{em:tee,em:rt} via $\gamma$ and the area formula;
1063:\item \Cref{theme:obstr} (obstruction $2$-cells) underlies
1068:asserts that all themes simultaneously hold along the composite $L$.
1072:\begin{emerg}[Strong-monoidal $\dagger$-structure]
1074:\textbf{Layer:} Part~I. The category $\Phys$ admits a $\dagger$-symmetric
1084:\textbf{Layer:} Part~I. The probability formula $p(\phi | \psi) =
1085:|\langle \phi | \psi \rangle|^2$ arises as a categorical theorem from
1088:composite morphism $\varepsilon \circ (\phi^\dagger \otimes \id) \circ
1090:$\mathsf{H7}$), the unit $\eta$ and counit $\varepsilon$ are absent and
1091:the trace is undefined; without dagger (hook $\mathsf{H6}$), the
1092:adjoint $\phi^\dagger$ is undefined and the formula's symmetric form
1093:$|\langle\phi|\psi\rangle|^2 = \langle\phi|\psi\rangle\langle\psi|\phi\rangle$
1094:cannot be assembled. Both ingredients are inherent to $M$, so the
1104:sheaf hook $\mathsf{H4}$; with $\mathsf{H4}$ but without a designated
1105:sub-category $\Ham$ (hook $\mathsf{H2}$), the connected-component invariant
1106:$\pi_0(\Ham)$ is undefined.
1109:\begin{emerg}[Topological entanglement entropy $\gamma = \log \mathcal{D}$]
1111:\textbf{Layer:} Part~II. For a topologically ordered phase, $S(A) = \alpha
1112:|\partial A| - \gamma$ on a disk $A$, with $\gamma = \log \mathcal{D}$
1115:giving $\mathcal{D}$). Neither alone produces a numerical phase invariant.
1120:\textbf{Layer:} Part~II. Quasi-particles in $(2{+}1)$D topological phases obey
1121:braided fusion rules with non-trivial topological spin $\theta_a = e^{2\pi i
1130:order parameter oscillates with period $2T$ (twice the drive period) for all
1134:(Floquet hook $\mathsf{H3}$ supplying $B\Z_T$). Watanabe--Oshikawa show DTCs
1141:\textbf{Layer:} Part~III. The $\nu = 1$ AFI phase has chiral edge modes at
1142:quasi-energy $\pi$ with all bulk Chern numbers vanishing.
1146:$\nu = \frac{1}{24\pi^2} \int \Tr[(U^\dagger dU)^3]$, which requires the
1147:Part~III spatio-temporal Brillouin torus $\mathrm{BZ} \times S^1$.
1152:\textbf{Layer:} Part~III. For drive frequency $\omega \gg J$, the system is
1153:governed by a prethermal effective Hamiltonian for time $t \leq \tau_* \sim
1156:$H_{\mathrm{eff}}$ as a Part~II phase; neither alone produces the prethermal
1167:(hook $\mathsf{H6}$) and the Part~IV operator-algebra QEC formalism.
1173:embedding $V : \Hilb_{\mathrm{bulk}} \to \Hilb_{\mathrm{boundary}}$.
1182:\textbf{Layer:} Part~IV. $S(A) = \Area(\gamma_A) / (4G_N)$ exact in the
1184:Part~IV. We exhibit (i) $\FHilb$ models satisfying all of Part~I but
1185:producing no area law; (ii) Part~II models (toric code) producing $\gamma
1186:= \log \mathcal{D}$ but no area-of-a-surface formula; (iii) Part~III models
1188:area law. Only the composite $L$ produces an RT formula.
1194:\textbf{Layer:} Part~IV. Each parametric family $\{\rho_\theta\}$ acquires a
1195:canonical Riemannian metric $g_{ij}^Q$ from Chentsov monotonicity.
1196:\textbf{Non-derivability:} the symmetric logarithmic derivative $L_i$
1199:plus the categorical $\dagger$-structure (Part~I hook $\mathsf{H6}$).
1211:1 & $\dagger$-symmetric monoidal structure       & I       & cartesian categories \\
1213:3 & Long-range entanglement                      & II      & $\FHilb$ alone \\
1214:4 & TEE $\gamma = \log \mathcal{D}$              & II      & SRE phases \\
1218:8 & Prethermal phases                            & III     & static $H$ alone \\
1219:9 & QEC structure of LRE                         & II + IV & Part~II w/o $\dagger$ \\
1220:10 & Holographic isometry $V$                    & IV      & Part~I alone (no LRE) \\
1255:\item \emph{Categorification of the $2$-category $\Theory$.}
1256:Refine \Cref{def:theory} to a homotopy-coherent $(\infty,2)$-category of
1257:physical theories accommodating gauge symmetries as $\infty$-groupoids.
1259:$(\infty, 2)$-functor.
1262:The lift $L_{II \to III}$ is rigorous in the prethermal regime (time $t
1263:\leq \tau_*$) and for MBL-protected DTCs. Outside these regimes, what is the
1270:$\infty$-categories. The functor should restrict to the HaPPY isometry on
1276:\cite{ryutakayanagi2006} is rigorous to leading order in $G_N$. Is there a
1291:that DTC obstruction $2$-cells should correspond to non-trivial
1292:$2$-morphisms in the holographic functor; explicit examples are absent.
1299:or via fusion $2$-categories) that captures fractons. This bears
1307:this in a controlled limit (e.g.\ large-$N$, large-coupling, on a fixed
1326:non-derivability \emph{within the proposed schema}. Is there a stronger
1343:comparison functors between these and our $\Theory$. The comparison
1344:should address (a) categorical primitives (which monoidal/$\dagger$/2-categorical
1363:metric --- are \emph{compositional}: each emerges from the layered
1372:\item presented the compositional functor chain $\Phys \to \Info_1 \to
1373:  \Info_2 \to \Info_3 \to \Info_4$ as a $1$-cell in a $2$-category
1374:  $\Theory$ of physical theories, with explicit hook tracking
1387:The slogan of the series is that \emph{modular composition is the mechanism}.
1422:$\exp(c \omega / J)$ in the prethermal regime. The Part~IV holographic
1433:to higher-categorical analogues: $(2,2)$-categorical Part~I for extended
1434:TQFTs, fusion $2$-categories for Part~II $(3{+}1)$D topological phases,
1449:structural: that emergent geometry can be \emph{built}, not merely
1450:\emph{posited}, by the compositional layering of categorical, phase,
1502:\emph{Topological quantum field theories},
1507:\emph{Higher-dimensional algebra and topological quantum field theory},
1512:\emph{Physics, topology, logic and computation: a Rosetta Stone},
1513:in: \emph{New Structures for Physics}, Lecture Notes in Physics
1514:\textbf{813}, Springer (2011), pp.~95--172; arXiv:0903.0340.
1518:\emph{A categorical semantics of quantum protocols},
1523:\emph{Higher Topos Theory},
1524:Annals of Math.\ Studies \textbf{170}, Princeton Univ.\ Press (2009);
1529:\emph{Categories for the Working Mathematician}, 2nd ed.,
1530:Graduate Texts in Mathematics \textbf{5}, Springer (1998).
1534:\emph{Functorial semantics of algebraic theories},
1539:\emph{Fault-tolerant quantum computation by anyons},
1556:\emph{Topological entanglement entropy},
1561:\emph{Floquet time crystals},
1566:\emph{Phase structure of driven quantum systems},
1583:\emph{Periodic table for Floquet topological insulators},
1594:\emph{Holographic derivation of entanglement entropy from AdS/CFT},
1599:\emph{Building up spacetime with quantum entanglement},
1604:\emph{The large $N$ limit of superconformal field theories and
1611:\emph{Cool horizons for entangled black holes},
1616:\emph{Information Geometry and Its Applications},
1617:Applied Mathematical Sciences \textbf{194}, Springer (2016).
1621:\emph{Gravitation from entanglement in holographic CFTs},
1626:\emph{The Ryu--Takayanagi formula from quantum error correction},
1631:\emph{Quantum gauge field theory in cohesive homotopy type theory},
1636:\emph{Factorization Algebras in Quantum Field Theory}, Vol.~1,
1637:New Math.\ Monographs \textbf{31}, Cambridge Univ.\ Press (2017).
1641:\emph{Absence of quantum time crystals},
1645:J.~Zhang \emph{et al.},
1646:\emph{Observation of a discrete time crystal},
1657:\emph{Surface/state correspondence as a generalized holography},
1662:\emph{Reflection positivity and invertible topological phases},
1667:\emph{The geometry of tensor calculus I},

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\paragraph\\{[0-9]+\\.\" papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\paragraph\{[0-9]+\.)
       ^^^
error: Unicode property not found

exec
/usr/local/bin/zsh -lc "pdftotext papers/synthesis/paper.pdf - | rg -n \" :| ;| ,| \\\\.| \\?\"" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
33:that the framework is modular, not unified : replacing any single law with a different
38:1.1 Modular composition versus unification . . . . . . . . . . . . . . . . . . . . .
39:1.2 The four constituent papers . . . . . . . . . . . . . . . . . . . . . . . . . . .
50:Contributions of the synthesis . . . . . . . . . . . . . . . . . . . . . . . . . .
51:What this synthesis does not claim . . . . . . . . . . . . . . . . . . . . . . .
52:Plan of the paper . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
59:2.1 Part I: categorical primitives and the matter–information functor . . . . . .
60:2.2 Part II: phases as functorial equivalence classes . . . . . . . . . . . . . . . .
61:2.3 Part III: Floquet phases as natural transformations . . . . . . . . . . . . . .
62:2.4 Part IV: emergent geometry from compositional information . . . . . . . . .
71:3.1 Mechanism of hook interpretation by lifts . . . . . . . . . . . . . . . . . . . .
77:4.1 The 2-category Theory . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
78:4.2 The chain of 1-cells . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
79:4.3 Diagrammatic presentation . . . . . . . . . . . . . . . . . . . . . . . . . . . .
80:4.4 Coherence of the composition . . . . . . . . . . . . . . . . . . . . . . . . . .
81:4.5 The composite as a 1-cell, and Proposition 8.2 generalised . . . . . . . . . .
91:5.1 Theme 1: entanglement entropy as quantitative through-line . . . . . . . . .
92:5.2 Theme 2: symmetry-protected structure . . . . . . . . . . . . . . . . . . . .
93:5.3 Theme 3: fixed-point reasoning . . . . . . . . . . . . . . . . . . . . . . . . .
94:5.4 Theme 4: functorial pullback . . . . . . . . . . . . . . . . . . . . . . . . . . .
95:5.5 Theme 5: dagger preservation . . . . . . . . . . . . . . . . . . . . . . . . . .
96:5.6 Theme 6: obstruction 2-cells . . . . . . . . . . . . . . . . . . . . . . . . . . .
107:6.1 Layer-by-layer enumeration . . . . . . . . . . . . . . . . . . . . . . . . . . .
108:6.2 Tabular summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
109:6.3 Compositional structure of the catalogue . . . . . . . . . . . . . . . . . . . .
121:8.1 Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
122:8.2 Modular composition is the mechanism . . . . . . . . . . . . . . . . . . . . .
123:8.3 Outlook: extensions and applications . . . . . . . . . . . . . . . . . . . . . .
124:8.4 Final remarks . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
162:information functor M : Phys → Info.
166:• Part III — Frequency-modulated Processes [3]: lifts the static framework temporally. Floquet evolution becomes a strong monoidal functor F : BZT → QChan;
245:equipped with a tensor product ⊗ : C × C → C, a unit object I, and natural isomorphisms
247:equipped with an involutive contravariant identity-on-objects functor † : C op → C. It is
248:compact closed if every object A has a dual A∗ together with unit ηA : I → A∗ ⊗ A and
249:counit εA : A ⊗ A∗ → I satisfying the snake equations.
250:The matter–information functor. Part I posits two specific †-symmetric monoidal compact closed categories, Phys (modelling physical processes) and Info (modelling informational descriptions), and a matter–information functor M : Phys → Info that is strong
261:• H1 (Symmetry-action hook): ρ : BG → Aut(Phys).
262:• H2 (Hamiltonian hook): Ham ,→ Phys closed under tensor.
266:• H6 (Dagger hook): † on Phys preserved by M .
279:G-symmetric Hamiltonians, the relevant category is the functor category [BG, Ham0 ]eq , and
281:Landau as functorial semantics. A Landau phase with order parameter in representation V of G is a functor LH : BG → Vect assigning to the unique object the order parameter
288:assignment is the functor Z : FusionCat → BraidedMonCat.
294:functor SPTd : Grp → Ab refining π0 (HamG )SRE ,→ H d+1 (G, U (1)).
299:Ham to HamT -per ; enlargement of symmetry by ZT ; MTC enrichment by Rep(ZT ); Floquet
300:TEE; and the composition functor LiftII→III .
309:monoidal functor F : BZT → QChan from the discrete circle category
313:2-categorical structure. A Floquet system is a 1-cell in a fibred 2-category HT over BZT ;
314:micromotion data are 2-cells; the Sambe-space construction S : QChan → Hilb∞ embeds
318:recast as the directed colimit of an asymptotic effective-Hamiltonian functor Heff . The
323:single nT -periodic functor (Theorem 4.3 of Part III). Period-doubling is captured by a noninvertible η : Fl(F ) ⇒ FlZ2 (F ).
343:Quantum error correction as a †-functor. A QECC is an isometric sub-object embedding enc : HilbL ,→ HilbP in †-Hilb. The Knill–Laflamme conditions become the assertion
345:HaPPY holographic codes. On a {5, 4} pentagonal tiling of H2 , perfect tensors with
346:[[6, 1, 4]] structure assemble into an isometry V : Hilbbulk → Hilbboundary . The discrete
353:Fisher metric gijQ (θ) = 21 Tr(ρθ {Li , Lj }) is a Riemannian metric. By Chentsov’s theorem,
359:composite lifting L = LIII→IV ◦ LII→III ◦ LI→II . Worked counterexamples are exhibited in
361:Outputs. Part IV produces an emergent metric functor g : Θ → Riem assigning to
363:holographic functor H : BoundaryRegion → BulkRegion encoding entanglement-wedge
374:lifted layer; the matter–information functor M : Phys → Info1 is itself dagger-preserving
388:LI→II , LII→III
392:LI→II , LII→III
400:LI→II , LIII→IV
408:M (inherent), LII→III , LIII→IV
416:LI→II , LII→III , LIII→IV
418:ρG : BG → Aut(Ham) at LI→II ; ρG×ZT :
419:B(G × ZT ) → Aut(HamT -per ) at LII→III .
420:Wide monoidal sub-category Ham ,→ Phys
421:at LI→II ; HamT -per = Fun(ST1 , Ham) at
422:LII→III .
423:Strong monoidal functor F : BZT → QChan
425:Sheaf Oloc : Open(Λ)op → Vect of local order parameters at LI→II ; sheaf O∂ :
427:at LIII→IV .
428:En -operad action α : En → EndFactAlg (O∂ )
430:† : C op → C preserved by M ; unitarity
432:LII→III ; isometry V † V = idL of QEC encoder at LIII→IV .
433:Duals A∗ , ηA , εA inherited from Phys; tracefunctional Tr : End(A) → I used in S(A) =
434:Area(γA )/4GN at LIII→IV .
442:but not linear : hook H4 (sheaf), for instance, is consumed at lift LI→II (for local order
443:parameters) and again at lift LIII→IV (for boundary CFT data), bypassing LII→III . This
465:LI→II , hook H1 (symmetry-action) by pullback. Given the realisation ρ : BG →
466:Aut(Ham) of H1 in Info1 , the lift LI→II produces the functor category [BG, Ham] as
471:LI→II , hook H4 (sheaf ) by pullback. The sheaf Oloc : Open(Λ)op → Vect realising
476:LII→III , hook H3 (Floquet BZ) by enrichment. The Floquet enrichment functor takes
477:a phase functor F : BG → Ham and produces Fl(F ) : B(G × ZT ) → HamT -per by enriching
479:the T -periodic extension HamT -per . Both enrichments are tensor products of categories:
480:B(G × ZT ) = BG ⊠ BZT and HamT -per = Fun(ST1 , Ham). This is precisely the content of
482:LIII→IV , hook H4 (sheaf ) by fibration. The boundary CFT sheaf O∂ realising H4 in
485:H : BoundaryRegion → BulkRegion to produce the entanglement-wedge-reconstructed
487:LIII→IV , hook H7 (compact-closure) by tensor product. The trace structure Tr inherited from M is composed with the encoder V : HilbL ,→ HilbP to produce the boundaryregion partial trace TrĀ ◦V , whose von Neumann entropy obeys the discrete Ryu–Takayanagi
510:• H1 is a functor ρ : BG → Aut(C) for a designated symmetry data category G;
511:• H2 is a wide monoidal sub-category Ham ,→ C;
512:• H3 is a functor σ : BZ → Aut(C);
513:• H4 is a Grothendieck site (CJ , J) together with a sheaf-of-observables functor CJop → Set
516:• H6 is a †-structure † : C op → C with (f † )† = f ;
517:• H7 is a compact-closure structure (duals A∗ , units ηA : I → A∗ ⊗ A, counits εA :
525:{H1, . . . , H8} is the subset of declared hooks of C (in the sense of Theorem 4.1). The category Phys corresponds to (Phys, ∅) (no hooks declared yet), and the layers Info1 , . . . , Info4
527:• 1-cells (morphisms): hook-respecting strong monoidal †-functors F : (C, D) → (C ′ , D′ ),
528:meaning F is strong monoidal and †-preserving, D ⊆ D′ , and for every H ∈ D, the
530:• 2-cells: monoidal natural transformations η : F ⇒ G between such functors, additionally compatible with the realisation data of all hooks in D.
563:• M : Phys → Info1 is the matter–information functor of Part I: strong monoidal,
565:• LI→II : Info1 → Info2 takes a symmetric monoidal †-category C and produces the
568:• LII→III : Info2 → Info3 takes an equilibrium phase functor F : BG → Ham to its
569:Floquet enrichment Fl(F ) : B(G × ZT ) → HamT -per ; the connected components of the
571:• LIII→IV : Info3 → Info4 takes a Floquet phase functor to its information-geometric
588:L := LIII→IV ◦ LII→III ◦ LI→II ◦ M : Phys → Info4
638:Part II hooks for LII→III ; the four Part III hooks for LIII→IV ). Hooks H6 and H7 are
658:This gradient has three concrete implications. (1) Testability is layered : the modular thesis
670:The composite L : Phys → Info4 produces an emergent geometry from a quantuminformation substrate. The non-derivability content is:
721:• In Part I, hook H1 specifies a G-action ρ : BG → Aut(Phys).
723:with the classification refining to a functor SPTd : Grp → Ab.
725:cohomology becomes H d+2 (G × ZT , U (1)).
760:category [BG, Ham0 ]eq , obtained as pullback of the trivial BG-functor along ρ.
762:inclusion BZT ,→ B(G × ZT ), intersected with the prethermal regime.
792:• Part II: phase transitions are non-invertible natural transformations η : F ⇒ F ′ between
846:ε ◦ (ϕ† ⊗ id) ◦ η ◦ ψ : I → I. Without compact closure (hook H7), the unit η and counit ε are
849:are inherent to M , so the property emerges at Part I and not before.
860:Emergent Property 6.5 (Anyonic statistics). Layer: Part II. Quasi-particles in (2+1)D topological phases obey braided fusion rules with non-trivial topological spin θa = e2πiha . Nonderivability: requires the modular tensor category data of Part II. Part I alone gives only
876:spatio-temporal Brillouin torus BZ × S 1 .
885:Emergent Property 6.10 (Holographic isometry). Layer: Part IV. The HaPPY tensor network defines an isometric embedding V : Hilbbulk → Hilbboundary . Non-derivability:
1004:The semiclassical RT formula [22] is rigorous to leading order in GN . Is there a nonperturbative compositional derivation interpolating these two regimes (perhaps via the
1019:metric. Prove or disprove this in a controlled limit (e.g. large-N , large-coupling, on a
1058:compositional : each emerges from the layered combination of prior categorical structures via

exec
/usr/local/bin/zsh -lc "perl -ne 'print \""'$.:$_" if /'"\\\\emph\\{["'^}]+'"\\}:/ || /\\\\textbf\\{["'^}]+'"\\}:/ || /\\\\emph\\{["'^}]+'"\\}\\./' papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
117:\emph{Emergent Spacetime Dynamics}. Rather than proposing a unified theory, we
143:throughout that the framework is \emph{modular, not unified}: replacing any
171:\emph{compositional invariants}: they make sense only at a specific layer, and
318:\item $\mathsf{H1}$ \emph{(Symmetry-action hook)}: $\rho : B\mathcal{G} \to
320:\item $\mathsf{H2}$ \emph{(Hamiltonian hook)}: $\Ham \hookrightarrow \Phys$
322:\item $\mathsf{H3}$ \emph{(Floquet hook)}: $B\Z \to \mathrm{Aut}(\Phys)$.
323:\item $\mathsf{H4}$ \emph{(Sheaf hook)}: a Grothendieck site $(\C, J)$.
324:\item $\mathsf{H5}$ \emph{(Operadic hook)}: an operad $O$ acting on an object
326:\item $\mathsf{H6}$ \emph{(Dagger hook)}: $\dagger$ on $\Phys$ preserved by
328:\item $\mathsf{H7}$ \emph{(Compact-closure hook)}: duals in $\Phys$ and
330:\item $\mathsf{H8}$ \emph{(Type-theoretic hook)}: internal language
520:is \emph{layered but not linear}: hook $\mathsf{H4}$ (sheaf), for instance,
548:or \emph{fibration}. We give one representative example for each lift.
1326:non-derivability \emph{within the proposed schema}. Is there a stronger
1363:metric --- are \emph{compositional}: each emerges from the layered
1387:The slogan of the series is that \emph{modular composition is the mechanism}.

exec
/usr/local/bin/zsh -lc "rg -n -F '\\paragraph{1.' papers/synthesis/paper.tex; rg -n -F '\\paragraph{2.' papers/synthesis/paper.tex; rg -n -F '\\paragraph{3.' papers/synthesis/paper.tex; rg -n -F '\\paragraph{4.' papers/synthesis/paper.tex; rg -n -F '\\paragraph{5.' papers/synthesis/paper.tex; rg -n -F '\\paragraph{6.' papers/synthesis/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
1406:\paragraph{1. de Sitter holography.} The framework is articulated for
1413:\paragraph{2. Quantum simulators.} The Haskell encodings in each paper
1419:\paragraph{3. Fault-tolerant computation.} Part~II topological order is the
1426:\paragraph{4. Categorical machine learning.} The Fisher--Bures metric of
1432:\paragraph{5. Higher-categorical refinements.} Each layer can be refined
1438:\paragraph{6. Quantum gravity.} The most ambitious extension: identify

exec
/usr/local/bin/zsh -lc 'pdftotext papers/synthesis/paper.pdf - | rg -n "linear :|layered :|compositional :|unified :"' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
33:that the framework is modular, not unified : replacing any single law with a different
442:but not linear : hook H4 (sheaf), for instance, is consumed at lift LI→II (for local order
658:This gradient has three concrete implications. (1) Testability is layered : the modular thesis
1058:compositional : each emerges from the layered combination of prior categorical structures via

exec
/usr/local/bin/zsh -lc "nl -ba papers/synthesis/paper.tex | sed -n '824,833p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
   824	  semiclassical limit of continuum holography \cite{ryutakayanagi2006,
   825	  fghmv2014}, but the full non-perturbative continuum statement
   826	  (Miyaji--Takayanagi conjecture \cite{miyajitakayanagi2015}) remains
   827	  open.
   828	\end{itemize}
   829	This gradient has three concrete implications. (1)~\emph{Testability is
   830	layered}: the modular thesis is empirically testable at the lower layers
   831	(SPT phases observed in cold-atom and topological-insulator experiments;
   832	DTCs observed in trapped-ion arrays \cite{zhang2017}; HaPPY-style codes
   833	implementable on near-term NISQ devices) and currently structural at the

exec
/usr/local/bin/zsh -lc "pdftotext papers/synthesis/paper.pdf - | rg -n \"Theorem 4\\.[12]|Definition 4\\.[12]|Remark 4\\.[0-9]|Composition Hook|Emergent Property|Theme [0-9]\\.[0-9]|Theorem 5|Theorem 6|Definition 6\"" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
20:for each Composition Hook H1–H8 declared in Part I, the precise law in which it is
106:6 Emergent Property Catalogue
161:• Part I — Mathematical Formalisms [1]: establishes the categorical grammar (symmetric monoidal (∞, n)-categories, sheaves, topoi, operads, dagger structure, typetheoretic encoding) and declares eight Composition Hooks H1–H8 together with a matter–
226:of Laws I–IV. Section 3 tabulates the eight Composition Hooks and their consumption sites.
252:Theory defined in Theorem 4.2. The functor M is determined on a generating set under the cobordism hypothesis, and preservation of duals under M implies a Born-rule-type
297:circuits (Theorem 6.5 of Part II).
370:We tabulate, for each Composition Hook declared in Part I, the lift in which it is consumed
462:We make explicit the categorical operation by which each lift interprets the hooks it consumes; the prose mirrors the formal type signatures of Theorem 4.1. For each lift LX→Y
507:Definition 4.1 (Hook signatures). A hook signature is a typed placeholder denoting a piece
523:Definition 4.2 (Theory). The 2-category Theory has:
525:{H1, . . . , H8} is the subset of declared hooks of C (in the sense of Theorem 4.1). The category Phys corresponds to (Phys, ∅) (no hooks declared yet), and the layers Info1 , . . . , Info4
536:Remark 4.3. Theorem 4.2 is a deliberately minimal abstraction. We do not claim it is the
644:Remark 4.5 (Rigour gradient and its implications). Theorem 4.4 is a structural assertion
697:Cross-cutting Theme 5.1 (Entanglement entropy across layers). The von Neumann entropy
719:Cross-cutting Theme 5.2 (Symmetry across layers). The role of symmetry refines as the
740:Cross-cutting Theme 5.3 (Fixed points across layers). Each layer involves a critical fixedpoint construction:
757:Cross-cutting Theme 5.4 (Pullback of structure). The composition mechanism is functorial
772:Cross-cutting Theme 5.5 († across layers). The †-structure of Part I is preserved by every
790:Cross-cutting Theme 5.6 (Obstructions detect emergent phenomena). At each compositional
805:Emergent Property Catalogue
820:• Theorem 5.1 (entanglement entropy) underlies Theorems 6.4 and 6.11 via γ and the
824:• Theorem 5.2 (symmetry) underlies Theorems 6.6 and 6.7;
825:• Theorem 5.3 (fixed points) underlies Theorems 6.8 and 6.12;
826:• Theorem 5.4 (functorial pullback) underlies Theorems 6.3 and 6.10;
827:• Theorem 5.5 (dagger) underlies Theorems 6.1, 6.2 and 6.9;
828:• Theorem 5.6 (obstruction 2-cells) underlies Theorems 6.6 and 6.7.
837:Emergent Property 6.1 (Strong-monoidal †-structure). Layer: Part I. The category Phys
843:Emergent Property 6.2 (Born-rule formula). Layer: Part I. The probability formula p(ϕ|ψ) =
850:Emergent Property 6.3 (Long-range entanglement). Layer: Part II. There exist gapped
855:Emergent Property 6.4 (Topological entanglement entropy γ = log D). Layer: Part II. For
860:Emergent Property 6.5 (Anyonic statistics). Layer: Part II. Quasi-particles in (2+1)D topological phases obey braided fusion rules with non-trivial topological spin θa = e2πiha . Nonderivability: requires the modular tensor category data of Part II. Part I alone gives only
864:Emergent Property 6.6 (Discrete time crystals (DTCs)). Layer: Part III. There exists a Floquet phase whose stroboscopic order parameter oscillates with period 2T (twice the drive period) for all times in the thermodynamic limit (Else–Bauer–Nayak 2016). Non-derivability:
867:Emergent Property 6.7 (Anomalous Floquet topological insulators (AFI)). Layer: Part III.
877:Emergent Property 6.8 (Prethermal phases). Layer: Part III. For drive frequency ω ≫ J,
882:Emergent Property 6.9 (Quantum error-correcting code structure of long-range entanglement). Layer: Part IV (using Part II). Topologically ordered phases are quantum errorcorrecting codes (Bombin–Martı́n-Delgado 2006; Kitaev 2003). Non-derivability from
885:Emergent Property 6.10 (Holographic isometry). Layer: Part IV. The HaPPY tensor network defines an isometric embedding V : Hilbbulk → Hilbboundary . Non-derivability:
889:Emergent Property 6.11 (Ryu–Takayanagi area formula). Layer: Part IV. S(A) = Area(γA )/(4GN )
894:Emergent Property 6.12 (Fisher–Bures Riemannian metric on parametric state manifolds).
989:O1. Categorification of the 2-category Theory. Refine Theorem 4.2 to a homotopy-coherent
1043:constructions); (c) scope of emergent phenomena captured (which of Theorem 6.1–6.12
1061:• tabulated the eight Composition Hooks of Part I and their consumption sites across

exec
/usr/local/bin/zsh -lc "pdftotext papers/synthesis/paper.pdf - | rg -n \"Theorem 4\\.6|Proposition 4\\.6|Theorem 6\\.|Theorems 6\\.|Theorem 5\\.|Theorems 5\\.\"" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
297:circuits (Theorem 6.5 of Part II).
641:by Part II Proposition 2.14 (LI→II ), Part III Proposition 4.6 (LII→III ), and Part IV Remark
659:is empirically testable at the lower layers (SPT phases observed in cold-atom and topologicalinsulator experiments; DTCs observed in trapped-ion arrays [32]; HaPPY-style codes implementable on near-term NISQ devices) and currently structural at the highest layer (continuum holographic claims). (2) Verifiability of non-derivability: Theorem 4.6 is provably
671:Proposition 4.6 (Generalised non-derivability).
681:Theorem 4.6 is the precise modular thesis: emergent geometry is irreducibly compositional.
732:emergent properties Theorems 6.3, 6.4, 6.6 and 6.10 of Section 6.
820:• Theorem 5.1 (entanglement entropy) underlies Theorems 6.4 and 6.11 via γ and the
824:• Theorem 5.2 (symmetry) underlies Theorems 6.6 and 6.7;
825:• Theorem 5.3 (fixed points) underlies Theorems 6.8 and 6.12;
826:• Theorem 5.4 (functorial pullback) underlies Theorems 6.3 and 6.10;
827:• Theorem 5.5 (dagger) underlies Theorems 6.1, 6.2 and 6.9;
828:• Theorem 5.6 (obstruction 2-cells) underlies Theorems 6.6 and 6.7.
1027:O9. Tightness of the non-derivability proposition. Theorem 4.6 (and Proposition 8.2 of
1043:constructions); (c) scope of emergent phenomena captured (which of Theorem 6.1–6.12

exec
/usr/local/bin/zsh -lc 'for p in $(seq 1 26); do max=$(pdftotext -f $p -l $p -bbox papers/synthesis/paper.pdf - 2>/dev/null | perl -ne '"'while(/xMax=\"([0-9.]+)\"/g){"'$m=$1 if $1>$m} END{printf "%.1f", $m||0}'"'); min="'$(pdftotext -f $p -l $p -bbox papers/synthesis/paper.pdf - 2>/dev/null | perl -ne '"'while(/xMin=\"([0-9.]+)\"/g){"'$m=$1 if !defined($m)||$1<$m} END{printf "%.1f", defined($m)?$m:0}'"'); echo \""'$p $min $max"; done' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 678ms:
4 0.0 0.0
5 0.0 0.0
6 0.0 0.0
7 0.0 0.0
8 0.0 0.0
9 0.0 0.0
10 0.0 0.0
11 0.0 0.0
12 0.0 0.0
13 0.0 0.0
14 0.0 0.0
15 0.0 0.0
16 0.0 0.0
17 0.0 0.0
18 0.0 0.0
19 0.0 0.0
20 0.0 0.0
21 0.0 0.0
22 0.0 0.0
23 0.0 0.0
24 0.0 0.0
25 0.0 0.0
26 0.0 0.0

exec
/usr/local/bin/zsh -lc "pdftotext -bbox -f 1 -l 1 papers/synthesis/paper.pdf - | sed -n '1,20p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
libc++abi: terminating due to uncaught exception of type std::out_of_range: basic_string
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
exec
/usr/local/bin/zsh -lc 'which mutool || true' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
mutool not found

exec
/usr/local/bin/zsh -lc 'which qpdf || true' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
qpdf not found

codex
**Findings**

- **HIGH:** `cleveref` renders theorem-like cross-references with the wrong type. The custom environments all share the `theorem` counter, so references to definitions, propositions, themes, and emergent properties render as “Theorem …”. Examples: `\Cref{def:theory}` at [paper.tex:303](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:303), `\Cref{def:hook-sig}` at [paper.tex:545](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:545), `\Cref{prop:gen-nonderiv}` at [paper.tex:835](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:835), theme refs at [paper.tex:1056](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1056), and emergent-property refs at [paper.tex:1347](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1347). Root is the shared theorem declarations at [paper.tex:36](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:36). Use `aliascnt` or explicit `\crefname/\Crefname` handling per environment.

- **MEDIUM:** Italic/emphasis before colons creates visible spacing before punctuation in the PDF: `unified :`, `linear :`, `layered :`, `compositional :`. Source sites: [paper.tex:143](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:143), [paper.tex:520](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:520), [paper.tex:829](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:829), [paper.tex:1363](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1363). Put the colon inside the emphasized text or otherwise suppress the italic correction.

- **LOW:** Several refs/citations should be tied with nonbreaking spaces to avoid line breaks before numbers: [paper.tex:653](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:653), [paper.tex:814](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:814), [paper.tex:815](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:815), [paper.tex:816](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:816), [paper.tex:819](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:819), [paper.tex:823](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:823), [paper.tex:824](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:824), [paper.tex:826](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:826), [paper.tex:832](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:832), [paper.tex:856](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:856), [paper.tex:1258](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1258), [paper.tex:1276](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1276), [paper.tex:1467](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1467).

- **LOW:** `Bombin--Mart\'in-Delgado` should use a dotless i accent form, e.g. `Mart\\'{\\i}n`, at [paper.tex:1164](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1164).

- **LOW:** Outlook uses manually numbered `\paragraph{1. ...}` headings at [paper.tex:1406](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1406), [paper.tex:1413](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1413), [paper.tex:1419](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1419), [paper.tex:1426](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1426), [paper.tex:1432](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1432), [paper.tex:1438](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1438). This is inconsistent with the earlier `enumerate` open-problem styling and triggers bad interword spacing after `1.` in `1. de Sitter`.

- **LOW:** Unused labels: `em:anyon`, `rem:limit-rigour`, `sec:hook-mechanism`, `sec:intro`, `sec:recap-I`, `sec:recap-II`, `sec:recap-III`, `sec:recap-IV`, `sec:theme-EE`, `sec:theme-SPT`, `sec:theme-dagger`, `sec:theme-fp`, `sec:theme-obstruction`, `sec:theme-pullback`.

- **LOW:** Unused bibliography entries: `costello2017`, `freedhopkins2021`, `harlow2017`, `joyalstreet1991`, `lawvere1963`, `maclane1998`, `schreibershulman2014`, `vijayhaahfu2016`, `watanabe2015`. Some are mentioned in prose without `\cite`, so either cite them or remove the entries.

I found no undefined refs, no undefined citations, no duplicate labels/bibitems, no unbalanced braces/environments, and all declared packages resolve locally. I did not run a fresh LaTeX build because the sandbox is read-only, but the existing PDF was generated seconds after the `.tex`, so current source likely compiles.
2026-04-30T17:43:33.158076Z ERROR codex_core::session: failed to record rollout items: thread 019ddf78-955f-7d63-b4e8-8be84215dc0d not found
tokens used
139,826
**Findings**

- **HIGH:** `cleveref` renders theorem-like cross-references with the wrong type. The custom environments all share the `theorem` counter, so references to definitions, propositions, themes, and emergent properties render as “Theorem …”. Examples: `\Cref{def:theory}` at [paper.tex:303](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:303), `\Cref{def:hook-sig}` at [paper.tex:545](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:545), `\Cref{prop:gen-nonderiv}` at [paper.tex:835](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:835), theme refs at [paper.tex:1056](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1056), and emergent-property refs at [paper.tex:1347](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1347). Root is the shared theorem declarations at [paper.tex:36](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:36). Use `aliascnt` or explicit `\crefname/\Crefname` handling per environment.

- **MEDIUM:** Italic/emphasis before colons creates visible spacing before punctuation in the PDF: `unified :`, `linear :`, `layered :`, `compositional :`. Source sites: [paper.tex:143](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:143), [paper.tex:520](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:520), [paper.tex:829](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:829), [paper.tex:1363](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1363). Put the colon inside the emphasized text or otherwise suppress the italic correction.

- **LOW:** Several refs/citations should be tied with nonbreaking spaces to avoid line breaks before numbers: [paper.tex:653](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:653), [paper.tex:814](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:814), [paper.tex:815](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:815), [paper.tex:816](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:816), [paper.tex:819](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:819), [paper.tex:823](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:823), [paper.tex:824](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:824), [paper.tex:826](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:826), [paper.tex:832](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:832), [paper.tex:856](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:856), [paper.tex:1258](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1258), [paper.tex:1276](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1276), [paper.tex:1467](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1467).

- **LOW:** `Bombin--Mart\'in-Delgado` should use a dotless i accent form, e.g. `Mart\\'{\\i}n`, at [paper.tex:1164](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1164).

- **LOW:** Outlook uses manually numbered `\paragraph{1. ...}` headings at [paper.tex:1406](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1406), [paper.tex:1413](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1413), [paper.tex:1419](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1419), [paper.tex:1426](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1426), [paper.tex:1432](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1432), [paper.tex:1438](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/synthesis/paper.tex:1438). This is inconsistent with the earlier `enumerate` open-problem styling and triggers bad interword spacing after `1.` in `1. de Sitter`.

- **LOW:** Unused labels: `em:anyon`, `rem:limit-rigour`, `sec:hook-mechanism`, `sec:intro`, `sec:recap-I`, `sec:recap-II`, `sec:recap-III`, `sec:recap-IV`, `sec:theme-EE`, `sec:theme-SPT`, `sec:theme-dagger`, `sec:theme-fp`, `sec:theme-obstruction`, `sec:theme-pullback`.

- **LOW:** Unused bibliography entries: `costello2017`, `freedhopkins2021`, `harlow2017`, `joyalstreet1991`, `lawvere1963`, `maclane1998`, `schreibershulman2014`, `vijayhaahfu2016`, `watanabe2015`. Some are mentioned in prose without `\cite`, so either cite them or remove the entries.

I found no undefined refs, no undefined citations, no duplicate labels/bibitems, no unbalanced braces/environments, and all declared packages resolve locally. I did not run a fresh LaTeX build because the sandbox is read-only, but the existing PDF was generated seconds after the `.tex`, so current source likely compiles.
