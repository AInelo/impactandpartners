|| Je dois appeler l'inventory pour les IC ('Issuer Currency'='Compagny dans laquel ont investi') et le currency du fund || 


*******Total realized******* 
=AB21+AE21+SI($F21="SPV";0;AL21)+AN21

AB : Realized Cost
AE : Cash & PIK revenues
F  : Security Class ----> GeneralInformation
AL : Fees & Commissions
AN : Net Capital Gains




                           [  Capitalised PIK = SOMME(PIK Interest)  ]

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










Inventory IC: Inventory[
                            fund=Fund[
                                        FUND_ID=0C729123F1634AA2BD9285E912C2406E, 
                                        Legal_name=NULL, 
                                        Currency=NULL, 
                                        Country=NULL, 
                                        Status=NULL
                                        ], 
                                    
                            asset_inventory=Asset_Inventory[
                                    direct_investment=[
                                        DirectInventory[
                                            generalInfo=Instrument_info[
                                                Instrument_ID=4FFAF581B4224F64809C059393B4B094, 
                                                Legal_name=NULL, 
                                                asset_Type=null, 
                                                Currency=EUR, 
                                                Country=Null, 
                                                Seniority=Senior Secured, 
                                                Rating=0.0, 
                                                Status=First Lien
                                                ], 

                                            staticData=StaticData[
                                                Initial_commit=328845.0, 
                                                Issue_date=2022-06-22, 
                                                Exit_date=2025-03-07, 
                                                Init_invest_cost=8860588.0, 
                                                Acqu_price_ask=0.0, 
                                                Acqu_price_bid=0.0, 
                                                Acqu_mid=0.0, 
                                                Avg_Acqu_price=0.0
                                                ], 
                                    
                                    issuer=Issuer_info[
                                        Issuer_ID=6A541673CB02472EB2EE93D980935119, 
                                        Legal_name=NULL, 
                                        Cur_company=EUR, 
                                        Country=NULL, 
                                        sector=Healthcare and Pharmaceuticals
                                        ], 
                                    
                                    position=DirectPosition[
                                        Commitment=3595470.55, 
                                        Princ_Set_Without_PIK=2.0156907E7, 
                                        Princ_Unset_Without_PIK=0.0, 
                                        Capi_PIK=1079074.73, 
                                        Princ_with_PIK=2.123598173E7, 
                                        REIMB=3668489.0, 
                                        Invest_at_cost_Set_Without_PIK=2.018655831E7, 
                                        Invest_at_cost_Unset_Without_PIK=0.0, 
                                        Invest_at_cost_with_PIK=2.126563304E7, 
                                        REIMB_at_cost=3638837.69, 
                                        Undrawn_Commit_Fees=-1.656143645E7, 
                                        Remaining_commit=-2.022992545E7, 
                                        NB_Shares=2.0156907E7, 
                                        Arrang_fees=0.0, 
                                        Hedge_notional=0.0, 
                                        Capi_Gain_Loss=0.0
                                        ], 
                                    accruals=Accruals[
                                        Accrued_Cash=0.0, 
                                        Accrued_PIK=0.0, 
                                        Accrued_fees=0.0
                                        ], 
                                    valuation=Valuation[
                                        Last_price_date=0.0, 
                                        Last_price=0.0, 
                                        Last_asset_value=0.0
                                        ], 
                                    other=Other[
                                        CASH_INTER=858833.9234, 
                                        REIMBPIK=518984.0421
                                        ]
                                        ]
                                        ], 
                                        
                                        sarl={6A541673CB02472EB2EE93D980935119=[
                                            DirectInventory[
                                                generalInfo=Instrument_info[
                                                    Instrument_ID=4FFAF581B4224F64809C059393B4B094, 
                                                    Legal_name=NULL, 
                                                    asset_Type=null, 
                                                    Currency=EUR, 
                                                    Country=Null,
                                                    Seniority=Senior Secured, 
                                                    Rating=0.0, 
                                                    Status=First Lien
                                                    ], 
                                                    staticData=StaticData[
                                                        Initial_commit=328845.0, 
                                                        Issue_date=2022-06-22, 
                                                        Exit_date=2025-03-07, 
                                                        Init_invest_cost=8860588.0, 
                                                        Acqu_price_ask=0.0, 
                                                        Acqu_price_bid=0.0, 
                                                        Acqu_mid=0.0, 
                                                        Avg_Acqu_price=0.0
                                                        ], 
                                                    issuer=Issuer_info[
                                                        Issuer_ID=6A541673CB02472EB2EE93D980935119, 
                                                        Legal_name=NULL, 
                                                        Cur_company=EUR, 
                                                        Country=NULL, 
                                                        sector=Healthcare and Pharmaceuticals
                                                        ], 
                                                    position=DirectPosition[
                                                        Commitment=3595470.55, 
                                                        Princ_Set_Without_PIK=2.0156907E7, 
                                                        Princ_Unset_Without_PIK=0.0, 
                                                        Capi_PIK=1079074.73, 
                                                        Princ_with_PIK=2.123598173E7, 
                                                        REIMB=3668489.0, 
                                                        Invest_at_cost_Set_Without_PIK=2.018655831E7, 
                                                        Invest_at_cost_Unset_Without_PIK=0.0, 
                                                        Invest_at_cost_with_PIK=2.126563304E7, 
                                                        REIMB_at_cost=3638837.69, Undrawn_Commit_Fees=-1.656143645E7, Remaining_commit=-2.022992545E7, NB_Shares=2.0156907E7, Arrang_fees=0.0, Hedge_notional=0.0, Capi_Gain_Loss=0.0], accruals=Accruals[Accrued_Cash=0.0, Accrued_PIK=0.0, Accrued_fees=0.0], valuation=Valuation[Last_price_date=0.0, Last_price=0.0, Last_asset_value=0.0], other=Other[CASH_INTER=858833.9234, REIMBPIK=518984.0421]]]}, fund_of_fund=[IndirectInventory[generalInfo=Fund[FUND_ID=FD0AD882151F487EB9C2CA0B11213062, Legal_name=NULL, Currency=NULL, Country=NULL, Status=NULL], staticData=StaticData[Initial_commit=9867108.0, Issue_date=2022-06-08, Exit_date=null, Init_invest_cost=9867108.0, Acqu_price_ask=0.0, Acqu_price_bid=0.0, Acqu_mid=0.0, Avg_Acqu_price=0.0], position=IndirectPosition[Commitment=9867108.0, NB_Shares=0.0, invest_in_fund=9867108.0, dist_from_fund=0.0, cap_return=0.0], valuation=Valuation[Last_price_date=0.0, Last_price=0.0, Last_asset_value=0.0]], IndirectInventory[generalInfo=Fund[FUND_ID=2904882E144248079C3EE07C107B5223, Legal_name=NULL, Currency=NULL, Country=NULL, Status=NULL], staticData=StaticData[Initial_commit=3279500.0, Issue_date=2022-04-25, Exit_date=null, Init_invest_cost=3254904.0, Acqu_price_ask=0.0, Acqu_price_bid=0.0, Acqu_mid=0.0, Avg_Acqu_price=0.0], position=IndirectPosition[Commitment=3279500.0, NB_Shares=32795.0, invest_in_fund=3279500.0, dist_from_fund=0.0, cap_return=0.0], valuation=Valuation[Last_price_date=0.0, Last_price=0.0, Last_asset_value=0.0]], IndirectInventory[generalInfo=Fund[FUND_ID=1F231A8A33E844CBAA5306B04ECAE0AA, Legal_name=NULL, Currency=NULL, Country=NULL, Status=NULL], staticData=StaticData[Initial_commit=1.39176E7, Issue_date=2021-11-10, Exit_date=null, Init_invest_cost=1.080319382E7, Acqu_price_ask=0.0, Acqu_price_bid=0.0, Acqu_mid=0.0, Avg_Acqu_price=0.0], position=IndirectPosition[Commitment=1.39176E7, NB_Shares=0.0, invest_in_fund=1.07183507E7, dist_from_fund=0.0, cap_return=0.0], valuation=Valuation[Last_price_date=0.0, Last_price=0.0, Last_asset_value=0.0]], IndirectInventory[generalInfo=Fund[FUND_ID=8E9D747DE2B1433C835FAD754D4BB46E, Legal_name=NULL, Currency=NULL, Country=NULL, Status=NULL], staticData=StaticData[Initial_commit=839823.0, Issue_date=2020-11-25, Exit_date=null, Init_invest_cost=839823.0, Acqu_price_ask=0.0, Acqu_price_bid=0.0, Acqu_mid=0.0, Avg_Acqu_price=0.0], position=IndirectPosition[Commitment=839823.0, NB_Shares=839823.0, invest_in_fund=839823.0, dist_from_fund=0.0, cap_return=0.0], valuation=Valuation[Last_price_date=0.0, Last_price=0.0, Last_asset_value=0.0]], IndirectInventory[generalInfo=Fund[FUND_ID=B0A027C274E045C8B2D4D8B21D7EC118, Legal_name=NULL, Currency=NULL, Country=NULL, Status=NULL], staticData=StaticData[Initial_commit=0.0, Issue_date=null, Exit_date=null, Init_invest_cost=1802622.0, Acqu_price_ask=0.0, Acqu_price_bid=0.0, Acqu_mid=0.0, Avg_Acqu_price=0.0], position=IndirectPosition[Commitment=0.0, NB_Shares=0.0, invest_in_fund=1802622.0, dist_from_fund=0.0, cap_return=0.0], valuation=Valuation[Last_price_date=0.0, Last_price=0.0, Last_asset_value=0.0]], IndirectInventory[generalInfo=Fund[FUND_ID=F175D7E1C53A43E5BB5E7EBB1C5402C7, Legal_name=NULL, Currency=NULL, Country=NULL, Status=NULL], staticData=StaticData[Initial_commit=1.21E7, Issue_date=2021-06-24, Exit_date=null, Init_invest_cost=7650922.771, Acqu_price_ask=0.0, Acqu_price_bid=0.0, Acqu_mid=0.0, Avg_Acqu_price=0.0], position=IndirectPosition[Commitment=1.21E7, NB_Shares=0.0, invest_in_fund=8431062.681, dist_from_fund=0.0, cap_return=0.0], valuation=Valuation[Last_price_date=0.0, Last_price=0.0, Last_asset_value=0.0]], IndirectInventory[generalInfo=Fund[FUND_ID=796A7D64DA84404FBCF5CBC8189A70E9, Legal_name=NULL, Currency=NULL, Country=NULL, Status=NULL], staticData=StaticData[Initial_commit=7000000.0, Issue_date=2021-07-06, Exit_date=null, Init_invest_cost=5238204.33, Acqu_price_ask=0.0, Acqu_price_bid=0.0, Acqu_mid=0.0, Avg_Acqu_price=0.0], position=IndirectPosition[Commitment=6280960.0, NB_Shares=0.0, invest_in_fund=5244438.7, dist_from_fund=0.0, cap_return=0.0], valuation=Valuation[Last_price_date=0.0, Last_price=0.0, Last_asset_value=0.0]], IndirectInventory[generalInfo=Fund[FUND_ID=406F96956EF2459191FB85BCD7FEFCAB, Legal_name=NULL, Currency=NULL, Country=NULL, Status=NULL], staticData=StaticData[Initial_commit=4448771.0, Issue_date=2021-07-12, Exit_date=null, Init_invest_cost=3758685.2, Acqu_price_ask=0.0, Acqu_price_bid=0.0, Acqu_mid=0.0, Avg_Acqu_price=0.0], position=IndirectPosition[Commitment=4448771.0, NB_Shares=0.0, invest_in_fund=3789572.9000000004, dist_from_fund=0.0, cap_return=0.0], valuation=Valuation[Last_price_date=0.0, Last_price=0.0, Last_asset_value=0.0]], IndirectInventory[generalInfo=Fund[FUND_ID=37FA1152C66D4D3B9634CD8FFE9DAADE, Legal_name=NULL, Currency=NULL, Country=NULL, Status=NULL], staticData=StaticData[Initial_commit=6300000.0, Issue_date=2021-06-02, Exit_date=null, Init_invest_cost=6160279.362, Acqu_price_ask=0.0, Acqu_price_bid=0.0, Acqu_mid=0.0, Avg_Acqu_price=0.0], position=IndirectPosition[Commitment=6300000.0, NB_Shares=0.0, invest_in_fund=6300000.0005, dist_from_fund=0.0, cap_return=0.0], valuation=Valuation[Last_price_date=0.0, Last_price=0.0, Last_asset_value=0.0]]]], liability_inventory=Liability_inventory[generalInfo=Fund[FUND_ID=0C729123F1634AA2BD9285E912C2406E, Legal_name=NULL, Currency=NULL, Country=NULL, Status=NULL], staticData=StaticData[Initial_commit=5.0E7, Issue_date=2020-07-31, Exit_date=2024-05-28, Init_invest_cost=29900.0, Acqu_price_ask=0.0, Acqu_price_bid=0.0, Acqu_mid=0.0, Avg_Acqu_price=0.0], position=LiabilityPosition[Commitment=2.010367E9, NB_Shares=1.80933035E7, capitalCall=1.80668593555E9, distribution=0.0, capital_return=1.021899997305E8], valuation=Valuation[Last_price_date=0.0, Last_price=0.0, Last_asset_value=0.0]]]





