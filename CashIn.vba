|| Je dois appeler l'inventory pour les IC ('Issuer Currency'='Compagny dans laquel ont investi') et le currency du fund || 


*******Total realized******* 
=AB21+AE21+SI($F21="SPV";0;AL21)+AN21

AB : Realized Cost
AE : Cash & PIK revenues
F  : Security Class ----> GeneralInformation
AL : Fees & Commissions
AN : Net Capital Gains 




                           [   Capitalised PIK = SOMME(PIK Interest)   ]

*******PIK revenues--CF--********* == : dans   AssetDirectInventory.getOther(REIMBPIK) 


=SI(ET($F11<>"SPV";$F11<>"Treasury");

    SOMME(
        SOMME.SI.ENS(efTran_AmountFC;
        efTran_Investor;$B11;
        efTran_InstrumentName;$D11;
        efTran_Category;{"PIK interest"."Reimbursment PIK"};
        efTran_Draft;FAUX;
        efTran_InScope;VRAI
        efTran_CTBR_CTBP;FAUX)
    );0)

___CONDITION ELEMENT____
B : Investor      ----> GeneralInformation
D : Security      ----> GeneralInformation







******Fees and Commissions--CF--******* = ??
=SI(ET($F8<>"SPV";$F8<>"Treasury");

    SOMME.SI.ENS(efTran_AmountFC;
        efTran_Investor;$B8;
        efTran_InstrumentName;$D8;
        efTran_Nature;"Other income/expense";
        efTran_Draft;FAUX;
        efTran_InScope;VRAI;
        efTran_CTBR_CTBP;FAUX);

    SOMMEPROD( (efOPFC_DistOther+efOPFC_CallFeesInsideCommitment+efOPFC_CallFeeOutsideCommitment) *(efOPFC_SubscriptionName=$B8) * (efOPFC_FundName=$C8) * (efOPFC_ShareName=$D8)  * (efOPFC_CloseDate<=report_date )))+$AK8


****






*******Divestment at Cost****** === ****Remboursement at cost*****  
=SI(ET($F9<>"SPV";$F9<>"Treasury");

    SOMME.SI.ENS(efTran_AmountFC; 
        efTran_Investor; $B9; 
        efTran_AmountFC; ">0"; 
        efTran_InstrumentName; $D9; 
        efTran_Nature; "Settled Operation on principal"; 
        efTran_Draft; FAUX; 
        efTran_InScope; VRAI; 
        efTran_CTBR_CTBP; FAUX);

    SOMME.SI.ENS(efOPFC_DistROC; 
        efOPFC_SubscriptionName; $B9; 
        efOPFC_FundName; $C9; 
        efOPFC_ShareName; $D9; 
        efOPFC_CloseDate; "<=" & report_date)
)

---> SOMME( efTran_AmountFC ) = "DirectPosition.REIMB_at_cost" (funf of fund)

___CONDITION ELEMENT____
B : Investor      ----> GeneralInformation
C : Investee      ----> GeneralInformation
D : Security      ----> GeneralInformation
F : SecurityClass ----> GeneralInformation








******Net Capital Gain******
=SI(ET($F18<>"SPV";$F18<>"Treasury");

        AX18-R18+AD18;

    SOMME.SI.ENS(efOPFC_DistRealisedGL;
        efOPFC_SubscriptionName;$B18;
        efOPFC_FundName;$C18;
        efOPFC_ShareName;$D18;
        efOPFC_CloseDate;"<="&report_date)
)

---> SOMME( efOPFC_DistRealisedGL ) = "IndirectPosition.dist_from_fund" (funf of fund)
AX : Residual Investment at Cost    ----> PORTFOLIO
R  : Total investment at cost--CF-- ----> CASHOUT
AD : Divestment at cost--CF--       ----> CASHIN

___CONDITION ELEMENT____
B : Investor ----> GeneralInformation
C : Investee ----> GeneralInformation
D : Security ----> GeneralInformation








******Cash revenues--CF--***** === CASH_INTER : dans AssetDirectInventory.getOther()
=SI(ET($F9<>"SPV";$F9<>"Treasury");
    SOMME.SI.ENS(efTran_AmountFC;
        efTran_Investor;$B9;
        efTran_InstrumentName;$D9;
        efTran_Category;"Cash interest";
        efTran_Draft;FAUX;
        efTran_InScope;VRAI;
        efTran_CTBR_CTBP;FAUX);
    
    SOMMEPROD((efOPFC_Dividends+efOPFC_DistInterest) * (efOPFC_SubscriptionName=$B9) * (efOPFC_FundName=$C9) * (efOPFC_ShareName=$D9) * (efOPFC_CloseDate<=report_date)))
___CONDITION ELEMENT____
B : Investor ----> GeneralInformation
D : Security ----> GeneralInformation



