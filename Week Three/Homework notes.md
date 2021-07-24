# Step 2: Gathering Evidence<br />
    ### move dealer schedules to analysis directory<br />
        `mv 0310_Dealer_schedule 0312_Dealer_schedule  0315_Dealer_schedule ../Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/`<br />
    ### move player win/loss to analysi directory<br />
     `mv 0310_win_loss_player_data 0312_win_loss_player_data 0315_win_loss_player_data ../Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis/`<br /><br />
# Step 3: Correlating the Evidence<br />
    ## find losses <br />
        `grep -e '-' 0310_win_loss_player_data 0312_win_loss_player_data 0315_win_loss_player_data` <br />
    ### move results to Roulette_Loss<br />
        `grep -e '-' 0310_win_loss_player_data 0312_win_loss_player_data 0315_win_loss_player_data > Roulette_Losses`<br />
    ### total count for common player playing when losses happened <br />
        `wc -l Roulette_Losses`<br /><br />
## Dealer Analysis<br />
    ### Get roulette dealer working at the times of the losses for each day<br />
        `grep '05:00:00 AM\|08:00:00 AM\|02:00:00 PM\|08:00:00 PM\|11:00:00 PM' 0310_Dealer_schedule | awk -F'\t' '{print $1, $3}'`<br />
        `grep '05:00:00 AM\|08:00:00 AM\|02:00:00 PM\|08:00:00 PM\|11:00:00 PM' 0312_Dealer_schedule | awk -F'\t' '{print $1, $3}'`<br />
        `grep '05:00:00 AM\|08:00:00 AM\|02:00:00 PM\|08:00:00 PM\|11:00:00 PM' 0315_Dealer_schedule | awk -F'\t' '{print $1, $3}'`<br />




