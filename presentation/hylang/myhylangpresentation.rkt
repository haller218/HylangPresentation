#lang slideshow/simple

Python e Lisp:
Como unir dois mundos
# Como unir dois mundos

DISCLAIMER
# DISCLAIMER

Python?
# Python?

Everyone Nows
# Everyone Knows

Lisp
# Lisp

########## Introduction
##################

Lisp?
# Mas o que seria lisp?

LISt Processor
# Significado de lisp

John McCarthy
# Criador da linguagem

!johnMcCarthy.jpg
# John McCarthy Image

MIT: IA Research Group
# MIT

60's
# Ano de publicação dos papers

!lispRecursive.png
# Imagem do primeiro paper sobre lisp

59's
# Desenvolvimento do primeiro interpretador

!programswithcommonsense.png
# Paper to introduce a inteligence machines

# !lisp.john.mccarthy.png
# Code of John McCarthy Paper

Influences
# Influences

IBM 704
# Computador de programação do primeiro lisp

#!https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=3&cad=rja&uact=8&ved=2ahUKEwiWkanBtd7kAhUJjqQKHYgzAvAQwqsBMAJ6BAgJEAk&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DPR1Wb8czpYw&usg=AOvVaw2R1aeXodM621l60BS-eimw
# Link for a video

IPL 2
# Assembly Language inspiration for lisp
# The language is created in 1956

Lambda Calculos
# Impired by the creation of Alonzo Church

Alonzo Church
# Alonzo Church

((parentheses))
# So mooth parentheses

(((Why so many parentheses?!)))
# (())

Syntax
# Syntax

- Atom
- Symbol
- List
# Syntax

Atom?
# Atom?

\> 5
5
\> 42
42
# Atoms values by it self

Symbol?
# Symbol?

\> 'somethingelsewhere
somethingelsewhere
\> 'a
a
\> '42
42
# Symbols where

List?
# List?

\> '(1 2 3 4)
(1 2 3 4)
\> (list 15 48 'b 32)
(15 48 B 32)
# >\ lists

Operators?
# Operators?

S-expression
# Symbol Expression

(<operand> <arg1>...<argN>)
# Form of expressions

\=> (+ 2 3 1)
6
\=> (* 4 2 6)
48
# Operators

#### Apresent Language

Hy
# Hy lang Presentation

Lisp dialect
# Lisp dialect

Embedded in Python
# Embedded in Python

Python abstract syntax tree
# Python abstract syntax tree



####### Datatypes
###############

Datatypes
# Datatypes

  History
  Introduction
\> Datatypes
  Comparation
# Index hiet

Same Data Types
# Same Data Types

Array
# Array

\=> [1 2 3 4]
[1 2 3 4]
# array hiet

Tuples
# Tuples

\=> (, 1 2 3 4)
(1, 2, 3, 4)
# Tuple in hylang

Dictionary
# Dictionary

\=> {"dog" "bark"
... "cat" "meow"}
{'dog': 'bark', 'cat': 'meow'}
# Dictionary data

##### Functions , condictionais
##################

Functions?
# Functions?

In Python
# In Python

\>>> def hello():
\...     print "Hello World!"
Hello World! 

In Hy
# In Hy

\=> (defn hello [ ]
\...   (print "Hello World!"))
\=> (hello)
Hello World!
# Procedures execution and definition

Conditional?
# Conditional?

In Python
# In Python

\>>> if 2 > 3:
\...     True
\...  else:
\...     False
False

In Hy
# In Hy

\=> (if True 1)
1
\=> (cond [(= 2 3) 0]
\...      [(> 3 2) 2]
\...      [True print("Ok")])
2

Lambda?
# Lambda?

( fn [ arg ] body )
# Lambda Definition

\=> ( ( fn [ x ] x ) "Hy From Her!" )
Hy From Her
\=> ( ( fn [ y n ]
\...  ( + y n ) ) 4 5 )
9
# Lambda Execution

( fn [ x ] x ) === lambda x: x
# Equivalencia com Python

Objects?
# Objects?

\=> (defclass Cat [ ]
\...    [age None
\...     colour None]
\...    (defn speak [ ]
\...      (print "Meow")))
# Class Definition

\=> (setv spok (Cat))
\=> (setv spok.age 5)
\=> (.speak spok)
Meow
# Class operation

Recursion?
# Recursion?

\=> (defn fact [n]
\...   (defn fact-aps [n acc]
\...    (cond
\...      [(= n 1) acc]
\...      [True
\...       (fact-aps (- n 1) (* acc n))]))
\...  (fact-aps n 1))
# DEfine function

\=> (fact 5)
120
\=> (fact 30)
26525285981219105...
# Call REcursion in Hy

########### Comparation
#####################

Diferences from other Lisps
# Diferences from other Lisps

No car, cdr, Lambda
# No contains

But first, rest, second, fn
# but contains 

No Fully Recursion
# No Fully Recursion

From Python ?
# compare to python

import Works?
# import Works?

Yes!
# Yes!

Bytecode compatible inter python files
# Bytecode compatible

Meta Programing in Python
# Meta Programing in Python

Macros
# Macros

Macros?
# Macros?

\=> (defmacro simplemacro [reps]
\...  `(print (* ~reps ~reps)))
\=> (simplemacro 4)
16
# Defining a macro


\=> (defmacro ap-map [form lst]
\... (setv v (gensym 'v)
\...       f (gensym 'f))
\... `((fn []
\...        (defn ~f [it] ~form)
\...        (for [~v ~lst]
\...          (yield (~f ~v))))))
# Custom macros



https://github.com/haller218
/HylangPresentation.git
# This apresentation

https://github.com/haller218
# My Github ><

