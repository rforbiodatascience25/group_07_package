
<!-- README.md is generated from README.Rmd. Please edit that file -->

## INTRODUCTION

The library *centralDogma* provides different functions that allow the
user to generate random DNA sequences, transcribe them, extract codons
and generate base density plots, among others. The functions are below
explained.

## FUNCTIONS

#### RANDOM_SEQ

This functions creates a random DNA sequence (no uracil). The length of
the sequence is the input from the user. **Arguments**: base_pairs - an
integer that declares the length of the desired DNA sequence.

#### TRANSCRIBE

This function uses a DNA sequence as input and returns its corresponding
transcribed ARN by substituting “T” by “U”. **Arguments**: DNA -
sequence of DNA to transcribe.

#### GIVE_CODONS

The give_codons() function splits a DNA or RNA sequence into
non-overlapping codons — groups of three consecutive nucleotides —
starting from a user-defined reading frame. It is useful for translating
nucleotide sequences into codon triplets for further analysis, such as
identifying start and stop codons, calculating codon frequencies, or
preparing data for translation into amino acids.

**Arguments**: sequence — a character string containing the nucleotide
sequence (e.g., “ATGCCCGTA”). frame — an integer (1, 2, or 3) indicating
the reading frame from which to start codon extraction. The default is
1.

**Returns**: A character vector of codons (three-letter strings). Bases
that do not form a complete codon at the end of the sequence are
ignored.

#### INPUT_DNA

This function will enter a DNA triplette sequence and output the
corresponding one-letter amino acid. Can also function with sequences of
DNA, outputting several amino acids.

#### BASE_DENSITY

This function plots the count of each base in the provided sequence (can
work with any kind of sequence)
