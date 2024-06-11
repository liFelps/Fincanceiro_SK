SELECT PAR.CODPARC AS "Parceiro ID",
       PAR.RAZAOSOCIAL AS "Parceiro",
       TPP.CODTIPPARC AS "Perfil ID",
       TPP.DESCRTIPPARC AS "Perfil",
       CID.CODCID AS "Cidade ID",
       CID.NOMECID AS "Cidade",
       UF.UF AS "Estado ID",
       UF.DESCRICAO AS "Estado",
       REG.CODREG AS "Região ID",
       REG.NOMEREG AS "Região"
FROM TGFPAR PAR
LEFT JOIN TGFTPP TPP ON TPP.CODTIPPARC = PAR.CODTIPPARC
LEFT JOIN TSICID CID ON CID.CODCID = PAR.CODCID
LEFT JOIN TSIUFS UF ON UF.CODUF = CID.UF
LEFT JOIN TSIREG REG ON REG.CODREG = PAR.CODREG
