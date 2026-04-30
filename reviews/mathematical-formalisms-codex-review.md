---
reviewer: codex (OpenAI)
type: formatting
paper: mathematical-formalisms
date: 2026-04-30T16:45:12Z
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
session id: 019ddf47-bea4-7fb3-8d62-cde931a7f84d
--------
user
Review papers/mathematical-formalisms/paper.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and fixes.
codex
I’ll inspect the LaTeX source and, if the toolchain is available, run a compile pass so the findings are grounded in actual diagnostics rather than just source reading.
exec
/usr/local/bin/zsh -lc "nl -ba papers/mathematical-formalisms/paper.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% Core math
     4	\usepackage{amsmath, amssymb, amsthm}
     5	
     6	% Diagrams
     7	\usepackage{tikz-cd}
     8	\usepackage{tikz}
     9	
    10	% References and links
    11	\usepackage{hyperref}
    12	\usepackage{cleveref}
    13	
    14	% Graphics
    15	\usepackage{graphicx}
    16	
    17	% Page layout
    18	\usepackage[margin=1in]{geometry}
    19	
    20	% Sidebar
    21	\usepackage{everypage}
    22	\usepackage{xcolor}
    23	
    24	% Theorem environments
    25	\newtheorem{theorem}{Theorem}[section]
    26	\newtheorem{proposition}[theorem]{Proposition}
    27	\newtheorem{lemma}[theorem]{Lemma}
    28	\newtheorem{corollary}[theorem]{Corollary}
    29	\theoremstyle{definition}
    30	\newtheorem{definition}[theorem]{Definition}
    31	\newtheorem{example}[theorem]{Example}
    32	\theoremstyle{remark}
    33	\newtheorem{remark}[theorem]{Remark}
    34	\newtheorem{hook}[theorem]{Composition Hook}
    35	
    36	% Macros
    37	\newcommand{\C}{\mathcal{C}}
    38	\newcommand{\D}{\mathcal{D}}
    39	\newcommand{\E}{\mathcal{E}}
    40	\newcommand{\Phys}{\mathbf{Phys}}
    41	\newcommand{\Info}{\mathbf{Info}}
    42	\newcommand{\Hilb}{\mathbf{Hilb}}
    43	\newcommand{\FHilb}{\mathbf{FHilb}}
    44	\newcommand{\Vect}{\mathbf{Vect}}
    45	\newcommand{\Set}{\mathbf{Set}}
    46	\newcommand{\Cob}{\mathbf{Cob}}
    47	\newcommand{\Bord}{\mathbf{Bord}}
    48	\newcommand{\op}{\mathrm{op}}
    49	\newcommand{\id}{\mathrm{id}}
    50	\newcommand{\Hom}{\mathrm{Hom}}
    51	\newcommand{\End}{\mathrm{End}}
    52	\newcommand{\Tr}{\mathrm{Tr}}
    53	\newcommand{\Ob}{\mathrm{Ob}}
    54	
    55	% GrokRxiv sidebar
    56	\definecolor{grokgray}{RGB}{110,110,110}
    57	\AddEverypageHook{%
    58	  \ifnum\value{page}=1
    59	    \begin{tikzpicture}[remember picture, overlay]
    60	      \node[
    61	        rotate=90,
    62	        anchor=south,
    63	        font=\Large\sffamily\bfseries\color{grokgray},
    64	        inner sep=0pt
    65	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    66	      {GrokRxiv:2026.04.mathematical-formalisms\quad
    67	       [\,math.CT\,]\quad
    68	       30 Apr 2026};
    69	    \end{tikzpicture}
    70	  \fi
    71	}
    72	
    73	\title{Law I --- Mathematical Formalisms:\\
    74	Categorical Foundations for Matter--Information Correspondence}
    75	\author{MagnetonIO Research \\
    76	\textit{Emergent Spacetime Dynamics Series, Paper 1 of 4}}
    77	\date{30 April 2026}
    78	
    79	\begin{document}
    80	\maketitle
    81	
    82	\begin{abstract}
    83	We formulate the categorical grammar underlying a modular four-law programme for emergent spacetime dynamics. Law~I, presented here, is the foundational layer: it fixes the language in which Laws~II (phase-bound matter), III (frequency-modulated processes), and IV (information-bearing structures) are written. We argue that the appropriate mathematical setting for a matter--information correspondence is that of symmetric monoidal $(\infty,n)$-categories together with their sheaf-theoretic, operadic, and type-theoretic refinements. We isolate eight \emph{composition hooks}---formal interfaces marked $\mathsf{H1}$--$\mathsf{H8}$---that downstream laws plug into without modification. We define the matter--information functor $M : \Phys \to \Info$ as a strong monoidal, dagger-preserving functor between symmetric monoidal dagger categories, and we prove three structural results: (i) $M$ is fully determined on a generating set under the cobordism hypothesis; (ii) preservation of duals under $M$ implies a Born-rule-type formula on traceable processes; (iii) a sheaf condition for local observables lifts uniquely to a sheaf condition on $M$-images. We supply a Haskell encoding of the categorical core (a \texttt{Category}/\texttt{MonoidalCategory}/\texttt{Functor1} hierarchy with QuickCheck property tests), and worked examples drawn from finite-dimensional Hilbert spaces, the cobordism category, the topos of presheaves on a poset, and the little-disks operad. The paper is explicitly modular: nothing here pretends to a unified theory of physics. Rather, it provides the substrate onto which subsequent laws are functorially composed.
    84	\end{abstract}
    85	
    86	\tableofcontents
    87	
    88	\section{Introduction}
    89	\label{sec:introduction}
    90	
    91	\subsection{Modular framework, not unified theory}
    92	
    93	Modern theoretical physics is replete with frameworks that aspire to unification. The programme to which this paper belongs makes no such claim. We instead pursue a \emph{modular} approach: we identify a small number of mathematical layers, each of which is autonomous and self-standing, and we organise their interaction through explicit \emph{composition hooks}. The hooks are formal: they are functor signatures, sheaf conditions, or operadic action squares whose existence is asserted in Law~I and whose realisation is supplied by Laws~II, III, and IV.
    94	
    95	This paper is Law~I. It establishes the categorical primitives that the other three laws will compose onto. Its claims are not physical in the empirical sense---no Hamiltonian, no scattering amplitude, no thermodynamic measurement appears as a primitive object. Its claims are structural: \emph{if} we accept that physical processes are arrows in some category $\Phys$, and \emph{if} we accept that informational descriptions live in some category $\Info$, then the relation between them must be a structure-preserving functor whose domain and codomain admit specific composition properties.
    96	
    97	\subsection{Why categorical language?}
    98	
    99	Three reasons motivate the choice. First, physical systems compose, both spatially (tensor products of subsystems) and temporally (sequential evolution); the algebra of these two compositions, together with their compatibility, is exactly what monoidal category theory was designed to formalise~\cite{maclane1998}. Second, observables organise locally and assemble globally: this is the sheaf-theoretic structure familiar from gauge theory, and its higher-categorical refinement underlies modern formulations of quantum field theory~\cite{costello2017}. Third, the same algebraic data---a symmetric monoidal closed (or compact closed) category---governs quantum mechanics, computation, logic, and topology, as exhibited in the Rosetta Stone of Baez and Stay~\cite{baezstay2009}. Taking the Rosetta Stone seriously means that the matter--information correspondence is not a physical accident but a four-way translational symmetry built into the categorical substrate.
   100	
   101	\subsection{Composition hooks: where Laws II--IV plug in}
   102	
   103	A central methodological device of this paper is the explicit declaration of \emph{composition hooks}. A hook is a typed slot: it specifies the categorical signature that a downstream construction must populate. We declare eight hooks:
   104	\begin{itemize}
   105	\item $\mathsf{H1}$ (Symmetry-action hook): a category of symmetry data $\mathcal{G}$ acting on $\Phys$ via a functor $\rho: B\mathcal{G} \to \mathrm{Aut}(\Phys)$. Used by Law~II to encode global symmetries of phases of matter.
   106	\item $\mathsf{H2}$ (Hamiltonian hook): a designated subcategory $\mathbf{Ham} \hookrightarrow \Phys$ closed under tensor product. Used by Laws~II, III to define gapped Hamiltonians and adiabatic deformations.
   107	\item $\mathsf{H3}$ (Floquet hook): a circle category $B\mathbb{Z}$ and an action $B\mathbb{Z} \to \mathrm{Aut}(\Phys)$. Used by Law~III to encode periodic drive.
   108	\item $\mathsf{H4}$ (Sheaf hook): a Grothendieck site $(\C, J)$ controlling locality of observables. Used by Law~II to handle local order parameters and by Law~IV for boundary CFT data.
   109	\item $\mathsf{H5}$ (Operadic hook): an operad $O$ acting on a designated object of $\Info$. Used by Law~IV for factorisation algebras.
   110	\item $\mathsf{H6}$ (Dagger hook): the dagger structure $\dagger$ on $\Phys$ and its preservation by $M$. Used by Law~III for unitary drive operators.
   111	\item $\mathsf{H7}$ (Compact-closure hook): existence of duals in $\Phys$ and $\Info$. Used by Law~IV for traces, partial traces, and the Ryu--Takayanagi formula.
   112	\item $\mathsf{H8}$ (Type-theoretic hook): an internal language $\mathcal{L}(\Info)$ obtained from a topos structure. Used by all subsequent laws for executable encoding.
   113	\end{itemize}
   114	
   115	We mark these hooks throughout the text. They are the contract between Law~I and the remainder of the series.
   116	
   117	\subsection{Outline}
   118	
   119	\Cref{sec:preliminaries} reviews categorical preliminaries with the precision needed for the sequel. \Cref{sec:matter-info-functor} introduces the matter--information functor $M$ and proves its basic structural properties. \Cref{sec:monoidal} develops the monoidal structure of state spaces. \Cref{sec:sheaves} formalises sheaves and topoi for local physics. \Cref{sec:operads} treats operadic composition. \Cref{sec:type-theory} gives the type-theoretic encoding. \Cref{sec:examples} works concrete examples. \Cref{sec:open-problems} states open problems for Law~I as a foundational layer. \Cref{sec:conclusion} closes.
   120	
   121	\section{Categorical Preliminaries}
   122	\label{sec:preliminaries}
   123	
   124	We fix conventions. Throughout, ``category'' means a locally small category in the sense of~\cite{maclane1998}. We follow the conventions of~\cite{lurie2009} when the discussion turns to $(\infty,n)$-categories.
   125	
   126	\subsection{Categories, functors, natural transformations}
   127	
   128	\begin{definition}[Category]
   129	\label{def:category}
   130	A \emph{category} $\C$ consists of:
   131	\begin{enumerate}
   132	\item a class $\Ob(\C)$ of \emph{objects};
   133	\item for every pair $A, B \in \Ob(\C)$, a set $\Hom_\C(A,B)$ of \emph{morphisms};
   134	\item for every triple $A, B, C$, a \emph{composition} $\circ : \Hom_\C(B,C) \times \Hom_\C(A,B) \to \Hom_\C(A,C)$;
   135	\item for every $A$, an \emph{identity} $\id_A \in \Hom_\C(A,A)$;
   136	\end{enumerate}
   137	satisfying associativity $(h \circ g) \circ f = h \circ (g \circ f)$ and unitality $\id \circ f = f = f \circ \id$.
   138	\end{definition}
   139	
   140	\begin{definition}[Functor]
   141	A \emph{functor} $F : \C \to \D$ assigns to each $A \in \Ob(\C)$ an object $F(A) \in \Ob(\D)$ and to each morphism $f : A \to B$ a morphism $F(f) : F(A) \to F(B)$, satisfying $F(\id_A) = \id_{F(A)}$ and $F(g \circ f) = F(g) \circ F(f)$.
   142	\end{definition}
   143	
   144	\begin{definition}[Natural transformation]
   145	Given functors $F, G : \C \to \D$, a \emph{natural transformation} $\eta : F \Rightarrow G$ is a family of morphisms $\eta_A : F(A) \to G(A)$, indexed by $A \in \Ob(\C)$, such that for every $f : A \to B$ in $\C$ the square
   146	\[
   147	\begin{tikzcd}
   148	F(A) \arrow[r,"F(f)"] \arrow[d,"\eta_A"'] & F(B) \arrow[d,"\eta_B"] \\
   149	G(A) \arrow[r,"G(f)"'] & G(B)
   150	\end{tikzcd}
   151	\]
   152	commutes.
   153	\end{definition}
   154	
   155	The slogan, due to Lawvere~\cite{lawvere1963}, is that mathematics is naturally organised by adjunctions, and the present paper takes this slogan as a working principle.
   156	
   157	\subsection{Monoidal categories}
   158	
   159	\begin{definition}[Monoidal category]
   160	\label{def:monoidal}
   161	A \emph{monoidal category} is a tuple $(\C, \otimes, I, \alpha, \lambda, \rho)$ where $\C$ is a category, $\otimes : \C \times \C \to \C$ is a bifunctor, $I \in \Ob(\C)$ is a distinguished \emph{unit}, and $\alpha, \lambda, \rho$ are natural isomorphisms
   162	\[
   163	\alpha_{A,B,C} : (A \otimes B) \otimes C \xrightarrow{\sim} A \otimes (B \otimes C),
   164	\quad \lambda_A : I \otimes A \xrightarrow{\sim} A,
   165	\quad \rho_A : A \otimes I \xrightarrow{\sim} A,
   166	\]
   167	satisfying Mac Lane's pentagon and triangle axioms~\cite{maclane1998}.
   168	\end{definition}
   169	
   170	\begin{definition}[Symmetric monoidal category]
   171	A monoidal category $(\C, \otimes, I)$ is \emph{symmetric} if equipped with a natural isomorphism $\sigma_{A,B} : A \otimes B \xrightarrow{\sim} B \otimes A$ such that $\sigma_{B,A} \circ \sigma_{A,B} = \id_{A \otimes B}$ and the symmetry hexagon commutes.
   172	\end{definition}
   173	
   174	\begin{theorem}[Mac Lane Coherence~\cite{maclane1998}]
   175	\label{thm:maclane}
   176	In any monoidal category, every diagram constructed from the structural isomorphisms $\alpha, \lambda, \rho$ commutes. Equivalently, the free monoidal category on one generator is equivalent (as a monoidal category) to the discrete category whose objects are bracketed words modulo associativity and unit, and whose only morphisms are identities.
   177	\end{theorem}
   178	
   179	\begin{proof}[Proof sketch]
   180	Apply Mac Lane's strictification: every monoidal category is monoidally equivalent to a strict monoidal category, in which the structural isomorphisms are identities. The pentagon and triangle axioms suffice to ensure the strictification is well-defined.
   181	\end{proof}
   182	
   183	\Cref{thm:maclane} licenses our subsequent suppression of associators and unitors when no confusion arises.
   184	
   185	\subsection{Compact closed and dagger structures}
   186	
   187	\begin{definition}[Compact closed category]
   188	\label{def:compact-closed}
   189	A symmetric monoidal category $\C$ is \emph{compact closed} if every object $A$ has a \emph{dual} $A^*$ together with morphisms
   190	\[
   191	\eta_A : I \to A^* \otimes A,
   192	\qquad
   193	\varepsilon_A : A \otimes A^* \to I,
   194	\]
   195	called \emph{unit} and \emph{counit}, satisfying the triangle (or ``zig-zag'') identities:
   196	\[
   197	(\id_A \otimes \varepsilon_A) \circ (\eta_A \otimes \id_A) = \id_A,
   198	\qquad
   199	(\varepsilon_A \otimes \id_{A^*}) \circ (\id_{A^*} \otimes \eta_A) = \id_{A^*}.
   200	\]
   201	Diagrammatically (string-diagram calculus, anticipated from \cref{thm:joyal-street}), the first identity says that an $A$-strand (oriented upward) which is bent through a cup ($\eta_A$) and back through a cap ($\varepsilon_A$) ``snakes'' into a straight $A$-strand:
   202	\[
   203	\begin{tikzcd}[column sep=tiny, row sep=tiny]
   204	{}\arrow[d, no head] & {} & {}\\
   205	A \arrow[d, bend left=90, looseness=2, no head] & A^* \arrow[d, bend right=90, looseness=2, no head] & {}\\
   206	{} & {} & A \arrow[d, no head]\\
   207	{} & {} & {}
   208	\end{tikzcd}
   209	\;\;=\;\;
   210	\begin{tikzcd}[column sep=tiny, row sep=tiny]
   211	A \arrow[d, no head]\\
   212	{}\\
   213	A
   214	\end{tikzcd}
   215	\]
   216	The second identity is the mirror image with $A$ and $A^*$ exchanged.
   217	\end{definition}
   218	
   219	\begin{definition}[Dagger category]
   220	A \emph{dagger category} is a category $\C$ equipped with a contravariant involutive identity-on-objects functor $\dagger : \C^\op \to \C$ such that $(f^\dagger)^\dagger = f$. A \emph{dagger compact closed category} is a compact closed category whose dagger is compatible with the duals via $\varepsilon_A^\dagger = \sigma_{A^*,A} \circ \eta_A$~\cite{abramskycoecke2004}.
   221	\end{definition}
   222	
   223	\begin{example}[$\FHilb$]
   224	\label{ex:fhilb}
   225	Finite-dimensional complex Hilbert spaces with linear maps form a dagger compact closed symmetric monoidal category. The tensor is the Hilbert tensor product, the unit is $\mathbb{C}$, the dual of $H$ is the conjugate space $H^*$, $\eta : \mathbb{C} \to H^* \otimes H$ is $1 \mapsto \sum_i \bar{e}_i \otimes e_i$ for any basis $\{e_i\}$, $\varepsilon$ is the evaluation pairing, and $\dagger$ is the Hilbert-space adjoint~\cite{abramskycoecke2004}.
   226	\end{example}
   227	
   228	\subsection{The cobordism category}
   229	
   230	\begin{definition}[$\Cob_n$]
   231	\label{def:cob-n}
   232	The category $\Cob_n$ has as objects closed oriented $(n-1)$-manifolds. A morphism $\Sigma_0 \to \Sigma_1$ is a diffeomorphism class of compact oriented $n$-manifolds $M$ together with an orientation-preserving diffeomorphism $\partial M \cong \overline{\Sigma_0} \sqcup \Sigma_1$. Composition is gluing along the boundary; the tensor is disjoint union; the unit is the empty $(n-1)$-manifold.
   233	\end{definition}
   234	
   235	$\Cob_n$ is symmetric monoidal and compact closed; the dual of $\Sigma$ is $\overline{\Sigma}$ (orientation reversal).
   236	
   237	\begin{definition}[TQFT~\cite{atiyah1988}]
   238	An $n$-dimensional TQFT is a symmetric monoidal functor $Z : \Cob_n \to \Vect_k$ (or $\FHilb$).
   239	\end{definition}
   240	
   241	\begin{theorem}[Cobordism Hypothesis~\cite{baezdolan1995,lurie2009}]
   242	\label{thm:cobordism}
   243	Let $\Bord_n^{\mathrm{fr}}$ denote the $(\infty,n)$-category of framed bordisms. For any symmetric monoidal $(\infty,n)$-category $\C$, the evaluation-at-the-point functor
   244	\[
   245	\mathrm{Fun}^{\otimes}(\Bord_n^{\mathrm{fr}}, \C) \xrightarrow{\sim} \C^{\mathrm{fd}}
   246	\]
   247	is an equivalence, where $\C^{\mathrm{fd}}$ is the $\infty$-groupoid of fully dualisable objects of $\C$.
   248	\end{theorem}
   249	
   250	We use the cobordism hypothesis as a representability principle: physical functors are determined by where they send the point, provided we work in a setting with enough duals.
   251	
   252	\section{The Matter--Information Functor}
   253	\label{sec:matter-info-functor}
   254	
   255	The central object of Law~I is a structure-preserving functor $M : \Phys \to \Info$. We now define its domain, codomain, and structural conditions.
   256	
   257	\subsection{The categories \texorpdfstring{$\Phys$}{Phys} and \texorpdfstring{$\Info$}{Info}}
   258	
   259	\begin{definition}[$\Phys$]
   260	\label{def:phys}

exec
/usr/local/bin/zsh -lc 'pwd && rg --files' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
src/frequency-modulated-processes/src/Floquet/Types.hs
src/frequency-modulated-processes/src/Floquet/Magnus.hs
src/frequency-modulated-processes/src/Floquet/Linalg.hs
src/frequency-modulated-processes/src/Floquet/KickedIsing.hs
src/frequency-modulated-processes/frequency-modulated-processes.cabal
src/frequency-modulated-processes/test/Spec.hs
src/frequency-modulated-processes/app/Main.hs
src/mathematical-formalisms/mathematical-formalisms.cabal
README.md
sources/context.txt
reviews/frequency-modulated-processes-review-round-3.md
reviews/phase-bound-matter-review-round-1.md
reviews/frequency-modulated-processes-review.md
reviews/information-bearing-structures-review-round-1.md
reviews/frequency-modulated-processes-review-round-2.md
reviews/frequency-modulated-processes-codex-review.md
reviews/mathematical-formalisms-review-round-3.md
reviews/mathematical-formalisms-review-round-2.md
reviews/mathematical-formalisms-review.md
reviews/mathematical-formalisms-review-round-1.md
reviews/mathematical-formalisms-review-round-4.md
reviews/mathematical-formalisms-codex-review.md
reviews/information-bearing-structures-review-round-2.md
reviews/frequency-modulated-processes-review-round-1.md
reviews/information-bearing-structures-review-round-3.md
reviews/phase-bound-matter-review-round-2.md
reviews/frequency-modulated-processes-review-round-4.md
src/mathematical-formalisms/src/Categorical/Examples.hs
src/mathematical-formalisms/src/Categorical/MatterInfo.hs
src/mathematical-formalisms/src/Categorical/Monoidal.hs
src/mathematical-formalisms/src/Categorical/Core.hs
src/mathematical-formalisms/src/Categorical/Functor1.hs
papers/pdf/frequency-modulated-processes.pdf
images/frequency-modulated-processes.png
papers/latex/frequency-modulated-processes.tex
papers/phase-bound-matter/paper.pdf
papers/phase-bound-matter/paper.tex
src/mathematical-formalisms/app/Main.hs
src/phase-bound-matter/phase-bound-matter.cabal
papers/information-bearing-structures/paper.tex
papers/information-bearing-structures/paper.pdf
src/information-bearing-structures/law4.cabal
public/covers/frequency-modulated-processes.png
src/mathematical-formalisms/test/Spec.hs
papers/mathematical-formalisms/paper.tex
papers/mathematical-formalisms/paper.pdf
src/phase-bound-matter/test/Spec.hs
public/papers/frequency-modulated-processes.pdf
src/information-bearing-structures/src/Law4/Stabiliser.hs
src/information-bearing-structures/src/Law4/HaPPY.hs
src/information-bearing-structures/src/Law4/Properties.hs
src/information-bearing-structures/src/Law4/Fisher.hs
src/information-bearing-structures/src/Law4/Pauli.hs
src/phase-bound-matter/app/Main.hs
src/phase-bound-matter/src/PhaseBoundMatter/Anyon.hs
src/phase-bound-matter/src/PhaseBoundMatter/Functor.hs
src/phase-bound-matter/src/PhaseBoundMatter/Phase.hs
src/phase-bound-matter/src/PhaseBoundMatter/Symmetry.hs
src/phase-bound-matter/src/PhaseBoundMatter/ToricCode.hs
src/phase-bound-matter/src/PhaseBoundMatter/GroupCohomology.hs
src/phase-bound-matter/src/PhaseBoundMatter/Entropy.hs
src/information-bearing-structures/test/Spec.hs
src/information-bearing-structures/app/Main.hs

codex
The file is long enough that I’m reading it in slices and checking the project’s existing review history for any known LaTeX-specific problems, then I’ll compile from the paper directory to catch references and box warnings.
exec
/usr/local/bin/zsh -lc "nl -ba papers/mathematical-formalisms/paper.tex | sed -n '261,620p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
   261	The category $\Phys$ is a symmetric monoidal dagger category whose objects are \emph{physical systems}, abstractly characterised. Morphisms are \emph{processes}: arbitrary linear, completely positive, or unitary maps depending on context. The tensor product is composition of independent systems; $\dagger$ encodes time-reversal/adjoint; $I$ is the trivial system.
   262	\end{definition}
   263	
   264	\begin{definition}[$\Info$]
   265	The category $\Info$ is a symmetric monoidal dagger category whose objects are \emph{information-theoretic resources}: classical or quantum information types, presheaves on a poset of measurement contexts, or sections of a sheaf of state spaces. Morphisms are information-preserving (or information-monotone) processes.
   266	\end{definition}
   267	
   268	\begin{remark}
   269	We do not commit to a single concrete realisation of $\Phys$ or $\Info$. Different choices give different instantiations of Law~I; what is universal is the \emph{type} of the functor $M$ and the structural properties it must preserve.
   270	\end{remark}
   271	
   272	\subsection{Definition of \texorpdfstring{$M$}{M}}
   273	
   274	\begin{definition}[Matter--information functor]
   275	\label{def:matter-info}
   276	A \emph{matter--information functor} is a strong monoidal dagger functor $M : \Phys \to \Info$. That is, $M$ is a functor equipped with natural isomorphisms
   277	\[
   278	\mu_{A,B} : M(A) \otimes M(B) \xrightarrow{\sim} M(A \otimes B),
   279	\qquad
   280	\iota : I_{\Info} \xrightarrow{\sim} M(I_{\Phys}),
   281	\]
   282	satisfying the standard monoidal coherence diagrams~\cite{maclane1998}, and additionally $M(f^\dagger) = M(f)^\dagger$ for every morphism $f$.
   283	\end{definition}
   284	
   285	\begin{hook}[Symmetry-action hook $\mathsf{H1}$]
   286	\label{hook:H1}
   287	Given a group $G$ with delooping $BG$, a \emph{symmetry action on $\Phys$} is a strong monoidal functor $\rho : BG \to \mathrm{Aut}_\otimes(\Phys)$. We do not require $M$ to be invertible. Instead, we say that $M$ \emph{transports} $\rho$ to an action $\rho_M : BG \to \mathrm{Aut}_\otimes(\Info)$ if for every $g \in G$ the diagram
   288	\[
   289	\begin{tikzcd}
   290	\Phys \arrow[r, "\rho(g)"] \arrow[d, "M"'] & \Phys \arrow[d, "M"] \\
   291	\Info \arrow[r, "\rho_M(g)"'] & \Info
   292	\end{tikzcd}
   293	\]
   294	commutes (strictly, or up to natural isomorphism in a 2-categorical setting). When $M$ is fully faithful, such a $\rho_M$ exists and is unique on the essential image of $M$, by the universal property of the image factorisation. When $M$ is not fully faithful, the existence of a compatible transported action $\rho_M$ is no longer automatic: distinct $g \in G$ may act identically on the essential image of $M$, or the chosen symmetry of $\Phys$ may fail to descend to a well-defined action on $\Info$ at all. Law~II therefore imposes this transportability as a hypothesis: in the setting of Law~II's phase classifier, the chosen symmetry of $\Phys$ must \emph{transport} cleanly through $M$ to a compatible action on $\Info$, and the existence of such a compatible $\rho_M$ is part of the definition of a symmetric phase.
   295	\end{hook}
   296	
   297	This hook is what Law~II uses to encode global symmetries.
   298	
   299	\subsection{Determination of \texorpdfstring{$M$}{M} on generators}
   300	
   301	The cobordism hypothesis allows us to characterise $M$ on a generating subcategory.
   302	
   303	\begin{theorem}[Generation theorem for $M$]
   304	\label{thm:generation}
   305	Suppose $\Phys$ is presented as a free symmetric monoidal category on a set of generating objects $\{X_i\}_{i \in I}$ and generating morphisms $\{f_j : A_j \to B_j\}_{j \in J}$, modulo a set of relations $R$. Then a strong monoidal functor $M : \Phys \to \Info$ is uniquely determined by the assignments
   306	\[
   307	M(X_i) \in \Ob(\Info),
   308	\qquad
   309	M(f_j) : M(A_j) \to M(B_j),
   310	\]
   311	provided the assignments respect the relations $R$, in the sense that both sides of each relation map to equal morphisms in $\Info$.
   312	\end{theorem}
   313	
   314	\begin{proof}
   315	We invoke the universal property of the free symmetric monoidal category on a signature with relations.
   316	
   317	\emph{Step 1 (Existence).} The free symmetric monoidal category $\mathrm{F}(\{X_i\}, \{f_j\})$ on the generating data, before quotienting by $R$, is constructed by taking objects to be finite formal tensor expressions in the $X_i$ (modulo the strict-monoidal coherence) and morphisms to be equivalence classes of formal expressions built from the $f_j$, identities, structural symmetries, and the operations $\circ$ and $\otimes$, modulo the bifunctoriality of $\otimes$ and the symmetric monoidal coherence laws. The data of $M$ on generators extends uniquely to a strong monoidal functor on $\mathrm{F}(\{X_i\}, \{f_j\})$ by induction on the formal expression: tensor products are mapped via the coherence isomorphisms $\mu$, compositions are mapped by composition, identities by identities, and symmetries by the symmetries of $\Info$.
   318	
   319	\emph{Step 2 (Descent through relations).} The presentation $\Phys = \mathrm{F}(\{X_i\}, \{f_j\}) / R$ identifies certain pairs of formal expressions. The hypothesis that ``the assignments respect $R$'' means that for each relation $r = (e_1 \sim e_2) \in R$, the images $M(e_1)$ and $M(e_2)$ are equal in $\Info$. The functor $\widetilde{M} : \mathrm{F}(\{X_i\}, \{f_j\}) \to \Info$ therefore descends through the quotient to a unique functor $M : \Phys \to \Info$.
   320	
   321	\emph{Step 3 (Uniqueness).} Any strong monoidal functor $M' : \Phys \to \Info$ agreeing with $M$ on the generators must, by the same induction, agree with $M$ on all formal expressions, hence on all morphisms. Uniqueness follows.
   322	\end{proof}
   323	
   324	\begin{corollary}[$M$ on the cobordism category]
   325	\label{cor:M-on-cob}
   326	If $\Phys = \Bord_n^{\mathrm{fr}}$, then $M$ is determined by the image of the point under $M$, provided this image is a fully dualisable object of $\Info$.
   327	\end{corollary}
   328	
   329	\begin{proof}
   330	Combine \cref{thm:generation} with \cref{thm:cobordism}.
   331	\end{proof}
   332	
   333	\subsection{Born-rule type formula}
   334	
   335	\begin{theorem}[Born rule from compact closure]
   336	\label{thm:born}
   337	Let $M : \Phys \to \Info$ be a dagger compact-preserving strong monoidal functor between dagger compact closed categories. For any state $\psi : I \to A$ in $\Phys$ and any effect $m : A \to I$, the squared norm
   338	\[
   339	\|m \circ \psi\|^2 := (m \circ \psi)^\dagger \circ (m \circ \psi) : I \to I
   340	\]
   341	is preserved by $M$ in the sense that $M(\|m \circ \psi\|^2) = \|M(m) \circ M(\psi)\|^2$.
   342	\end{theorem}
   343	
   344	\begin{proof}
   345	Since $M$ is a dagger functor, $M((m \circ \psi)^\dagger) = M(m \circ \psi)^\dagger$. Since $M$ is functorial, $M(m \circ \psi) = M(m) \circ M(\psi)$. Composition then gives the claim:
   346	\[
   347	M(\|m \circ \psi\|^2) = M((m \circ \psi)^\dagger \circ (m \circ \psi)) = M(m \circ \psi)^\dagger \circ M(m \circ \psi) = \|M(m) \circ M(\psi)\|^2. \qedhere
   348	\]
   349	\end{proof}
   350	
   351	In $\FHilb$, $\End(I) = \End(\mathbb{C}) = \mathbb{C}$, and $\|m \circ \psi\|^2 \in \mathbb{R}_{\geq 0}$ is the Born probability $|\langle m \mid \psi\rangle|^2$. \Cref{thm:born} says this number is invariant under $M$.
   352	
   353	\begin{hook}[Compact-closure hook $\mathsf{H7}$]
   354	\label{hook:H7}
   355	A compact-closed structure on $\Phys$ and $\Info$, preserved by $M$, supplies the trace and partial trace operations used by Law~IV's holographic codes. Specifically, the trace $\Tr_A : \End(A) \to \End(I)$ defined by $\Tr_A(f) := \varepsilon_A \circ \sigma_{A,A^*} \circ (f \otimes \id_{A^*}) \circ \eta_A$ is preserved by $M$: $M(\Tr_A(f)) = \Tr_{M(A)}(M(f))$.
   356	\end{hook}
   357	
   358	\section{Monoidal Structure of State Spaces}
   359	\label{sec:monoidal}
   360	
   361	We now examine the monoidal structure in detail and exhibit the diagrammatic calculus we will rely on throughout the series.
   362	
   363	\subsection{String diagrams and coherence}
   364	
   365	\begin{theorem}[Joyal--Street~\cite{joyalstreet1991}]
   366	\label{thm:joyal-street}
   367	For free symmetric monoidal categories, the string diagram calculus is sound and complete: two morphisms are equal if and only if their string diagrams are isotopic as plane graphs (with crossings recording the symmetry).
   368	\end{theorem}
   369	
   370	We use string diagrams freely. Wires denote objects, boxes denote morphisms, vertical composition is sequential, horizontal juxtaposition is tensor, and crossings denote $\sigma$.
   371	
   372	\subsection{States, processes, effects}
   373	
   374	In a symmetric monoidal category, a \emph{state} of $A$ is a morphism $I \to A$, an \emph{effect} on $A$ is a morphism $A \to I$, and a \emph{process} is a general morphism $A \to B$. In a dagger category, the dagger of a state is an effect.
   375	
   376	\begin{proposition}[Process--state duality]
   377	\label{prop:process-state}
   378	In a compact closed category, there is a bijection
   379	\[
   380	\Hom(A, B) \;\cong\; \Hom(I, A^* \otimes B)
   381	\]
   382	natural in $A$ and $B$, given by $f \mapsto (\id_{A^*} \otimes f) \circ \eta_A$.
   383	\end{proposition}
   384	
   385	\begin{proof}
   386	The inverse is $g \mapsto (\varepsilon_A \otimes \id_B) \circ \sigma_{B \otimes A^*, A} \circ (g \otimes \id_A)$. The triangle identities ensure both compositions are identities; naturality follows from the bifunctoriality of $\otimes$ and naturality of $\eta, \varepsilon$.
   387	\end{proof}
   388	
   389	\Cref{prop:process-state} is the categorical content of process tomography: every process is encoded in a corresponding state of a doubled system (the Choi--Jamio\l{}kowski isomorphism, in the $\FHilb$ instance). Diagrammatically, ``bending the input wire'' converts a process box into a state of the doubled system:
   390	\begin{center}
   391	\begin{tikzpicture}[scale=0.7, line width=1pt]
   392	  % LHS: process f : A -> B
   393	  \draw (0,0) -- (0,1);
   394	  \draw (-0.4,1) rectangle (0.4,1.6);
   395	  \node at (0,1.3) {$f$};
   396	  \draw (0,1.6) -- (0,2.6);
   397	  \node at (0,-0.3) {$A$};
   398	  \node at (0,2.9) {$B$};
   399	  % arrow
   400	  \node at (1.5,1.3) {$\longleftrightarrow$};
   401	  % RHS: state of A^* tensor B via cup
   402	  \draw (3.5,0) .. controls (3.5,0.5) and (4.5,0.5) .. (4.5,0);
   403	  \draw (3.5,0) -- (3.5,1);
   404	  \draw (4.5,0) -- (4.5,1);
   405	  \draw (4.1,1) rectangle (4.9,1.6);
   406	  \node at (4.5,1.3) {$f$};
   407	  \draw (4.5,1.6) -- (4.5,2.6);
   408	  \node at (3.5,-0.3) {$A^*$};
   409	  \node at (4.5,2.9) {$B$};
   410	\end{tikzpicture}
   411	\end{center}
   412	
   413	\subsection{Tensor decomposition and entanglement}
   414	
   415	\begin{definition}[Pure separable state]
   416	A state $\psi : I \to A \otimes B$ is \emph{pure separable} if it factors as $\psi = (\phi_A \otimes \phi_B) \circ \lambda_I^{-1}$ for some states $\phi_A : I \to A$ and $\phi_B : I \to B$.
   417	\end{definition}
   418	
   419	\begin{definition}[Pure entangled state]
   420	A state of $A \otimes B$ is \emph{pure entangled} if it is not pure separable.
   421	\end{definition}
   422	
   423	\begin{proposition}
   424	\label{prop:bell}
   425	The state $\eta_A : I \to A^* \otimes A$ in a compact closed category is pure entangled whenever $A$ is not isomorphic to $I$.
   426	\end{proposition}
   427	
   428	\begin{proof}
   429	Suppose $\eta_A = (\phi_{A^*} \otimes \phi_A) \circ \lambda_I^{-1}$. Composing with $\varepsilon_A$ yields, by the zig-zag identity, $\id_A = \phi_A \circ \varepsilon_A \circ (\phi_{A^*} \otimes \id_A)$, which factors $\id_A$ through $I$, forcing $A \cong I$.
   430	\end{proof}
   431	
   432	\begin{hook}[Hamiltonian hook $\mathsf{H2}$]
   433	\label{hook:H2}
   434	Define $\mathbf{Ham} \subseteq \Phys$ as the wide subcategory whose morphisms are unitaries generated by self-adjoint operators (Hamiltonians) under the exponential map $H \mapsto \exp(-i t H)$. $\mathbf{Ham}$ inherits the symmetric monoidal structure of $\Phys$ via $\exp(-i t (H_1 \otimes \id + \id \otimes H_2)) = \exp(-i t H_1) \otimes \exp(-i t H_2)$ when $[H_1 \otimes \id, \id \otimes H_2] = 0$. Law~II's adiabatic-deformation morphisms live in $\mathbf{Ham}$.
   435	\end{hook}
   436	
   437	\subsection{Worked diagrammatic identity: the snake equation}
   438	
   439	We illustrate the diagrammatic style with the \emph{snake equation}, which is the diagrammatic content of the triangle identities of \cref{def:compact-closed}. Wires representing $A$ are drawn as upward-oriented strands; wires representing $A^*$ are drawn downward-oriented. The unit $\eta_A$ is a cup opening upward (a $\cup$-shape with $A^*$ on the left and $A$ on the right); the counit $\varepsilon_A$ is a cap closing downward.
   440	
   441	The first triangle identity says that an $A$-strand which goes ``up, around the cap, down through the cup, and out the top'' is equal to the straight $A$-strand:
   442	\[
   443	(\id_A \otimes \varepsilon_A) \circ (\eta_A \otimes \id_A) = \id_A.
   444	\]
   445	Diagrammatically, this is the celebrated S-shape that straightens out into a vertical line:
   446	\begin{center}
   447	\begin{tikzpicture}[scale=0.7, line width=1pt]
   448	  % LHS: snaking strand
   449	  \draw (0,0) -- (0,1);
   450	  \draw (0,1) .. controls (0,1.6) and (1,1.6) .. (1,1);
   451	  \draw (1,1) -- (1,2);
   452	  \draw (1,2) .. controls (1,2.6) and (2,2.6) .. (2,2);
   453	  \draw (2,2) -- (2,3);
   454	  \node at (0,-0.3) {$A$};
   455	  \node at (2,3.3) {$A$};
   456	  \node[scale=0.8] at (0.5,1.7) {$\eta_A$};
   457	  \node[scale=0.8] at (1.5,2.4) {$\varepsilon_A$};
   458	  % equality
   459	  \node at (3.5,1.5) {$=$};
   460	  % RHS: straight strand
   461	  \draw (5,0) -- (5,3);
   462	  \node at (5,-0.3) {$A$};
   463	  \node at (5,3.3) {$A$};
   464	\end{tikzpicture}
   465	\end{center}
   466	The second triangle identity is the mirror image with $A^*$. Both identities are required for the compact-closed structure: the first one ensures that an $A$-strand can be straightened, and the second one ensures the same for an $A^*$-strand. Together they say: in a compact closed category, ``slack can be pulled out of any wire,'' regardless of orientation. The whole framework of \cref{sec:matter-info-functor}---in particular \cref{thm:born} (Born rule) and the trace structure of \cref{hook:H7}---relies on \emph{both} triangle identities being available simultaneously, so we list them together as a single structural axiom rather than treating them separately.
   467	
   468	This is the foundational identity used by the categorical formulation of quantum teleportation~\cite{abramskycoecke2004}: the teleportation protocol amounts to a diagrammatic snake straightening, in which the input wire of Alice's qubit is bent through a Bell pair (a $\eta$) and a Bell measurement (an $\varepsilon$), arriving at Bob with no further operation needed beyond a Pauli correction. Law~IV will use the same identity to derive the Ryu--Takayanagi-style entanglement-area formula in the HaPPY code~\cite{pastawski2015}.
   469	
   470	\subsection{Frobenius algebras and bases}
   471	
   472	\begin{definition}[Dagger Frobenius algebra]
   473	A \emph{dagger Frobenius algebra} on $A$ in a dagger symmetric monoidal category is a tuple $(A, \mu, \eta, \delta, \varepsilon)$ with $\mu : A \otimes A \to A$, $\eta : I \to A$, $\delta = \mu^\dagger$, $\varepsilon = \eta^\dagger$, satisfying associativity, unitality, and the Frobenius law $(\id \otimes \mu) \circ (\delta \otimes \id) = \delta \circ \mu$.
   474	\end{definition}
   475	
   476	\begin{theorem}[Coecke--Pavlovic--Vicary~\cite{abramskycoecke2004}]
   477	\label{thm:cpv}
   478	Special commutative dagger Frobenius algebras in $\FHilb$ correspond bijectively to orthonormal bases.
   479	\end{theorem}
   480	
   481	\Cref{thm:cpv} is the categorical statement that ``measurement bases are algebraic data'' and not metric data: bases are characterised by the pure algebra of multiplication and copying.
   482	
   483	\subsection{Adjunctions and quantisation}
   484	
   485	A central organising device of the framework is the notion of adjunction. We recall the definition for completeness.
   486	
   487	\begin{definition}[Adjunction]
   488	\label{def:adjunction}
   489	Given functors $F : \C \to \D$ and $G : \D \to \C$, we say $F$ is left adjoint to $G$ (written $F \dashv G$) if there is a bijection
   490	\[
   491	\Hom_\D(F(A), B) \;\cong\; \Hom_\C(A, G(B))
   492	\]
   493	natural in $A \in \C$ and $B \in \D$.
   494	\end{definition}
   495	
   496	Many physically meaningful functors come in adjoint pairs:
   497	\begin{itemize}
   498	\item The forgetful functor $U : \mathbf{Ham} \to \Phys$ has a left adjoint $\mathrm{Free} : \Phys \to \mathbf{Ham}$ assigning the free Hamiltonian (zero-coupling).
   499	\item The inclusion $\Set \hookrightarrow \mathbf{Cat}$ has a left adjoint (free category on a set) and a right adjoint (codiscrete category).
   500	\item Quantisation/dequantisation are conjecturally a Quillen adjoint pair between suitable categories of classical and quantum systems~\cite{lawvere1969}.
   501	\end{itemize}
   502	
   503	\begin{theorem}[Naturality of adjoints under $M$]
   504	\label{thm:adjoint-naturality}
   505	Let $F \dashv G$ be an adjunction in $\Phys$, and let $M : \Phys \to \Info$ be a strong monoidal dagger functor preserving finite limits and colimits. Then $M F \dashv M G$ is an adjunction in $\Info$, with unit and counit obtained by applying $M$ to those of the original adjunction.
   506	\end{theorem}
   507	
   508	\begin{proof}
   509	The adjunction bijection $\Hom_\Phys(F(A), B) \cong \Hom_\Phys(A, G(B))$ is preserved by $M$ on hom-sets because $M$ is a functor, and naturality is preserved by functoriality of $M$ on the indexing variables. Limit/colimit preservation ensures that the universal property of unit/counit transfers.
   510	\end{proof}
   511	
   512	\Cref{thm:adjoint-naturality} is the formal statement that adjunctions in $\Phys$ are visible in $\Info$: phase-classifying adjunctions (Law~II) and Floquet-classifying adjunctions (Law~III) survive the matter--information passage.
   513	
   514	\section{Sheaves and Topoi for Local Physics}
   515	\label{sec:sheaves}
   516	
   517	We now turn to the sheaf-theoretic refinement of the framework. The intuition is that physical observables are localised: a measurement is performed in a region of spacetime (or, more generally, a context). The collection of observables in each region forms a set or vector space, and these collections fit together in a structure-preserving way.
   518	
   519	\subsection{Sites, presheaves, sheaves}
   520	
   521	\begin{definition}[Site]
   522	A \emph{site} is a small category $\C$ together with a Grothendieck topology $J$, i.e.\ for each $A \in \Ob(\C)$ a collection $J(A)$ of \emph{covering sieves}, satisfying the standard axioms (stability, transitivity, identity)~\cite{maclane1998}.
   523	\end{definition}
   524	
   525	\begin{definition}[Presheaf, sheaf]
   526	A \emph{presheaf} on $\C$ is a functor $F : \C^\op \to \Set$. A \emph{sheaf} for the topology $J$ is a presheaf $F$ such that, for every covering sieve $S \in J(A)$, the natural map
   527	\[
   528	F(A) \longrightarrow \lim_{(B \to A) \in S} F(B)
   529	\]
   530	is a bijection.
   531	\end{definition}
   532	
   533	\begin{hook}[Sheaf hook $\mathsf{H4}$]
   534	\label{hook:H4}
   535	The site $(\C, J)$ controlling locality is a hook supplied by the physical context. Examples used in subsequent laws: (a) for Law~II, $\C$ is the poset of open subsets of a sample manifold and $J$ is the open-cover topology; (b) for Law~IV, $\C$ is a Boolean poset of measurement contexts and $J$ is the canonical topology of overlap.
   536	\end{hook}
   537	
   538	\subsection{Topoi and internal logic}
   539	
   540	\begin{definition}[Grothendieck topos]
   541	A \emph{Grothendieck topos} is a category equivalent to the category $\mathbf{Sh}(\C, J)$ of sheaves on a small site.
   542	\end{definition}
   543	
   544	\begin{theorem}[Giraud~\cite{maclane1998}]
   545	\label{thm:giraud}
   546	A category $\E$ is a Grothendieck topos if and only if it satisfies:
   547	\begin{enumerate}
   548	\item all small colimits exist and are universal;
   549	\item coproducts are disjoint;
   550	\item equivalence relations are effective;
   551	\item there exists a set of generators.
   552	\end{enumerate}
   553	\end{theorem}
   554	
   555	\begin{proposition}
   556	Every Grothendieck topos $\E$ admits a \emph{subobject classifier} $\Omega \in \E$, characterised by the property that subobjects of any $A \in \E$ correspond bijectively to morphisms $A \to \Omega$. The internal language of $\E$ is intuitionistic higher-order logic.
   557	\end{proposition}
   558	
   559	\begin{hook}[Type-theoretic hook $\mathsf{H8}$]
   560	\label{hook:H8}
   561	The internal language $\mathcal{L}(\Info)$ of $\Info$, when $\Info$ has topos structure, supplies an executable encoding language. Subsequent laws use $\mathcal{L}(\Info)$ to write down phase classifiers, Floquet operators, and quantum codes as type-theoretic terms.
   562	\end{hook}
   563	
   564	\subsection{Lifting sheaves through \texorpdfstring{$M$}{M}}
   565	
   566	\begin{theorem}[Sheaf-lifting through $M$, in the topos-theoretic regime]
   567	\label{thm:sheaf-lifting}
   568	\emph{Hypotheses.} Suppose that for the present application of the framework:
   569	\begin{enumerate}
   570	\item $\Phys$ is equivalent to the Grothendieck topos $\mathbf{Sh}(\C_\Phys, J_\Phys)$ of sheaves on a small site;
   571	\item $\Info$ is equivalent to a Grothendieck topos $\mathbf{Sh}(\C_\Info, J_\Info)$;
   572	\item $M : \Phys \to \Info$ is a strong monoidal dagger functor that, in addition, preserves finite limits and arbitrary small colimits.
   573	\end{enumerate}
   574	\emph{Conclusion.} Then $M$ arises as the inverse-image part $m^*$ of a geometric morphism of topoi, induced by a unique morphism of sites $m : (\C_\Info, J_\Info) \to (\C_\Phys, J_\Phys)$. That is, $M = m^* : \mathbf{Sh}(\C_\Phys, J_\Phys) \to \mathbf{Sh}(\C_\Info, J_\Info)$.
   575	
   576	\emph{Scope.} \Cref{thm:sheaf-lifting} applies only when the hypotheses (1)--(3) hold; in particular it is not a structural fact about every matter--information functor, but only about those for which $\Phys$ and $\Info$ admit a topos-theoretic presentation. Laws~II and~IV use the theorem in regimes where these hypotheses are met.
   577	\end{theorem}
   578	
   579	\begin{proof}
   580	The argument proceeds in three steps.
   581	
   582	\emph{Step 1 (Geometric morphism from $M$).} A geometric morphism $f : \E \to \mathcal{F}$ of Grothendieck topoi is by definition an adjunction $f^* \dashv f_*$ in which the left adjoint $f^*$ preserves finite limits. Conversely, given a finite-limit-preserving cocontinuous functor $M : \Phys \to \Info$, the special adjoint functor theorem (applicable because $\Phys$ is locally small with all small colimits) supplies a right adjoint $M_R : \Info \to \Phys$, and the pair $(M, M_R) = (m^*, m_*)$ is a geometric morphism $\Info \to \Phys$.
   583	
   584	\emph{Step 2 (Site morphism inducing $m^*$).} By the Comparison Lemma~\cite{maclane1998}, a geometric morphism $\Info \to \Phys$ between sheaf topoi on small sites is determined by its restriction to the (full subcategories of) representable sheaves. The Yoneda embedding $y_\Phys : \C_\Phys \hookrightarrow \mathbf{Sh}(\C_\Phys, J_\Phys)$ is fully faithful, and similarly for $\Info$. Pulling $m^*$ back along $y_\Phys$ and using the universal property of sheafification gives a unique functor $m : \C_\Info \to \C_\Phys$ such that $m^* (y_\Phys(c)) = a(y_\Info(\overline{m}(c)))$ for some lift $\overline{m}$, where $a$ is sheafification. This $m$ is the site morphism in the statement, and the direction is forced: the inverse-image part of a geometric morphism between sheaf topoi corresponds at the site level to a functor running in the \emph{opposite} direction.
   585	
   586	\emph{Step 3 (Uniqueness).} Any other site morphism $m'$ inducing the same $m^*$ would give the same restriction to representables (by Yoneda), hence agree with $m$. Uniqueness follows.
   587	\end{proof}
   588	
   589	\Cref{thm:sheaf-lifting} is the formal statement that local-observable structure is preserved by $M$. The geometric-morphism formulation makes explicit that $M$ behaves like the topos-theoretic ``pullback of observables along a generalised continuous map between informational and physical sites.''
   590	
   591	\section{Operadic Composition Laws}
   592	\label{sec:operads}
   593	
   594	Operads control multi-input operations and are essential for the algebraic description of observables in QFT.
   595	
   596	\subsection{Operads and their algebras}
   597	
   598	\begin{definition}[Operad in $\Set$]
   599	An \emph{operad} $O$ is a sequence of sets $\{O(n)\}_{n \geq 0}$ together with:
   600	\begin{enumerate}
   601	\item composition maps $\gamma : O(n) \times O(k_1) \times \cdots \times O(k_n) \to O(k_1 + \cdots + k_n)$;
   602	\item a unit $1 \in O(1)$;
   603	\item a right action of $\Sigma_n$ on $O(n)$;
   604	\end{enumerate}
   605	satisfying associativity, unitality, and equivariance.
   606	\end{definition}
   607	
   608	\begin{definition}[Algebra over an operad]
   609	An \emph{algebra} over $O$ in a symmetric monoidal category $\C$ is an object $A \in \C$ together with maps $O(n) \otimes A^{\otimes n} \to A$ that respect $\gamma$, the unit, and the symmetric action.
   610	\end{definition}
   611	
   612	\begin{example}[$E_n$ operads]
   613	\label{ex:En}
   614	The little $n$-disks operad $E_n$ has $E_n(k)$ the space of $k$ disjoint $n$-disks inside the unit $n$-disk. Algebras over $E_n$ in topological spaces are $n$-fold loop spaces (May's recognition principle). Algebras over $E_\infty := \mathrm{colim}_n E_n$ are commutative algebras up to coherent homotopy.
   615	\end{example}
   616	
   617	\begin{hook}[Operadic hook $\mathsf{H5}$]
   618	\label{hook:H5}
   619	For each $n$, an $E_n$-algebra structure on a designated object of $\Info$ encodes the multi-region multiplication of observables at codimension $n$. Law~IV uses this hook to encode the factorisation algebra of a local QFT~\cite{costello2017}.
   620	\end{hook}

exec
/usr/local/bin/zsh -lc "nl -ba papers/mathematical-formalisms/paper.tex | sed -n '621,980p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
   621	
   622	\subsection{Factorisation algebras}
   623	
   624	\begin{definition}[Prefactorisation algebra]
   625	A \emph{prefactorisation algebra} on a manifold $M$, valued in a symmetric monoidal category $\C$, assigns to each open $U \subseteq M$ an object $F(U) \in \C$, and to each pairwise disjoint inclusion $U_1 \sqcup \cdots \sqcup U_n \hookrightarrow V$ a morphism
   626	\[
   627	F(U_1) \otimes \cdots \otimes F(U_n) \to F(V),
   628	\]
   629	satisfying associativity and unitality.
   630	\end{definition}
   631	
   632	\begin{definition}[Factorisation algebra~\cite{costello2017}]
   633	A prefactorisation algebra is a \emph{factorisation algebra} if it satisfies a homotopy-coherent local-to-global condition for Weiss covers (covers stable under finite intersections).
   634	\end{definition}
   635	
   636	The relation to operads: the local structure of a factorisation algebra at a point is an $E_n$-algebra, where $n = \dim M$.
   637	
   638	\section{Type-Theoretic Encoding}
   639	\label{sec:type-theory}
   640	
   641	We close the categorical setup with the type-theoretic encoding, which is what makes Law~I directly executable in a programming language such as Haskell.
   642	
   643	\subsection{Curry--Howard--Lambek}
   644	
   645	\begin{theorem}[Curry--Howard--Lambek correspondence~\cite{lambekscott1986}]
   646	\label{thm:chl}
   647	There is a triangle of equivalences:
   648	\begin{itemize}
   649	\item Cartesian closed categories $\;\leftrightarrow\;$ simply typed $\lambda$-calculi $\;\leftrightarrow\;$ intuitionistic propositional logics.
   650	\item Symmetric monoidal closed categories $\;\leftrightarrow\;$ linear $\lambda$-calculi $\;\leftrightarrow\;$ intuitionistic linear logic.
   651	\item Compact closed categories with dagger $\;\leftrightarrow\;$ quantum $\lambda$-calculi $\;\leftrightarrow\;$ multiplicative linear logic with involutive negation.
   652	\end{itemize}
   653	\end{theorem}
   654	
   655	For our purposes, the third row is the relevant one: a quantum process is a term of a linear $\lambda$-calculus with involution, equivalently a morphism in a dagger compact closed category.
   656	
   657	\subsection{Linear types and quantum resources}
   658	
   659	The no-cloning theorem asserts that no quantum channel $\mathrm{copy} : H \to H \otimes H$ exists for non-trivial $H$. Linearly, this is the statement that the type $A$ has no canonical map $A \to A \otimes A$. Linear type systems encode this by forbidding contraction (variable duplication).
   660	
   661	\subsection{Haskell encoding}
   662	
   663	We encode the categorical hierarchy in Haskell as a sequence of type classes (the full code is supplied in the companion package, \cref{sec:examples}):
   664	
   665	\begin{verbatim}
   666	class Category cat where
   667	  cid    :: cat a a
   668	  ccomp  :: cat b c -> cat a b -> cat a c
   669	
   670	class Category cat => MonoidalCategory cat where
   671	  type Unit cat
   672	  -- The Haskell pair type (,) realises the monoidal product on
   673	  -- objects. We rely on Haskell's product-type constructor as
   674	  -- a concrete witness of the abstract tensor.
   675	  tensor :: cat a b -> cat c d -> cat (a, c) (b, d)
   676	
   677	class Functor1 f where
   678	  fmap1 :: (a -> b) -> f a -> f b
   679	
   680	class (Category src, Category tgt) => CFunctor src tgt f where
   681	  -- The dummy method fobj witnesses the type-level object map a -> f a.
   682	  -- See note below regarding phantom encoding.
   683	  fobj :: f a -> ()
   684	  fmor :: src a b -> tgt (f a) (f b)
   685	\end{verbatim}
   686	
   687	\paragraph{Concretely realising the monoidal product.} The type signature \texttt{tensor :: cat a b -> cat c d -> cat (a,c) (b,d)} uses Haskell's built-in product type \texttt{(,)} to realise the monoidal product at the type level. This is a deliberate choice: in our concrete instance \texttt{Fn} (Hask + total functions), the categorical product \emph{is} the Haskell pair, so \texttt{(a,c)} really is the image of $a \otimes c$ on objects. For other instances (e.g.\ a future linearly-typed \texttt{LinFn}) one would replace the pair with a dedicated linear-tensor type constructor; the type class's signature would then read \texttt{cat a b -> cat c d -> cat (a $\otimes$ c) (b $\otimes$ d)} for that instance's tensor. The pair-based version above is the cartesian special case.
   688	
   689	A note on the encoding of the object component. In Haskell, the object mapping of a functor cannot be made first-class without dependent types: objects of $\Phys$ would need to be Haskell types, and a functor's object map would need to be a type-level function. We follow the standard pragmatic idiom: the type parameter \texttt{f a} carries the object information at the type level (so \texttt{f a} \emph{is} the image of object \texttt{a} under the functor), and the dummy method \texttt{fobj :: f a -> ()} merely witnesses this assignment for the type-class machinery. Readers steeped in pure category theory should read \texttt{fobj} as a phantom artefact of Haskell's stratification of types and values; the genuine ``object component'' of the functor is the type-level function \texttt{a $\mapsto$ f a}.
   690	
   691	\paragraph{Scope and limitations of the Haskell encoding.} The encoding above captures the \emph{categorical skeleton} of Law~I: identity, composition, the monoidal product, and the strong-monoidal functor signature. It does \emph{not} capture two structural ingredients of \cref{def:matter-info}:
   692	\begin{enumerate}
   693	\item \emph{Linearity.} Standard Haskell types support unrestricted contraction and weakening (variables can be duplicated and discarded), which is incompatible with the no-cloning and no-deletion theorems of quantum mechanics. Concretely: a Haskell function \texttt{a -> b} can in general duplicate or discard its argument, but if \texttt{a} and \texttt{b} are intended to model quantum states then this would correspond to a copying or deleting channel, which is not a structure-preserving morphism in $\FHilb$. A faithful encoding therefore requires the GHC \texttt{LinearTypes} extension (GHC 9.0+) or a dedicated linear-type framework such as Proto-Quipper-M~\cite{fukishidaselinger2020}.
   694	\item \emph{Dagger.} The dagger functor $\dagger$ is involutive and identity-on-objects. Encoding it requires either a wrapper type (\texttt{Dagger cat a b} as a pair of forward and backward morphisms) or a more sophisticated approach using inverse semicategories. Our \texttt{DaggerCategory} type class supplies the signature but does not enforce involutivity at the type level.
   695	\end{enumerate}
   696	Consequently, the executable-encoding hook $\mathsf{H8}$ is realised at the level of the categorical skeleton; full realisation, including linearity and dagger involution, is one of the open problems we list in \cref{sec:open-problems}. The property test suite (in-house, QuickCheck-style; see the companion package) verifies the category and monoidal laws on the present skeleton.
   697	
   698	\begin{hook}[Dagger hook $\mathsf{H6}$, Floquet hook $\mathsf{H3}$]
   699	The dagger hook $\mathsf{H6}$ is supplied by an additional type class \texttt{DaggerCategory} with method \texttt{dagger :: cat a b -> cat b a}; the Floquet hook $\mathsf{H3}$ is supplied by a one-object category \texttt{newtype B Z = B Integer} together with a functor \texttt{B Z -> Aut Phys}. Both are realised in the companion code.
   700	\end{hook}
   701	
   702	\section{Worked Examples}
   703	\label{sec:examples}
   704	
   705	We now exhibit four concrete examples of the framework, drawn from the four corners of the Rosetta Stone~\cite{baezstay2009}.
   706	
   707	\subsection{Example 1: \texorpdfstring{$\FHilb$}{FHilb} as physics + information}
   708	
   709	Let $\Phys = \Info = \FHilb$, and $M = \id$. This is the trivial instance, but it already exhibits all eight composition hooks:
   710	\begin{itemize}
   711	\item $\mathsf{H1}$: a unitary group action $G \to U(H)$ for each object $H$.
   712	\item $\mathsf{H2}$: $\mathbf{Ham}$ is the wide subcategory of $\FHilb$ with self-adjoint generators.
   713	\item $\mathsf{H3}$: a Floquet drive is a 1-parameter family of unitaries $U(t+T) = U(t)$.
   714	\item $\mathsf{H4}$: the topology on the spectrum of an observable defines the sheaf hook.
   715	\item $\mathsf{H5}$: the standard $E_n$-algebra of vacuum expectation values.
   716	\item $\mathsf{H6}$: $\dagger$ is the Hilbert-space adjoint.
   717	\item $\mathsf{H7}$: $H^* = \overline{H}$, $\eta$ and $\varepsilon$ are Bell pairing.
   718	\item $\mathsf{H8}$: the internal language is multiplicative linear logic.
   719	\end{itemize}
   720	
   721	\subsection{Example 2: $(1{+}1)$D TQFT}
   722	
   723	Let $\Phys = \Cob_2$ and $\Info = \FHilb$. By Atiyah's axioms~\cite{atiyah1988}, $M : \Cob_2 \to \FHilb$ is a symmetric monoidal functor. By the classification of $(1+1)$D TQFTs:
   724	
   725	\begin{theorem}[$(1+1)$D TQFT classification~\cite{atiyah1988,baezstay2009}]
   726	\label{thm:11d-tqft}
   727	$(1+1)$D TQFTs are in bijection with finite-dimensional commutative Frobenius algebras: $M$ is determined by $A := M(S^1)$, which inherits a commutative Frobenius algebra structure from the pair-of-pants and cap cobordisms.
   728	\end{theorem}
   729	
   730	\begin{proof}[Proof sketch]
   731	The pair-of-pants cobordism $S^1 \sqcup S^1 \to S^1$ gives multiplication $\mu : A \otimes A \to A$; the reversed pair-of-pants gives comultiplication; the cap and cocap give unit and counit. Frobenius and commutativity follow from the topological identities on the bordisms.
   732	\end{proof}
   733	
   734	\subsection{Example 3: presheaves on a poset}
   735	
   736	Let $\C$ be a finite poset (e.g.\ a Boolean lattice of measurement contexts) and let $\Info = \mathbf{PSh}(\C) = \mathbf{Sh}(\C, J_{\mathrm{trivial}})$. The Yoneda embedding $y : \C \to \mathbf{PSh}(\C)$ exhibits every object of $\C$ as a representable presheaf. The matter--information functor is then a Grothendieck construction: given a fibration of categories over $\C$, take fibrewise data.
   737	
   738	\subsection{Example 4: little disks operad on a Hilbert space}
   739	
   740	Let $A \in \FHilb$ be a vector space carrying an $E_2$-algebra structure (e.g.\ a vertex operator algebra for $\mathrm{Vir}_c$). The operadic hook $\mathsf{H5}$ assigns each pair of disjoint disks $D_1, D_2 \subset D$ a multiplication $A \otimes A \to A$ depending continuously on the configuration. This is the seed of Law~IV's holographic factorisation algebras.
   741	
   742	\subsection{Example 5: Lawvere theories, linear theories, and the bits/qubits asymmetry}
   743	
   744	A \emph{Lawvere theory}~\cite{lawvere1963} is a small category $T$ with finite products, equipped with a distinguished object $X$ such that every object is isomorphic to a finite power $X^n$. A \emph{model} of $T$ in a category $\C$ with finite products is a finite-product-preserving functor $T \to \C$.
   745	
   746	For classical bits, take $T_{\mathrm{Bit}}$ to be the Lawvere theory generated by morphisms
   747	\[
   748	\mathrm{copy} : X \to X \times X,\qquad \mathrm{xor} : X \times X \to X,\qquad 0, 1 : * \to X,
   749	\]
   750	modulo the axioms of Boolean algebra. Models of $T_{\mathrm{Bit}}$ in $\Set$ are precisely Boolean algebras: a model assigns to $X$ an underlying set, and to each generator a function compatible with the Boolean axioms.
   751	
   752	To extend this picture to quantum bits, one cannot work in a category with finite products, because the diagonal $\Delta_X : X \to X \times X$ (the universal copying map associated with the categorical product) does not correspond to a quantum channel---its image under any candidate functor $T_{\mathrm{Bit}} \to \FHilb$ would be a $\mathbb{C}$-linear copying map $\mathbb{C}^2 \to \mathbb{C}^2 \otimes \mathbb{C}^2$, which is forbidden by no-cloning.
   753	
   754	The correct replacement is a \emph{symmetric monoidal Lawvere theory}, also called a \emph{PROP} (\emph{products and permutations category}) in the literature: a small symmetric strict monoidal category whose objects are the natural numbers under addition, generated by a chosen set of morphisms modulo relations. We define:
   755	
   756	\begin{definition}[Linear Lawvere theory]
   757	\label{def:linear-lawvere}
   758	A \emph{linear Lawvere theory}, or \emph{linear PROP}, is a small symmetric strict monoidal category $T_\mathrm{lin}$ whose monoid of objects is $(\mathbb{N}, +, 0)$, generated by a chosen set of morphisms together with a chosen set of relations among them. A \emph{model} of $T_\mathrm{lin}$ in a symmetric monoidal category $\C$ is a strong symmetric monoidal functor $T_\mathrm{lin} \to \C$.
   759	\end{definition}
   760	
   761	Crucially, a linear Lawvere theory has no \emph{a priori} diagonal: the tensor $X \otimes X$ is not a categorical product, and there is no canonical morphism $X \to X \otimes X$. To define a copying-style operation one must adjoin a generating morphism, and this adjunction is where the quantum/classical distinction lives: the linear theory $T_{\mathrm{Qubit}}$ generated only by Hadamard, phase, and CNOT (without a copy generator) embeds faithfully into $\FHilb$, whereas its classical projection (replacing CNOT with $\mathrm{copy}$) does not.
   762	
   763	This is the categorical statement of the bits/qubits asymmetry:
   764	\begin{itemize}
   765	\item Classical models live in cartesian categories ($\Set$, $\mathbf{Top}$, etc.) and admit canonical diagonals.
   766	\item Quantum models live in symmetric monoidal (non-cartesian) categories and have no canonical diagonals; the absence of $\mathrm{copy}$ is enforced at the categorical level.
   767	\end{itemize}
   768	
   769	The matter--information functor $M : \Phys \to \Info$, when both $\Phys$ and $\Info$ are quantum-style symmetric monoidal categories, automatically respects this absence; when $\Info$ is a classical environment (e.g.\ $\Info = \Set$), the functor cannot be strong monoidal in the symmetric monoidal sense, and one must pass through a \emph{decoherence} structure (a commutative dagger Frobenius algebra) to mediate the transition. This example is paradigmatic for how the matter--information correspondence differs from a naive set-valued semantics.
   770	
   771	\subsection{Lifting points for downstream laws}
   772	
   773	We collect the lifting points that Laws~II--IV inherit from Law~I:
   774	
   775	\begin{center}
   776	\begin{tabular}{l|l|l}
   777	Hook & Used by & Realisation in series \\
   778	\hline
   779	$\mathsf{H1}$ Symmetry & II, III & $G$-action on Hamiltonians; Floquet $\mathbb{Z}$-action \\
   780	$\mathsf{H2}$ Hamiltonian & II, III & Gapped phase classifier; adiabatic deformations \\
   781	$\mathsf{H3}$ Floquet & III & $B\mathbb{Z}$-functors and natural transformations \\
   782	$\mathsf{H4}$ Sheaf & II, IV & Local order parameters; CFT data \\
   783	$\mathsf{H5}$ Operadic & IV & Factorisation algebras; vertex operators \\
   784	$\mathsf{H6}$ Dagger & III, IV & Unitarity; QEC code structure \\
   785	$\mathsf{H7}$ Compact & IV & Trace, partial trace; Ryu--Takayanagi \\
   786	$\mathsf{H8}$ Type-theory & II, III, IV & Executable encodings \\
   787	\end{tabular}
   788	\end{center}
   789	
   790	\section{Open Problems}
   791	\label{sec:open-problems}
   792	
   793	We list four open problems that the foundational layer (Law~I) leaves to future work, in roughly increasing order of ambition:
   794	
   795	\begin{enumerate}
   796	\item \textbf{Renormalisation as a categorical structure.} Atiyah's TQFT axioms work for finite-dimensional models. A categorical axiomatisation of QFT that handles infinite-dimensional Hilbert spaces and renormalisation, perhaps via Costello--Gwilliam factorisation algebras, remains an open problem of foundational interest~\cite{costello2017}.
   797	\item \textbf{Linear dependent type theory and measurement.} A type theory with linear dependent types that is computationally tractable and sound for categorical quantum mechanics with measurements would close the type-theoretic hook $\mathsf{H8}$ at the level needed for Laws~III--IV~\cite{fukishidaselinger2020}.
   798	\item \textbf{Cohesive HoTT vs.\ factorisation algebras.} The relationship between Schreiber--Shulman's cohesive HoTT~\cite{schreibershulman2014} and the factorisation-algebra approach to QFT~\cite{costello2017} for flat spacetimes is conjectured but not proven equivalent.
   799	\item \textbf{Born rule beyond Gleason.} A purely categorical characterisation of the Born rule, beyond the existing assumption of compact closure with dagger and beyond Gleason's theorem on lattices of projections, remains a foundational target~\cite{abramskycoecke2004}.
   800	\end{enumerate}
   801	
   802	\section{Discussion}
   803	\label{sec:discussion}
   804	
   805	\subsection{What Law~I does and does not claim}
   806	
   807	Law~I claims a structural fact: \emph{if} matter and information are organised as objects of suitably structured symmetric monoidal categories, \emph{then} their relation is forced to be a strong monoidal dagger functor satisfying the conditions of \cref{def:matter-info}. The hooks $\mathsf{H1}$--$\mathsf{H8}$ are slots; they are not filled by Law~I.
   808	
   809	Law~I does \emph{not} claim:
   810	\begin{itemize}
   811	\item that the categorical formulation is unique. There are alternative formulations (e.g.\ algebraic QFT in the Haag--Kastler sense, or operator algebraic settings).
   812	\item that all of physics is captured. We address only the matter--information correspondence layer; dynamics, gravity, and renormalisation are addressed in the subsequent laws.
   813	\item that the framework is complete. Many of the open problems in \cref{sec:open-problems} are precisely about completion.
   814	\end{itemize}
   815	
   816	\subsection{Comparison with related programmes}
   817	
   818	The framework here is closest in spirit to the categorical quantum mechanics programme of Abramsky--Coecke~\cite{abramskycoecke2004} and the higher-categorical TQFT programme of Lurie~\cite{lurie2009}. The novelty is the explicit declaration of composition hooks: rather than presenting a self-contained mathematical edifice, we present a structured interface designed to be filled by downstream laws. This methodological choice is what makes the programme \emph{modular} rather than unified.
   819	
   820	\subsection{Categorical entropy and the bridge to information}
   821	
   822	A natural objection to the present formulation is that it does not visibly contain entropy or any quantitative measure of information. We respond by recalling the categorical characterisation of Shannon entropy due to Baez--Fritz--Leinster: Shannon entropy is the unique (up to scale) functor $H : \mathbf{FinProb} \to [0,\infty)$ satisfying functoriality, the chain rule, and continuity, where $\mathbf{FinProb}$ is the category of finite probability spaces and measure-preserving maps. This characterisation lifts to $\Info$ provided $\Info$ contains a sub-monoidal category equivalent to $\mathbf{FinProb}$.
   823	
   824	\begin{remark}[Information measures as functors]
   825	The slogan ``information is functorial'' is realised concretely: every reasonable information-theoretic quantity (Shannon, R\'enyi-$\alpha$, von Neumann, conditional, mutual, relative) admits a categorical characterisation. Law~IV uses these characterisations to reduce holographic entanglement-entropy formulas to functorial identities.
   826	\end{remark}
   827	
   828	\subsection{Connection to the cobordism hypothesis as ``representability''}
   829	
   830	\Cref{thm:cobordism} (Cobordism Hypothesis) plays a methodologically distinctive role in our framework: it is a \emph{representability theorem}. It says that every symmetric monoidal $(\infty,n)$-functor out of $\Bord_n^{\mathrm{fr}}$ is represented by its value at the point. We invoke this representability to argue that the matter--information functor $M$ is determined by very little data---in the cobordism case, by the single object $M(\mathrm{pt})$, which must be fully dualisable.
   831	
   832	This has an immediate methodological corollary: \emph{when working with a fixed category $\Phys$ that admits a presentation as a free symmetric monoidal $(\infty,n)$-category with duals, the matter--information functor is fixed by the specification of a single fully-dualisable object in $\Info$}. Downstream laws use this principle to constrain their constructions: Law~II's phase classifier, Law~III's Floquet operator, and Law~IV's holographic code each amount to a choice of fully-dualisable object satisfying additional constraints.
   833	
   834	\subsection{Modular composition, not unification}
   835	
   836	Throughout, we have insisted on modular language. The four-law programme is not a unified theory; it is a \emph{stack of layers}, each layer self-standing, with composition controlled by functors and natural transformations. The reader who finds, say, Law~III's Floquet category problematic can in principle replace it with another category satisfying the hook $\mathsf{H3}$, and the rest of the programme continues to apply. This is the engineering virtue of the modular approach.
   837	
   838	\section{Conclusion}
   839	\label{sec:conclusion}
   840	
   841	We have introduced Law~I of a four-paper modular programme: the categorical foundations for matter--information correspondence. The contributions are:
   842	\begin{enumerate}
   843	\item A precise definition of the matter--information functor $M : \Phys \to \Info$ as a strong monoidal dagger functor.
   844	\item Three structural results: generation of $M$ from a presentation (\cref{thm:generation}), a Born-rule type formula from compact closure (\cref{thm:born}), and sheaf lifting through $M$ (\cref{thm:sheaf-lifting}).
   845	\item Eight composition hooks $\mathsf{H1}$--$\mathsf{H8}$ that downstream laws (II--IV) plug into, with explicit signature and intended semantics.
   846	\item A Haskell encoding of the categorical skeleton with QuickCheck property tests for the category and monoidal laws.
   847	\item Worked examples drawn from $\FHilb$, the cobordism category, presheaves on a poset, and the little-disks operad.
   848	\end{enumerate}
   849	
   850	The next paper in the series, Law~II (\emph{Phase-bound Matter}), uses these hooks---particularly $\mathsf{H1}$, $\mathsf{H2}$, $\mathsf{H4}$, $\mathsf{H8}$---to classify thermodynamic and topological phases as functors over symmetry-group categories.
   851	
   852	\subsection{Compositional roadmap}
   853	
   854	The four-paper modular series composes its laws in the following order:
   855	\begin{enumerate}
   856	\item \textbf{Law~I (this paper):} Categorical primitives. Output: hooks $\mathsf{H1}$--$\mathsf{H8}$ and a matter--information functor $M : \Phys \to \Info$.
   857	\item \textbf{Law~II (Phase-bound Matter):} Plug $\mathsf{H1}, \mathsf{H2}, \mathsf{H4}, \mathsf{H8}$. Output: a functor $\mathrm{Phase} : B G \to \mathbf{Ham} / \!\sim_{\mathrm{adiabatic}}$ classifying gapped phases.
   858	\item \textbf{Law~III (Frequency-modulated Processes):} Plug $\mathsf{H3}, \mathsf{H6}$. Output: a Floquet functor $F : B \mathbb{Z} \to \Phys$ and its natural-transformation classifications. Composes with Law~II to produce non-equilibrium phase classifiers.
   859	\item \textbf{Law~IV (Information-bearing Structures):} Plug $\mathsf{H5}, \mathsf{H7}$. Output: a holographic code (HaPPY-type) realised as a fully-dualisable object whose tensor-network geometry computes Ryu--Takayanagi-style entanglement entropies.
   860	\end{enumerate}
   861	The synthesis paper then exhibits the composite of all four laws, in which each layer's hook is realised by the layer above. The composition is not unique---different physical systems give different fillings of the same hooks---but the \emph{type} of the composite is fixed by Law~I.
   862	
   863	\subsection{What a reader of Law~I should take away}
   864	
   865	Three concrete takeaways are intended:
   866	\begin{itemize}
   867	\item The matter--information correspondence is the \emph{type} of a structure-preserving functor between two symmetric monoidal dagger categories. Anything compatible with this type is a candidate matter--information correspondence.
   868	\item Eight composition hooks give precise interfaces for downstream layers. A reader implementing a new layer should ask: which hooks does it consume, and which does it leave untouched?
   869	\item The framework is \emph{modular}, not unified. Replacing any single layer with a different filling of its hook leaves the rest of the framework intact, because the only contract between layers is the typed hook signature.
   870	\end{itemize}
   871	
   872	\begin{thebibliography}{99}
   873	
   874	\bibitem{atiyah1988}
   875	M.~Atiyah,
   876	\emph{Topological quantum field theories},
   877	Publications Math\'ematiques de l'IH\'ES \textbf{68} (1988) 175--186.
   878	
   879	\bibitem{baezdolan1995}
   880	J.~C.~Baez and J.~Dolan,
   881	\emph{Higher-dimensional algebra and topological quantum field theory},
   882	J.\ Math.\ Phys.\ \textbf{36} (1995) 6073--6105.
   883	
   884	\bibitem{baezstay2009}
   885	J.~C.~Baez and M.~Stay,
   886	\emph{Physics, topology, logic and computation: a Rosetta Stone},
   887	in: \emph{New Structures for Physics}, Lecture Notes in Physics \textbf{813}, Springer (2011), pp.~95--172; arXiv:0903.0340.
   888	
   889	\bibitem{abramskycoecke2004}
   890	S.~Abramsky and B.~Coecke,
   891	\emph{A categorical semantics of quantum protocols},
   892	in: Proc.\ 19th IEEE Symposium on Logic in Computer Science (2004), pp.~415--425; extended as \emph{Categorical quantum mechanics}, in: \emph{Handbook of Quantum Logic and Quantum Structures}, Elsevier (2008), pp.~261--323.
   893	
   894	\bibitem{lurie2009}
   895	J.~Lurie,
   896	\emph{Higher Topos Theory},
   897	Annals of Mathematics Studies \textbf{170}, Princeton University Press, Princeton, NJ (2009); arXiv:math/0608040.
   898	
   899	\bibitem{schreibershulman2014}
   900	U.~Schreiber and M.~Shulman,
   901	\emph{Quantum gauge field theory in cohesive homotopy type theory},
   902	Electronic Proceedings in Theoretical Computer Science \textbf{158} (2014) 109--126; arXiv:1408.0054.
   903	
   904	\bibitem{lawvere1963}
   905	F.~W.~Lawvere,
   906	\emph{Functorial semantics of algebraic theories},
   907	Proc.\ Natl.\ Acad.\ Sci.\ USA \textbf{50} (1963) 869--872; reprinted in Reprints in Theory and Applications of Categories \textbf{5} (2004).
   908	
   909	\bibitem{lawvere1969}
   910	F.~W.~Lawvere,
   911	\emph{Adjointness in foundations},
   912	Dialectica \textbf{23} (1969) 281--296.
   913	
   914	\bibitem{maclane1998}
   915	S.~Mac~Lane,
   916	\emph{Categories for the Working Mathematician},
   917	2nd ed., Graduate Texts in Mathematics \textbf{5}, Springer, New York (1998).
   918	
   919	\bibitem{joyalstreet1991}
   920	A.~Joyal and R.~Street,
   921	\emph{The geometry of tensor calculus I},
   922	Adv.\ Math.\ \textbf{88} (1991) 55--112.
   923	
   924	\bibitem{costello2017}
   925	K.~Costello and O.~Gwilliam,
   926	\emph{Factorization Algebras in Quantum Field Theory}, Vol.~1,
   927	New Mathematical Monographs \textbf{31}, Cambridge University Press, Cambridge (2017).
   928	
   929	\bibitem{lambekscott1986}
   930	J.~Lambek and P.~J.~Scott,
   931	\emph{Introduction to Higher Order Categorical Logic},
   932	Cambridge Studies in Advanced Mathematics \textbf{7}, Cambridge University Press, Cambridge (1986).
   933	
   934	\bibitem{fukishidaselinger2020}
   935	P.~Fu, K.~Kishida, and P.~Selinger,
   936	\emph{Linear dependent type theory for quantum programming languages},
   937	in: Proc.\ 35th Annual ACM/IEEE Symposium on Logic in Computer Science (LICS) 2020, pp.~440--453; arXiv:2004.13472.
   938	
   939	\bibitem{kitaev2003}
   940	A.~Yu.~Kitaev,
   941	\emph{Fault-tolerant quantum computation by anyons},
   942	Ann.\ Phys.\ \textbf{303} (2003) 2--30; arXiv:quant-ph/9707021.
   943	
   944	\bibitem{pastawski2015}
   945	F.~Pastawski, B.~Yoshida, D.~Harlow, and J.~Preskill,
   946	\emph{Holographic quantum error-correcting codes: toy models for the bulk/boundary correspondence},
   947	J.\ High Energy Phys.\ \textbf{2015} (2015) 149; arXiv:1503.06237.
   948	
   949	\bibitem{ryu2006}
   950	S.~Ryu and T.~Takayanagi,
   951	\emph{Holographic derivation of entanglement entropy from AdS/CFT},
   952	Phys.\ Rev.\ Lett.\ \textbf{96} (2006) 181602; arXiv:hep-th/0603001.
   953	
   954	\bibitem{amari2016}
   955	S.-I.~Amari,
   956	\emph{Information Geometry and Its Applications},
   957	Applied Mathematical Sciences \textbf{194}, Springer, Tokyo (2016).
   958	
   959	\end{thebibliography}
   960	
   961	\end{document}

exec
/usr/local/bin/zsh -lc 'rg -n "TODO|FIXME|undefined|overfull|underfull|LaTeX|missing|reference|cite|Cref|cref|label|bibliography|bibitem" reviews papers/mathematical-formalisms/paper.tex' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
papers/mathematical-formalisms/paper.tex:89:\label{sec:introduction}
papers/mathematical-formalisms/paper.tex:99:Three reasons motivate the choice. First, physical systems compose, both spatially (tensor products of subsystems) and temporally (sequential evolution); the algebra of these two compositions, together with their compatibility, is exactly what monoidal category theory was designed to formalise~\cite{maclane1998}. Second, observables organise locally and assemble globally: this is the sheaf-theoretic structure familiar from gauge theory, and its higher-categorical refinement underlies modern formulations of quantum field theory~\cite{costello2017}. Third, the same algebraic data---a symmetric monoidal closed (or compact closed) category---governs quantum mechanics, computation, logic, and topology, as exhibited in the Rosetta Stone of Baez and Stay~\cite{baezstay2009}. Taking the Rosetta Stone seriously means that the matter--information correspondence is not a physical accident but a four-way translational symmetry built into the categorical substrate.
papers/mathematical-formalisms/paper.tex:119:\Cref{sec:preliminaries} reviews categorical preliminaries with the precision needed for the sequel. \Cref{sec:matter-info-functor} introduces the matter--information functor $M$ and proves its basic structural properties. \Cref{sec:monoidal} develops the monoidal structure of state spaces. \Cref{sec:sheaves} formalises sheaves and topoi for local physics. \Cref{sec:operads} treats operadic composition. \Cref{sec:type-theory} gives the type-theoretic encoding. \Cref{sec:examples} works concrete examples. \Cref{sec:open-problems} states open problems for Law~I as a foundational layer. \Cref{sec:conclusion} closes.
papers/mathematical-formalisms/paper.tex:122:\label{sec:preliminaries}
papers/mathematical-formalisms/paper.tex:124:We fix conventions. Throughout, ``category'' means a locally small category in the sense of~\cite{maclane1998}. We follow the conventions of~\cite{lurie2009} when the discussion turns to $(\infty,n)$-categories.
papers/mathematical-formalisms/paper.tex:129:\label{def:category}
papers/mathematical-formalisms/paper.tex:155:The slogan, due to Lawvere~\cite{lawvere1963}, is that mathematics is naturally organised by adjunctions, and the present paper takes this slogan as a working principle.
papers/mathematical-formalisms/paper.tex:160:\label{def:monoidal}
papers/mathematical-formalisms/paper.tex:167:satisfying Mac Lane's pentagon and triangle axioms~\cite{maclane1998}.
papers/mathematical-formalisms/paper.tex:174:\begin{theorem}[Mac Lane Coherence~\cite{maclane1998}]
papers/mathematical-formalisms/paper.tex:175:\label{thm:maclane}
papers/mathematical-formalisms/paper.tex:183:\Cref{thm:maclane} licenses our subsequent suppression of associators and unitors when no confusion arises.
papers/mathematical-formalisms/paper.tex:188:\label{def:compact-closed}
papers/mathematical-formalisms/paper.tex:201:Diagrammatically (string-diagram calculus, anticipated from \cref{thm:joyal-street}), the first identity says that an $A$-strand (oriented upward) which is bent through a cup ($\eta_A$) and back through a cap ($\varepsilon_A$) ``snakes'' into a straight $A$-strand:
papers/mathematical-formalisms/paper.tex:220:A \emph{dagger category} is a category $\C$ equipped with a contravariant involutive identity-on-objects functor $\dagger : \C^\op \to \C$ such that $(f^\dagger)^\dagger = f$. A \emph{dagger compact closed category} is a compact closed category whose dagger is compatible with the duals via $\varepsilon_A^\dagger = \sigma_{A^*,A} \circ \eta_A$~\cite{abramskycoecke2004}.
papers/mathematical-formalisms/paper.tex:224:\label{ex:fhilb}
papers/mathematical-formalisms/paper.tex:225:Finite-dimensional complex Hilbert spaces with linear maps form a dagger compact closed symmetric monoidal category. The tensor is the Hilbert tensor product, the unit is $\mathbb{C}$, the dual of $H$ is the conjugate space $H^*$, $\eta : \mathbb{C} \to H^* \otimes H$ is $1 \mapsto \sum_i \bar{e}_i \otimes e_i$ for any basis $\{e_i\}$, $\varepsilon$ is the evaluation pairing, and $\dagger$ is the Hilbert-space adjoint~\cite{abramskycoecke2004}.
papers/mathematical-formalisms/paper.tex:231:\label{def:cob-n}
papers/mathematical-formalisms/paper.tex:237:\begin{definition}[TQFT~\cite{atiyah1988}]
papers/mathematical-formalisms/paper.tex:241:\begin{theorem}[Cobordism Hypothesis~\cite{baezdolan1995,lurie2009}]
papers/mathematical-formalisms/paper.tex:242:\label{thm:cobordism}
papers/mathematical-formalisms/paper.tex:253:\label{sec:matter-info-functor}
papers/mathematical-formalisms/paper.tex:260:\label{def:phys}
papers/mathematical-formalisms/paper.tex:275:\label{def:matter-info}
papers/mathematical-formalisms/paper.tex:282:satisfying the standard monoidal coherence diagrams~\cite{maclane1998}, and additionally $M(f^\dagger) = M(f)^\dagger$ for every morphism $f$.
papers/mathematical-formalisms/paper.tex:286:\label{hook:H1}
papers/mathematical-formalisms/paper.tex:304:\label{thm:generation}
papers/mathematical-formalisms/paper.tex:325:\label{cor:M-on-cob}
papers/mathematical-formalisms/paper.tex:330:Combine \cref{thm:generation} with \cref{thm:cobordism}.
papers/mathematical-formalisms/paper.tex:336:\label{thm:born}
papers/mathematical-formalisms/paper.tex:351:In $\FHilb$, $\End(I) = \End(\mathbb{C}) = \mathbb{C}$, and $\|m \circ \psi\|^2 \in \mathbb{R}_{\geq 0}$ is the Born probability $|\langle m \mid \psi\rangle|^2$. \Cref{thm:born} says this number is invariant under $M$.
papers/mathematical-formalisms/paper.tex:354:\label{hook:H7}
papers/mathematical-formalisms/paper.tex:359:\label{sec:monoidal}
papers/mathematical-formalisms/paper.tex:365:\begin{theorem}[Joyal--Street~\cite{joyalstreet1991}]
papers/mathematical-formalisms/paper.tex:366:\label{thm:joyal-street}
papers/mathematical-formalisms/paper.tex:377:\label{prop:process-state}
papers/mathematical-formalisms/paper.tex:389:\Cref{prop:process-state} is the categorical content of process tomography: every process is encoded in a corresponding state of a doubled system (the Choi--Jamio\l{}kowski isomorphism, in the $\FHilb$ instance). Diagrammatically, ``bending the input wire'' converts a process box into a state of the doubled system:
papers/mathematical-formalisms/paper.tex:424:\label{prop:bell}
papers/mathematical-formalisms/paper.tex:433:\label{hook:H2}
papers/mathematical-formalisms/paper.tex:439:We illustrate the diagrammatic style with the \emph{snake equation}, which is the diagrammatic content of the triangle identities of \cref{def:compact-closed}. Wires representing $A$ are drawn as upward-oriented strands; wires representing $A^*$ are drawn downward-oriented. The unit $\eta_A$ is a cup opening upward (a $\cup$-shape with $A^*$ on the left and $A$ on the right); the counit $\varepsilon_A$ is a cap closing downward.
papers/mathematical-formalisms/paper.tex:466:The second triangle identity is the mirror image with $A^*$. Both identities are required for the compact-closed structure: the first one ensures that an $A$-strand can be straightened, and the second one ensures the same for an $A^*$-strand. Together they say: in a compact closed category, ``slack can be pulled out of any wire,'' regardless of orientation. The whole framework of \cref{sec:matter-info-functor}---in particular \cref{thm:born} (Born rule) and the trace structure of \cref{hook:H7}---relies on \emph{both} triangle identities being available simultaneously, so we list them together as a single structural axiom rather than treating them separately.
papers/mathematical-formalisms/paper.tex:468:This is the foundational identity used by the categorical formulation of quantum teleportation~\cite{abramskycoecke2004}: the teleportation protocol amounts to a diagrammatic snake straightening, in which the input wire of Alice's qubit is bent through a Bell pair (a $\eta$) and a Bell measurement (an $\varepsilon$), arriving at Bob with no further operation needed beyond a Pauli correction. Law~IV will use the same identity to derive the Ryu--Takayanagi-style entanglement-area formula in the HaPPY code~\cite{pastawski2015}.
papers/mathematical-formalisms/paper.tex:476:\begin{theorem}[Coecke--Pavlovic--Vicary~\cite{abramskycoecke2004}]
papers/mathematical-formalisms/paper.tex:477:\label{thm:cpv}
papers/mathematical-formalisms/paper.tex:481:\Cref{thm:cpv} is the categorical statement that ``measurement bases are algebraic data'' and not metric data: bases are characterised by the pure algebra of multiplication and copying.
papers/mathematical-formalisms/paper.tex:488:\label{def:adjunction}
papers/mathematical-formalisms/paper.tex:500:\item Quantisation/dequantisation are conjecturally a Quillen adjoint pair between suitable categories of classical and quantum systems~\cite{lawvere1969}.
papers/mathematical-formalisms/paper.tex:504:\label{thm:adjoint-naturality}
papers/mathematical-formalisms/paper.tex:512:\Cref{thm:adjoint-naturality} is the formal statement that adjunctions in $\Phys$ are visible in $\Info$: phase-classifying adjunctions (Law~II) and Floquet-classifying adjunctions (Law~III) survive the matter--information passage.
papers/mathematical-formalisms/paper.tex:515:\label{sec:sheaves}
papers/mathematical-formalisms/paper.tex:522:A \emph{site} is a small category $\C$ together with a Grothendieck topology $J$, i.e.\ for each $A \in \Ob(\C)$ a collection $J(A)$ of \emph{covering sieves}, satisfying the standard axioms (stability, transitivity, identity)~\cite{maclane1998}.
papers/mathematical-formalisms/paper.tex:534:\label{hook:H4}
papers/mathematical-formalisms/paper.tex:544:\begin{theorem}[Giraud~\cite{maclane1998}]
papers/mathematical-formalisms/paper.tex:545:\label{thm:giraud}
papers/mathematical-formalisms/paper.tex:560:\label{hook:H8}
papers/mathematical-formalisms/paper.tex:567:\label{thm:sheaf-lifting}
papers/mathematical-formalisms/paper.tex:576:\emph{Scope.} \Cref{thm:sheaf-lifting} applies only when the hypotheses (1)--(3) hold; in particular it is not a structural fact about every matter--information functor, but only about those for which $\Phys$ and $\Info$ admit a topos-theoretic presentation. Laws~II and~IV use the theorem in regimes where these hypotheses are met.
papers/mathematical-formalisms/paper.tex:584:\emph{Step 2 (Site morphism inducing $m^*$).} By the Comparison Lemma~\cite{maclane1998}, a geometric morphism $\Info \to \Phys$ between sheaf topoi on small sites is determined by its restriction to the (full subcategories of) representable sheaves. The Yoneda embedding $y_\Phys : \C_\Phys \hookrightarrow \mathbf{Sh}(\C_\Phys, J_\Phys)$ is fully faithful, and similarly for $\Info$. Pulling $m^*$ back along $y_\Phys$ and using the universal property of sheafification gives a unique functor $m : \C_\Info \to \C_\Phys$ such that $m^* (y_\Phys(c)) = a(y_\Info(\overline{m}(c)))$ for some lift $\overline{m}$, where $a$ is sheafification. This $m$ is the site morphism in the statement, and the direction is forced: the inverse-image part of a geometric morphism between sheaf topoi corresponds at the site level to a functor running in the \emph{opposite} direction.
papers/mathematical-formalisms/paper.tex:589:\Cref{thm:sheaf-lifting} is the formal statement that local-observable structure is preserved by $M$. The geometric-morphism formulation makes explicit that $M$ behaves like the topos-theoretic ``pullback of observables along a generalised continuous map between informational and physical sites.''
papers/mathematical-formalisms/paper.tex:592:\label{sec:operads}
papers/mathematical-formalisms/paper.tex:613:\label{ex:En}
papers/mathematical-formalisms/paper.tex:618:\label{hook:H5}
papers/mathematical-formalisms/paper.tex:619:For each $n$, an $E_n$-algebra structure on a designated object of $\Info$ encodes the multi-region multiplication of observables at codimension $n$. Law~IV uses this hook to encode the factorisation algebra of a local QFT~\cite{costello2017}.
papers/mathematical-formalisms/paper.tex:632:\begin{definition}[Factorisation algebra~\cite{costello2017}]
papers/mathematical-formalisms/paper.tex:639:\label{sec:type-theory}
papers/mathematical-formalisms/paper.tex:645:\begin{theorem}[Curry--Howard--Lambek correspondence~\cite{lambekscott1986}]
papers/mathematical-formalisms/paper.tex:646:\label{thm:chl}
papers/mathematical-formalisms/paper.tex:663:We encode the categorical hierarchy in Haskell as a sequence of type classes (the full code is supplied in the companion package, \cref{sec:examples}):
papers/mathematical-formalisms/paper.tex:691:\paragraph{Scope and limitations of the Haskell encoding.} The encoding above captures the \emph{categorical skeleton} of Law~I: identity, composition, the monoidal product, and the strong-monoidal functor signature. It does \emph{not} capture two structural ingredients of \cref{def:matter-info}:
papers/mathematical-formalisms/paper.tex:693:\item \emph{Linearity.} Standard Haskell types support unrestricted contraction and weakening (variables can be duplicated and discarded), which is incompatible with the no-cloning and no-deletion theorems of quantum mechanics. Concretely: a Haskell function \texttt{a -> b} can in general duplicate or discard its argument, but if \texttt{a} and \texttt{b} are intended to model quantum states then this would correspond to a copying or deleting channel, which is not a structure-preserving morphism in $\FHilb$. A faithful encoding therefore requires the GHC \texttt{LinearTypes} extension (GHC 9.0+) or a dedicated linear-type framework such as Proto-Quipper-M~\cite{fukishidaselinger2020}.
papers/mathematical-formalisms/paper.tex:696:Consequently, the executable-encoding hook $\mathsf{H8}$ is realised at the level of the categorical skeleton; full realisation, including linearity and dagger involution, is one of the open problems we list in \cref{sec:open-problems}. The property test suite (in-house, QuickCheck-style; see the companion package) verifies the category and monoidal laws on the present skeleton.
papers/mathematical-formalisms/paper.tex:703:\label{sec:examples}
papers/mathematical-formalisms/paper.tex:705:We now exhibit four concrete examples of the framework, drawn from the four corners of the Rosetta Stone~\cite{baezstay2009}.
papers/mathematical-formalisms/paper.tex:723:Let $\Phys = \Cob_2$ and $\Info = \FHilb$. By Atiyah's axioms~\cite{atiyah1988}, $M : \Cob_2 \to \FHilb$ is a symmetric monoidal functor. By the classification of $(1+1)$D TQFTs:
papers/mathematical-formalisms/paper.tex:725:\begin{theorem}[$(1+1)$D TQFT classification~\cite{atiyah1988,baezstay2009}]
papers/mathematical-formalisms/paper.tex:726:\label{thm:11d-tqft}
papers/mathematical-formalisms/paper.tex:744:A \emph{Lawvere theory}~\cite{lawvere1963} is a small category $T$ with finite products, equipped with a distinguished object $X$ such that every object is isomorphic to a finite power $X^n$. A \emph{model} of $T$ in a category $\C$ with finite products is a finite-product-preserving functor $T \to \C$.
papers/mathematical-formalisms/paper.tex:757:\label{def:linear-lawvere}
papers/mathematical-formalisms/paper.tex:791:\label{sec:open-problems}
papers/mathematical-formalisms/paper.tex:796:\item \textbf{Renormalisation as a categorical structure.} Atiyah's TQFT axioms work for finite-dimensional models. A categorical axiomatisation of QFT that handles infinite-dimensional Hilbert spaces and renormalisation, perhaps via Costello--Gwilliam factorisation algebras, remains an open problem of foundational interest~\cite{costello2017}.
papers/mathematical-formalisms/paper.tex:797:\item \textbf{Linear dependent type theory and measurement.} A type theory with linear dependent types that is computationally tractable and sound for categorical quantum mechanics with measurements would close the type-theoretic hook $\mathsf{H8}$ at the level needed for Laws~III--IV~\cite{fukishidaselinger2020}.
papers/mathematical-formalisms/paper.tex:798:\item \textbf{Cohesive HoTT vs.\ factorisation algebras.} The relationship between Schreiber--Shulman's cohesive HoTT~\cite{schreibershulman2014} and the factorisation-algebra approach to QFT~\cite{costello2017} for flat spacetimes is conjectured but not proven equivalent.
papers/mathematical-formalisms/paper.tex:799:\item \textbf{Born rule beyond Gleason.} A purely categorical characterisation of the Born rule, beyond the existing assumption of compact closure with dagger and beyond Gleason's theorem on lattices of projections, remains a foundational target~\cite{abramskycoecke2004}.
papers/mathematical-formalisms/paper.tex:803:\label{sec:discussion}
papers/mathematical-formalisms/paper.tex:807:Law~I claims a structural fact: \emph{if} matter and information are organised as objects of suitably structured symmetric monoidal categories, \emph{then} their relation is forced to be a strong monoidal dagger functor satisfying the conditions of \cref{def:matter-info}. The hooks $\mathsf{H1}$--$\mathsf{H8}$ are slots; they are not filled by Law~I.
papers/mathematical-formalisms/paper.tex:813:\item that the framework is complete. Many of the open problems in \cref{sec:open-problems} are precisely about completion.
papers/mathematical-formalisms/paper.tex:818:The framework here is closest in spirit to the categorical quantum mechanics programme of Abramsky--Coecke~\cite{abramskycoecke2004} and the higher-categorical TQFT programme of Lurie~\cite{lurie2009}. The novelty is the explicit declaration of composition hooks: rather than presenting a self-contained mathematical edifice, we present a structured interface designed to be filled by downstream laws. This methodological choice is what makes the programme \emph{modular} rather than unified.
papers/mathematical-formalisms/paper.tex:830:\Cref{thm:cobordism} (Cobordism Hypothesis) plays a methodologically distinctive role in our framework: it is a \emph{representability theorem}. It says that every symmetric monoidal $(\infty,n)$-functor out of $\Bord_n^{\mathrm{fr}}$ is represented by its value at the point. We invoke this representability to argue that the matter--information functor $M$ is determined by very little data---in the cobordism case, by the single object $M(\mathrm{pt})$, which must be fully dualisable.
papers/mathematical-formalisms/paper.tex:839:\label{sec:conclusion}
papers/mathematical-formalisms/paper.tex:844:\item Three structural results: generation of $M$ from a presentation (\cref{thm:generation}), a Born-rule type formula from compact closure (\cref{thm:born}), and sheaf lifting through $M$ (\cref{thm:sheaf-lifting}).
papers/mathematical-formalisms/paper.tex:872:\begin{thebibliography}{99}
papers/mathematical-formalisms/paper.tex:874:\bibitem{atiyah1988}
papers/mathematical-formalisms/paper.tex:879:\bibitem{baezdolan1995}
papers/mathematical-formalisms/paper.tex:884:\bibitem{baezstay2009}
papers/mathematical-formalisms/paper.tex:889:\bibitem{abramskycoecke2004}
papers/mathematical-formalisms/paper.tex:894:\bibitem{lurie2009}
papers/mathematical-formalisms/paper.tex:899:\bibitem{schreibershulman2014}
papers/mathematical-formalisms/paper.tex:904:\bibitem{lawvere1963}
papers/mathematical-formalisms/paper.tex:909:\bibitem{lawvere1969}
papers/mathematical-formalisms/paper.tex:914:\bibitem{maclane1998}
papers/mathematical-formalisms/paper.tex:919:\bibitem{joyalstreet1991}
papers/mathematical-formalisms/paper.tex:924:\bibitem{costello2017}
papers/mathematical-formalisms/paper.tex:929:\bibitem{lambekscott1986}
papers/mathematical-formalisms/paper.tex:934:\bibitem{fukishidaselinger2020}
papers/mathematical-formalisms/paper.tex:939:\bibitem{kitaev2003}
papers/mathematical-formalisms/paper.tex:944:\bibitem{pastawski2015}
papers/mathematical-formalisms/paper.tex:949:\bibitem{ryu2006}
papers/mathematical-formalisms/paper.tex:954:\bibitem{amari2016}
papers/mathematical-formalisms/paper.tex:959:\end{thebibliography}
reviews/frequency-modulated-processes-review-round-3.md:119:  error: undefined,
reviews/frequency-modulated-processes-review-round-3.md:234:  error: undefined,
reviews/frequency-modulated-processes-review-round-3.md:349:  error: undefined,
reviews/frequency-modulated-processes-review-round-3.md:464:  error: undefined,
reviews/frequency-modulated-processes-review-round-3.md:579:  error: undefined,
reviews/frequency-modulated-processes-review-round-3.md:694:  error: undefined,
reviews/frequency-modulated-processes-review-round-3.md:698:Here's a peer review of your research paper, organized by severity with specific line references.
reviews/frequency-modulated-processes-review-round-3.md:745:    *   **Description:** In the proof for intertwining, `\Ad` is used for the adjoint action: `\mathrm{Ad}(e^{-iKt})`. While common, it's typically `\mathrm{Ad}` in LaTeX for operator notation, for consistency with `\mathrm{Res}` and `\mathrm{Hom}`.
reviews/frequency-modulated-processes-review-round-3.md:752:5.  **Uncited General Background References** (Bibliography, e.g., Lurie, Mac Lane, Atiyah, Baez-Dolan)
reviews/frequency-modulated-processes-review-round-3.md:753:    *   **Description:** Several foundational category theory and QFT references are listed but do not appear to be directly cited in the text to support specific claims, definitions, or theorems.
reviews/frequency-modulated-processes-review-round-3.md:754:    *   **Recommendation:** Review the bibliography. If a reference isn't explicitly cited to back a statement in the paper, consider removing it or adding specific citations where relevant. This improves focus and avoids the impression of "padding" the bibliography.
reviews/frequency-modulated-processes-review-round-3.md:756:6.  **`anous2020` Reference Specificity** (Line 615, `anous2020` reference and Line 545, `sec:open`)
reviews/frequency-modulated-processes-review-round-3.md:757:    *   **Description:** The reference `anous2020` is cited for "Floquet/holographic discussion" and to support the possibility of "Floquet wormholes". The paper cited (`Phases of scrambling in eigenstates`) is related to scrambling and eigenstates, but "Floquet wormholes" is a quite specific and advanced concept that might need a more direct reference or more cautious phrasing.
reviews/frequency-modulated-processes-review-round-3.md:758:    *   **Recommendation:** Either find a more direct reference for "Floquet wormholes" or rephrase the sentence in `sec:open` to be less committal, e.g., "plausibly dual to time-periodic bulk geometries (perhaps related to Floquet-analog wormholes; cf.~\cite{anous2020})".
reviews/frequency-modulated-processes-review-round-3.md:764:The paper presents a very ambitious and interesting categorical framework for Floquet phases, with clear goals and excellent connections to physical phenomena and numerical examples. The LaTeX quality is high, and the overall structure is logical.
reviews/mathematical-formalisms-review-round-1.md:119:  error: undefined,
reviews/mathematical-formalisms-review-round-1.md:234:  error: undefined,
reviews/mathematical-formalisms-review-round-1.md:349:  error: undefined,
reviews/mathematical-formalisms-review-round-1.md:464:  error: undefined,
reviews/mathematical-formalisms-review-round-1.md:579:  error: undefined,
reviews/mathematical-formalisms-review-round-4.md:39:4.  **LaTeX/Referencing Consistency:**
reviews/mathematical-formalisms-review-round-4.md:41:    *   **Issue:** Minor inconsistencies in the BibTeX entries, such as the use of `\emph` for titles (some have it, some don't), abbreviations like `Phys. Rev. Lett.` in the text but not consistently in the bibliography, and varying formats for arXiv preprints.
reviews/mathematical-formalisms-review-round-4.md:42:    *   **Suggestion:** Standardize the bibliography formatting for consistency (e.g., using a consistent style for journal abbreviations, arXiv links, and book/paper titles).
reviews/mathematical-formalisms-review-round-4.md:50:The mathematical definitions of category theory, monoidal categories, compact closed categories, and dagger categories are standard and appear correctly stated. The use of Mac Lane's coherence theorem, the Cobordism Hypothesis, Joyal-Street's work on string diagrams, and Giraud's characterization of topoi are appropriate and correctly referenced. The proof sketches for theorems like \cref{thm:generation} and \cref{thm:sheaf-lifting} appear logically consistent, assuming the foundational results they rely upon. The Haskell encoding, while pragmatic, correctly identifies its limitations regarding linearity, which is a crucial point for quantum formalisms. The discussion on Lawvere theories and the bits/qubits asymmetry is accurate and well-explained.
reviews/mathematical-formalisms-review-round-4.md:61:**LaTeX Quality:**
reviews/mathematical-formalisms-review-round-4.md:62:The LaTeX document is well-formatted and uses standard packages effectively for mathematical typesetting and diagrams. Equations are rendered correctly, and the overall presentation is professional. The custom sidebar is a nice touch. Minor formatting inconsistencies in the bibliography are noted above.
reviews/phase-bound-matter-review-round-1.md:8:This review assesses the paper "Law II --- Phase-bound Matter" on its mathematical correctness, clarity, completeness, logical structure, and LaTeX quality.
reviews/phase-bound-matter-review-round-1.md:20:None. The paper contains no obvious mathematical errors that would invalidate its core theses. The physics and mathematics presented appear to be sound and correctly cited.
reviews/phase-bound-matter-review-round-1.md:45:4.  **LaTeX and Typesetting Quality.** The quality is outstanding. The layout, typography, and use of TikZ are professional. The custom "GrokRxiv" sidebar is a novel and well-executed touch. No issues to report here.
reviews/mathematical-formalisms-codex-review.md:21:Review papers/mathematical-formalisms/paper.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and fixes.
reviews/mathematical-formalisms-codex-review.md:23:I’ll inspect the LaTeX source and, if the toolchain is available, run a compile pass so the findings are grounded in actual diagnostics rather than just source reading.
reviews/mathematical-formalisms-codex-review.md:115:    89	\label{sec:introduction}
reviews/mathematical-formalisms-codex-review.md:125:    99	Three reasons motivate the choice. First, physical systems compose, both spatially (tensor products of subsystems) and temporally (sequential evolution); the algebra of these two compositions, together with their compatibility, is exactly what monoidal category theory was designed to formalise~\cite{maclane1998}. Second, observables organise locally and assemble globally: this is the sheaf-theoretic structure familiar from gauge theory, and its higher-categorical refinement underlies modern formulations of quantum field theory~\cite{costello2017}. Third, the same algebraic data---a symmetric monoidal closed (or compact closed) category---governs quantum mechanics, computation, logic, and topology, as exhibited in the Rosetta Stone of Baez and Stay~\cite{baezstay2009}. Taking the Rosetta Stone seriously means that the matter--information correspondence is not a physical accident but a four-way translational symmetry built into the categorical substrate.
reviews/mathematical-formalisms-codex-review.md:145:   119	\Cref{sec:preliminaries} reviews categorical preliminaries with the precision needed for the sequel. \Cref{sec:matter-info-functor} introduces the matter--information functor $M$ and proves its basic structural properties. \Cref{sec:monoidal} develops the monoidal structure of state spaces. \Cref{sec:sheaves} formalises sheaves and topoi for local physics. \Cref{sec:operads} treats operadic composition. \Cref{sec:type-theory} gives the type-theoretic encoding. \Cref{sec:examples} works concrete examples. \Cref{sec:open-problems} states open problems for Law~I as a foundational layer. \Cref{sec:conclusion} closes.
reviews/mathematical-formalisms-codex-review.md:148:   122	\label{sec:preliminaries}
reviews/mathematical-formalisms-codex-review.md:150:   124	We fix conventions. Throughout, ``category'' means a locally small category in the sense of~\cite{maclane1998}. We follow the conventions of~\cite{lurie2009} when the discussion turns to $(\infty,n)$-categories.
reviews/mathematical-formalisms-codex-review.md:155:   129	\label{def:category}
reviews/mathematical-formalisms-codex-review.md:181:   155	The slogan, due to Lawvere~\cite{lawvere1963}, is that mathematics is naturally organised by adjunctions, and the present paper takes this slogan as a working principle.
reviews/mathematical-formalisms-codex-review.md:186:   160	\label{def:monoidal}
reviews/mathematical-formalisms-codex-review.md:193:   167	satisfying Mac Lane's pentagon and triangle axioms~\cite{maclane1998}.
reviews/mathematical-formalisms-codex-review.md:200:   174	\begin{theorem}[Mac Lane Coherence~\cite{maclane1998}]
reviews/mathematical-formalisms-codex-review.md:201:   175	\label{thm:maclane}
reviews/mathematical-formalisms-codex-review.md:209:   183	\Cref{thm:maclane} licenses our subsequent suppression of associators and unitors when no confusion arises.
reviews/mathematical-formalisms-codex-review.md:214:   188	\label{def:compact-closed}
reviews/mathematical-formalisms-codex-review.md:227:   201	Diagrammatically (string-diagram calculus, anticipated from \cref{thm:joyal-street}), the first identity says that an $A$-strand (oriented upward) which is bent through a cup ($\eta_A$) and back through a cap ($\varepsilon_A$) ``snakes'' into a straight $A$-strand:
reviews/mathematical-formalisms-codex-review.md:246:   220	A \emph{dagger category} is a category $\C$ equipped with a contravariant involutive identity-on-objects functor $\dagger : \C^\op \to \C$ such that $(f^\dagger)^\dagger = f$. A \emph{dagger compact closed category} is a compact closed category whose dagger is compatible with the duals via $\varepsilon_A^\dagger = \sigma_{A^*,A} \circ \eta_A$~\cite{abramskycoecke2004}.
reviews/mathematical-formalisms-codex-review.md:250:   224	\label{ex:fhilb}
reviews/mathematical-formalisms-codex-review.md:251:   225	Finite-dimensional complex Hilbert spaces with linear maps form a dagger compact closed symmetric monoidal category. The tensor is the Hilbert tensor product, the unit is $\mathbb{C}$, the dual of $H$ is the conjugate space $H^*$, $\eta : \mathbb{C} \to H^* \otimes H$ is $1 \mapsto \sum_i \bar{e}_i \otimes e_i$ for any basis $\{e_i\}$, $\varepsilon$ is the evaluation pairing, and $\dagger$ is the Hilbert-space adjoint~\cite{abramskycoecke2004}.
reviews/mathematical-formalisms-codex-review.md:257:   231	\label{def:cob-n}
reviews/mathematical-formalisms-codex-review.md:263:   237	\begin{definition}[TQFT~\cite{atiyah1988}]
reviews/mathematical-formalisms-codex-review.md:267:   241	\begin{theorem}[Cobordism Hypothesis~\cite{baezdolan1995,lurie2009}]
reviews/mathematical-formalisms-codex-review.md:268:   242	\label{thm:cobordism}
reviews/mathematical-formalisms-codex-review.md:279:   253	\label{sec:matter-info-functor}
reviews/mathematical-formalisms-codex-review.md:286:   260	\label{def:phys}
reviews/mathematical-formalisms-codex-review.md:357:The file is long enough that I’m reading it in slices and checking the project’s existing review history for any known LaTeX-specific problems, then I’ll compile from the paper directory to catch references and box warnings.
reviews/frequency-modulated-processes-review.md:25:**LaTeX Quality:**
reviews/frequency-modulated-processes-review.md:26:The LaTeX typesetting is of high quality, clean, and professional. Equations are rendered correctly, cross-references are functional, and the overall presentation is aesthetically pleasing. Custom commands are used consistently.
reviews/information-bearing-structures-review-round-2.md:119:  error: undefined,
reviews/information-bearing-structures-review-round-2.md:234:  error: undefined,
reviews/information-bearing-structures-review-round-2.md:349:  error: undefined,
reviews/information-bearing-structures-review-round-2.md:371:1.  **LaTeX and Formatting:**
reviews/information-bearing-structures-review-round-2.md:373:    *   **Throughout (`\Cref`):** Throughout the paper, `\Cref` is used without a non-breaking space (`~`). This often leads to awkward line breaks where a sentence starts with the reference number (e.g., "...in\n5.3"). This should be corrected to `~\Cref{...}` everywhere.
reviews/information-bearing-structures-review-round-2.md:377:    *   **p. 18 (Bibliography):** The bibliography is excellent and comprehensive. No issues found.
reviews/frequency-modulated-processes-review-round-1.md:42:    The explanation of how the Floquet winding number arises as an "obstruction class to extending the trivial Floquet--Bloch evolution to the present one along the homotopy connecting them" is conceptually dense. While potentially clear to experts in higher category theory or topology, it could significantly benefit from a more explicit definition of what constitutes the "trivial Floquet--Bloch evolution" in this context and how the "obstruction class" is formally constructed or referenced in the categorical framework.
reviews/frequency-modulated-processes-review-round-1.md:54:3.  **Figure reference in Section 8.1.3 (line 527):**
reviews/frequency-modulated-processes-review-round-1.md:55:    The reference to `\Cref{fig:dtc}` notes it's in a "supplementary code repository." While acceptable for a preprint, for a formal publication, it's generally preferred to include essential figures directly within the paper or provide a clear link to an archived resource.
reviews/information-bearing-structures-review-round-3.md:120:  error: undefined,
reviews/information-bearing-structures-review-round-3.md:235:  error: undefined,
reviews/information-bearing-structures-review-round-3.md:253:None. The paper is of high quality. The mathematical claims are either well-established results that are cited appropriately or are clearly designated as conjectures or parts of a proposed framework. There are no critical errors that would warrant rejection.
reviews/information-bearing-structures-review-round-3.md:267:    *   **Suggestion:** Briefly elaborate on the syndrome measurement picture (i.e., the `E'_a` operators map the code space to orthogonal subspaces, which can be distinguished by a measurement) before or alongside the more abstract reference to the Petz map. This would make the logic more self-contained.
reviews/information-bearing-structures-review-round-1.md:119:  error: undefined,
reviews/information-bearing-structures-review-round-1.md:234:  error: undefined,
reviews/information-bearing-structures-review-round-1.md:349:  error: undefined,
reviews/information-bearing-structures-review-round-1.md:464:  error: undefined,
reviews/information-bearing-structures-review-round-1.md:579:  error: undefined,
reviews/information-bearing-structures-review-round-1.md:600:    *   It invokes a "2-category of physical theories" without definition or reference, making the argument non-rigorous.
reviews/information-bearing-structures-review-round-1.md:609:    *   **Recommendation:** This section should be moved to an Appendix. Alternatively, it can be removed entirely and replaced with a single sentence in the introduction or conclusion mentioning the availability of a supplementary software package, with a link provided in the bibliography or as a footnote.
reviews/information-bearing-structures-review-round-1.md:613:1.  **LaTeX and Figure Formatting:**
reviews/information-bearing-structures-review-round-1.md:615:    *   **Bibliography Capitalization:** There is inconsistent capitalization in the titles within the `thebibliography` environment (e.g., compare reference [1] "Holographic quantum error-correcting codes" to [6] "Building up spacetime with quantum entanglement"). All titles should follow a consistent styling (e.g., sentence case or title case).
reviews/mathematical-formalisms-review.md:39:4.  **LaTeX/Referencing Consistency:**
reviews/mathematical-formalisms-review.md:41:    *   **Issue:** Minor inconsistencies in the BibTeX entries, such as the use of `\emph` for titles (some have it, some don't), abbreviations like `Phys. Rev. Lett.` in the text but not consistently in the bibliography, and varying formats for arXiv preprints.
reviews/mathematical-formalisms-review.md:42:    *   **Suggestion:** Standardize the bibliography formatting for consistency (e.g., using a consistent style for journal abbreviations, arXiv links, and book/paper titles).
reviews/mathematical-formalisms-review.md:50:The mathematical definitions of category theory, monoidal categories, compact closed categories, and dagger categories are standard and appear correctly stated. The use of Mac Lane's coherence theorem, the Cobordism Hypothesis, Joyal-Street's work on string diagrams, and Giraud's characterization of topoi are appropriate and correctly referenced. The proof sketches for theorems like \cref{thm:generation} and \cref{thm:sheaf-lifting} appear logically consistent, assuming the foundational results they rely upon. The Haskell encoding, while pragmatic, correctly identifies its limitations regarding linearity, which is a crucial point for quantum formalisms. The discussion on Lawvere theories and the bits/qubits asymmetry is accurate and well-explained.
reviews/mathematical-formalisms-review.md:61:**LaTeX Quality:**
reviews/mathematical-formalisms-review.md:62:The LaTeX document is well-formatted and uses standard packages effectively for mathematical typesetting and diagrams. Equations are rendered correctly, and the overall presentation is professional. The custom sidebar is a nice touch. Minor formatting inconsistencies in the bibliography are noted above.
reviews/frequency-modulated-processes-review-round-4.md:25:**LaTeX Quality:**
reviews/frequency-modulated-processes-review-round-4.md:26:The LaTeX typesetting is of high quality, clean, and professional. Equations are rendered correctly, cross-references are functional, and the overall presentation is aesthetically pleasing. Custom commands are used consistently.
reviews/mathematical-formalisms-review-round-3.md:22:    *   **Page 10, Section 5.3, Theorem \cref{thm:sheaf-lifting}:** The theorem states, "Let $\Phys$ be presented as the category of sheaves... and similarly for $\Info$." This assumes $\Phys$ and $\Info$ are themselves categories of sheaves on sites. However, the general definitions of $\Phys$ and $\Info$ given earlier are much broader ("abstractly characterised", "physical systems", "information-theoretic resources"). The theorem's applicability needs to be precisely demarcated: it holds *if* $\Phys$ and $\Info$ are sheaf categories *and* $M$ preserves finite limits and colimits. As stated, it might imply a stronger, unwarranted connection for general $\Phys$ and $\Info$.
reviews/mathematical-formalisms-review-round-3.md:31:    *   **Page 10, Section 5.3 (Theorem \cref{thm:sheaf-lifting}):** The conditions under which $M$ corresponds to a geometric morphism need to be stated more explicitly to avoid confusion about the generality of the result.
reviews/mathematical-formalisms-review-round-3.md:41:    *   **Page 12, Section 7.2 (Haskell Encoding):** The paper states that the Haskell encoding "does not capture the full content of \cref{def:matter-info} (linear types and dagger structure are not first-class in standard Haskell)". Given that linearity and dagger structure are fundamental to the categorical framework presented and to quantum mechanics, this limitation is significant for the claimed "executable encoding" (Hook $\mathsf{H8}$). The encoding is more of a "categorical skeleton" than a complete executable representation.
reviews/mathematical-formalisms-review-round-3.md:52:**LaTeX Quality**
reviews/mathematical-formalisms-review-round-3.md:55:    *   **Inconsistent Citation Formatting:** Some citations use `~\cite{...}` (e.g., line 240) while others use `\cite{...}` (e.g., line 318). It is recommended to standardize to `\cite{...}`.
reviews/phase-bound-matter-review-round-2.md:28:*   **LaTeX Structure and Numbering:** The manuscript appears to have a structural flaw in its sectioning. The text contains a section titled "Entanglement Entropy as a Functor" (labeled `sec:eee`), immediately followed by another section "Renormalization Group as a Functor on Ham" (labeled `sec:rg`). Both of these would be numbered as "Section 6" upon compilation. Please verify the document structure and re-order or re-number the sections appropriately. The intended order seems to be Intro(1), Framework(2), Landau(3), SPT(4), MTC(5), EEE(6), RG(7), Examples(8), Hooks(9), etc.
reviews/phase-bound-matter-review-round-2.md:38:*   **Citation Style:** The citation for Law I is `[LawI]` but appears as a number in the reference list. Please ensure consistent formatting. The reference `[LawI]` should also specify which "volume" it is in, or be more specific, as it's a self-citation to a work that is likely not yet published.
reviews/mathematical-formalisms-review-round-2.md:13:The mathematical definitions and theorems cited (Category Theory, Monoidal Categories, Compact Closed Categories, Dagger Categories, TQFTs, Cobordism Hypothesis, Sheaves, Topoi, Operads, Lawvere Theories) appear to be standard and correctly stated. The central theorems concerning the generation of $M$, its behavior under compact closure (Born rule), and sheaf lifting are plausible and their proofs, while sketched, follow sound categorical logic. The use of Haskell to encode categorical structures is a pragmatic choice. Example 5, highlighting the bit/qubit asymmetry via Lawvere theories, is conceptually strong.
reviews/mathematical-formalisms-review-round-2.md:24:**LaTeX Quality:**
reviews/mathematical-formalisms-review-round-2.md:25:The LaTeX formatting appears standard and correct for mathematical typesetting. Environments and cross-references (to sections, theorems, definitions) seem to be used appropriately. The bibliography is well-formatted. However, a significant drawback is the lack of rendered string diagrams, which are crucial for visualizing the categorical formalisms presented.
reviews/mathematical-formalisms-review-round-2.md:38:    *   **Issue:** The paper heavily relies on the language and intuition provided by string diagrams (e.g., for coherence, snake equation, process-state duality). However, none of these diagrams are visually rendered in the provided LaTeX. Descriptions like the one for the "snake equation" are verbose and abstract, significantly diminishing clarity and accessibility for concepts that are inherently visual.
reviews/mathematical-formalisms-review-round-2.md:49:    *   **Recommendation:** Expand the proof sketches for \cref{thm:generation} and \cref{thm:sheaf-lifting} to provide greater justification for the key steps and to ensure the reader can fully follow the logical progression.
reviews/frequency-modulated-processes-codex-review.md:21:Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex for formatting issues only: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fixes. Be concise.
reviews/frequency-modulated-processes-codex-review.md:23:I’ll inspect the TeX source and, if the local toolchain is present, run a non-editing compile/log check so the findings are based on actual LaTeX output as well as source line review.
reviews/frequency-modulated-processes-codex-review.md:132:   106	\label{sec:intro}
reviews/frequency-modulated-processes-codex-review.md:138:   112	\label{eq:lifting-tower}
reviews/frequency-modulated-processes-codex-review.md:145:   119	\paragraph{Law~I: Categorical Primitives.} Law~I established the shared categorical grammar: symmetric monoidal categories (SMCs)~\cite{maclane1998}, dagger-compact categories~\cite{abramsky2004}, sheaves, topoi~\cite{lurie2009}, operads, and their type-theoretic encodings. The central object is the SMC $(\C,\otimes,I)$ together with structural natural isomorphisms (associator, unitors, braiding) satisfying Mac Lane coherence~\cite{maclane1998}. Finite-dimensional quantum mechanics (which suffices for our lattice-model setting) is the dagger-compact category $\mathsf{FHilb}$ of finite-dimensional Hilbert spaces~\cite{abramsky2004}; processes are morphisms; tensor product is system composition; and string diagrams are sound and complete by Joyal--Street. Law~I distilled the slogan: a physical theory is a symmetric monoidal functor $Z\colon \C_{\mathrm{geo}} \to \mathsf{FHilb}$, with $\C_{\mathrm{geo}}$ a category of geometric or process data; the prototypical example is Atiyah's TQFT~\cite{atiyah1988} and its extended cousins~\cite{baezdolan1995}.
reviews/frequency-modulated-processes-codex-review.md:151:   125	where $\mathbf{B}G$ is the one-object delooping. Symmetry-protected topological (SPT) phases are classified by the (cobordism-) cohomology of $\mathbf{B}G$~\cite{chen2013}; topologically ordered phases are classified by modular tensor categories (MTCs)~\cite{kitaev2003,wen2004}; a phase transition is a natural transformation that fails to be invertible at the Hamiltonian level (the gap closes).
reviews/frequency-modulated-processes-codex-review.md:155:   129	Law~III adjoins to Law~II a single new categorical dimension: a $\mathbb{Z}_T$-grading representing periodic time evolution. The Schr\"odinger equation with a $T$-periodic Hamiltonian $H(t+T)=H(t)$ produces, by the Floquet theorem~\cite{floquet1883,shirley1965}, a one-cycle unitary $U(T)= \mathcal{T}\exp\bigl(-i\!\int_0^T H(t)\,dt\bigr)$ whose spectrum (the quasi-energy spectrum) lives on a torus $S^1=(-\pi/T,\pi/T]$ rather than on the real line. Functorially, this means Floquet evolution is best understood as a monoidal functor from the discrete circle category to the category of quantum channels.
reviews/frequency-modulated-processes-codex-review.md:159:   133	\item \emph{Discrete time crystals} (DTCs)~\cite{else2016,khemani2016}: spontaneous breaking of the discrete time-translation symmetry of the drive, manifested as a local order parameter oscillating at $nT$ for some integer $n>1$.
reviews/frequency-modulated-processes-codex-review.md:160:   134	\item \emph{Anomalous Floquet topological insulators}~\cite{rudner2020}: phases with chiral edge modes at quasi-energy~$\pi$ despite vanishing Chern numbers in every band, classified by a $\mathbb{Z}$-valued Floquet winding number on $\mathrm{BZ}\times S^1$.
reviews/frequency-modulated-processes-codex-review.md:161:   135	\item \emph{Prethermal Floquet engineering}~\cite{bukov2015,abanin2015}: an exponentially long time window during which the dynamics is governed by an effective Hamiltonian $\Heff$ obtained by truncating the Magnus expansion, allowing engineered phases not present in the parent static system.
reviews/frequency-modulated-processes-codex-review.md:164:   138	The classification of Floquet topological phases by $K$-theory~\cite{roy2017} is the temporal analog of Kitaev's $10$-fold way; we recover it categorically in \cref{sec:floquet-topological}.
reviews/frequency-modulated-processes-codex-review.md:168:   142	\Cref{sec:framework} sets up the categorical framework: the circle category, the Sambe-space construction, and the Floquet functor. \Cref{sec:periodic-endo} shows that periodic Hamiltonians are endomorphisms in a fibred $2$-category. \Cref{sec:magnus} develops the Magnus and Floquet--Magnus expansions as a natural construction of an asymptotic effective-Hamiltonian functor. \Cref{sec:dtc} treats discrete time crystals as obstruction $2$-cells. \Cref{sec:floquet-topological} classifies Floquet topological insulators. \Cref{sec:prethermal} discusses prethermalisation and heating. \Cref{sec:examples} works out two extended examples: the kicked Ising chain and the driven SSH model. \Cref{sec:open} lists open problems. \Cref{sec:conclusion} provides a brief conclusion and a precise statement of the composition hooks consumed by Law~IV.
reviews/frequency-modulated-processes-codex-review.md:171:   145	\label{sec:framework}
reviews/frequency-modulated-processes-codex-review.md:176:   150	\label{def:circle-cat}
reviews/frequency-modulated-processes-codex-review.md:181:   155	\label{rem:zt-notation}
reviews/frequency-modulated-processes-codex-review.md:186:   160	\label{def:cts-circle}
reviews/frequency-modulated-processes-codex-review.md:201:   175	\label{def:floquet-functor}
reviews/frequency-modulated-processes-codex-review.md:210:   184	\Cref{def:floquet-functor} captures only the stroboscopic content of a Floquet system; the micromotion is recovered by lifting to the continuous-time category. The full Floquet system is a continuous functor $\widetilde{\Floq}\colon\mathbf{B}S^1\to\mathsf{Unit}$, whose restriction along the discretisation $\mathbf{B}\Z_T\hookrightarrow\mathbf{B}S^1$ recovers \cref{def:floquet-functor}.
reviews/frequency-modulated-processes-codex-review.md:214:   188	\label{thm:floquet-decomp}
reviews/frequency-modulated-processes-codex-review.md:226:   200	This is the operator-level statement of the classical Floquet theorem~\cite{floquet1883}. Continuity of $\widetilde{\Floq}$ furnishes a continuous evolution $U(t,0)$ with $U(T,0)$ unitary. By spectral calculus, take any branch of the logarithm to define $\HF=\frac{i}{T}\log U(T,0)$; then $P(t):=U(t,0)\,e^{i\HF t}$ is by construction $T$-periodic and equals the identity at $t=0$. The functorial wrapping in $\QChan$ is just the conjugation action.
reviews/frequency-modulated-processes-codex-review.md:231:   205	The quasi-energy spectrum lives on the Pontryagin dual $\widehat{\Z}=S^1$. To work with quasi-energies as a self-adjoint operator spectrum, we introduce the \emph{Sambe space}~\cite{sambe1973}.
reviews/frequency-modulated-processes-codex-review.md:234:   208	\label{def:sambe}
reviews/frequency-modulated-processes-codex-review.md:243:   217	\label{def:quasi-energy}
reviews/frequency-modulated-processes-codex-review.md:252:   226	\label{prop:sambe-functor}
reviews/frequency-modulated-processes-codex-review.md:267:   241	\emph{Intertwining of $\widetilde{\Floq}$ with $K$.} By \cref{thm:floquet-decomp},
reviews/frequency-modulated-processes-codex-review.md:277:   251	This is the standard ladder structure of Sambe space \cite{sambe1973}.
reviews/frequency-modulated-processes-codex-review.md:358:   268	\Cref{prop:sambe-functor} is the key bridge to Law~IV: the extended Hilbert space $\mathcal{S}_T(\Hcal)$ is exactly the kind of structure (graded by an external label $n\in\Z$) on which holographic codes (Law~IV) operate. We will use this in \cref{sec:conclusion}.
reviews/frequency-modulated-processes-codex-review.md:365:   275	\label{sec:periodic-endo}
reviews/frequency-modulated-processes-codex-review.md:370:   280	\label{def:phamcat}
reviews/frequency-modulated-processes-codex-review.md:383:   293	\label{def:unit-z}
reviews/frequency-modulated-processes-codex-review.md:392:   302	The integer label $n$ records the number of stroboscopic periods that the morphism represents; it is additive under composition and trivial on identities. The category $\mathsf{Unit}_{\Z}$ inherits a symmetric monoidal structure from the standard tensor product of Hilbert spaces: on objects, $\Hcal\otimes\Hcal'$ is the usual tensor; on morphisms,
reviews/frequency-modulated-processes-codex-review.md:402:   312	\label{thm:floquet-evol}
reviews/frequency-modulated-processes-codex-review.md:421:   331	\label{rem:ev-grading-zero}
reviews/frequency-modulated-processes-codex-review.md:425:   335	\begin{proof}[Proof of \cref{thm:floquet-evol}]
reviews/frequency-modulated-processes-codex-review.md:428:   338	where the middle equality uses the composition rule of \cref{def:unit-z}. Thus $\mathrm{Ev}_T$ is a functor.
reviews/frequency-modulated-processes-codex-review.md:441:   351	Restricting to a single Hilbert space, $\Ham_T$ becomes a one-object category whose endomorphisms are $T$-periodic Hamiltonians and whose composition is conjugation by the evolution. The image under $\mathrm{Ev}_T$ is then a one-object subcategory of $\mathsf{Unit}_{\Z}$, that is, a $\Z$-graded group of unitaries: stroboscopic dynamics is generated by $U(T)$, and the integer label tracks the number of periods. This is the precise sense in which a Floquet system is an endomorphism in the categorical framework.
reviews/frequency-modulated-processes-codex-review.md:452:   362	\label{def:2cat-Ham}
reviews/frequency-modulated-processes-codex-review.md:457:   367	\label{prop:2-floquet}
reviews/frequency-modulated-processes-codex-review.md:468:   378	\label{sec:magnus}
reviews/frequency-modulated-processes-codex-review.md:472:   382	\begin{theorem}[Magnus, 1954~\cite{magnus1954}]
reviews/frequency-modulated-processes-codex-review.md:473:   383	\label{thm:magnus}
reviews/frequency-modulated-processes-codex-review.md:491:   401	\label{thm:fm-expansion}
reviews/frequency-modulated-processes-codex-review.md:502:   412	Combine \cref{thm:magnus} with the periodicity of $H$ and rescale by $T$. The remainder estimate uses Cauchy estimates on the iterated commutators with $\|[H(t_1),H(t_2)]\|\leq 2J^2$. The optimal truncation $N^*$ arises because the Magnus series is an asymptotic series (it does not converge for generic interacting models); see~\cite{bukov2015,abanin2015} for sharp bounds and the Abanin--De~Roeck--Huveneers proof that the prethermal time scale is $\tau^*\sim e^{c\omega/J}$.
reviews/frequency-modulated-processes-codex-review.md:508:   418	\label{def:Heff}
reviews/frequency-modulated-processes-codex-review.md:509:   419	Let $\Ham$ denote the category of (gapped) static Hamiltonians: objects are pairs $(\Hcal,H_0)$ with $H_0\in\mathrm{Herm}(\Hcal)$, and morphisms are intertwining isometries (the time-independent counterpart of $\Ham_T$). The order-$N$ effective-Hamiltonian functor $\Heff^{(\leq N)}\colon \Ham_T \to \Ham$ assigns to a $T$-periodic Hamiltonian $(\Hcal,H)$ the static operator $\HF^{(\leq N)}\in\mathrm{Herm}(\Hcal)$ defined by \cref{thm:fm-expansion}. To an intertwining isometry $V\colon(\Hcal,H)\to(\Hcal',H')$ in $\Ham_T$ (which by definition satisfies $VH(t)=H'(t)V$ for all $t\in S^1_T$) it assigns the \emph{same} underlying isometry $V$, now viewed as a morphism $(\Hcal,\HF^{(\leq N)})\to(\Hcal',\HF'^{(\leq N)})$ in $\Ham$. The fact that $V\HF^{(\leq N)} = \HF'^{(\leq N)} V$ --- i.e.\ that the isometry $V$ does intertwine the static effective Hamiltonians --- is the content of \cref{prop:heff-functor} below: $V$ intertwines all iterated commutators of $H$ with itself, hence each Magnus term $\Omega_n$, hence the truncated effective Hamiltonian $\HF^{(\leq N)}$.
reviews/frequency-modulated-processes-codex-review.md:513:   423	\label{prop:heff-functor}
reviews/frequency-modulated-processes-codex-review.md:525:   435	In what follows we use the symbol $\Floq_{(-)}$ to denote the \emph{Floquet phase-classification functor} with source $\Ham_T$ (rather than the bare Floquet system $\Floq$ of \cref{def:floquet-functor}, whose source is $\mathbf{B}\Z_T$). Concretely, $\Floq_{(-)}$ takes a $T$-periodic Hamiltonian $(\Hcal,H)$ and returns the connected component of its stroboscopic operator $U_F^{(H)}$ within the moduli space of gapped Floquet operators, i.e.\ its Floquet phase class. Similarly, $\Phase_{\Floq}$ denotes the discrete category of Floquet phase classes (objects: connected components of gapped Floquet operators; morphisms: identity components and inclusions of stratified strata).
reviews/frequency-modulated-processes-codex-review.md:528:   438	\label{thm:prethermal-lift}
reviews/frequency-modulated-processes-codex-review.md:540:   450	For times $t\leq\tau^*=e^{c\omega/J}$, the Floquet evolution is approximated by $e^{-i\Heff^{(\leq N)} t}$ to within an error of order $(J/\omega)^N$. Since gapped equilibrium phases are stable under perturbations of strength below the gap $\Delta$, restricting to the prethermal subcategory $\Ham_T^{\mathrm{preth}}$ on which the Magnus truncation error is below the gap guarantees that the prethermal Floquet phase agrees with the equilibrium phase of $\Heff^{(\leq N)}$. Beyond $\tau^*$, the heating regime takes over and the diagram fails to commute --- this failure is what supports genuinely non-equilibrium Floquet phases (\cref{sec:dtc,sec:floquet-topological}).
reviews/frequency-modulated-processes-codex-review.md:543:   453	\Cref{thm:prethermal-lift} is the precise sense in which Law~III lifts Law~II: \emph{prethermal} Floquet phases are equilibrium phases of an effective Hamiltonian, while \emph{anomalous} Floquet phases are obstructions to the lift.
reviews/frequency-modulated-processes-codex-review.md:546:   456	\label{sec:dtc}
reviews/frequency-modulated-processes-codex-review.md:551:   461	\label{def:dtc}
reviews/frequency-modulated-processes-codex-review.md:560:   470	The seminal construction~\cite{else2016} uses an MBL-stabilised Ising chain (\cref{sec:examples}). Experimental realisations are reported in~\cite{zhang2017,choi2017}.
reviews/frequency-modulated-processes-codex-review.md:567:   477	\label{def:iterated-restricted}
reviews/frequency-modulated-processes-codex-review.md:576:   486	obtained by restriction along the inclusion $\mathbf{B}(n\Z)\hookrightarrow\mathbf{B}\Z$ and the canonical re-labelling that views an $n$-fold iterated $T$-periodic dynamics as a single morphism in $\mathbf{B}\Z_{nT}$.
reviews/frequency-modulated-processes-codex-review.md:584:   494	\label{def:symmetric-floquet}
reviews/frequency-modulated-processes-codex-review.md:593:   503	\label{thm:dtc-obstruction}
reviews/frequency-modulated-processes-codex-review.md:602:   512	``$\Rightarrow$'': If the system is a DTC of order $n$, then by \cref{def:dtc} there exists an order parameter $\mathcal{O}_x$ whose stroboscopic expectation has period exactly $nT$. Let $|\psi\rangle$ be a symmetry-broken state in the thermodynamic-limit sense, so $\langle\psi|\mathcal{O}_x|\psi\rangle\neq 0$ but $S$ permutes the $n$ symmetry-broken states cyclically. Then $U_F$ shifts the order parameter by one cyclic step in this $\Z_n$-orbit: $U_F\mathcal{O}_x U_F^{-1}=\zeta\,\mathcal{O}_x$ where $\zeta=e^{2\pi i k/n}$ for some $k$ coprime to $n$ (in the symmetry-broken sector). Equivalently, $U_F S U_F^{-1}\neq S$: the drive maps $S$ to $U_F S U_F^{-1}$, which is a conjugate of $S$ by $U_F$ (and not equal to $S$ itself), so the equivariance square fails. This is exactly the statement that $\eta$ fails to be an isomorphism in $\mathsf{Unit}^{\Z_n}$. Forgetting the symmetry, $\eta$ becomes the bare unitary $U_F^n$, which is an isomorphism.
reviews/frequency-modulated-processes-codex-review.md:607:   517	\Cref{thm:dtc-obstruction} reformulates the physics of DTCs as an obstruction theory: a DTC is the obstruction to the relation $[U_F,S]=0$ holding strictly. The symmetry-forgetting functor witnesses that the obstruction is not visible to the bare stroboscopic dynamics; it lives in the $\Z_n$-equivariant enrichment.
reviews/frequency-modulated-processes-codex-review.md:611:   521	The simplest case is $n=2$. The DTC obstruction class then lives in the $\Z_2$-graded part of $\mathrm{End}(U_F)$ that anticommutes with the drive symmetry. We will see in \cref{sec:examples} that the kicked Ising chain produces exactly this structure: $U_F$ has eigenvalues $\pm e^{-i\varepsilon}$ paired by the global Ising symmetry, giving period-$2T$ oscillation of $\langle\sigma^z_i\rangle$.
reviews/frequency-modulated-processes-codex-review.md:615:   525	The Else--Bauer--Nayak theorem~\cite{else2016} guarantees stability of the DTC under generic perturbations preserving $T$-periodicity, provided the system is many-body localised (MBL). MBL is the obstruction to thermalisation in disordered interacting systems and protects the symmetry-broken sector from heating to infinite temperature. Recent reviews~\cite{else2020review} survey continuous time crystals and DTC variants in clean systems via prethermal mechanisms.
reviews/frequency-modulated-processes-codex-review.md:618:   528	\label{sec:floquet-topological}
reviews/frequency-modulated-processes-codex-review.md:625:   535	\label{def:floquet-bloch}
reviews/frequency-modulated-processes-codex-review.md:632:   542	\label{def:winding}
reviews/frequency-modulated-processes-codex-review.md:639:   549	\begin{theorem}[Anomalous Floquet bulk-boundary correspondence~\cite{rudner2020}]
reviews/frequency-modulated-processes-codex-review.md:640:   550	\label{thm:rudner-lindner}
reviews/frequency-modulated-processes-codex-review.md:644:   554	The proof uses a homotopy from $U(\mathbf{k},t)$ to a periodic ``return map'' that explicitly counts the chiral edge modes; we refer to~\cite{rudner2020} for details.
reviews/frequency-modulated-processes-codex-review.md:651:   561	\label{def:trivial-fb}
reviews/frequency-modulated-processes-codex-review.md:658:   568	\label{prop:floquet-natural}
reviews/frequency-modulated-processes-codex-review.md:661:   571	\item $\pi_0(\mathrm{Floq}^{2D}_\Delta) \cong \Z$, with the isomorphism given by the Floquet winding number $\nu$ of \cref{def:winding}.
reviews/frequency-modulated-processes-codex-review.md:663:   573	\item The Floquet winding number $\nu(U)$ is therefore the obstruction class, in $\pi_0(\mathrm{Floq}^{2D}_\Delta)\cong\Z$, to the existence of a gap-preserving natural transformation (i.e.\ homotopy of Floquet--Bloch functors) from the trivial Floquet--Bloch evolution $U_{\mathrm{triv}}$ of \cref{def:trivial-fb} to $U$.
reviews/frequency-modulated-processes-codex-review.md:668:   578	A gapped Floquet--Bloch evolution $U(\mathbf{k},t)$ defines a continuous map $\mathrm{BZ}\times[0,T]\to\mathrm{U}(N)$ which, by full $\pi$-gap and the Floquet decomposition, can be deformed (without closing the $\pi$-gap) to a periodic ``return map'' $\widetilde{U}\colon\mathrm{BZ}\times S^1\to\mathrm{U}(N)$. As $\mathrm{BZ}\times S^1\cong T^3$ and $\pi_3(\mathrm{U}(N))=\Z$ for $N$ large, the homotopy classes of such maps are labelled by an integer; the integral expression in \cref{def:winding} computes precisely this homotopy class. Item~(2) follows because a gap-preserving path is a homotopy in $\mathrm{Floq}^{2D}_\Delta$, which preserves the connected component. Item~(3) is the special case where one endpoint is the trivial evolution: the obstruction class to homotoping any $U$ to $U_{\mathrm{triv}}$ is exactly $\nu(U)\in\Z$.
reviews/frequency-modulated-processes-codex-review.md:673:   583	The full periodic table of Floquet topological phases extends the equilibrium $10$-fold way (Altland--Zirnbauer) by a $\Z_2$-graded $K$-theory enhancement; the result~\cite{roy2017} is that each entry of the equilibrium table acquires (at most) one extra $\Z$ or $\Z_2$ factor for the anomalous Floquet contribution.
reviews/frequency-modulated-processes-codex-review.md:675:   585	\begin{theorem}[Roy--Harper periodic table~\cite{roy2017}]
reviews/frequency-modulated-processes-codex-review.md:676:   586	\label{thm:roy-harper}
reviews/frequency-modulated-processes-codex-review.md:686:   596	\Cref{thm:roy-harper} can be read categorically as the splitting of a long exact sequence in $K$-theory induced by the cofibre sequence $S^1\to D^2\to S^2$ and the K\"unneth theorem applied to $\mathrm{BZ}\times S^1$. The categorical content is: the temporal direction $S^1$ is one categorical dimension lower than the spatial one, and adds one shifted copy of the equilibrium classification.
reviews/frequency-modulated-processes-codex-review.md:690:   600	\label{sec:prethermal}
reviews/frequency-modulated-processes-codex-review.md:694:   604	\begin{theorem}[Abanin--De Roeck--Ho--Huveneers~\cite{abanin2015}]
reviews/frequency-modulated-processes-codex-review.md:695:   605	\label{thm:abanin}
reviews/frequency-modulated-processes-codex-review.md:709:   619	\item \emph{Prethermal}, $T\lesssim t\lesssim\tau^*$: dynamics governed by $\Heff^{(\leq N^*)}$. Here \cref{thm:prethermal-lift} applies and Floquet phases are equilibrium phases of $\Heff$.
reviews/frequency-modulated-processes-codex-review.md:710:   620	\item \emph{Heating}, $t\gtrsim\tau^*$: system absorbs energy from the drive, eventually reaching infinite temperature in a generic interacting bulk~\cite{lazarides2014,dalessio2014}.
reviews/frequency-modulated-processes-codex-review.md:722:   628	The prethermal-vs-MBL distinction is reflected in the categorical framework: prethermal phases factor through \cref{thm:prethermal-lift}, while MBL Floquet phases do not (the diagram fails to close even on an exponentially long time scale; the obstruction class is non-trivial). This is the precise sense in which DTCs and AFIs are genuinely non-equilibrium phases.
reviews/frequency-modulated-processes-codex-review.md:726:   632	\label{sec:examples}
reviews/frequency-modulated-processes-codex-review.md:749:   655	\label{prop:kicked-ising-dtc}
reviews/frequency-modulated-processes-codex-review.md:750:   656	The kicked Ising chain at $h_x T/2=\pi/2+\delta$ with disordered $J_i,h_z^{(i)}$ realises a $\Z_2$ DTC for $|\delta|<\delta_c$, where $\delta_c>0$ is the MBL stability threshold. The DTC obstruction $\eta$ of \cref{thm:dtc-obstruction} has order exactly $2$.
reviews/frequency-modulated-processes-codex-review.md:754:   660	At $\delta=0$ the DTC is exact. For $\delta\neq 0$, the perturbation $e^{-i\delta\sum_i\sigma^x_i}$ tilts the spin-flip but, because of MBL, the dressed local order parameter $\widetilde{\sigma}^z_i$ continues to anticommute with the dressed spin-flip $\widetilde{P}$. Stability is the content of~\cite{else2016}; we have nothing to add.
reviews/frequency-modulated-processes-codex-review.md:763:   669	which is the period-$2T$ DTC signature claimed by \cref{prop:kicked-ising-dtc}.
reviews/frequency-modulated-processes-codex-review.md:776:   682	where $A,B$ label sublattices.
reviews/frequency-modulated-processes-codex-review.md:780:   686	For $J_1 T/2 = J_2 T/2 = \pi/2$, the Floquet operator on a cylinder has zero-energy edge modes at both quasi-energies $\varepsilon=0$ and $\varepsilon=\pi$, even though the time-averaged Hamiltonian is gapless and topologically trivial. The phase is detected by a non-zero Floquet winding number on a $\Z_2$-graded extension of \cref{def:winding} appropriate to $1$D systems.
reviews/frequency-modulated-processes-codex-review.md:783:   689	\label{prop:driven-ssh}
reviews/frequency-modulated-processes-codex-review.md:788:   694	Compute the Floquet--Bloch unitary $U(k,T)=e^{-iH_{\mathrm{inter}}(k)T/2}\,e^{-iH_{\mathrm{intra}}(k)T/2}$. At the special point $J_1T/2=J_2T/2=\pi/2$ both factors are $\pi$-rotations on opposite sublattice axes; their product traces out a $2\pi$-winding of the Floquet--Bloch unitary $U(k,t)$ as $(k,t)$ ranges over the spatio-temporal Brillouin torus, contributing winding number $1$ in the homotopy class $\pi_3(\mathrm{U}(N))=\Z$. By bulk--boundary correspondence~\cite{rudner2020}, this gives one chiral edge mode at $\varepsilon=\pi$.
reviews/frequency-modulated-processes-codex-review.md:796:   702	\label{sec:open}
reviews/frequency-modulated-processes-codex-review.md:799:   705	\item \emph{Continuous time crystals.} Spontaneous breaking of \emph{continuous} time-translation symmetry in a closed quantum system is forbidden by Watanabe--Oshikawa~\cite{watanabe2015} for the ground state, but variations under drive or in dissipative settings remain open~\cite{khemani2019}.
reviews/frequency-modulated-processes-codex-review.md:800:   706	\item \emph{Floquet phases in $(3+1)$D.} Extending the Roy--Harper periodic table~\cite{roy2017} to interacting systems in $3+1$ dimensions, including possible non-Abelian Floquet phases.
reviews/frequency-modulated-processes-codex-review.md:803:   709	\item \emph{Composition with Law~IV.} What is the holographic dual of a Floquet CFT? Does the AdS bulk become time-dependent, or does it acquire a temporal $S^1$ factor (giving an AdS-cylindrical bulk)? Initial work~\cite{anous2020} suggests both.
reviews/frequency-modulated-processes-codex-review.md:808:   714	\label{sec:discussion}
reviews/frequency-modulated-processes-codex-review.md:813:   719	\item \emph{Sambe-space functor} $\mathcal{S}_T\colon\QChan\to\Hilb_{\mathrm{sep}}$ (\cref{prop:sambe-functor}). Law~IV will use $\mathcal{S}_T$ as the source category for an information-geometric extension: the Bures metric on $\mathcal{S}_T(\Hcal)$, restricted to a smooth family of Floquet states, is the candidate Floquet Fisher metric whose holographic interpretation will be developed in Paper~4.
reviews/frequency-modulated-processes-codex-review.md:814:   720	\item \emph{Effective-Hamiltonian functor} $\Heff^{(\leq N)}$ (\cref{def:Heff}). Law~IV uses this to reduce holographic Floquet questions to (perturbed) holographic equilibrium questions in the prethermal regime, leveraging existing AdS/CFT results.
reviews/frequency-modulated-processes-codex-review.md:815:   721	\item \emph{Floquet topological invariants} (\cref{def:winding,prop:floquet-natural}). Law~IV interprets these as $K$-theoretic data on the boundary of an emergent bulk; the AFI winding number will be the temporal companion to the bulk Chern--Simons level.
reviews/frequency-modulated-processes-codex-review.md:816:   722	\item \emph{DTC obstruction $2$-cells} (\cref{thm:dtc-obstruction}). In Law~IV these will become non-trivial $2$-cells in the holographic functor, plausibly dual to time-periodic bulk geometries (perhaps related to Floquet-analog wormholes; cf.~\cite{anous2020}).
reviews/frequency-modulated-processes-codex-review.md:822:   728	\label{sec:conclusion}
reviews/frequency-modulated-processes-codex-review.md:826:   732	\item A $2$-categorical formulation of Floquet evolution as a strict $2$-functor $\mathrm{Ev}_T\colon\mathfrak{H}_T\to\mathfrak{U}_{\Z}$ (\cref{prop:2-floquet}).
reviews/frequency-modulated-processes-codex-review.md:827:   733	\item A directed-system formulation of the Magnus expansion as an asymptotic effective-Hamiltonian functor (\cref{prop:heff-functor}), and a precise prethermal compositional lifting theorem (\cref{thm:prethermal-lift}).
reviews/frequency-modulated-processes-codex-review.md:828:   734	\item A reformulation of discrete time crystals as obstruction $2$-cells in the comparison between restricted and iterated Floquet drives (\cref{thm:dtc-obstruction}).
reviews/frequency-modulated-processes-codex-review.md:829:   735	\item A reformulation of Floquet winding numbers as obstruction classes for natural transformations between Floquet--Bloch functors (\cref{prop:floquet-natural}), recovering the Roy--Harper periodic table~\cite{roy2017}.
reviews/frequency-modulated-processes-codex-review.md:843:   749	The author thanks the authors of~\cite{floquet1883,shirley1965,bukov2015,else2016,khemani2016,rudner2020,roy2017} for providing the conceptual scaffolding on which the categorical reformulation rests. The Haskell community is acknowledged for the linear-types extension that makes type-level encoding of unitary evolution practical.
reviews/frequency-modulated-processes-codex-review.md:845:   751	\begin{thebibliography}{99}
reviews/frequency-modulated-processes-codex-review.md:847:   753	\bibitem{floquet1883}
reviews/frequency-modulated-processes-codex-review.md:852:   758	\bibitem{shirley1965}
reviews/frequency-modulated-processes-codex-review.md:857:   763	\bibitem{magnus1954}
reviews/frequency-modulated-processes-codex-review.md:862:   768	\bibitem{sambe1973}
reviews/frequency-modulated-processes-codex-review.md:867:   773	\bibitem{bukov2015}
reviews/frequency-modulated-processes-codex-review.md:872:   778	\bibitem{else2016}
reviews/frequency-modulated-processes-codex-review.md:877:   783	\bibitem{khemani2016}
reviews/frequency-modulated-processes-codex-review.md:882:   788	\bibitem{rudner2020}
reviews/frequency-modulated-processes-codex-review.md:887:   793	\bibitem{roy2017}
reviews/frequency-modulated-processes-codex-review.md:892:   798	\bibitem{abanin2015}
reviews/frequency-modulated-processes-codex-review.md:897:   803	\bibitem{zhang2017}
reviews/frequency-modulated-processes-codex-review.md:902:   808	\bibitem{choi2017}
reviews/frequency-modulated-processes-codex-review.md:907:   813	\bibitem{else2020review}
reviews/frequency-modulated-processes-codex-review.md:912:   818	\bibitem{watanabe2015}
reviews/frequency-modulated-processes-codex-review.md:917:   823	\bibitem{khemani2019}
reviews/frequency-modulated-processes-codex-review.md:922:   828	\bibitem{anous2020}
reviews/frequency-modulated-processes-codex-review.md:927:   833	\bibitem{lurie2009}
reviews/frequency-modulated-processes-codex-review.md:932:   838	\bibitem{maclane1998}
reviews/frequency-modulated-processes-codex-review.md:937:   843	\bibitem{abramsky2004}
reviews/frequency-modulated-processes-codex-review.md:942:   848	\bibitem{baezdolan1995}
reviews/frequency-modulated-processes-codex-review.md:947:   853	\bibitem{atiyah1988}
reviews/frequency-modulated-processes-codex-review.md:952:   858	\bibitem{wen2004}
reviews/frequency-modulated-processes-codex-review.md:956:   862	\bibitem{kitaev2003}
reviews/frequency-modulated-processes-codex-review.md:961:   867	\bibitem{chen2013}
reviews/frequency-modulated-processes-codex-review.md:966:   872	\bibitem{lazarides2014}
reviews/frequency-modulated-processes-codex-review.md:971:   877	\bibitem{dalessio2014}
reviews/frequency-modulated-processes-codex-review.md:976:   882	\end{thebibliography}
reviews/frequency-modulated-processes-codex-review.md:1010:LaTeX2e <2025-11-01>
reviews/frequency-modulated-processes-codex-review.md:1013:Document Class: article 2025/01/22 v1.4n Standard LaTeX document class
reviews/frequency-modulated-processes-codex-review.md:1193:(everypage)                been implemented in LaTeX. This package is now in
reviews/frequency-modulated-processes-codex-review.md:1198:Package everypage Warning: You appear to be running a version of LaTeX
reviews/frequency-modulated-processes-codex-review.md:1231:LaTeX Warning: Citation `maclane1998' on page 3 undefined on input line 119.
reviews/frequency-modulated-processes-codex-review.md:1234:LaTeX Warning: Citation `abramsky2004' on page 3 undefined on input line 119.
reviews/frequency-modulated-processes-codex-review.md:1237:LaTeX Warning: Citation `lurie2009' on page 3 undefined on input line 119.
reviews/frequency-modulated-processes-codex-review.md:1240:LaTeX Warning: Citation `maclane1998' on page 3 undefined on input line 119.
reviews/frequency-modulated-processes-codex-review.md:1243:LaTeX Warning: Citation `abramsky2004' on page 3 undefined on input line 119.
reviews/frequency-modulated-processes-codex-review.md:1246:LaTeX Warning: Citation `atiyah1988' on page 3 undefined on input line 119.
reviews/frequency-modulated-processes-codex-review.md:1249:LaTeX Warning: Citation `baezdolan1995' on page 3 undefined on input line 119.
reviews/frequency-modulated-processes-codex-review.md:1252:LaTeX Warning: Citation `chen2013' on page 3 undefined on input line 125.
reviews/frequency-modulated-processes-codex-review.md:1255:LaTeX Warning: Citation `kitaev2003' on page 3 undefined on input line 125.
reviews/frequency-modulated-processes-codex-review.md:1258:LaTeX Warning: Citation `wen2004' on page 3 undefined on input line 125.
reviews/frequency-modulated-processes-codex-review.md:1261:LaTeX Warning: Citation `floquet1883' on page 3 undefined on input line 129.
reviews/frequency-modulated-processes-codex-review.md:1264:LaTeX Warning: Citation `shirley1965' on page 3 undefined on input line 129.
reviews/frequency-modulated-processes-codex-review.md:1268:LaTeX Warning: Citation `else2016' on page 4 undefined on input line 133.
reviews/frequency-modulated-processes-codex-review.md:1271:LaTeX Warning: Citation `khemani2016' on page 4 undefined on input line 133.
reviews/frequency-modulated-processes-codex-review.md:1274:LaTeX Warning: Citation `rudner2020' on page 4 undefined on input line 134.
reviews/frequency-modulated-processes-codex-review.md:1277:LaTeX Warning: Citation `bukov2015' on page 4 undefined on input line 135.
reviews/frequency-modulated-processes-codex-review.md:1280:LaTeX Warning: Citation `abanin2015' on page 4 undefined on input line 135.
reviews/frequency-modulated-processes-codex-review.md:1283:LaTeX Warning: Citation `roy2017' on page 4 undefined on input line 138.
reviews/frequency-modulated-processes-codex-review.md:1286:LaTeX Warning: Reference `sec:floquet-topological' on page 1 undefined on input
reviews/frequency-modulated-processes-codex-review.md:1290:LaTeX Warning: Reference `sec:framework' on page 1 undefined on input line 142.
reviews/frequency-modulated-processes-codex-review.md:1294:LaTeX Warning: Reference `sec:periodic-endo' on page 1 undefined on input line 
reviews/frequency-modulated-processes-codex-review.md:1298:LaTeX Warning: Reference `sec:magnus' on page 1 undefined on input line 142.
reviews/frequency-modulated-processes-codex-review.md:1301:LaTeX Warning: Reference `sec:dtc' on page 1 undefined on input line 142.
reviews/frequency-modulated-processes-codex-review.md:1304:LaTeX Warning: Reference `sec:floquet-topological' on page 1 undefined on input
reviews/frequency-modulated-processes-codex-review.md:1308:LaTeX Warning: Reference `sec:prethermal' on page 1 undefined on input line 142
reviews/frequency-modulated-processes-codex-review.md:1312:LaTeX Warning: Reference `sec:examples' on page 1 undefined on input line 142.
reviews/frequency-modulated-processes-codex-review.md:1315:LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 142.
reviews/frequency-modulated-processes-codex-review.md:1318:LaTeX Warning: Reference `sec:conclusion' on page 1 undefined on input line 142
reviews/frequency-modulated-processes-codex-review.md:1323:LaTeX Warning: Reference `def:floquet-functor' on page 1 undefined on input lin
reviews/frequency-modulated-processes-codex-review.md:1327:LaTeX Warning: Reference `def:floquet-functor' on page 1 undefined on input lin
reviews/frequency-modulated-processes-codex-review.md:1332:LaTeX Warning: Citation `floquet1883' on page 6 undefined on input line 200.
reviews/frequency-modulated-processes-codex-review.md:1335:LaTeX Warning: Citation `sambe1973' on page 6 undefined on input line 205.
reviews/frequency-modulated-processes-codex-review.md:1345:LaTeX Warning: Reference `thm:floquet-decomp' on page 1 undefined on input line
reviews/frequency-modulated-processes-codex-review.md:1349:LaTeX Warning: Citation `sambe1973' on page 7 undefined on input line 251.
reviews/frequency-modulated-processes-codex-review.md:1352:LaTeX Warning: Reference `prop:sambe-functor' on page 1 undefined on input line
reviews/frequency-modulated-processes-codex-review.md:1356:LaTeX Warning: Reference `sec:conclusion' on page 1 undefined on input line 268
reviews/frequency-modulated-processes-codex-review.md:1370:LaTeX Warning: Reference `thm:floquet-evol' on page 1 undefined on input line 3
reviews/frequency-modulated-processes-codex-review.md:1374:LaTeX Warning: Reference `def:unit-z' on page 1 undefined on input line 338.
reviews/frequency-modulated-processes-codex-review.md:1378:LaTeX Warning: Citation `magnus1954' on page 10 undefined on input line 382.
reviews/frequency-modulated-processes-codex-review.md:1382:LaTeX Warning: Reference `thm:magnus' on page 1 undefined on input line 412.
reviews/frequency-modulated-processes-codex-review.md:1385:LaTeX Warning: Citation `bukov2015' on page 11 undefined on input line 412.
reviews/frequency-modulated-processes-codex-review.md:1388:LaTeX Warning: Citation `abanin2015' on page 11 undefined on input line 412.
reviews/frequency-modulated-processes-codex-review.md:1391:LaTeX Warning: Reference `thm:fm-expansion' on page 1 undefined on input line 4
reviews/frequency-modulated-processes-codex-review.md:1395:LaTeX Warning: Reference `prop:heff-functor' on page 1 undefined on input line 
reviews/frequency-modulated-processes-codex-review.md:1400:LaTeX Warning: Reference `def:floquet-functor' on page 1 undefined on input lin
reviews/frequency-modulated-processes-codex-review.md:1408:LaTeX Warning: Reference `sec:floquet-topological' on page 1 undefined on input
reviews/frequency-modulated-processes-codex-review.md:1412:LaTeX Warning: Reference `sec:dtc' on page 1 undefined on input line 450.
reviews/frequency-modulated-processes-codex-review.md:1416:LaTeX Warning: Reference `thm:prethermal-lift' on page 1 undefined on input lin
reviews/frequency-modulated-processes-codex-review.md:1420:LaTeX Warning: Citation `else2016' on page 13 undefined on input line 470.
reviews/frequency-modulated-processes-codex-review.md:1423:LaTeX Warning: Reference `sec:examples' on page 1 undefined on input line 470.
reviews/frequency-modulated-processes-codex-review.md:1426:LaTeX Warning: Citation `zhang2017' on page 13 undefined on input line 470.
reviews/frequency-modulated-processes-codex-review.md:1429:LaTeX Warning: Citation `choi2017' on page 13 undefined on input line 470.
reviews/frequency-modulated-processes-codex-review.md:1441:LaTeX Warning: Reference `def:dtc' on page 1 undefined on input line 512.
reviews/frequency-modulated-processes-codex-review.md:1444:LaTeX Warning: Reference `thm:dtc-obstruction' on page 1 undefined on input lin
reviews/frequency-modulated-processes-codex-review.md:1461:LaTeX Warning: Reference `sec:examples' on page 1 undefined on input line 521.
reviews/frequency-modulated-processes-codex-review.md:1464:LaTeX Warning: Citation `else2016' on page 15 undefined on input line 525.
reviews/frequency-modulated-processes-codex-review.md:1467:LaTeX Warning: Citation `else2020review' on page 15 undefined on input line 525
reviews/frequency-modulated-processes-codex-review.md:1477:LaTeX Warning: Citation `rudner2020' on page 15 undefined on input line 549.
reviews/frequency-modulated-processes-codex-review.md:1480:LaTeX Warning: Citation `rudner2020' on page 15 undefined on input line 554.
reviews/frequency-modulated-processes-codex-review.md:1484:LaTeX Warning: Reference `def:winding' on page 1 undefined on input line 571.
reviews/frequency-modulated-processes-codex-review.md:1487:LaTeX Warning: Reference `def:trivial-fb' on page 1 undefined on input line 573
reviews/frequency-modulated-processes-codex-review.md:1491:LaTeX Warning: Reference `def:winding' on page 1 undefined on input line 578.
reviews/frequency-modulated-processes-codex-review.md:1494:LaTeX Warning: Citation `roy2017' on page 16 undefined on input line 583.
reviews/frequency-modulated-processes-codex-review.md:1497:LaTeX Warning: Citation `roy2017' on page 16 undefined on input line 585.
reviews/frequency-modulated-processes-codex-review.md:1500:LaTeX Warning: Reference `thm:roy-harper' on page 1 undefined on input line 596
reviews/frequency-modulated-processes-codex-review.md:1505:LaTeX Warning: Citation `abanin2015' on page 17 undefined on input line 604.
reviews/frequency-modulated-processes-codex-review.md:1508:LaTeX Warning: Reference `thm:prethermal-lift' on page 1 undefined on input lin
reviews/frequency-modulated-processes-codex-review.md:1512:LaTeX Warning: Citation `lazarides2014' on page 17 undefined on input line 620.
reviews/frequency-modulated-processes-codex-review.md:1516:LaTeX Warning: Citation `dalessio2014' on page 17 undefined on input line 620.
reviews/frequency-modulated-processes-codex-review.md:1519:LaTeX Warning: Reference `thm:prethermal-lift' on page 1 undefined on input lin
reviews/frequency-modulated-processes-codex-review.md:1536:LaTeX Warning: Reference `thm:dtc-obstruction' on page 1 undefined on input lin
reviews/frequency-modulated-processes-codex-review.md:1540:LaTeX Warning: Citation `else2016' on page 18 undefined on input line 660.
reviews/frequency-modulated-processes-codex-review.md:1548:LaTeX Warning: Reference `prop:kicked-ising-dtc' on page 1 undefined on input l
reviews/frequency-modulated-processes-codex-review.md:1597:LaTeX Warning: Reference `def:winding' on page 1 undefined on input line 686.
reviews/frequency-modulated-processes-codex-review.md:1600:LaTeX Warning: Citation `rudner2020' on page 19 undefined on input line 694.
reviews/frequency-modulated-processes-codex-review.md:1603:LaTeX Warning: Citation `watanabe2015' on page 19 undefined on input line 705.
reviews/frequency-modulated-processes-codex-review.md:1606:LaTeX Warning: Citation `khemani2019' on page 19 undefined on input line 705.
reviews/frequency-modulated-processes-codex-review.md:1609:LaTeX Warning: Citation `roy2017' on page 19 undefined on input line 706.
reviews/frequency-modulated-processes-codex-review.md:1612:LaTeX Warning: Citation `anous2020' on page 19 undefined on input line 709.
reviews/frequency-modulated-processes-codex-review.md:1616:LaTeX Warning: Reference `prop:sambe-functor' on page 1 undefined on input line
reviews/frequency-modulated-processes-codex-review.md:1620:LaTeX Warning: Reference `def:Heff' on page 1 undefined on input line 720.
reviews/frequency-modulated-processes-codex-review.md:1623:LaTeX Warning: Reference `prop:floquet-natural' on page 1 undefined on input li
reviews/frequency-modulated-processes-codex-review.md:1627:LaTeX Warning: Reference `def:winding' on page 1 undefined on input line 721.
reviews/frequency-modulated-processes-codex-review.md:1630:LaTeX Warning: Reference `thm:dtc-obstruction' on page 1 undefined on input lin
reviews/frequency-modulated-processes-codex-review.md:1634:LaTeX Warning: Citation `anous2020' on page 20 undefined on input line 722.
reviews/frequency-modulated-processes-codex-review.md:1637:LaTeX Warning: Reference `prop:2-floquet' on page 1 undefined on input line 732
reviews/frequency-modulated-processes-codex-review.md:1641:LaTeX Warning: Reference `prop:heff-functor' on page 1 undefined on input line 
reviews/frequency-modulated-processes-codex-review.md:1645:LaTeX Warning: Reference `thm:prethermal-lift' on page 1 undefined on input lin
reviews/frequency-modulated-processes-codex-review.md:1649:LaTeX Warning: Reference `thm:dtc-obstruction' on page 1 undefined on input lin
reviews/frequency-modulated-processes-codex-review.md:1653:LaTeX Warning: Reference `prop:floquet-natural' on page 1 undefined on input li
reviews/frequency-modulated-processes-codex-review.md:1657:LaTeX Warning: Citation `roy2017' on page 20 undefined on input line 735.
reviews/frequency-modulated-processes-codex-review.md:1661:LaTeX Warning: Citation `floquet1883' on page 21 undefined on input line 749.
reviews/frequency-modulated-processes-codex-review.md:1664:LaTeX Warning: Citation `shirley1965' on page 21 undefined on input line 749.
reviews/frequency-modulated-processes-codex-review.md:1667:LaTeX Warning: Citation `bukov2015' on page 21 undefined on input line 749.
reviews/frequency-modulated-processes-codex-review.md:1670:LaTeX Warning: Citation `else2016' on page 21 undefined on input line 749.
reviews/frequency-modulated-processes-codex-review.md:1673:LaTeX Warning: Citation `khemani2016' on page 21 undefined on input line 749.
reviews/frequency-modulated-processes-codex-review.md:1676:LaTeX Warning: Citation `rudner2020' on page 21 undefined on input line 749.
reviews/frequency-modulated-processes-codex-review.md:1679:LaTeX Warning: Citation `roy2017' on page 21 undefined on input line 749.
reviews/frequency-modulated-processes-codex-review.md:1687:LaTeX Warning: There were undefined references.
reviews/frequency-modulated-processes-codex-review.md:1690:LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.
reviews/frequency-modulated-processes-codex-review.md:1758:LaTeX2e <2025-11-01>
reviews/frequency-modulated-processes-codex-review.md:1761:Document Class: article 2025/01/22 v1.4n Standard LaTeX document class
reviews/frequency-modulated-processes-codex-review.md:1941:(everypage)                been implemented in LaTeX. This package is now in
reviews/frequency-modulated-processes-codex-review.md:1946:Package everypage Warning: You appear to be running a version of LaTeX
reviews/frequency-modulated-processes-codex-review.md:2101:LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.
reviews/frequency-modulated-processes-codex-review.md:2159:LaTeX2e <2025-11-01>
reviews/frequency-modulated-processes-codex-review.md:2162:Document Class: article 2025/01/22 v1.4n Standard LaTeX document class
reviews/frequency-modulated-processes-codex-review.md:2342:(everypage)                been implemented in LaTeX. This package is now in
reviews/frequency-modulated-processes-codex-review.md:2347:Package everypage Warning: You appear to be running a version of LaTeX
reviews/frequency-modulated-processes-codex-review.md:2543:The document compiles successfully after latexmk’s reruns: no fatal errors and no unresolved citations/references remain. The remaining concrete issues are package/bookmark warnings plus box warnings from specific source regions.
reviews/frequency-modulated-processes-codex-review.md:2545:/usr/local/bin/zsh -lc 'rg -n "(Warning|Overfull|Underfull|undefined|multiply defined|Rerun)" /tmp/fmp-latex-review/frequency-modulated-processes.log' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
reviews/frequency-modulated-processes-codex-review.md:2549:660:Package everypage Warning: You appear to be running a version of LaTeX
reviews/frequency-modulated-processes-codex-review.md:2590:(everypage)                been implemented in LaTeX. This package is now in
reviews/frequency-modulated-processes-codex-review.md:2595:Package everypage Warning: You appear to be running a version of LaTeX
reviews/frequency-modulated-processes-codex-review.md:2632:LaTeX Font Info:    Trying to load font information for U+euf on input line 361
reviews/frequency-modulated-processes-codex-review.md:2756:papers/latex/frequency-modulated-processes.tex:106:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2764:papers/latex/frequency-modulated-processes.tex:145:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2765:papers/latex/frequency-modulated-processes.tex:150:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2766:papers/latex/frequency-modulated-processes.tex:155:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2767:papers/latex/frequency-modulated-processes.tex:160:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2769:papers/latex/frequency-modulated-processes.tex:175:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2771:papers/latex/frequency-modulated-processes.tex:188:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2773:papers/latex/frequency-modulated-processes.tex:208:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2775:papers/latex/frequency-modulated-processes.tex:217:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2776:papers/latex/frequency-modulated-processes.tex:226:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2787:papers/latex/frequency-modulated-processes.tex:275:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2788:papers/latex/frequency-modulated-processes.tex:280:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2789:papers/latex/frequency-modulated-processes.tex:293:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2790:papers/latex/frequency-modulated-processes.tex:312:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2791:papers/latex/frequency-modulated-processes.tex:331:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2792:papers/latex/frequency-modulated-processes.tex:362:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2793:papers/latex/frequency-modulated-processes.tex:367:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2794:papers/latex/frequency-modulated-processes.tex:378:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2795:papers/latex/frequency-modulated-processes.tex:383:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2797:papers/latex/frequency-modulated-processes.tex:401:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2802:papers/latex/frequency-modulated-processes.tex:418:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2803:papers/latex/frequency-modulated-processes.tex:423:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2805:papers/latex/frequency-modulated-processes.tex:438:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2816:papers/latex/frequency-modulated-processes.tex:456:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2817:papers/latex/frequency-modulated-processes.tex:461:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2819:papers/latex/frequency-modulated-processes.tex:477:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2821:papers/latex/frequency-modulated-processes.tex:494:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2822:papers/latex/frequency-modulated-processes.tex:503:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2825:papers/latex/frequency-modulated-processes.tex:528:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2829:papers/latex/frequency-modulated-processes.tex:535:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2831:papers/latex/frequency-modulated-processes.tex:542:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2833:papers/latex/frequency-modulated-processes.tex:550:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2836:papers/latex/frequency-modulated-processes.tex:561:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2839:papers/latex/frequency-modulated-processes.tex:568:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2847:papers/latex/frequency-modulated-processes.tex:586:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2848:papers/latex/frequency-modulated-processes.tex:600:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2852:papers/latex/frequency-modulated-processes.tex:605:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2855:papers/latex/frequency-modulated-processes.tex:632:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2857:papers/latex/frequency-modulated-processes.tex:655:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2861:papers/latex/frequency-modulated-processes.tex:689:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2865:papers/latex/frequency-modulated-processes.tex:702:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2869:papers/latex/frequency-modulated-processes.tex:714:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2874:papers/latex/frequency-modulated-processes.tex:728:1:1:Warning:24:Delete this space to maintain correct pagereferences.
reviews/frequency-modulated-processes-codex-review.md:2885:No fatal compilation errors, missing packages, unresolved citations, or broken `\ref`/`\cref` targets after reruns.
reviews/frequency-modulated-processes-codex-review.md:2889:- [frequency-modulated-processes.tex:22](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:22): `everypage` is legacy and warns on current LaTeX.  
reviews/frequency-modulated-processes-codex-review.md:2895:- [frequency-modulated-processes.tex:218](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:218): overfull hbox, 12.3pt, from long theorem-heading/opening sentence.  
reviews/frequency-modulated-processes-codex-review.md:2898:- [frequency-modulated-processes.tex:336](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:336): overfull hbox, 20.5pt, from dense inline equations in the proof.  
reviews/frequency-modulated-processes-codex-review.md:2901:- [frequency-modulated-processes.tex:445](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:445): overfull hbox, 12.4pt, after the diagram/explanatory sentence.  
reviews/frequency-modulated-processes-codex-review.md:2904:- [frequency-modulated-processes.tex:536](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:536): overfull hbox, 8.4pt, from long inline definition of `U(\mathbf{k},t)`.  
reviews/frequency-modulated-processes-codex-review.md:2907:- [frequency-modulated-processes.tex:665](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:665): severe overfull hbox, 80.4pt, caused by unbreakable `\texttt{src/frequency-modulated-processes/}`.  
reviews/frequency-modulated-processes-codex-review.md:2910:- [frequency-modulated-processes.tex:824](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:824): underfull hbox in bibliography item.  
reviews/frequency-modulated-processes-codex-review.md:2911:  Fix: add `\raggedright` inside `thebibliography`, or add a small global `\emergencystretch=2em` before the bibliography.
reviews/frequency-modulated-processes-codex-review.md:2917:No fatal compilation errors, missing packages, unresolved citations, or broken `\ref`/`\cref` targets after reruns.
reviews/frequency-modulated-processes-codex-review.md:2921:- [frequency-modulated-processes.tex:22](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:22): `everypage` is legacy and warns on current LaTeX.  
reviews/frequency-modulated-processes-codex-review.md:2927:- [frequency-modulated-processes.tex:218](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:218): overfull hbox, 12.3pt, from long theorem-heading/opening sentence.  
reviews/frequency-modulated-processes-codex-review.md:2930:- [frequency-modulated-processes.tex:336](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:336): overfull hbox, 20.5pt, from dense inline equations in the proof.  
reviews/frequency-modulated-processes-codex-review.md:2933:- [frequency-modulated-processes.tex:445](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:445): overfull hbox, 12.4pt, after the diagram/explanatory sentence.  
reviews/frequency-modulated-processes-codex-review.md:2936:- [frequency-modulated-processes.tex:536](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:536): overfull hbox, 8.4pt, from long inline definition of `U(\mathbf{k},t)`.  
reviews/frequency-modulated-processes-codex-review.md:2939:- [frequency-modulated-processes.tex:665](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:665): severe overfull hbox, 80.4pt, caused by unbreakable `\texttt{src/frequency-modulated-processes/}`.  
reviews/frequency-modulated-processes-codex-review.md:2942:- [frequency-modulated-processes.tex:824](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/latex/frequency-modulated-processes.tex:824): underfull hbox in bibliography item.  
reviews/frequency-modulated-processes-codex-review.md:2943:  Fix: add `\raggedright` inside `thebibliography`, or add a small global `\emergencystretch=2em` before the bibliography.
reviews/frequency-modulated-processes-review-round-2.md:119:  error: undefined,
reviews/frequency-modulated-processes-review-round-2.md:234:  error: undefined,
reviews/frequency-modulated-processes-review-round-2.md:349:  error: undefined,
reviews/frequency-modulated-processes-review-round-2.md:464:  error: undefined,
reviews/frequency-modulated-processes-review-round-2.md:579:  error: undefined,
reviews/frequency-modulated-processes-review-round-2.md:694:  error: undefined,
reviews/frequency-modulated-processes-review-round-2.md:809:  error: undefined,
reviews/frequency-modulated-processes-review-round-2.md:924:  error: undefined,
reviews/frequency-modulated-processes-review-round-2.md:941:1.  **Line 60 (LaTeX Duplicate Definition):**
reviews/frequency-modulated-processes-review-round-2.md:945:    *   **Original text:** "Tensor products are induced from the underlying tensor of Hilbert spaces, with the $\Z$-grading of a tensor of two morphisms $(n,W)\otimes(n',W')$ defined as $(n+n',W\otimes W')$ when $n=n'$ and undefined otherwise; equivalently, $\mathsf{Unit}_{\Z}$ is the wide subcategory $\mathsf{Unit}\times_{\mathrm{Set}}\Z$ of $\mathsf{Unit}$ enriched over $\Z$ as a discrete monoidal category."
reviews/frequency-modulated-processes-review-round-2.md:946:    *   **Feedback:** The definition of the monoidal product for morphisms in $\mathsf{Unit}_{\Z}$ is confusing and appears contradictory. If the grading of the tensor product of two morphisms $(n,W)$ and $(n',W')$ is $(n+n')$, then the condition "when $n=n'$ and undefined otherwise" seems incorrect or at least highly restrictive and requires further justification. In a typical graded monoidal category, the gradings of tensored morphisms would simply add. If the intention is that two Floquet processes can only be tensored if they represent the same number of periods (i.e., $n=n'$), this is a significant constraint and should be explicitly stated and motivated as a property of the tensor product rather than an "undefined" case for the grading. Please clarify the precise definition of the monoidal product on morphisms, ensuring consistency with the addition rule for the $\mathbb{Z}$-grading.
reviews/frequency-modulated-processes-review-round-2.md:949:    *   **Original text (Proof Sketch for Thm 3.3):** "The identity $V=\one$ yields $(1,\one)$ which becomes $(0,\one)$ under the $\Z$-shift convention for identities only when no period elapses; here the identity Hamiltonian-deformation morphism corresponds to a trivial relabelling and we take the convention $\mathrm{Ev}_T(\one)=(0,\one)$ on identities, $\mathrm{Ev}_T(V)=(1,V)$ on non-identity intertwiners."
reviews/frequency-modulated-processes-review-round-2.md:961:7.  **Line 281 (Flow):** "re-labelling that views $n$-fold iterated $T$-periodic dynamics as a single morphism in $\mathbf{B}\Z_{nT}$." Consider "re-labelling that views an $n$-fold iterated $T$-periodic dynamics as a single morphism..."

codex
The source has a few likely trouble spots before compiling: a `\Cref{sec:conclusion}` target is referenced in the outline, and I don’t see that label defined until later as `sec:conclusion`? I’ll verify through the aux/log rather than relying on visual scan.
exec
/usr/local/bin/zsh -lc 'command -v latexmk || command -v pdflatex || true' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
/Library/TeX/texbin/latexmk

exec
/usr/local/bin/zsh -lc 'command -v chktex || command -v lacheck || true' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
/Library/TeX/texbin/chktex

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\label\\{|\\\\(C|c)ref\\{|\\\\cite\\{\" papers/mathematical-formalisms/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\label\{|\(C|c)ref\{|\cite\{)
       ^^
error: unrecognized escape sequence

codex
`latexmk` and `chktex` are available, so I can do both a real compile and a static lint pass. One `rg` pattern was malformed; I’m rerunning that check with separate patterns.
exec
/usr/local/bin/zsh -lc "rg -n -e '\\\\label\\{' -e '\\\\[Cc]ref\\{' -e '\\\\cite\\{' papers/mathematical-formalisms/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
89:\label{sec:introduction}
99:Three reasons motivate the choice. First, physical systems compose, both spatially (tensor products of subsystems) and temporally (sequential evolution); the algebra of these two compositions, together with their compatibility, is exactly what monoidal category theory was designed to formalise~\cite{maclane1998}. Second, observables organise locally and assemble globally: this is the sheaf-theoretic structure familiar from gauge theory, and its higher-categorical refinement underlies modern formulations of quantum field theory~\cite{costello2017}. Third, the same algebraic data---a symmetric monoidal closed (or compact closed) category---governs quantum mechanics, computation, logic, and topology, as exhibited in the Rosetta Stone of Baez and Stay~\cite{baezstay2009}. Taking the Rosetta Stone seriously means that the matter--information correspondence is not a physical accident but a four-way translational symmetry built into the categorical substrate.
119:\Cref{sec:preliminaries} reviews categorical preliminaries with the precision needed for the sequel. \Cref{sec:matter-info-functor} introduces the matter--information functor $M$ and proves its basic structural properties. \Cref{sec:monoidal} develops the monoidal structure of state spaces. \Cref{sec:sheaves} formalises sheaves and topoi for local physics. \Cref{sec:operads} treats operadic composition. \Cref{sec:type-theory} gives the type-theoretic encoding. \Cref{sec:examples} works concrete examples. \Cref{sec:open-problems} states open problems for Law~I as a foundational layer. \Cref{sec:conclusion} closes.
122:\label{sec:preliminaries}
124:We fix conventions. Throughout, ``category'' means a locally small category in the sense of~\cite{maclane1998}. We follow the conventions of~\cite{lurie2009} when the discussion turns to $(\infty,n)$-categories.
129:\label{def:category}
155:The slogan, due to Lawvere~\cite{lawvere1963}, is that mathematics is naturally organised by adjunctions, and the present paper takes this slogan as a working principle.
160:\label{def:monoidal}
167:satisfying Mac Lane's pentagon and triangle axioms~\cite{maclane1998}.
174:\begin{theorem}[Mac Lane Coherence~\cite{maclane1998}]
175:\label{thm:maclane}
183:\Cref{thm:maclane} licenses our subsequent suppression of associators and unitors when no confusion arises.
188:\label{def:compact-closed}
201:Diagrammatically (string-diagram calculus, anticipated from \cref{thm:joyal-street}), the first identity says that an $A$-strand (oriented upward) which is bent through a cup ($\eta_A$) and back through a cap ($\varepsilon_A$) ``snakes'' into a straight $A$-strand:
220:A \emph{dagger category} is a category $\C$ equipped with a contravariant involutive identity-on-objects functor $\dagger : \C^\op \to \C$ such that $(f^\dagger)^\dagger = f$. A \emph{dagger compact closed category} is a compact closed category whose dagger is compatible with the duals via $\varepsilon_A^\dagger = \sigma_{A^*,A} \circ \eta_A$~\cite{abramskycoecke2004}.
224:\label{ex:fhilb}
225:Finite-dimensional complex Hilbert spaces with linear maps form a dagger compact closed symmetric monoidal category. The tensor is the Hilbert tensor product, the unit is $\mathbb{C}$, the dual of $H$ is the conjugate space $H^*$, $\eta : \mathbb{C} \to H^* \otimes H$ is $1 \mapsto \sum_i \bar{e}_i \otimes e_i$ for any basis $\{e_i\}$, $\varepsilon$ is the evaluation pairing, and $\dagger$ is the Hilbert-space adjoint~\cite{abramskycoecke2004}.
231:\label{def:cob-n}
237:\begin{definition}[TQFT~\cite{atiyah1988}]
241:\begin{theorem}[Cobordism Hypothesis~\cite{baezdolan1995,lurie2009}]
242:\label{thm:cobordism}
253:\label{sec:matter-info-functor}
260:\label{def:phys}
275:\label{def:matter-info}
282:satisfying the standard monoidal coherence diagrams~\cite{maclane1998}, and additionally $M(f^\dagger) = M(f)^\dagger$ for every morphism $f$.
286:\label{hook:H1}
304:\label{thm:generation}
325:\label{cor:M-on-cob}
330:Combine \cref{thm:generation} with \cref{thm:cobordism}.
336:\label{thm:born}
351:In $\FHilb$, $\End(I) = \End(\mathbb{C}) = \mathbb{C}$, and $\|m \circ \psi\|^2 \in \mathbb{R}_{\geq 0}$ is the Born probability $|\langle m \mid \psi\rangle|^2$. \Cref{thm:born} says this number is invariant under $M$.
354:\label{hook:H7}
359:\label{sec:monoidal}
365:\begin{theorem}[Joyal--Street~\cite{joyalstreet1991}]
366:\label{thm:joyal-street}
377:\label{prop:process-state}
389:\Cref{prop:process-state} is the categorical content of process tomography: every process is encoded in a corresponding state of a doubled system (the Choi--Jamio\l{}kowski isomorphism, in the $\FHilb$ instance). Diagrammatically, ``bending the input wire'' converts a process box into a state of the doubled system:
424:\label{prop:bell}
433:\label{hook:H2}
439:We illustrate the diagrammatic style with the \emph{snake equation}, which is the diagrammatic content of the triangle identities of \cref{def:compact-closed}. Wires representing $A$ are drawn as upward-oriented strands; wires representing $A^*$ are drawn downward-oriented. The unit $\eta_A$ is a cup opening upward (a $\cup$-shape with $A^*$ on the left and $A$ on the right); the counit $\varepsilon_A$ is a cap closing downward.
466:The second triangle identity is the mirror image with $A^*$. Both identities are required for the compact-closed structure: the first one ensures that an $A$-strand can be straightened, and the second one ensures the same for an $A^*$-strand. Together they say: in a compact closed category, ``slack can be pulled out of any wire,'' regardless of orientation. The whole framework of \cref{sec:matter-info-functor}---in particular \cref{thm:born} (Born rule) and the trace structure of \cref{hook:H7}---relies on \emph{both} triangle identities being available simultaneously, so we list them together as a single structural axiom rather than treating them separately.
468:This is the foundational identity used by the categorical formulation of quantum teleportation~\cite{abramskycoecke2004}: the teleportation protocol amounts to a diagrammatic snake straightening, in which the input wire of Alice's qubit is bent through a Bell pair (a $\eta$) and a Bell measurement (an $\varepsilon$), arriving at Bob with no further operation needed beyond a Pauli correction. Law~IV will use the same identity to derive the Ryu--Takayanagi-style entanglement-area formula in the HaPPY code~\cite{pastawski2015}.
476:\begin{theorem}[Coecke--Pavlovic--Vicary~\cite{abramskycoecke2004}]
477:\label{thm:cpv}
481:\Cref{thm:cpv} is the categorical statement that ``measurement bases are algebraic data'' and not metric data: bases are characterised by the pure algebra of multiplication and copying.
488:\label{def:adjunction}
500:\item Quantisation/dequantisation are conjecturally a Quillen adjoint pair between suitable categories of classical and quantum systems~\cite{lawvere1969}.
504:\label{thm:adjoint-naturality}
512:\Cref{thm:adjoint-naturality} is the formal statement that adjunctions in $\Phys$ are visible in $\Info$: phase-classifying adjunctions (Law~II) and Floquet-classifying adjunctions (Law~III) survive the matter--information passage.
515:\label{sec:sheaves}
522:A \emph{site} is a small category $\C$ together with a Grothendieck topology $J$, i.e.\ for each $A \in \Ob(\C)$ a collection $J(A)$ of \emph{covering sieves}, satisfying the standard axioms (stability, transitivity, identity)~\cite{maclane1998}.
534:\label{hook:H4}
544:\begin{theorem}[Giraud~\cite{maclane1998}]
545:\label{thm:giraud}
560:\label{hook:H8}
567:\label{thm:sheaf-lifting}
576:\emph{Scope.} \Cref{thm:sheaf-lifting} applies only when the hypotheses (1)--(3) hold; in particular it is not a structural fact about every matter--information functor, but only about those for which $\Phys$ and $\Info$ admit a topos-theoretic presentation. Laws~II and~IV use the theorem in regimes where these hypotheses are met.
584:\emph{Step 2 (Site morphism inducing $m^*$).} By the Comparison Lemma~\cite{maclane1998}, a geometric morphism $\Info \to \Phys$ between sheaf topoi on small sites is determined by its restriction to the (full subcategories of) representable sheaves. The Yoneda embedding $y_\Phys : \C_\Phys \hookrightarrow \mathbf{Sh}(\C_\Phys, J_\Phys)$ is fully faithful, and similarly for $\Info$. Pulling $m^*$ back along $y_\Phys$ and using the universal property of sheafification gives a unique functor $m : \C_\Info \to \C_\Phys$ such that $m^* (y_\Phys(c)) = a(y_\Info(\overline{m}(c)))$ for some lift $\overline{m}$, where $a$ is sheafification. This $m$ is the site morphism in the statement, and the direction is forced: the inverse-image part of a geometric morphism between sheaf topoi corresponds at the site level to a functor running in the \emph{opposite} direction.
589:\Cref{thm:sheaf-lifting} is the formal statement that local-observable structure is preserved by $M$. The geometric-morphism formulation makes explicit that $M$ behaves like the topos-theoretic ``pullback of observables along a generalised continuous map between informational and physical sites.''
592:\label{sec:operads}
613:\label{ex:En}
618:\label{hook:H5}
619:For each $n$, an $E_n$-algebra structure on a designated object of $\Info$ encodes the multi-region multiplication of observables at codimension $n$. Law~IV uses this hook to encode the factorisation algebra of a local QFT~\cite{costello2017}.
632:\begin{definition}[Factorisation algebra~\cite{costello2017}]
639:\label{sec:type-theory}
645:\begin{theorem}[Curry--Howard--Lambek correspondence~\cite{lambekscott1986}]
646:\label{thm:chl}
663:We encode the categorical hierarchy in Haskell as a sequence of type classes (the full code is supplied in the companion package, \cref{sec:examples}):
691:\paragraph{Scope and limitations of the Haskell encoding.} The encoding above captures the \emph{categorical skeleton} of Law~I: identity, composition, the monoidal product, and the strong-monoidal functor signature. It does \emph{not} capture two structural ingredients of \cref{def:matter-info}:
693:\item \emph{Linearity.} Standard Haskell types support unrestricted contraction and weakening (variables can be duplicated and discarded), which is incompatible with the no-cloning and no-deletion theorems of quantum mechanics. Concretely: a Haskell function \texttt{a -> b} can in general duplicate or discard its argument, but if \texttt{a} and \texttt{b} are intended to model quantum states then this would correspond to a copying or deleting channel, which is not a structure-preserving morphism in $\FHilb$. A faithful encoding therefore requires the GHC \texttt{LinearTypes} extension (GHC 9.0+) or a dedicated linear-type framework such as Proto-Quipper-M~\cite{fukishidaselinger2020}.
696:Consequently, the executable-encoding hook $\mathsf{H8}$ is realised at the level of the categorical skeleton; full realisation, including linearity and dagger involution, is one of the open problems we list in \cref{sec:open-problems}. The property test suite (in-house, QuickCheck-style; see the companion package) verifies the category and monoidal laws on the present skeleton.
703:\label{sec:examples}
705:We now exhibit four concrete examples of the framework, drawn from the four corners of the Rosetta Stone~\cite{baezstay2009}.
723:Let $\Phys = \Cob_2$ and $\Info = \FHilb$. By Atiyah's axioms~\cite{atiyah1988}, $M : \Cob_2 \to \FHilb$ is a symmetric monoidal functor. By the classification of $(1+1)$D TQFTs:
725:\begin{theorem}[$(1+1)$D TQFT classification~\cite{atiyah1988,baezstay2009}]
726:\label{thm:11d-tqft}
744:A \emph{Lawvere theory}~\cite{lawvere1963} is a small category $T$ with finite products, equipped with a distinguished object $X$ such that every object is isomorphic to a finite power $X^n$. A \emph{model} of $T$ in a category $\C$ with finite products is a finite-product-preserving functor $T \to \C$.
757:\label{def:linear-lawvere}
791:\label{sec:open-problems}
796:\item \textbf{Renormalisation as a categorical structure.} Atiyah's TQFT axioms work for finite-dimensional models. A categorical axiomatisation of QFT that handles infinite-dimensional Hilbert spaces and renormalisation, perhaps via Costello--Gwilliam factorisation algebras, remains an open problem of foundational interest~\cite{costello2017}.
797:\item \textbf{Linear dependent type theory and measurement.} A type theory with linear dependent types that is computationally tractable and sound for categorical quantum mechanics with measurements would close the type-theoretic hook $\mathsf{H8}$ at the level needed for Laws~III--IV~\cite{fukishidaselinger2020}.
798:\item \textbf{Cohesive HoTT vs.\ factorisation algebras.} The relationship between Schreiber--Shulman's cohesive HoTT~\cite{schreibershulman2014} and the factorisation-algebra approach to QFT~\cite{costello2017} for flat spacetimes is conjectured but not proven equivalent.
799:\item \textbf{Born rule beyond Gleason.} A purely categorical characterisation of the Born rule, beyond the existing assumption of compact closure with dagger and beyond Gleason's theorem on lattices of projections, remains a foundational target~\cite{abramskycoecke2004}.
803:\label{sec:discussion}
807:Law~I claims a structural fact: \emph{if} matter and information are organised as objects of suitably structured symmetric monoidal categories, \emph{then} their relation is forced to be a strong monoidal dagger functor satisfying the conditions of \cref{def:matter-info}. The hooks $\mathsf{H1}$--$\mathsf{H8}$ are slots; they are not filled by Law~I.
813:\item that the framework is complete. Many of the open problems in \cref{sec:open-problems} are precisely about completion.
818:The framework here is closest in spirit to the categorical quantum mechanics programme of Abramsky--Coecke~\cite{abramskycoecke2004} and the higher-categorical TQFT programme of Lurie~\cite{lurie2009}. The novelty is the explicit declaration of composition hooks: rather than presenting a self-contained mathematical edifice, we present a structured interface designed to be filled by downstream laws. This methodological choice is what makes the programme \emph{modular} rather than unified.
830:\Cref{thm:cobordism} (Cobordism Hypothesis) plays a methodologically distinctive role in our framework: it is a \emph{representability theorem}. It says that every symmetric monoidal $(\infty,n)$-functor out of $\Bord_n^{\mathrm{fr}}$ is represented by its value at the point. We invoke this representability to argue that the matter--information functor $M$ is determined by very little data---in the cobordism case, by the single object $M(\mathrm{pt})$, which must be fully dualisable.
839:\label{sec:conclusion}
844:\item Three structural results: generation of $M$ from a presentation (\cref{thm:generation}), a Born-rule type formula from compact closure (\cref{thm:born}), and sheaf lifting through $M$ (\cref{thm:sheaf-lifting}).

exec
/usr/local/bin/zsh -lc 'rm -rf /tmp/mathematical-formalisms-latex-review && mkdir -p /tmp/mathematical-formalisms-latex-review && latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=/tmp/mathematical-formalisms-latex-review paper.tex' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms
exec
/usr/local/bin/zsh -lc "chktex -q -f '%f:%l:%c:%d:%k:%n:%m\\n' papers/mathematical-formalisms/paper.tex" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 exited 2 in 0ms:
papers/mathematical-formalisms/paper.tex:74:35:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:83:375:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:83:710:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:89:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:93:556:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\npapers/mathematical-formalisms/paper.tex:99:836:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:101:45:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:111:142:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:119:154:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:122:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:129:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:148:15:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:148:20:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:148:32:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:148:39:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:148:59:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:148:66:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:149:15:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:149:20:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:160:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:175:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:188:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:220:161:1:Warning:3:You should enclose the previous parenthesis with `{}'.\npapers/mathematical-formalisms/paper.tex:224:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:231:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:242:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:252:20:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:253:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:260:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:269:130:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\npapers/mathematical-formalisms/paper.tex:274:26:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:275:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:276:15:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:282:109:1:Warning:3:You should enclose the previous parenthesis with `{}'.\npapers/mathematical-formalisms/paper.tex:286:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:290:17:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:290:25:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:290:38:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:290:40:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:290:62:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:290:64:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:291:17:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:291:27:1:Warning:18:Use either `` or '' as an alternative to `"'.\npapers/mathematical-formalisms/paper.tex:304:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:305:105:2:Warning:3:You should enclose the previous parenthesis with `{}'.\npapers/mathematical-formalisms/paper.tex:305:164:2:Warning:3:You should enclose the previous parenthesis with `{}'.\npapers/mathematical-formalisms/paper.tex:325:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:336:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:339:36:1:Warning:3:You should enclose the previous parenthesis with `{}'.\npapers/mathematical-formalisms/paper.tex:345:48:1:Warning:3:You should enclose the previous parenthesis with `{}'.\npapers/mathematical-formalisms/paper.tex:345:75:1:Warning:3:You should enclose the previous parenthesis with `{}'.\npapers/mathematical-formalisms/paper.tex:347:40:1:Warning:3:You should enclose the previous parenthesis with `{}'.\npapers/mathematical-formalisms/paper.tex:347:88:1:Warning:3:You should enclose the previous parenthesis with `{}'.\npapers/mathematical-formalisms/paper.tex:354:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:359:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:365:22:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:366:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:376:28:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:377:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:389:156:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:424:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:433:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:466:330:1:Warning:38:You should not use punctuation in front of quotes.\npapers/mathematical-formalisms/paper.tex:468:447:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:476:23:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:476:33:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:477:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:488:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:504:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:512:210:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:515:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:534:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:545:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:560:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:567:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:576:78:1:Warning:36:You should put a space in front of parenthesis.\npapers/mathematical-formalisms/paper.tex:576:148:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:589:296:1:Warning:38:You should not use punctuation in front of quotes.\npapers/mathematical-formalisms/paper.tex:592:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:594:109:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\npapers/mathematical-formalisms/paper.tex:599:51:2:Warning:3:You should enclose the previous parenthesis with `{}'.\npapers/mathematical-formalisms/paper.tex:613:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:618:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:639:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:643:18:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:643:26:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:645:22:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:645:30:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:646:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:687:89:1:Warning:26:You ought to remove spaces in front of punctuation.\npapers/mathematical-formalisms/paper.tex:689:495:1:Warning:26:You ought to remove spaces in front of punctuation.\npapers/mathematical-formalisms/paper.tex:691:128:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\npapers/mathematical-formalisms/paper.tex:699:121:1:Warning:26:You ought to remove spaces in front of punctuation.\npapers/mathematical-formalisms/paper.tex:703:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:726:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:736:274:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:757:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:769:11:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:769:479:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:773:43:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:773:66:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\npapers/mathematical-formalisms/paper.tex:776:1:22:Warning:44:User Regex: -2:Vertical rules in tables are ugly.\npapers/mathematical-formalisms/paper.tex:778:1:6:Warning:44:User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.\npapers/mathematical-formalisms/paper.tex:785:55:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:791:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:796:243:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:797:282:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:798:93:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:803:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:811:118:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:812:66:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:818:99:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:822:223:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:822:230:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:822:329:1:Warning:9:`]' expected, found `)'.\npapers/mathematical-formalisms/paper.tex:830:334:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:832:198:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:839:1:1:Warning:24:Delete this space to maintain correct pagereferences.\npapers/mathematical-formalisms/paper.tex:841:99:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:843:41:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:845:84:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:856:115:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:859:210:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:867:17:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:867:205:2:Warning:8:Wrong length of dash may have been used.\npapers/mathematical-formalisms/paper.tex:961:1:0:Warning:17:Number of `(' doesn't match the number of `)'!\npapers/mathematical-formalisms/paper.tex:961:1:0:Warning:17:Number of `[' doesn't match the number of `]'!\n
 succeeded in 1920ms:
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./paper.tex
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
 (/private/tmp/mathematical-formalisms-latex-review/paper.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(./paper.out) (./paper.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd) (./paper.toc
[1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}]
[2])

LaTeX Warning: Citation `maclane1998' on page 3 undefined on input line 99.


LaTeX Warning: Citation `costello2017' on page 3 undefined on input line 99.


LaTeX Warning: Citation `baezstay2009' on page 3 undefined on input line 99.

[3]

LaTeX Warning: Reference `sec:preliminaries' on page 1 undefined on input line 
119.


LaTeX Warning: Reference `sec:matter-info-functor' on page 1 undefined on input
 line 119.


LaTeX Warning: Reference `sec:monoidal' on page 1 undefined on input line 119.


LaTeX Warning: Reference `sec:sheaves' on page 1 undefined on input line 119.


LaTeX Warning: Reference `sec:operads' on page 1 undefined on input line 119.


LaTeX Warning: Reference `sec:type-theory' on page 1 undefined on input line 11
9.


LaTeX Warning: Reference `sec:examples' on page 1 undefined on input line 119.


LaTeX Warning: Reference `sec:open-problems' on page 1 undefined on input line 
119.


LaTeX Warning: Reference `sec:conclusion' on page 1 undefined on input line 119
.


LaTeX Warning: Citation `maclane1998' on page 4 undefined on input line 124.


LaTeX Warning: Citation `lurie2009' on page 4 undefined on input line 124.

[4{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc
}]

LaTeX Warning: Citation `lawvere1963' on page 5 undefined on input line 155.


LaTeX Warning: Citation `maclane1998' on page 5 undefined on input line 167.


LaTeX Warning: Citation `maclane1998' on page 5 undefined on input line 174.

[5]

LaTeX Warning: Reference `thm:maclane' on page 1 undefined on input line 183.


LaTeX Warning: Reference `thm:joyal-street' on page 1 undefined on input line 2
01.


LaTeX Warning: Citation `abramskycoecke2004' on page 6 undefined on input line 
220.


LaTeX Warning: Citation `abramskycoecke2004' on page 6 undefined on input line 
225.


LaTeX Warning: Citation `atiyah1988' on page 6 undefined on input line 237.


LaTeX Warning: Citation `baezdolan1995' on page 6 undefined on input line 241.


LaTeX Warning: Citation `lurie2009' on page 6 undefined on input line 241.

[6]
Overfull \hbox (8.29594pt too wide) in paragraph at lines 265--266
\OT1/cmr/m/n/12 ob-jects are \OT1/cmr/m/it/12 information-theoretic re-sources\
OT1/cmr/m/n/12 : clas-si-cal or quan-tum in-for-ma-tion types, presheaves

LaTeX Warning: Citation `maclane1998' on page 7 undefined on input line 282.

[7] [8]

LaTeX Warning: Reference `thm:generation' on page 1 undefined on input line 330
.


LaTeX Warning: Reference `thm:cobordism' on page 1 undefined on input line 330.



LaTeX Warning: Reference `thm:born' on page 1 undefined on input line 351.


LaTeX Warning: Citation `joyalstreet1991' on page 9 undefined on input line 365
.

[9]

LaTeX Warning: Reference `prop:process-state' on page 1 undefined on input line
 389.


LaTeX Warning: Reference `def:compact-closed' on page 1 undefined on input line
 439.

[10]

LaTeX Warning: Reference `sec:matter-info-functor' on page 1 undefined on input
 line 466.


LaTeX Warning: Reference `thm:born' on page 1 undefined on input line 466.


LaTeX Warning: Reference `hook:H7' on page 1 undefined on input line 466.


LaTeX Warning: Citation `abramskycoecke2004' on page 11 undefined on input line
 468.


LaTeX Warning: Citation `pastawski2015' on page 11 undefined on input line 468.



LaTeX Warning: Citation `abramskycoecke2004' on page 11 undefined on input line
 476.


LaTeX Warning: Reference `thm:cpv' on page 1 undefined on input line 481.

[11]

LaTeX Warning: Citation `lawvere1969' on page 12 undefined on input line 500.


LaTeX Warning: Reference `thm:adjoint-naturality' on page 1 undefined on input 
line 512.


LaTeX Warning: Citation `maclane1998' on page 12 undefined on input line 522.

[12]

LaTeX Warning: Citation `maclane1998' on page 13 undefined on input line 544.

[13]

LaTeX Warning: Reference `thm:sheaf-lifting' on page 1 undefined on input line 
576.


Overfull \hbox (1.64401pt too wide) in paragraph at lines 582--583
[]\OT1/cmr/m/it/12 Step 1 (Ge-o-met-ric mor-phism from $\OML/cmm/m/it/12 M$\OT1
/cmr/m/it/12 ). \OT1/cmr/m/n/12 A ge-o-met-ric mor-phism $\OML/cmm/m/it/12 f \O
T1/cmr/m/n/12 : \OMS/cmsy/m/n/12 E ! F$ \OT1/cmr/m/n/12 of Grothendieck

LaTeX Warning: Citation `maclane1998' on page 14 undefined on input line 584.


LaTeX Warning: Reference `thm:sheaf-lifting' on page 1 undefined on input line 
589.

[14]

LaTeX Warning: Citation `costello2017' on page 15 undefined on input line 619.


LaTeX Warning: Citation `costello2017' on page 15 undefined on input line 632.


LaTeX Warning: Citation `lambekscott1986' on page 15 undefined on input line 64
5.

[15]

LaTeX Warning: Reference `sec:examples' on page 1 undefined on input line 663.

[16]

LaTeX Warning: Reference `def:matter-info' on page 1 undefined on input line 69
1.


LaTeX Warning: Citation `fukishidaselinger2020' on page 17 undefined on input l
ine 693.


Overfull \hbox (28.02779pt too wide) in paragraph at lines 694--695
\OT1/cmr/m/n/12 phisms) or a more so-phis-ti-cated ap-proach us-ing in-verse se
m-i-cat-e-gories. Our \OT1/cmtt/m/n/12 DaggerCategory

LaTeX Warning: Reference `sec:open-problems' on page 1 undefined on input line 
696.


LaTeX Warning: Citation `baezstay2009' on page 17 undefined on input line 705.

[17]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 721.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 721.


LaTeX Warning: Citation `atiyah1988' on page 18 undefined on input line 723.


LaTeX Warning: Citation `atiyah1988' on page 18 undefined on input line 725.


LaTeX Warning: Citation `baezstay2009' on page 18 undefined on input line 725.

[18]
Overfull \hbox (18.63275pt too wide) in paragraph at lines 742--742
[]\OT1/cmr/bx/n/14.4 Example 5: Law-vere the-o-ries, lin-ear the-o-ries, and th
e bits/qubits

LaTeX Warning: Citation `lawvere1963' on page 19 undefined on input line 744.

[19]

LaTeX Warning: Citation `costello2017' on page 20 undefined on input line 796.


LaTeX Warning: Citation `fukishidaselinger2020' on page 20 undefined on input l
ine 797.


LaTeX Warning: Citation `schreibershulman2014' on page 20 undefined on input li
ne 798.


LaTeX Warning: Citation `costello2017' on page 20 undefined on input line 798.


LaTeX Warning: Citation `abramskycoecke2004' on page 20 undefined on input line
 799.


LaTeX Warning: Reference `def:matter-info' on page 1 undefined on input line 80
7.

[20]

LaTeX Warning: Reference `sec:open-problems' on page 1 undefined on input line 
813.


LaTeX Warning: Citation `abramskycoecke2004' on page 21 undefined on input line
 818.


LaTeX Warning: Citation `lurie2009' on page 21 undefined on input line 818.


LaTeX Warning: Reference `thm:cobordism' on page 1 undefined on input line 830.


[21]

LaTeX Warning: Reference `thm:generation' on page 1 undefined on input line 844
.


LaTeX Warning: Reference `thm:born' on page 1 undefined on input line 844.


LaTeX Warning: Reference `thm:sheaf-lifting' on page 1 undefined on input line 
844.


Overfull \hbox (4.0706pt too wide) in paragraph at lines 850--851
[]$\OT1/cmr/m/n/12 , $[]$, $[]$, $[]$---to clas-sify ther-mo-dy-namic and topo-
log-i-cal phases as func-tors over symmetry-
[22] [23] [24] (/private/tmp/mathematical-formalisms-latex-review/paper.aux)

LaTeX Warning: There were undefined references.


LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/cm-super/sfrm1200.pfb>
Output written on /private/tmp/mathematical-formalisms-latex-review/paper.pdf (
24 pages, 371615 bytes).
Transcript written on /private/tmp/mathematical-formalisms-latex-review/paper.l
og.
Latexmk: Getting log file '/private/tmp/mathematical-formalisms-latex-review/paper.log'
Latexmk: Examining '/private/tmp/mathematical-formalisms-latex-review/paper.fls'
Latexmk: Examining '/private/tmp/mathematical-formalisms-latex-review/paper.log'
Latexmk: References changed.
Latexmk: Log file says output to '/private/tmp/mathematical-formalisms-latex-review/paper.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/mathematical-formalisms-latex-review/paper.aux
  /private/tmp/mathematical-formalisms-latex-review/paper.out

------------
Run number 2 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/mathematical-formalisms-latex-review"  "paper.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./paper.tex
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
 (/private/tmp/mathematical-formalisms-latex-review/paper.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/private/tmp/mathematical-formalisms-latex-review/paper.out)
(/private/tmp/mathematical-formalisms-latex-review/paper.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/private/tmp/mathematical-formalisms-latex-review/paper.toc [1{/usr/local/texl
ive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4{/usr/local/
texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}] [5]
[6]
Overfull \hbox (8.29594pt too wide) in paragraph at lines 265--266
\OT1/cmr/m/n/12 ob-jects are \OT1/cmr/m/it/12 information-theoretic re-sources\
OT1/cmr/m/n/12 : clas-si-cal or quan-tum in-for-ma-tion types, presheaves
[7] [8] [9] [10] [11] [12] [13]
Overfull \hbox (1.64401pt too wide) in paragraph at lines 582--583
[]\OT1/cmr/m/it/12 Step 1 (Ge-o-met-ric mor-phism from $\OML/cmm/m/it/12 M$\OT1
/cmr/m/it/12 ). \OT1/cmr/m/n/12 A ge-o-met-ric mor-phism $\OML/cmm/m/it/12 f \O
T1/cmr/m/n/12 : \OMS/cmsy/m/n/12 E ! F$ \OT1/cmr/m/n/12 of Grothendieck
[14] [15] [16]
Overfull \hbox (28.02779pt too wide) in paragraph at lines 694--695
\OT1/cmr/m/n/12 phisms) or a more so-phis-ti-cated ap-proach us-ing in-verse se
m-i-cat-e-gories. Our \OT1/cmtt/m/n/12 DaggerCategory
[17]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 721.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 721.

[18]
Overfull \hbox (18.63275pt too wide) in paragraph at lines 742--742
[]\OT1/cmr/bx/n/14.4 Example 5: Law-vere the-o-ries, lin-ear the-o-ries, and th
e bits/qubits
[19] [20] [21]
Overfull \hbox (4.0706pt too wide) in paragraph at lines 850--851
[]$\OT1/cmr/m/n/12 , $[]$, $[]$, $[]$---to clas-sify ther-mo-dy-namic and topo-
log-i-cal phases as func-tors over symmetry-
[22] [23] [24] (/private/tmp/mathematical-formalisms-latex-review/paper.aux) )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/cm-super/sfrm1200.pfb>
Output written on /private/tmp/mathematical-formalisms-latex-review/paper.pdf (
24 pages, 375357 bytes).
Transcript written on /private/tmp/mathematical-formalisms-latex-review/paper.l
og.
Latexmk: Getting log file '/private/tmp/mathematical-formalisms-latex-review/paper.log'
Latexmk: Examining '/private/tmp/mathematical-formalisms-latex-review/paper.fls'
Latexmk: Examining '/private/tmp/mathematical-formalisms-latex-review/paper.log'
Latexmk: Log file says output to '/private/tmp/mathematical-formalisms-latex-review/paper.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/mathematical-formalisms-latex-review/paper.toc

------------
Run number 3 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/mathematical-formalisms-latex-review"  "paper.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./paper.tex
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
 (/private/tmp/mathematical-formalisms-latex-review/paper.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/private/tmp/mathematical-formalisms-latex-review/paper.out)
(/private/tmp/mathematical-formalisms-latex-review/paper.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/private/tmp/mathematical-formalisms-latex-review/paper.toc [1{/usr/local/texl
ive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4{/usr/local/
texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}] [5]
[6]
Overfull \hbox (8.29594pt too wide) in paragraph at lines 265--266
\OT1/cmr/m/n/12 ob-jects are \OT1/cmr/m/it/12 information-theoretic re-sources\
OT1/cmr/m/n/12 : clas-si-cal or quan-tum in-for-ma-tion types, presheaves
[7] [8] [9] [10] [11] [12] [13]
Overfull \hbox (1.64401pt too wide) in paragraph at lines 582--583
[]\OT1/cmr/m/it/12 Step 1 (Ge-o-met-ric mor-phism from $\OML/cmm/m/it/12 M$\OT1
/cmr/m/it/12 ). \OT1/cmr/m/n/12 A ge-o-met-ric mor-phism $\OML/cmm/m/it/12 f \O
T1/cmr/m/n/12 : \OMS/cmsy/m/n/12 E ! F$ \OT1/cmr/m/n/12 of Grothendieck
[14] [15] [16]
Overfull \hbox (28.02779pt too wide) in paragraph at lines 694--695
\OT1/cmr/m/n/12 phisms) or a more so-phis-ti-cated ap-proach us-ing in-verse se
m-i-cat-e-gories. Our \OT1/cmtt/m/n/12 DaggerCategory
[17]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 721.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 721.

[18]
Overfull \hbox (18.63275pt too wide) in paragraph at lines 742--742
[]\OT1/cmr/bx/n/14.4 Example 5: Law-vere the-o-ries, lin-ear the-o-ries, and th
e bits/qubits
[19] [20] [21]
Overfull \hbox (4.0706pt too wide) in paragraph at lines 850--851
[]$\OT1/cmr/m/n/12 , $[]$, $[]$, $[]$---to clas-sify ther-mo-dy-namic and topo-
log-i-cal phases as func-tors over symmetry-
[22] [23] [24] (/private/tmp/mathematical-formalisms-latex-review/paper.aux) )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/cm-super/sfrm1200.pfb>
Output written on /private/tmp/mathematical-formalisms-latex-review/paper.pdf (
24 pages, 375357 bytes).
Transcript written on /private/tmp/mathematical-formalisms-latex-review/paper.l
og.
Latexmk: Getting log file '/private/tmp/mathematical-formalisms-latex-review/paper.log'
Latexmk: Examining '/private/tmp/mathematical-formalisms-latex-review/paper.fls'
Latexmk: Examining '/private/tmp/mathematical-formalisms-latex-review/paper.log'
Latexmk: Log file says output to '/private/tmp/mathematical-formalisms-latex-review/paper.pdf'
Latexmk: All targets (/private/tmp/mathematical-formalisms-latex-review/paper.pdf) are up-to-date


codex
The first compile pass completed far enough for diagnostics and `latexmk` is rerunning for cross-references. The static lint output has a lot of false positives around math notation, so I’m going to separate actual build/layout issues from style-only suggestions.
exec
/usr/local/bin/zsh -lc "nl -ba papers/mathematical-formalisms/paper.tex | sed -n '250,276p;570,590p;686,704p;716,748p;770,790p;846,854p'" in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
   250	We use the cobordism hypothesis as a representability principle: physical functors are determined by where they send the point, provided we work in a setting with enough duals.
   251	
   252	\section{The Matter--Information Functor}
   253	\label{sec:matter-info-functor}
   254	
   255	The central object of Law~I is a structure-preserving functor $M : \Phys \to \Info$. We now define its domain, codomain, and structural conditions.
   256	
   257	\subsection{The categories \texorpdfstring{$\Phys$}{Phys} and \texorpdfstring{$\Info$}{Info}}
   258	
   259	\begin{definition}[$\Phys$]
   260	\label{def:phys}
   261	The category $\Phys$ is a symmetric monoidal dagger category whose objects are \emph{physical systems}, abstractly characterised. Morphisms are \emph{processes}: arbitrary linear, completely positive, or unitary maps depending on context. The tensor product is composition of independent systems; $\dagger$ encodes time-reversal/adjoint; $I$ is the trivial system.
   262	\end{definition}
   263	
   264	\begin{definition}[$\Info$]
   265	The category $\Info$ is a symmetric monoidal dagger category whose objects are \emph{information-theoretic resources}: classical or quantum information types, presheaves on a poset of measurement contexts, or sections of a sheaf of state spaces. Morphisms are information-preserving (or information-monotone) processes.
   266	\end{definition}
   267	
   268	\begin{remark}
   269	We do not commit to a single concrete realisation of $\Phys$ or $\Info$. Different choices give different instantiations of Law~I; what is universal is the \emph{type} of the functor $M$ and the structural properties it must preserve.
   270	\end{remark}
   271	
   272	\subsection{Definition of \texorpdfstring{$M$}{M}}
   273	
   274	\begin{definition}[Matter--information functor]
   275	\label{def:matter-info}
   276	A \emph{matter--information functor} is a strong monoidal dagger functor $M : \Phys \to \Info$. That is, $M$ is a functor equipped with natural isomorphisms
   570	\item $\Phys$ is equivalent to the Grothendieck topos $\mathbf{Sh}(\C_\Phys, J_\Phys)$ of sheaves on a small site;
   571	\item $\Info$ is equivalent to a Grothendieck topos $\mathbf{Sh}(\C_\Info, J_\Info)$;
   572	\item $M : \Phys \to \Info$ is a strong monoidal dagger functor that, in addition, preserves finite limits and arbitrary small colimits.
   573	\end{enumerate}
   574	\emph{Conclusion.} Then $M$ arises as the inverse-image part $m^*$ of a geometric morphism of topoi, induced by a unique morphism of sites $m : (\C_\Info, J_\Info) \to (\C_\Phys, J_\Phys)$. That is, $M = m^* : \mathbf{Sh}(\C_\Phys, J_\Phys) \to \mathbf{Sh}(\C_\Info, J_\Info)$.
   575	
   576	\emph{Scope.} \Cref{thm:sheaf-lifting} applies only when the hypotheses (1)--(3) hold; in particular it is not a structural fact about every matter--information functor, but only about those for which $\Phys$ and $\Info$ admit a topos-theoretic presentation. Laws~II and~IV use the theorem in regimes where these hypotheses are met.
   577	\end{theorem}
   578	
   579	\begin{proof}
   580	The argument proceeds in three steps.
   581	
   582	\emph{Step 1 (Geometric morphism from $M$).} A geometric morphism $f : \E \to \mathcal{F}$ of Grothendieck topoi is by definition an adjunction $f^* \dashv f_*$ in which the left adjoint $f^*$ preserves finite limits. Conversely, given a finite-limit-preserving cocontinuous functor $M : \Phys \to \Info$, the special adjoint functor theorem (applicable because $\Phys$ is locally small with all small colimits) supplies a right adjoint $M_R : \Info \to \Phys$, and the pair $(M, M_R) = (m^*, m_*)$ is a geometric morphism $\Info \to \Phys$.
   583	
   584	\emph{Step 2 (Site morphism inducing $m^*$).} By the Comparison Lemma~\cite{maclane1998}, a geometric morphism $\Info \to \Phys$ between sheaf topoi on small sites is determined by its restriction to the (full subcategories of) representable sheaves. The Yoneda embedding $y_\Phys : \C_\Phys \hookrightarrow \mathbf{Sh}(\C_\Phys, J_\Phys)$ is fully faithful, and similarly for $\Info$. Pulling $m^*$ back along $y_\Phys$ and using the universal property of sheafification gives a unique functor $m : \C_\Info \to \C_\Phys$ such that $m^* (y_\Phys(c)) = a(y_\Info(\overline{m}(c)))$ for some lift $\overline{m}$, where $a$ is sheafification. This $m$ is the site morphism in the statement, and the direction is forced: the inverse-image part of a geometric morphism between sheaf topoi corresponds at the site level to a functor running in the \emph{opposite} direction.
   585	
   586	\emph{Step 3 (Uniqueness).} Any other site morphism $m'$ inducing the same $m^*$ would give the same restriction to representables (by Yoneda), hence agree with $m$. Uniqueness follows.
   587	\end{proof}
   588	
   589	\Cref{thm:sheaf-lifting} is the formal statement that local-observable structure is preserved by $M$. The geometric-morphism formulation makes explicit that $M$ behaves like the topos-theoretic ``pullback of observables along a generalised continuous map between informational and physical sites.''
   590	
   686	
   687	\paragraph{Concretely realising the monoidal product.} The type signature \texttt{tensor :: cat a b -> cat c d -> cat (a,c) (b,d)} uses Haskell's built-in product type \texttt{(,)} to realise the monoidal product at the type level. This is a deliberate choice: in our concrete instance \texttt{Fn} (Hask + total functions), the categorical product \emph{is} the Haskell pair, so \texttt{(a,c)} really is the image of $a \otimes c$ on objects. For other instances (e.g.\ a future linearly-typed \texttt{LinFn}) one would replace the pair with a dedicated linear-tensor type constructor; the type class's signature would then read \texttt{cat a b -> cat c d -> cat (a $\otimes$ c) (b $\otimes$ d)} for that instance's tensor. The pair-based version above is the cartesian special case.
   688	
   689	A note on the encoding of the object component. In Haskell, the object mapping of a functor cannot be made first-class without dependent types: objects of $\Phys$ would need to be Haskell types, and a functor's object map would need to be a type-level function. We follow the standard pragmatic idiom: the type parameter \texttt{f a} carries the object information at the type level (so \texttt{f a} \emph{is} the image of object \texttt{a} under the functor), and the dummy method \texttt{fobj :: f a -> ()} merely witnesses this assignment for the type-class machinery. Readers steeped in pure category theory should read \texttt{fobj} as a phantom artefact of Haskell's stratification of types and values; the genuine ``object component'' of the functor is the type-level function \texttt{a $\mapsto$ f a}.
   690	
   691	\paragraph{Scope and limitations of the Haskell encoding.} The encoding above captures the \emph{categorical skeleton} of Law~I: identity, composition, the monoidal product, and the strong-monoidal functor signature. It does \emph{not} capture two structural ingredients of \cref{def:matter-info}:
   692	\begin{enumerate}
   693	\item \emph{Linearity.} Standard Haskell types support unrestricted contraction and weakening (variables can be duplicated and discarded), which is incompatible with the no-cloning and no-deletion theorems of quantum mechanics. Concretely: a Haskell function \texttt{a -> b} can in general duplicate or discard its argument, but if \texttt{a} and \texttt{b} are intended to model quantum states then this would correspond to a copying or deleting channel, which is not a structure-preserving morphism in $\FHilb$. A faithful encoding therefore requires the GHC \texttt{LinearTypes} extension (GHC 9.0+) or a dedicated linear-type framework such as Proto-Quipper-M~\cite{fukishidaselinger2020}.
   694	\item \emph{Dagger.} The dagger functor $\dagger$ is involutive and identity-on-objects. Encoding it requires either a wrapper type (\texttt{Dagger cat a b} as a pair of forward and backward morphisms) or a more sophisticated approach using inverse semicategories. Our \texttt{DaggerCategory} type class supplies the signature but does not enforce involutivity at the type level.
   695	\end{enumerate}
   696	Consequently, the executable-encoding hook $\mathsf{H8}$ is realised at the level of the categorical skeleton; full realisation, including linearity and dagger involution, is one of the open problems we list in \cref{sec:open-problems}. The property test suite (in-house, QuickCheck-style; see the companion package) verifies the category and monoidal laws on the present skeleton.
   697	
   698	\begin{hook}[Dagger hook $\mathsf{H6}$, Floquet hook $\mathsf{H3}$]
   699	The dagger hook $\mathsf{H6}$ is supplied by an additional type class \texttt{DaggerCategory} with method \texttt{dagger :: cat a b -> cat b a}; the Floquet hook $\mathsf{H3}$ is supplied by a one-object category \texttt{newtype B Z = B Integer} together with a functor \texttt{B Z -> Aut Phys}. Both are realised in the companion code.
   700	\end{hook}
   701	
   702	\section{Worked Examples}
   703	\label{sec:examples}
   704	
   716	\item $\mathsf{H6}$: $\dagger$ is the Hilbert-space adjoint.
   717	\item $\mathsf{H7}$: $H^* = \overline{H}$, $\eta$ and $\varepsilon$ are Bell pairing.
   718	\item $\mathsf{H8}$: the internal language is multiplicative linear logic.
   719	\end{itemize}
   720	
   721	\subsection{Example 2: $(1{+}1)$D TQFT}
   722	
   723	Let $\Phys = \Cob_2$ and $\Info = \FHilb$. By Atiyah's axioms~\cite{atiyah1988}, $M : \Cob_2 \to \FHilb$ is a symmetric monoidal functor. By the classification of $(1+1)$D TQFTs:
   724	
   725	\begin{theorem}[$(1+1)$D TQFT classification~\cite{atiyah1988,baezstay2009}]
   726	\label{thm:11d-tqft}
   727	$(1+1)$D TQFTs are in bijection with finite-dimensional commutative Frobenius algebras: $M$ is determined by $A := M(S^1)$, which inherits a commutative Frobenius algebra structure from the pair-of-pants and cap cobordisms.
   728	\end{theorem}
   729	
   730	\begin{proof}[Proof sketch]
   731	The pair-of-pants cobordism $S^1 \sqcup S^1 \to S^1$ gives multiplication $\mu : A \otimes A \to A$; the reversed pair-of-pants gives comultiplication; the cap and cocap give unit and counit. Frobenius and commutativity follow from the topological identities on the bordisms.
   732	\end{proof}
   733	
   734	\subsection{Example 3: presheaves on a poset}
   735	
   736	Let $\C$ be a finite poset (e.g.\ a Boolean lattice of measurement contexts) and let $\Info = \mathbf{PSh}(\C) = \mathbf{Sh}(\C, J_{\mathrm{trivial}})$. The Yoneda embedding $y : \C \to \mathbf{PSh}(\C)$ exhibits every object of $\C$ as a representable presheaf. The matter--information functor is then a Grothendieck construction: given a fibration of categories over $\C$, take fibrewise data.
   737	
   738	\subsection{Example 4: little disks operad on a Hilbert space}
   739	
   740	Let $A \in \FHilb$ be a vector space carrying an $E_2$-algebra structure (e.g.\ a vertex operator algebra for $\mathrm{Vir}_c$). The operadic hook $\mathsf{H5}$ assigns each pair of disjoint disks $D_1, D_2 \subset D$ a multiplication $A \otimes A \to A$ depending continuously on the configuration. This is the seed of Law~IV's holographic factorisation algebras.
   741	
   742	\subsection{Example 5: Lawvere theories, linear theories, and the bits/qubits asymmetry}
   743	
   744	A \emph{Lawvere theory}~\cite{lawvere1963} is a small category $T$ with finite products, equipped with a distinguished object $X$ such that every object is isomorphic to a finite power $X^n$. A \emph{model} of $T$ in a category $\C$ with finite products is a finite-product-preserving functor $T \to \C$.
   745	
   746	For classical bits, take $T_{\mathrm{Bit}}$ to be the Lawvere theory generated by morphisms
   747	\[
   748	\mathrm{copy} : X \to X \times X,\qquad \mathrm{xor} : X \times X \to X,\qquad 0, 1 : * \to X,
   770	
   771	\subsection{Lifting points for downstream laws}
   772	
   773	We collect the lifting points that Laws~II--IV inherit from Law~I:
   774	
   775	\begin{center}
   776	\begin{tabular}{l|l|l}
   777	Hook & Used by & Realisation in series \\
   778	\hline
   779	$\mathsf{H1}$ Symmetry & II, III & $G$-action on Hamiltonians; Floquet $\mathbb{Z}$-action \\
   780	$\mathsf{H2}$ Hamiltonian & II, III & Gapped phase classifier; adiabatic deformations \\
   781	$\mathsf{H3}$ Floquet & III & $B\mathbb{Z}$-functors and natural transformations \\
   782	$\mathsf{H4}$ Sheaf & II, IV & Local order parameters; CFT data \\
   783	$\mathsf{H5}$ Operadic & IV & Factorisation algebras; vertex operators \\
   784	$\mathsf{H6}$ Dagger & III, IV & Unitarity; QEC code structure \\
   785	$\mathsf{H7}$ Compact & IV & Trace, partial trace; Ryu--Takayanagi \\
   786	$\mathsf{H8}$ Type-theory & II, III, IV & Executable encodings \\
   787	\end{tabular}
   788	\end{center}
   789	
   790	\section{Open Problems}
   846	\item A Haskell encoding of the categorical skeleton with QuickCheck property tests for the category and monoidal laws.
   847	\item Worked examples drawn from $\FHilb$, the cobordism category, presheaves on a poset, and the little-disks operad.
   848	\end{enumerate}
   849	
   850	The next paper in the series, Law~II (\emph{Phase-bound Matter}), uses these hooks---particularly $\mathsf{H1}$, $\mathsf{H2}$, $\mathsf{H4}$, $\mathsf{H8}$---to classify thermodynamic and topological phases as functors over symmetry-group categories.
   851	
   852	\subsection{Compositional roadmap}
   853	
   854	The four-paper modular series composes its laws in the following order:

exec
/usr/local/bin/zsh -lc 'rg -n "(Warning|Overfull|Underfull|undefined|multiply defined|Rerun|Error|Fatal|Missing|Token not allowed)" /tmp/mathematical-formalisms-latex-review/paper.log' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
exec
/usr/local/bin/zsh -lc 'rg -n "math shift|pdfstring|Overfull|Underfull|everypage|undefined references|undefined citations|Token not allowed" /tmp/mathematical-formalisms-latex-review/paper.log /tmp/mathematical-formalisms-latex-review/paper.aux /tmp/mathematical-formalisms-latex-review/paper.out' in /Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics
 succeeded in 0ms:
575:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
623:Package everypage Warning: Functionality similar to this package has recently
629:Package everypage Warning: You appear to be running a version of LaTeX
749:Overfull \hbox (8.29594pt too wide) in paragraph at lines 265--266
755:Overfull \hbox (1.64401pt too wide) in paragraph at lines 582--583
762:Overfull \hbox (28.02779pt too wide) in paragraph at lines 694--695
769:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
773:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
777:Overfull \hbox (18.63275pt too wide) in paragraph at lines 742--742
783:Overfull \hbox (4.0706pt too wide) in paragraph at lines 850--851

 succeeded in 0ms:
/tmp/mathematical-formalisms-latex-review/paper.log:619:(/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty
/tmp/mathematical-formalisms-latex-review/paper.log:620:Package: everypage 2020/10/17 R2.0b Hooks to run on every page
/tmp/mathematical-formalisms-latex-review/paper.log:623:Package everypage Warning: Functionality similar to this package has recently
/tmp/mathematical-formalisms-latex-review/paper.log:624:(everypage)                been implemented in LaTeX. This package is now in
/tmp/mathematical-formalisms-latex-review/paper.log:625:(everypage)                legacy status.
/tmp/mathematical-formalisms-latex-review/paper.log:626:(everypage)                Please, don't use it in new documents and packages.
/tmp/mathematical-formalisms-latex-review/paper.log:629:Package everypage Warning: You appear to be running a version of LaTeX
/tmp/mathematical-formalisms-latex-review/paper.log:630:(everypage)                providing the new functionality.
/tmp/mathematical-formalisms-latex-review/paper.log:631:(everypage)                Doing the best to deliver the original `everypage`
/tmp/mathematical-formalisms-latex-review/paper.log:632:(everypage)                interface on top of it. Strict equivalence is
/tmp/mathematical-formalisms-latex-review/paper.log:633:(everypage)                not possible, breakage may occur.
/tmp/mathematical-formalisms-latex-review/paper.log:634:(everypage)                If truly needed, Use `everypage-1x` to force the
/tmp/mathematical-formalisms-latex-review/paper.log:635:(everypage)                loading of an older code base.
/tmp/mathematical-formalisms-latex-review/paper.log:749:Overfull \hbox (8.29594pt too wide) in paragraph at lines 265--266
/tmp/mathematical-formalisms-latex-review/paper.log:755:Overfull \hbox (1.64401pt too wide) in paragraph at lines 582--583
/tmp/mathematical-formalisms-latex-review/paper.log:762:Overfull \hbox (28.02779pt too wide) in paragraph at lines 694--695
/tmp/mathematical-formalisms-latex-review/paper.log:769:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/mathematical-formalisms-latex-review/paper.log:770:(hyperref)                removing `math shift' on input line 721.
/tmp/mathematical-formalisms-latex-review/paper.log:773:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/mathematical-formalisms-latex-review/paper.log:774:(hyperref)                removing `math shift' on input line 721.
/tmp/mathematical-formalisms-latex-review/paper.log:777:Overfull \hbox (18.63275pt too wide) in paragraph at lines 742--742
/tmp/mathematical-formalisms-latex-review/paper.log:783:Overfull \hbox (4.0706pt too wide) in paragraph at lines 850--851

codex
Read-only review of [paper.tex](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex). `latexmk -pdf` completes after reruns. No fatal compilation errors, missing packages, unresolved citations/references, or underfull boxes remain.

Issues found:

1. [paper.tex:21](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:21), [paper.tex:57](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:57): `everypage` is legacy and warns on current LaTeX.
   Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` with kernel hooks, e.g. `\AddToHook{shipout/foreground}{...}`.

2. [paper.tex:265](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:265): overfull hbox, 8.3pt, from the long `\Info` definition sentence.
   Fix: split after “information-theoretic resources” or move the examples into an itemized/list sentence.

3. [paper.tex:582](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:582): minor overfull hbox, 1.6pt, caused by the inline “Step 1” heading plus dense math.
   Fix: put the step heading on its own line/paragraph before the sentence.

4. [paper.tex:687](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:687), [paper.tex:689](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:689): `\texttt{...}` contains inline math like `$\\otimes$` / `$\\mapsto$`, producing inconsistent code styling.
   Fix: use `\verb|...|` for code-only snippets, or move math outside `\texttt`.

5. [paper.tex:694](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:694): overfull hbox, 28.0pt, from unbreakable `\texttt{DaggerCategory}`.
   Fix: rewrite the sentence so the token starts earlier, or use `\texttt{Dagger\allowbreak{}Category}`.

6. [paper.tex:721](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:721): `hyperref` warns because math appears in a PDF bookmark title.
   Fix: `\subsection{Example 2: \texorpdfstring{$(1{+}1)$D}{(1+1)D} TQFT}`.

7. [paper.tex:742](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:742): overfull hbox, 18.6pt, from the long subsection title.
   Fix: shorten the title, e.g. “Example 5: Lawvere and linear theories,” and move “bits/qubits asymmetry” into the first paragraph.

8. [paper.tex:776](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:776), [paper.tex:778](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:778): table styling uses vertical rules and `\hline`, inconsistent with polished paper formatting.
   Fix: add `\usepackage{booktabs}`, change `{l|l|l}` to `{lll}`, and use `\toprule`, `\midrule`, `\bottomrule`.

9. [paper.tex:850](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:850): overfull hbox, 4.1pt, from dense inline hook notation.
   Fix: replace the em-dash aside with a shorter phrase or put the hook list in display math.
2026-04-30T16:47:00.681763Z ERROR codex_core::session: failed to record rollout items: thread 019ddf47-bea4-7fb3-8d62-cde931a7f84d not found
tokens used
94,954
Read-only review of [paper.tex](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex). `latexmk -pdf` completes after reruns. No fatal compilation errors, missing packages, unresolved citations/references, or underfull boxes remain.

Issues found:

1. [paper.tex:21](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:21), [paper.tex:57](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:57): `everypage` is legacy and warns on current LaTeX.
   Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` with kernel hooks, e.g. `\AddToHook{shipout/foreground}{...}`.

2. [paper.tex:265](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:265): overfull hbox, 8.3pt, from the long `\Info` definition sentence.
   Fix: split after “information-theoretic resources” or move the examples into an itemized/list sentence.

3. [paper.tex:582](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:582): minor overfull hbox, 1.6pt, caused by the inline “Step 1” heading plus dense math.
   Fix: put the step heading on its own line/paragraph before the sentence.

4. [paper.tex:687](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:687), [paper.tex:689](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:689): `\texttt{...}` contains inline math like `$\\otimes$` / `$\\mapsto$`, producing inconsistent code styling.
   Fix: use `\verb|...|` for code-only snippets, or move math outside `\texttt`.

5. [paper.tex:694](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:694): overfull hbox, 28.0pt, from unbreakable `\texttt{DaggerCategory}`.
   Fix: rewrite the sentence so the token starts earlier, or use `\texttt{Dagger\allowbreak{}Category}`.

6. [paper.tex:721](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:721): `hyperref` warns because math appears in a PDF bookmark title.
   Fix: `\subsection{Example 2: \texorpdfstring{$(1{+}1)$D}{(1+1)D} TQFT}`.

7. [paper.tex:742](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:742): overfull hbox, 18.6pt, from the long subsection title.
   Fix: shorten the title, e.g. “Example 5: Lawvere and linear theories,” and move “bits/qubits asymmetry” into the first paragraph.

8. [paper.tex:776](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:776), [paper.tex:778](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:778): table styling uses vertical rules and `\hline`, inconsistent with polished paper formatting.
   Fix: add `\usepackage{booktabs}`, change `{l|l|l}` to `{lll}`, and use `\toprule`, `\midrule`, `\bottomrule`.

9. [paper.tex:850](/Users/mlong/Documents/Development/magneton_work/emergent-spacetime-dynamics/papers/mathematical-formalisms/paper.tex:850): overfull hbox, 4.1pt, from dense inline hook notation.
   Fix: replace the em-dash aside with a shorter phrase or put the hook list in display math.
