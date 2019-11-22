#lang slideshow/simple

Programação Funcional? 
# Hello, World!

O que é Programação Funcional?
# O que é Programação Funcional?

Eu tenho que deixar tudo de lado?
# Eu tenho que deixar tudo de lado?

OOP?
# OOP?

Programação Procedural?
# Programação Procedural?

Logica??
# Logica??

Nada Disso
# Nada Disso

Motivos
# Motivos

Custo Por GB
# Custo Por GB

Manutenbilidade
# Manutenbilidade

Resiliencia a Mudanças
# Resiliencia a Mudanças

Escalabilidade
# Escalabilidade

Poder Computacional
# Poder Computacional

Do que se trada Afinal?
# Do que se trada Afinal?

Funções
# Funções

Funções de Primeira Ordem
# Funções de Primeira Ordem

O que seria?
# O que seria?

Passagem de Funções como Parametro
# Passagem de Funções como Parametro

\>>> def myapply(func, arg):
\...     func( arg )
\...
\>>> myapply (lambda x: print (x),
\...                  "Ola Mundo")
Ola Mundo
# Passando Funcao como Parametro

Retorno de Função
# Retorno de Funcao

\>>> def composition (some, func):
\...   return lambda x: func(some(x))
\...
# Compositor


\>>> def mysoma (x):
\...     return lambda y: x + y
\...
\>>> def mymulti (x):
\...     return lambda y: x * y
\...
# Ex Soma + multiplicação

\>>> soma2 = mysoma ( 2 )
\>>> multi3 = mymulti ( 3 )
\>>> soma2mult3 = composition (soma2, multi3)
\>>> soma2mult3 ( 32 )
102
# Encapsulamento

Closure
# Closure

Constantes
# Constantes

Porque?
# Porque?

Side Effects
# Side Effects

O que é isso ?
# O que é isso ?

O que é uma função Afinal??
# O que é uma função Afinal??

f ( x ) = x + 2
# função matematica

Conjuntos
# Conjuntos

!conjuntos.png

O Que é Side Effects?
# O Que é Side Effects?

Mudança de estado
# Mudança de estado

Turing Machine
# Turing Machine

Estate Machine
# Estate Machine

Exemplo
# Exemplo

\>>> def change (x, y):
\...    soma = x + y
\...    return soma
\...
\>>> change ( 2, 3 )
5
# Example of SideEffects

So Isso?
# So Isso?

Acabou?
# Acabou?

Recursão
# Recursão

O que é?
# O que é?

> Um padrão que soluciona um problema em tempo finito em termos de si mesmo
# O que é recursão

Que Diabos é Isso.
# Que Diabos é Isso.

\>>> def fact ( num ):
\...     if num = 1:
\...        return num
\...     return num * fact ( num - 1 )
\...
\>>> fact ( 5 )
120
# Função recursiva

Como funciona?
# Como funciona?

Stack
# Stack!

\>>> fact ( 5 )
\=> fact ( 5 )
\=> 5 * fact ( 4 ) 
\=> 5 * 4 * fact ( 3 )
\=> 5 * 4 * 3 * fact ( 2 )
\=> 5 * 4 * 3 * 2 * fact ( 1 )
\=> 5 * 4 * 3 * 2 * 1
# Recursão na stack


\=> 5 * 4 * 3 * 2
\=> 5 * 4 * 6
\=> 5 * 24
\=> 120
# Continuacao da Stack

tem mais?
# tem mais?

- Tail Recursion (Recursão em Calda)
- Tail Optimization
- Acumulation Passing by Style
- Continuation Passing by Style
- call/cc (Scheme)
# Tipos de Recursão

Aplicações?
# Aplicações?

- Arvores
- map, reduce, filter
- Data Mining / Big Data
- Lambda Calculos
- Everything your Desire...
# Aplicações Frequentes

E...
# e

- monads
- typetheory
- ...

É isso pessoal
# So isso pessoal

https://github.com/haller218
    /HylangPresentation
# repo









