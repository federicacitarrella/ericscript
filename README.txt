The typical command for running the pipeline is as follows:

nextflow run federicacitarrella/ericscript --reads '*_R{1,2}.fastq' -profile docker

To test the pipeline run the following command:

nextflow run federicacitarrella/ericscript -profile test