{
    fundID:
}





[ 
    cashIn, 
    cashIn.delayed_compensation, 
    cashIn.fees_and_commissions, 
    cashIn.total_realized, 
    cashIn.realized_cost, 
    cashIn.divestment_at_ost, 
    cashIn.cash_and_pik_revenues, 
    cashIn.other_income, 
    cashIn.other_expenses, 
    cashIn.net_capital_gains, 
    
    cashOut, 
    cashOut.total_investment_at_cost, 
    cashOut.nominal_principal_invested, 
    cashOut.nominal_principal_invested_settled, 
    cashOut.nominal_principal_invested_unsettled, 
    cashOut.nominal_principal_invested_IC, 
    cashOut.nominal_principal_invested_settled_IC, 
    cashOut.nominal_principal_invested_unsettled_IC, 
    
    portfolio, 
    portfolio.residual_nominal_principal_investment, 
    portfolio.residual_nominal_principal_investment_IC, 
    portfolio.residual_investment_at_cost, 
    portfolio.residual_investment_at_cost_IC, 
    portfolio.quantity, 
    
    generalInformation, 
    generalInformation.investor, 
    generalInformation.investee, 
    generalInformation.security, 
    generalInformation.securityEDMID, 
    generalInformation.securityClass, 
    generalInformation.deal
]





