Class 12: Structural Bioinformatics Part I
================

## PDB Statistics

Here we inspect the types of structures in the main database for
biomolecular data - the PDB.

### Questions:

**Q1: Determine the percentage of structures solved by X-Ray and
Electron Microscopy.**

``` r
# Read in .csv file  
stats <- read.csv("Data Export Summary.csv", row.names=1)

# Calculate percentage
ans <- stats$Total/sum(stats$Total) * 100
names(ans) <- rownames(stats)
round(ans, 2)
```

    ##               X-Ray                 NMR Electron Microscopy               Other 
    ##               88.95                8.04                2.72                0.19 
    ##        Multi Method 
    ##                0.10

**– Also can you determine what proportion of structures are protein?**

``` r
# Calculate percentage of proteins
proteins <- sum(stats$Proteins)/sum(stats$Total) * 100
round(proteins, 2)
```

    ## [1] 92.69

***– Aim to have a rendered GitHub document with working code that
yields your answers.***

**Q2: Type HIV in the PDB website search box on the home page and
determine how many HIV-1 protease structures are in the current PDB.**

– There are currently 1289 protease structures in the current PDB.

## Hands-on Part II

``` r
library (bio3d)

pdb <- read.pdb("1hsg")
```

    ##   Note: Accessing on-line PDB file

``` r
pdb
```

    ## 
    ##  Call:  read.pdb(file = "1hsg")
    ## 
    ##    Total Models#: 1
    ##      Total Atoms#: 1686,  XYZs#: 5058  Chains#: 2  (values: A B)
    ## 
    ##      Protein Atoms#: 1514  (residues/Calpha atoms#: 198)
    ##      Nucleic acid Atoms#: 0  (residues/phosphate atoms#: 0)
    ## 
    ##      Non-protein/nucleic Atoms#: 172  (residues: 128)
    ##      Non-protein/nucleic resid values: [ HOH (127), MK1 (1) ]
    ## 
    ##    Protein sequence:
    ##       PQITLWQRPLVTIKIGGQLKEALLDTGADDTVLEEMSLPGRWKPKMIGGIGGFIKVRQYD
    ##       QILIEICGHKAIGTVLVGPTPVNIIGRNLLTQIGCTLNFPQITLWQRPLVTIKIGGQLKE
    ##       ALLDTGADDTVLEEMSLPGRWKPKMIGGIGGFIKVRQYDQILIEICGHKAIGTVLVGPTP
    ##       VNIIGRNLLTQIGCTLNF
    ## 
    ## + attr: atom, xyz, seqres, helix, sheet,
    ##         calpha, remark, call

``` r
attributes(pdb)
```

    ## $names
    ## [1] "atom"   "xyz"    "seqres" "helix"  "sheet"  "calpha" "remark" "call"  
    ## 
    ## $class
    ## [1] "pdb" "sse"
