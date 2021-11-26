# A TPTP Editor as an Eclipse Plugin (teep)

Teep is an Eclipse plugin for a subset of the TPTP syntax (restricted to First-Order Formulas) which can be used with many theorem provers (see <https://www.tptp.org>). It supports syntax highlight and syntax verification.

Most importantly, from a specification in TPTP (with the `.p` extension), teep generates:

- [CLIF (the Common Logic Interchange Format)](https://www.iso.org/standard/66249.html)
- LaTeX equations
- HTML expressions with [MathML](https://www.w3.org/Math/)
- Plain-text ASCII content

Author: [João Paulo A. Almeida](http://nemo.inf.ufes.br/jpalmeida)

## Maintenance

This project is maintained in a best-effort basis. It was designed for my own purposes, but I am sharing it in the hope that it may help others. I cannot commit to fixing bugs and adding features. I do not claim strict conformance to the TPTP grammar, CLIF or any other standard.

I've used Xtext 2.25.0 for development and tested it under Eclipse 2021-09 (4.21.0).

See <https://github.com/marklemay/tptpParser> for a different project unaffiliated with this and with a focus on a complete TPTP parser.

## Installing

Open Eclipse and go to "Help->Install New Software..."

Select "Add..." and then "Archive..." Point to the `br.ufes.inf.nemo.teep.repository-1.0.0-SNAPSHOT.zip` file you downloaded from [releases](https://github.com/nemo-ufes/tptp-editor-eclipse-plugin/releases). You may optionally give a name to the repository (say "Teep local repository.")

Select then the "Tptp" feature and click "Next>" and "Finish". Eclipse will calculate all the required dependencies and install them. It will warn you that you are installing unsigned software. Click "Install Anyway" and restart Eclipse.

## Usage

In Eclipse, select "File->New->Project..." and create a "General" "Project". 

Select "File->New->File..." and create a file with the extension `.p`. You will be asked to convert the project to an Xtext project. Click on "Yes". Your file will then be ready for editing.

When you save a file, teep will generate several output files under `src-gen` (`.clif`, `.tex`, `.html`, `.txt`).

Example TPTP specifications written in teep can be found in <https://github.com/nemo-ufes/ufo-types> and <https://github.com/nemo-ufes/mlt-ontology>. Many other TPTP files can be found at <https://www.tptp.org>.

Once you are ready, use theorem provers at [System on TPTP](http://www.tptp.org/cgi-bin/SystemOnTPTP). (Hint: only one conjecture at a time is admitted by the system, comment all conjectures not under scrutiny with `%`.)

If you find teep useful, please let me know <mailto:jpalmeida@ieee.org>.

## License

Distributed under the MIT License. See `LICENSE` for more information.
