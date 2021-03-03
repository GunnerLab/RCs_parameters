proc sum_q_by_sel {seltext} {
        set sel [atomselect top $seltext]

        set totQ 0.00000
        set selq [$sel get charge]
        foreach q $selq {

          set totQ [expr $totQ + $q]
        }

        puts "INFO) Total charge: $totQ"
}

mol new rc-memb.psf
mol addfile rc-memb.pdb

puts "INFO) ALL"
sum_q_by_sel "all"
puts "INFO) Protein"
sum_q_by_sel "protein"
puts "INFO) Ions"
sum_q_by_sel "ions"
puts "INFO) Lipid"
sum_q_by_sel "lipid"
puts "INFO) Protein including BCLs, BPHs, U10s, and FE"
sum_q_by_sel "protein or (resname BCL and resid 825) or (resname BCL and resid 826) or (resname BCL and resid 827) or (resname BCL and resid 828) or (resname BPH and resid 829) or (resname BPHM and resid 830) or (resname U10 and resid 831) or (resname U10 and resid 832) or (resname FERC and resid 824)"
puts "INFO) -------------------------"
puts "INFO) BCL (825)"
sum_q_by_sel "resname BCL and resid 825"
puts "INFO) -------------------------"
puts "INFO) BCL (826)"
sum_q_by_sel "resname BCL and resid 826"
puts "INFO) -------------------------"
puts "INFO) BCL (827)"
sum_q_by_sel "resname BCL and resid 827"
puts "INFO) -------------------------"
puts "INFO) BCL (828)"
sum_q_by_sel "resname BCL and resid 828"
puts "INFO) -------------------------"
puts "INFO) BPH (829)"
sum_q_by_sel "resname BPH and resid 829"
puts "INFO) -------------------------"
puts "INFO) BPH (830)"
sum_q_by_sel "resname BPHM and resid 830"
puts "INFO) -------------------------"
puts "INFO) U10 (831)"
sum_q_by_sel "resname U10 and resid 831"
puts "INFO) -------------------------"
puts "INFO) U10 (832)"
sum_q_by_sel "resname U10 and resid 832"
puts "INFO) -------------------------"
puts "INFO) FE (824)"
sum_q_by_sel "resname FERC and resid 824"
puts "INFO) -------------------------"
puts "INFO) -------------------------"

exit
