#propagate commands to run all by all blast on 26 NAM genomes 
# this is for the nucmer 1000 

declare -a GFF=("/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/B73_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/P39_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/NC350_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/Ki11_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/Oh43_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/Ms71_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/Ky21_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/M162W_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/Oh7B_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/CML228_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/CML247_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/CML277_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/CML322_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/CML52_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/CML69_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/HP301_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/Il14H_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/Mo18W_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/M37W_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/Tzi8_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/B97_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/CML103_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/CML333_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/Ki3_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/NC358_canonical.gff"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_gff/Tx303_canonical.gff")

declare -a DB=("/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/B73_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/P39_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/NC350_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/Ki11_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/Oh43_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/Ms71_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/Ky21_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/M162W_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/Oh7B_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/CML228_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/CML247_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/CML277_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/CML322_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/CML52_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/CML69_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/HP301_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/Il14H_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/Mo18W_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/M37W_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/Tzi8_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/B97_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/CML103_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/CML333_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/Ki3_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/NC358_cds_db"
               "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/Tx303_cds_db")

declare -a LINES=("B73"
                  "P39"
                  "NC350"
                  "Ki11"
                  "Oh43"
                  "Ms71"
                  "Ky21"
                  "M162W"
                  "Oh7B"
                  "CML228"
                  "CML247"
                  "CML277"
                  "CML322"
                  "CML52"
                  "CML69"
                  "HP301"
                  "Il14H"
                  "Mo18W"
                  "M37W"
                  "Tzi8"
                  "B97"
                  "CML103"
                  "CML333"
                  "Ki3"
                  "NC358"
                  "Tx303")

declare -a CDS=("/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maysb73_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maysp39_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maysnc350_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_mayski11_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maysoh43_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maysms71_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maysky21_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maysm162w_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maysoh7b_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_mayscml228_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_mayscml247_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_mayscml277_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_mayscml322_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_mayscml52_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_mayscml69_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_mayshp301_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maysil14h_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maysmo18w_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maysm37w_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maystzi8_core_3_87_1.canonical.cds.fasta" 
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maysb97_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_mayscml103_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_mayscml333_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_mayski3_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maysnc358_core_3_87_1.canonical.cds.fasta"
                "/home/hirschc1/qiuxx221/nam_pan_genome/NAM_annotation/canonical_fasta/zea_maystx303_core_3_87_1.canonical.cds.fasta")

declare -a SPLIT=("eb"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab"
                  "ab")

##this is for nucmer 1000 
COORDS="/home/hirschc1/oconnorc/SplitGenes/NAM_genome_comparisons/nucmer_output"

for QUERY in {0..25}; do
    for SUBJECT in {0..25}; do
        # We don't want to compare the same line to itself                                                                                                                                             
        if [ "$QUERY" -ne "$SUBJECT" ]; then
        (echo python3 All_by_All_Blast_COedits.py \
            -q ${GFF[$QUERY]} \
            -s ${GFF[$SUBJECT]} \
            -b ${DB[$SUBJECT]} \
            -l ${CDS[$QUERY]} \
            -o /home/hirschc1/qiuxx221/nam_pan_genome/all_by_all_1000_new_annotation/${LINES[$QUERY]}_${LINES[$SUBJECT]}_AllbyAll_res.txt \
            -n ${COORDS}/${LINES[$QUERY]}_${LINES[$SUBJECT]}_c1000.fil.coords \
            -g ${SPLIT[$SUBJECT]} )
        fi
    done
done

# this is for nucmer 250


COORDS="/home/hirschc1/qiuxx221/Mummer4/final"


for QUERY in {0..25}; do
    for SUBJECT in {0..25}; do
        # We don't want to compare the same line to itself                                                                                                                                             
        if [ "$QUERY" -ne "$SUBJECT" ]; then
        (echo python3 All_by_All_Blast_COedits.py \
            -q ${GFF[$QUERY]} \
            -s ${GFF[$SUBJECT]} \
            -b ${DB[$SUBJECT]} \
            -l ${CDS[$QUERY]} \
            -o /home/hirschc1/qiuxx221/nam_pan_genome/all_by_all_250_new_annotation/${LINES[$QUERY]}_${LINES[$SUBJECT]}_AllbyAll_res.txt \
            -n ${COORDS}/${LINES[$QUERY]}_${LINES[$SUBJECT]}_c250.fil.coords \
            -g ${SPLIT[$SUBJECT]} )
        fi
    done
done
