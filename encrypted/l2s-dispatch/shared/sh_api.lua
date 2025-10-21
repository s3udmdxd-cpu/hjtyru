
API_Keys = {
    ServiceUsed = 'fivemanage',   -- discord | fivemanage | fivemerr
    Token = '5Zem4novfm7oRfBrDtcABKP9XxpLjiUx', --  fivemanage or fivemerr or discord webhook
}
Status_TimeOut = 60000 * 3 -- Deafult: 3m Log Discord timeout
Logs = {
    ['POLICE'] = {
        ['Status'] = {
            Active = true,
            Webhook = 'https://discord.com/api/webhooks/1427914772141052066/Mdt9ZRCpyiSE-d_8wm8VqzMji5eOjx03ZpkseSFsfZS_aTc3bb_nYFQ7p3kCWrxew-tM',
            MSG_ID = 1427914824213467156,
        },
        ['Records'] = '1427914824213467156', -- Discord Webhook [Recorded Video]
        ['BOLO'] = '1427914824213467156', -- Discord Webhook [Flagged Vehicles]
    },
    ['EMS'] = {
        ['Status'] = {
            Active = true,
            Webhook = '',
            MSG_ID = 0000000000000000, -- false if you want it send msg everytime
        },
        ['Records'] = '',  -- Discord Webhook [Recorded Video]
        ['BOLO'] = false,
    },
}