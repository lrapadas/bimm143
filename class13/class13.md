Class 13: Structural Bioninformatics Part II
================

## Download and clean HIV-Pr receptor structure

Here we will download the 1HSG PDB structure from the online database,
remove the bound drug from Merck and write out a protein-only and
ligand-only new set of PDB files

We will use the bio3d package functions `get.pdb()`, `read.pdb()`,
`atom.select()`, and finally `write.pdb()`

``` r
# Download the PDB structure
library (bio3d)
file.name <- get.pdb("1hsg") 
```

    ## Warning in get.pdb("1hsg"): ./1hsg.pdb exists. Skipping download

``` r
# Read the PDB structure
hiv <- read.pdb(file.name) 
hiv
```

    ## 
    ##  Call:  read.pdb(file = file.name)
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

### Questions

**Q1: What is the name of the two non protein** ***resid*** **values in
this structure?** – HOH and MK1

**What does** ***resid*** **correspond to and how would you get a
listing of all resid values in this structure?** – reside corresponds to
the residue name in the protein

``` r
prot <- atom.select (hiv, "protein", value=TRUE)
lig <- atom.select (hiv, "ligand", value=TRUE)
```

Select protein only

``` r
write.pdb (prot, file="1hsg_protein.pdb")
```

Select ligand only

``` r
write.pdb (lig, file="1hsg_ligand.pdb")
```