[
    cashIn = cashIn [
        delayed_compensation = cashIn.delayed_compensation, 
        fees_and_commissions = cashIn.fees_and_commissions, 
        total_realized = cashIn.total_realized, 
        realized_cost = cashIn.realized_cost, 
        divestment_at_ost = cashIn.divestment_at_ost, 
        cash_and_pik_revenues = cashIn.cash_and_pik_revenues, 
        other_income = cashIn.other_income, 
        other_expenses = cashIn.other_expenses, 
        net_capital_gains = cashIn.net_capital_gains
    ],
    cashOut = cashOut [
        total_investment_at_cost = cashOut.total_investment_at_cost, 
        nominal_principal_invested = cashOut.nominal_principal_invested, 
        nominal_principal_invested_settled = cashOut.nominal_principal_invested_settled, 
        nominal_principal_invested_unsettled = cashOut.nominal_principal_invested_unsettled, 
        nominal_principal_invested_IC = cashOut.nominal_principal_invested_IC, 
        nominal_principal_invested_settled_IC = cashOut.nominal_principal_invested_settled_IC, 
        nominal_principal_invested_unsettled_IC = cashOut.nominal_principal_invested_unsettled_IC
    ], 

    portfolio = portfolio [
        residual_nominal_principal_investment =   portfolio.residual_nominal_principal_investment, 
        residual_nominal_principal_investment_IC = portfolio.residual_nominal_principal_investment_IC, 
        residual_investment_at_cost = portfolio.residual_investment_at_cost, 
        residual_investment_at_cost_IC = portfolio.residual_investment_at_cost_IC, 
        quantity = portfolio.quantity
    ] 
     
    
    generalInformation = generalInformation [
        investor =    generalInformation.investor, 
        investee =  generalInformation.investee, 
        security =  generalInformation.security, 
        securityEDMID =  generalInformation.securityEDMID, 
        securityClass =  generalInformation.securityClass, 
        deal=  generalInformation.deal
    ] 
    
]