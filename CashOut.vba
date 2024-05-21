*******Initial investment at cost--CF--******** == Init_invest_cost : dans StaticData.Init_invest_cost
=SI(ET($F11<>"SPV";$F11<>"Treasury");

    -SOMME.SI.ENS(efTran_AmountFC;
        efTran_Investor;$B11;
        efTran_AmountFC;"<0";
        efTran_InstrumentName;$D11;
        efTran_Nature;"Settled Operation on principal";
        efTran_TradeDate;$N11;
        efTran_Draft;FAUX;
        efTran_InScope;VRAI;
        efTran_CTBR_CTBP;FAUX);
    
    SOMMEPROD((efOPFC_CallInvestments + efOPFC_CallFeesInsideCommitment + efOPFC_CallFeeOutsideCommitment) * (efOPFC_SubscriptionName=$B11) * (efOPFC_ShareName=$D11) * (efOPFC_FundName=$C11) * (efOPFC_CloseDate= $N11) * (efOPFC_CloseDate<=report_date)))




*******Add-on at Cost--CF--******** == Invest_at_cost_Set_Without_PIK = DirectPositionUtil.getBalance(transactList, INSTRUMENT_ID, BondType.VANILLA, LocalDate.now(), curency, true) + DirectPosition.REIMB_at_cost -  StaticData.Init_invest_cost

=SI(ET($F9<>"SPV";$F9<>"Treasury");
    -SOMME.SI.ENS(efTran_AmountFC;
        efTran_Investor;$B9;
        efTran_AmountFC;"<0";
        efTran_InstrumentName;$D9;
        efTran_Nature;"Settled Operation on principal";
        efTran_TradeDate;">"&$N9;
        efTran_Draft;FAUX;
        efTran_InScope;VRAI;
        efTran_CTBR_CTBP;FAUX);
    
    SOMMEPROD((efOPFC_CallInvestments+efOPFC_CallFeesInsideCommitment+efOPFC_CallFeeOutsideCommitment) * (efOPFC_SubscriptionName=$B9) * (efOPFC_ShareName=$D9) * (efOPFC_FundName=$C9) * (efOPFC_CloseDate>$N9) * (efOPFC_CloseDate<=report_date )) )



