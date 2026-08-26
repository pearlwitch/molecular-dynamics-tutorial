# EXEMPLO DE SCRIPT PARA CARREGAR ESTRUTURAS NO PYMOL
# E FAZER SELEÇÕES PARA MEDIÇÃO DE DISTÂNCIAS ENTRE ÁTOMOS

# CARREGAR ESTRUTURA E TRAJETÓRIA
load prod_prot.gro, prod_prot
load prod_fit_prot.xtc, prod_prot,

# COLORIR CARTOON POR ESTRUTURA SECUNDÁRIA
color palegreen, ss h
color lightblue, ss s
color white, ss l+''

# SELECIONAR UM ÁTOMO DE CADA RESÍDUO (C-ALFA)
# NOTAR QUE A PROTEÍNA FOI RENUMERADA NAS SIMULAÇÕES
# glu292 e tyr305 são os nomes das seleções (poderiam ser outros nomes)

select glu292, resi 11 and name CA
select tyr305, resi 24 and name CA 

# REPRESENTAR COMO ESFERAS
show spheres, tyr305
show spheres, glu292

# COLORIR ESFERAS
set sphere_color, cyan

# MEDIR A DISTÂNCIA AO LONGO DA TRAJETÓRIA
distance glu292_tyr_305, glu292, tyr305
set dash_width, 5, glu292_tyr_305

# EDIÇÕES NOS LABELS
set label_position,(3,2,1)
set label_size, 20
set label_color, yellow   
