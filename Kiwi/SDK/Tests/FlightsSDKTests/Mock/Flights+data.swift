import FlightsSDK

extension Flights {
  static let json = """
{
    "search_id": "9070b8e3-2a94-813f-273b-dca743af6ebf",
    "currency": "EUR",
    "fx_rate": 1,
    "data": [
        {
            "id": "145c0f0c4b8f0000ad837984_0|0f0c145c4b90000075fc43c3_0",
            "flyFrom": "PRG",
            "flyTo": "FCO",
            "cityFrom": "Prague",
            "cityCodeFrom": "PRG",
            "cityTo": "Rome",
            "cityCodeTo": "ROM",
            "countryFrom": {
                "code": "CZ",
                "name": "Czechia"
            },
            "countryTo": {
                "code": "IT",
                "name": "Italy"
            },
            "dTime": 1671272100,
            "dTimeUTC": 1671268500,
            "aTime": 1671278100,
            "aTimeUTC": 1671274500,
            "nightsInDest": 1,
            "quality": 255.063205,
            "distance": 937.04,
            "duration": {
                "departure": 6000,
                "return": 6300,
                "total": 12300
            },
            "fly_duration": "1h 40m",
            "return_duration": "1h 45m",
            "price": 203.73,
            "conversion": {
                "EUR": 203.73
            },
            "bags_price": {
                "hand": 38.54,
                "1": 74.15,
                "2": 144.73,
                "personal_item": 0
            },
            "baglimit": {
                "hand_height": 40,
                "hand_length": 55,
                "hand_weight": 10,
                "hand_width": 20,
                "hold_dimensions_sum": 319,
                "hold_height": 119,
                "hold_length": 119,
                "hold_weight": 20,
                "hold_width": 81,
                "personal_item_height": 25,
                "personal_item_length": 40,
                "personal_item_weight": 10,
                "personal_item_width": 20
            },
            "availability": {
                "seats": 1
            },
            "airlines": [
                "FR"
            ],
            "route": [
                {
                    "id": "145c0f0c4b8f0000ad837984_0",
                    "combination_id": "145c0f0c4b8f0000ad837984",
                    "flyFrom": "PRG",
                    "flyTo": "FCO",
                    "cityFrom": "Prague",
                    "cityCodeFrom": "PRG",
                    "cityTo": "Rome",
                    "cityCodeTo": "ROM",
                    "dTime": 1671272100,
                    "dTimeUTC": 1671268500,
                    "aTime": 1671278100,
                    "aTimeUTC": 1671274500,
                    "airline": "FR",
                    "flight_no": 5805,
                    "operating_carrier": "",
                    "operating_flight_no": "",
                    "fare_basis": "",
                    "fare_category": "M",
                    "fare_classes": "",
                    "fare_family": "",
                    "return": 0,
                    "latFrom": 50.1008333,
                    "lngFrom": 14.26,
                    "latTo": 41.8002778,
                    "lngTo": 12.2388889,
                    "mapIdfrom": "prague_cz",
                    "mapIdto": "rome_it",
                    "bags_recheck_required": false,
                    "vi_connection": false,
                    "guarantee": false,
                    "equipment": null,
                    "vehicle_type": "aircraft",
                    "original_return": 0
                },
                {
                    "id": "0f0c145c4b90000075fc43c3_0",
                    "combination_id": "0f0c145c4b90000075fc43c3",
                    "flyFrom": "FCO",
                    "flyTo": "PRG",
                    "cityFrom": "Rome",
                    "cityCodeFrom": "ROM",
                    "cityTo": "Prague",
                    "cityCodeTo": "PRG",
                    "dTime": 1671365400,
                    "dTimeUTC": 1671361800,
                    "aTime": 1671371700,
                    "aTimeUTC": 1671368100,
                    "airline": "FR",
                    "flight_no": 5804,
                    "operating_carrier": "",
                    "operating_flight_no": "",
                    "fare_basis": "",
                    "fare_category": "M",
                    "fare_classes": "",
                    "fare_family": "",
                    "return": 1,
                    "latFrom": 41.8002778,
                    "lngFrom": 12.2388889,
                    "latTo": 50.1008333,
                    "lngTo": 14.26,
                    "mapIdfrom": "rome_it",
                    "mapIdto": "prague_cz",
                    "bags_recheck_required": false,
                    "vi_connection": false,
                    "guarantee": false,
                    "equipment": null,
                    "vehicle_type": "aircraft",
                    "original_return": 0
                }
            ],
            "booking_token": "E9C2uXfycrGjA_7DdJUyimuOT6CLb_CFCQgFivG4kk7n8fdbqgHhhEEkG2Tt5ii10I9dTloTF-5huUTnFNasPpIOweRMXv7EH-OLPvx9X1HQAnPFMozjm1U-REI5_0_Z3SYaH4KJiFLULH80EEjOAHFyPZ7T6UPPbHPkFa2CSfzElaIixFoV98Tiizsn2Q3wZy_nSKJ13ZE53EHc3EgrKGE0vgryO866gjZRgiiGJqILvmX0JL6fkYg-Jv8vd1WgxtXWs9WRCH_WNaJQYBK0FNZ5UkvAvicdXrLdNN8dkcNMc0Dzh6o6oc94kkPT5SYa2wN9IR_f3q2fPDoigcmoUEjNOFErORna4FzUKgmUfEbIv0_zQ8lz2QrmGTZUo8kDd2Odk6-Gy_JZSIsu8CvpkUnopvIB1IWaU1-zTLV7W3JX63bbWKHs8q3hvGOhfkK-gD4VOvKgCjdJkvSDKJCoqSFqQy7J_Q1KgoL2ThmKQpaJjymN0lt8TIp5mTlh3rWDU",
            "deep_link": "https://www.kiwi.com/deep?affilid=skypicker&currency=EUR&flightsId=145c0f0c4b8f0000ad837984_0%7C0f0c145c4b90000075fc43c3_0&from=PRG&lang=en&passengers=1&searchBags=0.2&to=FCO&booking_token=E9C2uXfycrGjA_7DdJUyimuOT6CLb_CFCQgFivG4kk7n8fdbqgHhhEEkG2Tt5ii10I9dTloTF-5huUTnFNasPpIOweRMXv7EH-OLPvx9X1HQAnPFMozjm1U-REI5_0_Z3SYaH4KJiFLULH80EEjOAHFyPZ7T6UPPbHPkFa2CSfzElaIixFoV98Tiizsn2Q3wZy_nSKJ13ZE53EHc3EgrKGE0vgryO866gjZRgiiGJqILvmX0JL6fkYg-Jv8vd1WgxtXWs9WRCH_WNaJQYBK0FNZ5UkvAvicdXrLdNN8dkcNMc0Dzh6o6oc94kkPT5SYa2wN9IR_f3q2fPDoigcmoUEjNOFErORna4FzUKgmUfEbIv0_zQ8lz2QrmGTZUo8kDd2Odk6-Gy_JZSIsu8CvpkUnopvIB1IWaU1-zTLV7W3JX63bbWKHs8q3hvGOhfkK-gD4VOvKgCjdJkvSDKJCoqSFqQy7J_Q1KgoL2ThmKQpaJjymN0lt8TIp5mTlh3rWDU",
            "tracking_pixel": "https://www.kiwi.com/pixel?affilid=skypicker&currency=EUR&flightsId=145c0f0c4b8f0000ad837984_0%7C0f0c145c4b90000075fc43c3_0&from=PRG&lang=en&passengers=1&searchBags=0.2&to=FCO&booking_token=E9C2uXfycrGjA_7DdJUyimuOT6CLb_CFCQgFivG4kk7n8fdbqgHhhEEkG2Tt5ii10I9dTloTF-5huUTnFNasPpIOweRMXv7EH-OLPvx9X1HQAnPFMozjm1U-REI5_0_Z3SYaH4KJiFLULH80EEjOAHFyPZ7T6UPPbHPkFa2CSfzElaIixFoV98Tiizsn2Q3wZy_nSKJ13ZE53EHc3EgrKGE0vgryO866gjZRgiiGJqILvmX0JL6fkYg-Jv8vd1WgxtXWs9WRCH_WNaJQYBK0FNZ5UkvAvicdXrLdNN8dkcNMc0Dzh6o6oc94kkPT5SYa2wN9IR_f3q2fPDoigcmoUEjNOFErORna4FzUKgmUfEbIv0_zQ8lz2QrmGTZUo8kDd2Odk6-Gy_JZSIsu8CvpkUnopvIB1IWaU1-zTLV7W3JX63bbWKHs8q3hvGOhfkK-gD4VOvKgCjdJkvSDKJCoqSFqQy7J_Q1KgoL2ThmKQpaJjymN0lt8TIp5mTlh3rWDU",
            "facilitated_booking_available": false,
            "pnr_count": 2,
            "has_airport_change": false,
            "technical_stops": 0,
            "throw_away_ticketing": false,
            "hidden_city_ticketing": false,
            "virtual_interlining": true,
            "mapIdfrom": "prague_cz",
            "mapIdto": "rome_it",
            "hashtags": [
                "outbound:morning",
                "outbound:saturday",
                "outbound:direct",
                "outbound:duration:1-2",
                "outbound:departure:10-11",
                "outbound:arrival:11-12",
                "inbound:morning",
                "inbound:afternoon",
                "inbound:sunday",
                "inbound:direct",
                "inbound:duration:1-2",
                "inbound:departure:12-13",
                "inbound:arrival:13-14"
            ],
            "mrp_refreshed": false
        },
        {
            "id": "145c19b14b8e00009a0f812a_0|19b1145c4b8f000067dfc236_0",
            "flyFrom": "PRG",
            "flyTo": "NAP",
            "cityFrom": "Prague",
            "cityCodeFrom": "PRG",
            "cityTo": "Naples",
            "cityCodeTo": "NAP",
            "countryFrom": {
                "code": "CZ",
                "name": "Czechia"
            },
            "countryTo": {
                "code": "IT",
                "name": "Italy"
            },
            "dTime": 1671189900,
            "dTimeUTC": 1671186300,
            "aTime": 1671196800,
            "aTimeUTC": 1671193200,
            "nightsInDest": 1,
            "quality": 266.88653,
            "distance": 1025.94,
            "duration": {
                "departure": 6900,
                "return": 6900,
                "total": 13800
            },
            "fly_duration": "1h 55m",
            "return_duration": "1h 55m",
            "price": 212.22,
            "conversion": {
                "EUR": 212.22
            },
            "bags_price": {
                "hand": 46.04,
                "1": 65.61,
                "2": 131.22,
                "personal_item": 0
            },
            "baglimit": {
                "hand_height": 40,
                "hand_length": 55,
                "hand_weight": 10,
                "hand_width": 20,
                "hold_dimensions_sum": 319,
                "hold_height": 119,
                "hold_length": 119,
                "hold_weight": 20,
                "hold_width": 81,
                "personal_item_height": 25,
                "personal_item_length": 40,
                "personal_item_weight": 10,
                "personal_item_width": 20
            },
            "availability": {
                "seats": 2
            },
            "airlines": [
                "FR"
            ],
            "route": [
                {
                    "id": "145c19b14b8e00009a0f812a_0",
                    "combination_id": "145c19b14b8e00009a0f812a",
                    "flyFrom": "PRG",
                    "flyTo": "NAP",
                    "cityFrom": "Prague",
                    "cityCodeFrom": "PRG",
                    "cityTo": "Naples",
                    "cityCodeTo": "NAP",
                    "dTime": 1671189900,
                    "dTimeUTC": 1671186300,
                    "aTime": 1671196800,
                    "aTimeUTC": 1671193200,
                    "airline": "FR",
                    "flight_no": 7964,
                    "operating_carrier": "",
                    "operating_flight_no": "",
                    "fare_basis": "",
                    "fare_category": "M",
                    "fare_classes": "",
                    "fare_family": "",
                    "return": 0,
                    "latFrom": 50.1008333,
                    "lngFrom": 14.26,
                    "latTo": 40.8844444,
                    "lngTo": 14.2908333,
                    "mapIdfrom": "prague_cz",
                    "mapIdto": "naples_it",
                    "bags_recheck_required": false,
                    "vi_connection": false,
                    "guarantee": false,
                    "equipment": null,
                    "vehicle_type": "aircraft",
                    "original_return": 0
                },
                {
                    "id": "19b1145c4b8f000067dfc236_0",
                    "combination_id": "19b1145c4b8f000067dfc236",
                    "flyFrom": "NAP",
                    "flyTo": "PRG",
                    "cityFrom": "Naples",
                    "cityCodeFrom": "NAP",
                    "cityTo": "Prague",
                    "cityCodeTo": "PRG",
                    "dTime": 1671297900,
                    "dTimeUTC": 1671294300,
                    "aTime": 1671304800,
                    "aTimeUTC": 1671301200,
                    "airline": "FR",
                    "flight_no": 7967,
                    "operating_carrier": "",
                    "operating_flight_no": "",
                    "fare_basis": "",
                    "fare_category": "M",
                    "fare_classes": "",
                    "fare_family": "",
                    "return": 1,
                    "latFrom": 40.8844444,
                    "lngFrom": 14.2908333,
                    "latTo": 50.1008333,
                    "lngTo": 14.26,
                    "mapIdfrom": "naples_it",
                    "mapIdto": "prague_cz",
                    "bags_recheck_required": false,
                    "vi_connection": false,
                    "guarantee": false,
                    "equipment": null,
                    "vehicle_type": "aircraft",
                    "original_return": 0
                }
            ],
            "booking_token": "E_dJOlEw9PSY_MYAcMzQi1WsRLbLkbTqFO31-KMwTRadWWBkZEXqTqEclWJBz7qY9QcMIHjUMgiRVITbsy_9bWng3qSwINRs33Gt5dBB8nXT4OvHkjiqL650Xh4Pbw3P5vfmKsxQuA060nM4HROWFEdrj6JfBoRkdLoP1aGuk_g4c5U0gphN1Nh_-TwqpXVOlsPq_VlCKtfLNKLibxWRy75dgGPn3JnhU93mjgGlTGeYBcQma7VQhp-Tqr_nIe053GhhDEVvw7cFVmHI_rDkeYeXoyNVTouyKJPwz_wQ2u-P9l4lAE5HZSp7GdhlrCbiwZOZ6eCFTgE0ZEfqThIy7Anvisf0BPag-LHA2S_n0RUyqdRa6leEtB1qCEUs9niOj5HRwtPlZW8x6zZ55aJQutrUTPnKnxbQ1yN2M3kXWYnsq05l44kLqOQllGXBVMV_uyzTIILhgRLnsfZ_IgK9hWMY6aKklMHFLKqwNO0e_7FZGsvlCB48Bhm2lvnOyK1nIorxqewRc01GrE_1gjmiIgeqr7x4wyjWa9buC-bQKdro=",
            "deep_link": "https://www.kiwi.com/deep?affilid=skypicker&currency=EUR&flightsId=145c19b14b8e00009a0f812a_0%7C19b1145c4b8f000067dfc236_0&from=PRG&lang=en&passengers=1&searchBags=0.2&to=NAP&booking_token=E_dJOlEw9PSY_MYAcMzQi1WsRLbLkbTqFO31-KMwTRadWWBkZEXqTqEclWJBz7qY9QcMIHjUMgiRVITbsy_9bWng3qSwINRs33Gt5dBB8nXT4OvHkjiqL650Xh4Pbw3P5vfmKsxQuA060nM4HROWFEdrj6JfBoRkdLoP1aGuk_g4c5U0gphN1Nh_-TwqpXVOlsPq_VlCKtfLNKLibxWRy75dgGPn3JnhU93mjgGlTGeYBcQma7VQhp-Tqr_nIe053GhhDEVvw7cFVmHI_rDkeYeXoyNVTouyKJPwz_wQ2u-P9l4lAE5HZSp7GdhlrCbiwZOZ6eCFTgE0ZEfqThIy7Anvisf0BPag-LHA2S_n0RUyqdRa6leEtB1qCEUs9niOj5HRwtPlZW8x6zZ55aJQutrUTPnKnxbQ1yN2M3kXWYnsq05l44kLqOQllGXBVMV_uyzTIILhgRLnsfZ_IgK9hWMY6aKklMHFLKqwNO0e_7FZGsvlCB48Bhm2lvnOyK1nIorxqewRc01GrE_1gjmiIgeqr7x4wyjWa9buC-bQKdro=",
            "tracking_pixel": "https://www.kiwi.com/pixel?affilid=skypicker&currency=EUR&flightsId=145c19b14b8e00009a0f812a_0%7C19b1145c4b8f000067dfc236_0&from=PRG&lang=en&passengers=1&searchBags=0.2&to=NAP&booking_token=E_dJOlEw9PSY_MYAcMzQi1WsRLbLkbTqFO31-KMwTRadWWBkZEXqTqEclWJBz7qY9QcMIHjUMgiRVITbsy_9bWng3qSwINRs33Gt5dBB8nXT4OvHkjiqL650Xh4Pbw3P5vfmKsxQuA060nM4HROWFEdrj6JfBoRkdLoP1aGuk_g4c5U0gphN1Nh_-TwqpXVOlsPq_VlCKtfLNKLibxWRy75dgGPn3JnhU93mjgGlTGeYBcQma7VQhp-Tqr_nIe053GhhDEVvw7cFVmHI_rDkeYeXoyNVTouyKJPwz_wQ2u-P9l4lAE5HZSp7GdhlrCbiwZOZ6eCFTgE0ZEfqThIy7Anvisf0BPag-LHA2S_n0RUyqdRa6leEtB1qCEUs9niOj5HRwtPlZW8x6zZ55aJQutrUTPnKnxbQ1yN2M3kXWYnsq05l44kLqOQllGXBVMV_uyzTIILhgRLnsfZ_IgK9hWMY6aKklMHFLKqwNO0e_7FZGsvlCB48Bhm2lvnOyK1nIorxqewRc01GrE_1gjmiIgeqr7x4wyjWa9buC-bQKdro=",
            "facilitated_booking_available": false,
            "pnr_count": 2,
            "has_airport_change": false,
            "technical_stops": 0,
            "throw_away_ticketing": false,
            "hidden_city_ticketing": false,
            "virtual_interlining": true,
            "mapIdfrom": "prague_cz",
            "mapIdto": "naples_it",
            "hashtags": [
                "outbound:morning",
                "outbound:friday",
                "outbound:direct",
                "outbound:duration:1-2",
                "outbound:departure:11-12",
                "outbound:arrival:13-14",
                "inbound:afternoon",
                "inbound:evening",
                "inbound:saturday",
                "inbound:direct",
                "inbound:duration:1-2",
                "inbound:departure:17-18",
                "inbound:arrival:19-20"
            ],
            "mrp_refreshed": false
        },
        {
            "id": "145c19b14b8e00009a0f812a_0|19b1145c4b9000009035293e_0",
            "flyFrom": "PRG",
            "flyTo": "NAP",
            "cityFrom": "Prague",
            "cityCodeFrom": "PRG",
            "cityTo": "Naples",
            "cityCodeTo": "NAP",
            "countryFrom": {
                "code": "CZ",
                "name": "Czechia"
            },
            "countryTo": {
                "code": "IT",
                "name": "Italy"
            },
            "dTime": 1671189900,
            "dTimeUTC": 1671186300,
            "aTime": 1671196800,
            "aTimeUTC": 1671193200,
            "nightsInDest": 2,
            "quality": 276.91653,
            "distance": 1025.94,
            "duration": {
                "departure": 6900,
                "return": 6900,
                "total": 13800
            },
            "fly_duration": "1h 55m",
            "return_duration": "1h 55m",
            "price": 222.25,
            "conversion": {
                "EUR": 222.25
            },
            "bags_price": {
                "hand": 32.04,
                "1": 70.62,
                "2": 141.25,
                "personal_item": 0
            },
            "baglimit": {
                "hand_height": 40,
                "hand_length": 55,
                "hand_weight": 10,
                "hand_width": 20,
                "hold_dimensions_sum": 319,
                "hold_height": 119,
                "hold_length": 119,
                "hold_weight": 20,
                "hold_width": 81,
                "personal_item_height": 25,
                "personal_item_length": 40,
                "personal_item_weight": 10,
                "personal_item_width": 20
            },
            "availability": {
                "seats": 2
            },
            "airlines": [
                "FR"
            ],
            "route": [
                {
                    "id": "145c19b14b8e00009a0f812a_0",
                    "combination_id": "145c19b14b8e00009a0f812a",
                    "flyFrom": "PRG",
                    "flyTo": "NAP",
                    "cityFrom": "Prague",
                    "cityCodeFrom": "PRG",
                    "cityTo": "Naples",
                    "cityCodeTo": "NAP",
                    "dTime": 1671189900,
                    "dTimeUTC": 1671186300,
                    "aTime": 1671196800,
                    "aTimeUTC": 1671193200,
                    "airline": "FR",
                    "flight_no": 7964,
                    "operating_carrier": "",
                    "operating_flight_no": "",
                    "fare_basis": "",
                    "fare_category": "M",
                    "fare_classes": "",
                    "fare_family": "",
                    "return": 0,
                    "latFrom": 50.1008333,
                    "lngFrom": 14.26,
                    "latTo": 40.8844444,
                    "lngTo": 14.2908333,
                    "mapIdfrom": "prague_cz",
                    "mapIdto": "naples_it",
                    "bags_recheck_required": false,
                    "vi_connection": false,
                    "guarantee": false,
                    "equipment": null,
                    "vehicle_type": "aircraft",
                    "original_return": 0
                },
                {
                    "id": "19b1145c4b9000009035293e_0",
                    "combination_id": "19b1145c4b9000009035293e",
                    "flyFrom": "NAP",
                    "flyTo": "PRG",
                    "cityFrom": "Naples",
                    "cityCodeFrom": "NAP",
                    "cityTo": "Prague",
                    "cityCodeTo": "PRG",
                    "dTime": 1671364800,
                    "dTimeUTC": 1671361200,
                    "aTime": 1671371700,
                    "aTimeUTC": 1671368100,
                    "airline": "FR",
                    "flight_no": 7967,
                    "operating_carrier": "",
                    "operating_flight_no": "",
                    "fare_basis": "",
                    "fare_category": "M",
                    "fare_classes": "",
                    "fare_family": "",
                    "return": 1,
                    "latFrom": 40.8844444,
                    "lngFrom": 14.2908333,
                    "latTo": 50.1008333,
                    "lngTo": 14.26,
                    "mapIdfrom": "naples_it",
                    "mapIdto": "prague_cz",
                    "bags_recheck_required": false,
                    "vi_connection": false,
                    "guarantee": false,
                    "equipment": null,
                    "vehicle_type": "aircraft",
                    "original_return": 0
                }
            ],
            "booking_token": "EMbhEcT8AKGQmKJvRo5yln88lBytmXy61jTcslP0UzUWf2uBUi7lLi93PjaZ5z6BPHDloOAxZfxaJlNhmEvdDH-FCJ1zGmIg8c_xDc1m81IqKpdqpsE1hTI8BZ-_umAVd8jMUgr7h4cyTvHm-TAfJp_oRGFuAr5pr-WsW7K60Jc6ZtWK8MR6taZ9M2C4EcgqSvMpzpWjg_Jsr88EQ8asxt7QrmSsxJ9dQ9AlQK-yn6pz2BoQyJ7OSU5nq7BqAVjgeLKvedAihNMu4NxSsyYyppIuM3MrlOKMkHhfKrWhjdUPx-RLly-CS4wxLx3PtGIWE3NygWGrscKy-JYUmHYq4qxbjVCntjzeSQsF1liC1XJWuezp7k_LuxO-8ZZ-abT1UsvWC3YbryaMvgT3RLbwplDo0Tm23ChSIZ0LeuC0lc77ZzZdVM1Q3sitnziJ6VktE90dI_9rYm1xFZgH8d8lthj5bQ0vpZ4vDhhmmFWDpnmTLjFfvm50a7ZPpVGrVi9rG7ymPSWIvWmY5lL2ihOx0BQ==",
            "deep_link": "https://www.kiwi.com/deep?affilid=skypicker&currency=EUR&flightsId=145c19b14b8e00009a0f812a_0%7C19b1145c4b9000009035293e_0&from=PRG&lang=en&passengers=1&searchBags=0.2&to=NAP&booking_token=EMbhEcT8AKGQmKJvRo5yln88lBytmXy61jTcslP0UzUWf2uBUi7lLi93PjaZ5z6BPHDloOAxZfxaJlNhmEvdDH-FCJ1zGmIg8c_xDc1m81IqKpdqpsE1hTI8BZ-_umAVd8jMUgr7h4cyTvHm-TAfJp_oRGFuAr5pr-WsW7K60Jc6ZtWK8MR6taZ9M2C4EcgqSvMpzpWjg_Jsr88EQ8asxt7QrmSsxJ9dQ9AlQK-yn6pz2BoQyJ7OSU5nq7BqAVjgeLKvedAihNMu4NxSsyYyppIuM3MrlOKMkHhfKrWhjdUPx-RLly-CS4wxLx3PtGIWE3NygWGrscKy-JYUmHYq4qxbjVCntjzeSQsF1liC1XJWuezp7k_LuxO-8ZZ-abT1UsvWC3YbryaMvgT3RLbwplDo0Tm23ChSIZ0LeuC0lc77ZzZdVM1Q3sitnziJ6VktE90dI_9rYm1xFZgH8d8lthj5bQ0vpZ4vDhhmmFWDpnmTLjFfvm50a7ZPpVGrVi9rG7ymPSWIvWmY5lL2ihOx0BQ==",
            "tracking_pixel": "https://www.kiwi.com/pixel?affilid=skypicker&currency=EUR&flightsId=145c19b14b8e00009a0f812a_0%7C19b1145c4b9000009035293e_0&from=PRG&lang=en&passengers=1&searchBags=0.2&to=NAP&booking_token=EMbhEcT8AKGQmKJvRo5yln88lBytmXy61jTcslP0UzUWf2uBUi7lLi93PjaZ5z6BPHDloOAxZfxaJlNhmEvdDH-FCJ1zGmIg8c_xDc1m81IqKpdqpsE1hTI8BZ-_umAVd8jMUgr7h4cyTvHm-TAfJp_oRGFuAr5pr-WsW7K60Jc6ZtWK8MR6taZ9M2C4EcgqSvMpzpWjg_Jsr88EQ8asxt7QrmSsxJ9dQ9AlQK-yn6pz2BoQyJ7OSU5nq7BqAVjgeLKvedAihNMu4NxSsyYyppIuM3MrlOKMkHhfKrWhjdUPx-RLly-CS4wxLx3PtGIWE3NygWGrscKy-JYUmHYq4qxbjVCntjzeSQsF1liC1XJWuezp7k_LuxO-8ZZ-abT1UsvWC3YbryaMvgT3RLbwplDo0Tm23ChSIZ0LeuC0lc77ZzZdVM1Q3sitnziJ6VktE90dI_9rYm1xFZgH8d8lthj5bQ0vpZ4vDhhmmFWDpnmTLjFfvm50a7ZPpVGrVi9rG7ymPSWIvWmY5lL2ihOx0BQ==",
            "facilitated_booking_available": false,
            "pnr_count": 2,
            "has_airport_change": false,
            "technical_stops": 0,
            "throw_away_ticketing": false,
            "hidden_city_ticketing": false,
            "virtual_interlining": true,
            "mapIdfrom": "prague_cz",
            "mapIdto": "naples_it",
            "hashtags": [
                "outbound:morning",
                "outbound:friday",
                "outbound:direct",
                "outbound:duration:1-2",
                "outbound:departure:11-12",
                "outbound:arrival:13-14",
                "inbound:morning",
                "inbound:afternoon",
                "inbound:sunday",
                "inbound:direct",
                "inbound:duration:1-2",
                "inbound:departure:12-13",
                "inbound:arrival:13-14",
                "weekend"
            ],
            "mrp_refreshed": false
        },
        {
            "id": "145c19b14b8f000081be07cd_0|19b1145c4b9000009035293e_0",
            "flyFrom": "PRG",
            "flyTo": "NAP",
            "cityFrom": "Prague",
            "cityCodeFrom": "PRG",
            "cityTo": "Naples",
            "cityCodeTo": "NAP",
            "countryFrom": {
                "code": "CZ",
                "name": "Czechia"
            },
            "countryTo": {
                "code": "IT",
                "name": "Italy"
            },
            "dTime": 1671289500,
            "dTimeUTC": 1671285900,
            "aTime": 1671296400,
            "aTimeUTC": 1671292800,
            "nightsInDest": 1,
            "quality": 308.96653,
            "distance": 1025.94,
            "duration": {
                "departure": 6900,
                "return": 6900,
                "total": 13800
            },
            "fly_duration": "1h 55m",
            "return_duration": "1h 55m",
            "price": 254.3,
            "conversion": {
                "EUR": 254.3
            },
            "bags_price": {
                "hand": 31.5,
                "1": 71.65,
                "2": 143.3,
                "personal_item": 0
            },
            "baglimit": {
                "hand_height": 40,
                "hand_length": 55,
                "hand_weight": 10,
                "hand_width": 20,
                "hold_dimensions_sum": 319,
                "hold_height": 119,
                "hold_length": 119,
                "hold_weight": 20,
                "hold_width": 81,
                "personal_item_height": 25,
                "personal_item_length": 40,
                "personal_item_weight": 10,
                "personal_item_width": 20
            },
            "availability": {
                "seats": 4
            },
            "airlines": [
                "FR"
            ],
            "route": [
                {
                    "id": "145c19b14b8f000081be07cd_0",
                    "combination_id": "145c19b14b8f000081be07cd",
                    "flyFrom": "PRG",
                    "flyTo": "NAP",
                    "cityFrom": "Prague",
                    "cityCodeFrom": "PRG",
                    "cityTo": "Naples",
                    "cityCodeTo": "NAP",
                    "dTime": 1671289500,
                    "dTimeUTC": 1671285900,
                    "aTime": 1671296400,
                    "aTimeUTC": 1671292800,
                    "airline": "FR",
                    "flight_no": 7964,
                    "operating_carrier": "",
                    "operating_flight_no": "",
                    "fare_basis": "",
                    "fare_category": "M",
                    "fare_classes": "",
                    "fare_family": "",
                    "return": 0,
                    "latFrom": 50.1008333,
                    "lngFrom": 14.26,
                    "latTo": 40.8844444,
                    "lngTo": 14.2908333,
                    "mapIdfrom": "prague_cz",
                    "mapIdto": "naples_it",
                    "bags_recheck_required": false,
                    "vi_connection": false,
                    "guarantee": false,
                    "equipment": null,
                    "vehicle_type": "aircraft",
                    "original_return": 0
                },
                {
                    "id": "19b1145c4b9000009035293e_0",
                    "combination_id": "19b1145c4b9000009035293e",
                    "flyFrom": "NAP",
                    "flyTo": "PRG",
                    "cityFrom": "Naples",
                    "cityCodeFrom": "NAP",
                    "cityTo": "Prague",
                    "cityCodeTo": "PRG",
                    "dTime": 1671364800,
                    "dTimeUTC": 1671361200,
                    "aTime": 1671371700,
                    "aTimeUTC": 1671368100,
                    "airline": "FR",
                    "flight_no": 7967,
                    "operating_carrier": "",
                    "operating_flight_no": "",
                    "fare_basis": "",
                    "fare_category": "M",
                    "fare_classes": "",
                    "fare_family": "",
                    "return": 1,
                    "latFrom": 40.8844444,
                    "lngFrom": 14.2908333,
                    "latTo": 50.1008333,
                    "lngTo": 14.26,
                    "mapIdfrom": "naples_it",
                    "mapIdto": "prague_cz",
                    "bags_recheck_required": false,
                    "vi_connection": false,
                    "guarantee": false,
                    "equipment": null,
                    "vehicle_type": "aircraft",
                    "original_return": 0
                }
            ],
            "booking_token": "EOyTsqxlvuxM1al5AuxKy5xQFCaDbFK2A7T5ldArXDgLd35_5q52md05GG2bPjqsumb9q_NacgjQ0rFMwZNc2QURGyBw9SyfpNuhXknZvaEePXI92GVYKlkaV_tvKVMDNOKE9Qho9rJTEnUpW_cG5tKJAumuidk-Ol__yvzNsMu3yFUBiLPVymrwY6JawI9nNlOy8ILTkuak8OG3o0pOlHqS9-1bP3grsQg36NViynDNXnZG4IsRRANWnz6aQ1FLpBrovAHkiR2ZtzpN7BA_rICGRAdc21bobL8_nvl3zDu9TBT7zQ2BQtpb4CKT_5m5QzUGYm4UIwrq6rN2mSzuKw6m2iv8j5wGwmWY3OhAk-sg7QGSsj9rmdPLvnWIBPEyTAhjcZLk4skTCkmN_BWQoZ5JzWCryCsTspkxhbrtUmFHT9wvPwLO13gzHsHV0TZxO1E5lCvN5MRJbq6jJk5TybP-El00ifewZkERvfGptbVVlpU-dlf-Sih7M1HTysqBgmELjnZsjLsoPmGNyptkBlw==",
            "deep_link": "https://www.kiwi.com/deep?affilid=skypicker&currency=EUR&flightsId=145c19b14b8f000081be07cd_0%7C19b1145c4b9000009035293e_0&from=PRG&lang=en&passengers=1&searchBags=0.2&to=NAP&booking_token=EOyTsqxlvuxM1al5AuxKy5xQFCaDbFK2A7T5ldArXDgLd35_5q52md05GG2bPjqsumb9q_NacgjQ0rFMwZNc2QURGyBw9SyfpNuhXknZvaEePXI92GVYKlkaV_tvKVMDNOKE9Qho9rJTEnUpW_cG5tKJAumuidk-Ol__yvzNsMu3yFUBiLPVymrwY6JawI9nNlOy8ILTkuak8OG3o0pOlHqS9-1bP3grsQg36NViynDNXnZG4IsRRANWnz6aQ1FLpBrovAHkiR2ZtzpN7BA_rICGRAdc21bobL8_nvl3zDu9TBT7zQ2BQtpb4CKT_5m5QzUGYm4UIwrq6rN2mSzuKw6m2iv8j5wGwmWY3OhAk-sg7QGSsj9rmdPLvnWIBPEyTAhjcZLk4skTCkmN_BWQoZ5JzWCryCsTspkxhbrtUmFHT9wvPwLO13gzHsHV0TZxO1E5lCvN5MRJbq6jJk5TybP-El00ifewZkERvfGptbVVlpU-dlf-Sih7M1HTysqBgmELjnZsjLsoPmGNyptkBlw==",
            "tracking_pixel": "https://www.kiwi.com/pixel?affilid=skypicker&currency=EUR&flightsId=145c19b14b8f000081be07cd_0%7C19b1145c4b9000009035293e_0&from=PRG&lang=en&passengers=1&searchBags=0.2&to=NAP&booking_token=EOyTsqxlvuxM1al5AuxKy5xQFCaDbFK2A7T5ldArXDgLd35_5q52md05GG2bPjqsumb9q_NacgjQ0rFMwZNc2QURGyBw9SyfpNuhXknZvaEePXI92GVYKlkaV_tvKVMDNOKE9Qho9rJTEnUpW_cG5tKJAumuidk-Ol__yvzNsMu3yFUBiLPVymrwY6JawI9nNlOy8ILTkuak8OG3o0pOlHqS9-1bP3grsQg36NViynDNXnZG4IsRRANWnz6aQ1FLpBrovAHkiR2ZtzpN7BA_rICGRAdc21bobL8_nvl3zDu9TBT7zQ2BQtpb4CKT_5m5QzUGYm4UIwrq6rN2mSzuKw6m2iv8j5wGwmWY3OhAk-sg7QGSsj9rmdPLvnWIBPEyTAhjcZLk4skTCkmN_BWQoZ5JzWCryCsTspkxhbrtUmFHT9wvPwLO13gzHsHV0TZxO1E5lCvN5MRJbq6jJk5TybP-El00ifewZkERvfGptbVVlpU-dlf-Sih7M1HTysqBgmELjnZsjLsoPmGNyptkBlw==",
            "facilitated_booking_available": false,
            "pnr_count": 2,
            "has_airport_change": false,
            "technical_stops": 0,
            "throw_away_ticketing": false,
            "hidden_city_ticketing": false,
            "virtual_interlining": true,
            "mapIdfrom": "prague_cz",
            "mapIdto": "naples_it",
            "hashtags": [
                "outbound:afternoon",
                "outbound:saturday",
                "outbound:direct",
                "outbound:duration:1-2",
                "outbound:departure:15-16",
                "outbound:arrival:17-18",
                "inbound:morning",
                "inbound:afternoon",
                "inbound:sunday",
                "inbound:direct",
                "inbound:duration:1-2",
                "inbound:departure:12-13",
                "inbound:arrival:13-14"
            ],
            "mrp_refreshed": false
        },
        {
            "id": "145c07f04b8f000062d65015_0|07f0145c4b900000b7bb8e97_0",
            "flyFrom": "PRG",
            "flyTo": "MXP",
            "cityFrom": "Prague",
            "cityCodeFrom": "PRG",
            "cityTo": "Milan",
            "cityCodeTo": "MIL",
            "countryFrom": {
                "code": "CZ",
                "name": "Czechia"
            },
            "countryTo": {
                "code": "IT",
                "name": "Italy"
            },
            "dTime": 1671299700,
            "dTimeUTC": 1671296100,
            "aTime": 1671304800,
            "aTimeUTC": 1671301200,
            "nightsInDest": 1,
            "quality": 341.563215,
            "distance": 646.67,
            "duration": {
                "departure": 5100,
                "return": 5400,
                "total": 10500
            },
            "fly_duration": "1h 25m",
            "return_duration": "1h 30m",
            "price": 294.23,
            "conversion": {
                "EUR": 294.23
            },
            "bags_price": {
                "hand": 83.99,
                "1": 116.12,
                "2": 232.23,
                "personal_item": 0
            },
            "baglimit": {
                "hand_height": 40,
                "hand_length": 55,
                "hand_weight": 10,
                "hand_width": 23,
                "hold_dimensions_sum": 439,
                "hold_height": 149,
                "hold_length": 171,
                "hold_weight": 20,
                "hold_width": 119,
                "personal_item_height": 30,
                "personal_item_length": 40,
                "personal_item_weight": 10,
                "personal_item_width": 20
            },
            "availability": {
                "seats": 6
            },
            "airlines": [
                "W6"
            ],
            "route": [
                {
                    "id": "145c07f04b8f000062d65015_0",
                    "combination_id": "145c07f04b8f000062d65015",
                    "flyFrom": "PRG",
                    "flyTo": "MXP",
                    "cityFrom": "Prague",
                    "cityCodeFrom": "PRG",
                    "cityTo": "Milan",
                    "cityCodeTo": "MIL",
                    "dTime": 1671299700,
                    "dTimeUTC": 1671296100,
                    "aTime": 1671304800,
                    "aTimeUTC": 1671301200,
                    "airline": "W6",
                    "flight_no": 5620,
                    "operating_carrier": "",
                    "operating_flight_no": "",
                    "fare_basis": "RSREG",
                    "fare_category": "M",
                    "fare_classes": "R",
                    "fare_family": "",
                    "return": 0,
                    "latFrom": 50.1008333,
                    "lngFrom": 14.26,
                    "latTo": 45.63,
                    "lngTo": 8.72305556,
                    "mapIdfrom": "prague_cz",
                    "mapIdto": "milan_it",
                    "bags_recheck_required": false,
                    "vi_connection": false,
                    "guarantee": false,
                    "equipment": null,
                    "vehicle_type": "aircraft",
                    "original_return": 0
                },
                {
                    "id": "07f0145c4b900000b7bb8e97_0",
                    "combination_id": "07f0145c4b900000b7bb8e97",
                    "flyFrom": "MXP",
                    "flyTo": "PRG",
                    "cityFrom": "Milan",
                    "cityCodeFrom": "MIL",
                    "cityTo": "Prague",
                    "cityCodeTo": "PRG",
                    "dTime": 1671345300,
                    "dTimeUTC": 1671341700,
                    "aTime": 1671350700,
                    "aTimeUTC": 1671347100,
                    "airline": "W6",
                    "flight_no": 5619,
                    "operating_carrier": "",
                    "operating_flight_no": "",
                    "fare_basis": "SREG",
                    "fare_category": "M",
                    "fare_classes": "S",
                    "fare_family": "",
                    "return": 1,
                    "latFrom": 45.63,
                    "lngFrom": 8.72305556,
                    "latTo": 50.1008333,
                    "lngTo": 14.26,
                    "mapIdfrom": "milan_it",
                    "mapIdto": "prague_cz",
                    "bags_recheck_required": false,
                    "vi_connection": false,
                    "guarantee": false,
                    "equipment": null,
                    "vehicle_type": "aircraft",
                    "original_return": 0
                }
            ],
            "booking_token": "Ev_Yqk50C5yofuPB0Sht8Vs15SzU-KzK-8JZ48aTkwKRAore3dqA4XkoTU2XItFThI7OHqpi3V_Jvm6ufqZV6LSFc04Ju5C8cEJPJWseolTNb0XgCa9uvp4-GB1S0buH87JHypSNCKMKKKTsiWB5zD4aMtErPK06Her84eiLgtq9xat1Q_WMn3GSzzN60kZEdGtBtpPaUzTpymcV2eMBnHa2LCd3qKQ8UdtFoWIjFVUXWMb3P2djQ79viwhTKmF47GKsC4h8aa5c3Wn7AC9KX4JdEN_LR62lZrSgtPoKkbGHndS8-KuMZnclxAUG30LJeGi8gsNP1TR8s2dNmkPGVucig5IqaSv-KdLYDgTcLLzklgSkihOrRuPiPQhX4E0ag2JZm7EClkgS0uo6M00bZgetNFtt-HLmC4YtZavquZMxdl7nvsxjnwrAOJ4_BdZOcYQ3m_EdK4Cru2R-rb6PQjbzeWUd1aHRt_0MM_tP_v4Jt0spfQ7M9rxxXqCIHCXQCmBC6gVK5yRW_1L6GA5NDVjqnEYj18ZOcvbCLZBMPk3E=",
            "deep_link": "https://www.kiwi.com/deep?affilid=skypicker&currency=EUR&flightsId=145c07f04b8f000062d65015_0%7C07f0145c4b900000b7bb8e97_0&from=PRG&lang=en&passengers=1&searchBags=0.2&to=MXP&booking_token=Ev_Yqk50C5yofuPB0Sht8Vs15SzU-KzK-8JZ48aTkwKRAore3dqA4XkoTU2XItFThI7OHqpi3V_Jvm6ufqZV6LSFc04Ju5C8cEJPJWseolTNb0XgCa9uvp4-GB1S0buH87JHypSNCKMKKKTsiWB5zD4aMtErPK06Her84eiLgtq9xat1Q_WMn3GSzzN60kZEdGtBtpPaUzTpymcV2eMBnHa2LCd3qKQ8UdtFoWIjFVUXWMb3P2djQ79viwhTKmF47GKsC4h8aa5c3Wn7AC9KX4JdEN_LR62lZrSgtPoKkbGHndS8-KuMZnclxAUG30LJeGi8gsNP1TR8s2dNmkPGVucig5IqaSv-KdLYDgTcLLzklgSkihOrRuPiPQhX4E0ag2JZm7EClkgS0uo6M00bZgetNFtt-HLmC4YtZavquZMxdl7nvsxjnwrAOJ4_BdZOcYQ3m_EdK4Cru2R-rb6PQjbzeWUd1aHRt_0MM_tP_v4Jt0spfQ7M9rxxXqCIHCXQCmBC6gVK5yRW_1L6GA5NDVjqnEYj18ZOcvbCLZBMPk3E=",
            "tracking_pixel": "https://www.kiwi.com/pixel?affilid=skypicker&currency=EUR&flightsId=145c07f04b8f000062d65015_0%7C07f0145c4b900000b7bb8e97_0&from=PRG&lang=en&passengers=1&searchBags=0.2&to=MXP&booking_token=Ev_Yqk50C5yofuPB0Sht8Vs15SzU-KzK-8JZ48aTkwKRAore3dqA4XkoTU2XItFThI7OHqpi3V_Jvm6ufqZV6LSFc04Ju5C8cEJPJWseolTNb0XgCa9uvp4-GB1S0buH87JHypSNCKMKKKTsiWB5zD4aMtErPK06Her84eiLgtq9xat1Q_WMn3GSzzN60kZEdGtBtpPaUzTpymcV2eMBnHa2LCd3qKQ8UdtFoWIjFVUXWMb3P2djQ79viwhTKmF47GKsC4h8aa5c3Wn7AC9KX4JdEN_LR62lZrSgtPoKkbGHndS8-KuMZnclxAUG30LJeGi8gsNP1TR8s2dNmkPGVucig5IqaSv-KdLYDgTcLLzklgSkihOrRuPiPQhX4E0ag2JZm7EClkgS0uo6M00bZgetNFtt-HLmC4YtZavquZMxdl7nvsxjnwrAOJ4_BdZOcYQ3m_EdK4Cru2R-rb6PQjbzeWUd1aHRt_0MM_tP_v4Jt0spfQ7M9rxxXqCIHCXQCmBC6gVK5yRW_1L6GA5NDVjqnEYj18ZOcvbCLZBMPk3E=",
            "facilitated_booking_available": false,
            "pnr_count": 2,
            "has_airport_change": false,
            "technical_stops": 0,
            "throw_away_ticketing": false,
            "hidden_city_ticketing": false,
            "virtual_interlining": true,
            "mapIdfrom": "prague_cz",
            "mapIdto": "milan_it",
            "hashtags": [
                "outbound:afternoon",
                "outbound:evening",
                "outbound:saturday",
                "outbound:direct",
                "outbound:duration:1-2",
                "outbound:departure:17-18",
                "outbound:arrival:19-20",
                "inbound:morning",
                "inbound:sunday",
                "inbound:direct",
                "inbound:duration:1-2",
                "inbound:departure:6-7",
                "inbound:arrival:8-9"
            ],
            "mrp_refreshed": false
        }
    ],
    "_results": 25,
    "best_results": [
        {
            "duration": 12300,
            "price": 203.73,
            "quality": 255.063205,
            "sort": "price"
        }
    ],
    "search_params": {
        "flyFrom_type": "city",
        "to_type": "city",
        "seats": {
            "passengers": 1,
            "adults": 1,
            "children": 0,
            "infants": 0
        }
    },
    "hashtags": [
        {
            "count": 14,
            "name": "outbound:morning"
        },
        {
            "count": 5,
            "name": "outbound:saturday"
        },
        {
            "count": 25,
            "name": "outbound:direct"
        },
        {
            "count": 25,
            "name": "outbound:duration:1-2"
        },
        {
            "count": 1,
            "name": "outbound:departure:10-11"
        },
        {
            "count": 2,
            "name": "outbound:arrival:11-12"
        },
        {
            "count": 19,
            "name": "inbound:morning"
        },
        {
            "count": 12,
            "name": "inbound:afternoon"
        },
        {
            "count": 15,
            "name": "inbound:sunday"
        },
        {
            "count": 25,
            "name": "inbound:direct"
        },
        {
            "count": 23,
            "name": "inbound:duration:1-2"
        },
        {
            "count": 6,
            "name": "inbound:departure:12-13"
        },
        {
            "count": 6,
            "name": "inbound:arrival:13-14"
        },
        {
            "count": 6,
            "name": "outbound:afternoon"
        },
        {
            "count": 7,
            "name": "outbound:evening"
        },
        {
            "count": 2,
            "name": "outbound:departure:17-18"
        },
        {
            "count": 2,
            "name": "outbound:arrival:19-20"
        },
        {
            "count": 6,
            "name": "inbound:departure:6-7"
        },
        {
            "count": 6,
            "name": "inbound:arrival:8-9"
        },
        {
            "count": 8,
            "name": "outbound:friday"
        },
        {
            "count": 6,
            "name": "outbound:departure:8-9"
        },
        {
            "count": 6,
            "name": "outbound:arrival:10-11"
        },
        {
            "count": 4,
            "name": "weekend"
        },
        {
            "count": 10,
            "name": "inbound:saturday"
        },
        {
            "count": 5,
            "name": "inbound:departure:15-16"
        },
        {
            "count": 5,
            "name": "inbound:arrival:17-18"
        },
        {
            "count": 1,
            "name": "outbound:departure:9-10"
        },
        {
            "count": 6,
            "name": "outbound:departure:11-12"
        },
        {
            "count": 6,
            "name": "outbound:arrival:13-14"
        },
        {
            "count": 1,
            "name": "inbound:evening"
        },
        {
            "count": 1,
            "name": "inbound:departure:17-18"
        },
        {
            "count": 1,
            "name": "inbound:arrival:19-20"
        },
        {
            "count": 7,
            "name": "outbound:thursday"
        },
        {
            "count": 5,
            "name": "outbound:departure:21-22"
        },
        {
            "count": 5,
            "name": "outbound:arrival:22-23"
        },
        {
            "count": 2,
            "name": "inbound:departure:8-9"
        },
        {
            "count": 4,
            "name": "inbound:arrival:9-10"
        },
        {
            "count": 5,
            "name": "outbound:wednesday"
        },
        {
            "count": 4,
            "name": "outbound:departure:15-16"
        },
        {
            "count": 4,
            "name": "outbound:arrival:17-18"
        },
        {
            "count": 2,
            "name": "inbound:duration:2-3"
        },
        {
            "count": 2,
            "name": "inbound:departure:7-8"
        },
        {
            "count": 3,
            "name": "inbound:departure:9-10"
        },
        {
            "count": 3,
            "name": "inbound:arrival:10-11"
        }
    ],
    "location_hashtags": [
        "sightseeing",
        "activities",
        "beach",
        "family fun",
        "nightlife",
        "famous cities",
        "events",
        "city break",
        "culture",
        "romance",
        "food&drink",
        "adventure",
        "music",
        "unusual",
        "sports",
        "festivals",
        "diving&snorkeling",
        "mountains",
        "winter sport",
        "surfing",
        "budget-friendly",
        "concerts",
        "hidden gems",
        "skiing"
    ],
    "airlinesList": [
        {
            "filterName": "EK"
        },
        {
            "filterName": "TF"
        },
        {
            "filterName": "TG"
        },
        {
            "filterName": "HC"
        },
        {
            "filterName": "GQ"
        },
        {
            "filterName": "NX"
        },
        {
            "filterName": "MX"
        },
        {
            "filterName": "6J"
        },
        {
            "filterName": "9C"
        },
        {
            "filterName": "TS"
        },
        {
            "filterName": "EC"
        },
        {
            "filterName": "CM"
        },
        {
            "filterName": "9R"
        },
        {
            "filterName": "BT"
        },
        {
            "filterName": "2B"
        },
        {
            "filterName": "H8"
        },
        {
            "filterName": "ER"
        },
        {
            "filterName": "U8"
        },
        {
            "filterName": "FB"
        },
        {
            "filterName": "DQ"
        },
        {
            "filterName": "JZ"
        },
        {
            "filterName": "KTB"
        },
        {
            "filterName": "QS"
        },
        {
            "filterName": "AK"
        },
        {
            "filterName": "SS"
        },
        {
            "filterName": "CY"
        },
        {
            "filterName": "PR"
        },
        {
            "filterName": "B0"
        },
        {
            "filterName": "OD"
        },
        {
            "filterName": "IZ"
        },
        {
            "filterName": "AF"
        },
        {
            "filterName": "AI"
        },
        {
            "filterName": "IX"
        },
        {
            "filterName": "SK"
        },
        {
            "filterName": "H2"
        },
        {
            "filterName": "C3"
        },
        {
            "filterName": "FN"
        },
        {
            "filterName": "G9"
        },
        {
            "filterName": "4N"
        },
        {
            "filterName": "AY"
        },
        {
            "filterName": "H6"
        },
        {
            "filterName": "Y4"
        },
        {
            "filterName": "E9"
        },
        {
            "filterName": "DU"
        },
        {
            "filterName": "AH"
        },
        {
            "filterName": "HY"
        },
        {
            "filterName": "5F"
        },
        {
            "filterName": "UO"
        },
        {
            "filterName": "UR"
        },
        {
            "filterName": "SL"
        },
        {
            "filterName": "ZP"
        },
        {
            "filterName": "DE"
        },
        {
            "filterName": "FO"
        },
        {
            "filterName": "OS"
        },
        {
            "filterName": "NF"
        },
        {
            "filterName": "FD"
        },
        {
            "filterName": "DT"
        },
        {
            "filterName": "QP"
        },
        {
            "filterName": "ARYSTAN"
        },
        {
            "filterName": "AN"
        },
        {
            "filterName": "OZ"
        },
        {
            "filterName": "SB"
        },
        {
            "filterName": "PS"
        },
        {
            "filterName": "F3"
        },
        {
            "filterName": "SU"
        },
        {
            "filterName": "AR"
        },
        {
            "filterName": "VW"
        },
        {
            "filterName": "D8"
        },
        {
            "filterName": "UB"
        },
        {
            "filterName": "CE"
        },
        {
            "filterName": "O2"
        },
        {
            "filterName": "UL"
        },
        {
            "filterName": "SG"
        },
        {
            "filterName": "6Y"
        },
        {
            "filterName": "W6"
        },
        {
            "filterName": "Q6"
        },
        {
            "filterName": "IU"
        },
        {
            "filterName": "D7"
        },
        {
            "filterName": "GF"
        },
        {
            "filterName": "ZL"
        },
        {
            "filterName": "2W"
        },
        {
            "filterName": "WF"
        },
        {
            "filterName": "VV"
        },
        {
            "filterName": "EN"
        },
        {
            "filterName": "BG"
        },
        {
            "filterName": "F9"
        },
        {
            "filterName": "VY"
        },
        {
            "filterName": "FR"
        },
        {
            "filterName": "9K"
        },
        {
            "filterName": "RP"
        },
        {
            "filterName": "GA"
        },
        {
            "filterName": "TA"
        },
        {
            "filterName": "BR"
        },
        {
            "filterName": "G8"
        },
        {
            "filterName": "PK"
        },
        {
            "filterName": "DG"
        },
        {
            "filterName": "PY"
        },
        {
            "filterName": "GM"
        },
        {
            "filterName": "WE"
        },
        {
            "filterName": "V7"
        },
        {
            "filterName": "PC"
        },
        {
            "filterName": "3L"
        },
        {
            "filterName": "OM"
        },
        {
            "filterName": "WS"
        },
        {
            "filterName": "VH"
        },
        {
            "filterName": "W2"
        },
        {
            "filterName": "VB"
        },
        {
            "filterName": "5Z"
        },
        {
            "filterName": "WY"
        },
        {
            "filterName": "PW"
        },
        {
            "filterName": "7G"
        },
        {
            "filterName": "DV"
        },
        {
            "filterName": "FHM"
        },
        {
            "filterName": "3H"
        },
        {
            "filterName": "ZB"
        },
        {
            "filterName": "JL"
        },
        {
            "filterName": "VZ"
        },
        {
            "filterName": "L6"
        },
        {
            "filterName": "SF"
        },
        {
            "filterName": "QH"
        },
        {
            "filterName": "LA"
        },
        {
            "filterName": "RO"
        },
        {
            "filterName": "E4"
        },
        {
            "filterName": "NO"
        },
        {
            "filterName": "HB"
        },
        {
            "filterName": "HA"
        },
        {
            "filterName": "N0"
        },
        {
            "filterName": "Z8"
        },
        {
            "filterName": "BS"
        },
        {
            "filterName": "DX"
        },
        {
            "filterName": "MS"
        },
        {
            "filterName": "KQ"
        },
        {
            "filterName": "LQ"
        },
        {
            "filterName": "WG"
        },
        {
            "filterName": "NP"
        },
        {
            "filterName": "MM"
        },
        {
            "filterName": "DD"
        },
        {
            "filterName": "AV"
        },
        {
            "filterName": "OU"
        },
        {
            "filterName": "7C"
        },
        {
            "filterName": "PD"
        },
        {
            "filterName": "SP"
        },
        {
            "filterName": "TO"
        },
        {
            "filterName": "TW"
        },
        {
            "filterName": "2D"
        },
        {
            "filterName": "FC"
        },
        {
            "filterName": "TK"
        },
        {
            "filterName": "4Y"
        },
        {
            "filterName": "BC"
        },
        {
            "filterName": "WK"
        },
        {
            "filterName": "SR"
        },
        {
            "filterName": "MR"
        },
        {
            "filterName": "BZ"
        },
        {
            "filterName": "H1"
        },
        {
            "filterName": "9X"
        },
        {
            "filterName": "BP"
        },
        {
            "filterName": "6A"
        },
        {
            "filterName": "FZ"
        },
        {
            "filterName": "JU"
        },
        {
            "filterName": "RZ"
        },
        {
            "filterName": "KC"
        },
        {
            "filterName": "NZ"
        },
        {
            "filterName": "KE"
        },
        {
            "filterName": "LX"
        },
        {
            "filterName": "CD"
        },
        {
            "filterName": "XR"
        },
        {
            "filterName": "OG"
        },
        {
            "filterName": "5O"
        },
        {
            "filterName": "HD"
        },
        {
            "filterName": "KM"
        },
        {
            "filterName": "SA"
        },
        {
            "filterName": "TU"
        },
        {
            "filterName": "PX"
        },
        {
            "filterName": "QV"
        },
        {
            "filterName": "MH"
        },
        {
            "filterName": "NK"
        },
        {
            "filterName": "4B"
        },
        {
            "filterName": "G4"
        },
        {
            "filterName": "AS"
        },
        {
            "filterName": "NU"
        },
        {
            "filterName": "LH"
        },
        {
            "filterName": "R5"
        },
        {
            "filterName": "RA"
        },
        {
            "filterName": "PU"
        },
        {
            "filterName": "WO"
        },
        {
            "filterName": "N3"
        },
        {
            "filterName": "OV"
        },
        {
            "filterName": "ID"
        },
        {
            "filterName": "FT"
        },
        {
            "filterName": "FA"
        },
        {
            "filterName": "GK"
        },
        {
            "filterName": "I5"
        },
        {
            "filterName": "M0"
        },
        {
            "filterName": "VE"
        },
        {
            "filterName": "RK"
        },
        {
            "filterName": "CZ"
        },
        {
            "filterName": "KR"
        },
        {
            "filterName": "KU"
        },
        {
            "filterName": "XJ"
        },
        {
            "filterName": "A1"
        },
        {
            "filterName": "G3"
        },
        {
            "filterName": "H7"
        },
        {
            "filterName": "XY"
        },
        {
            "filterName": "VJ"
        },
        {
            "filterName": "WV"
        },
        {
            "filterName": "SN"
        },
        {
            "filterName": "WB"
        },
        {
            "filterName": "JX"
        },
        {
            "filterName": "P6"
        },
        {
            "filterName": "6E"
        },
        {
            "filterName": "B6"
        },
        {
            "filterName": "GE"
        },
        {
            "filterName": "UG"
        },
        {
            "filterName": "UU"
        },
        {
            "filterName": "OA"
        },
        {
            "filterName": "QF"
        },
        {
            "filterName": "BI"
        },
        {
            "filterName": "F8"
        },
        {
            "filterName": "LY"
        },
        {
            "filterName": "ET"
        },
        {
            "filterName": "XC"
        },
        {
            "filterName": "EW"
        },
        {
            "filterName": "FI"
        },
        {
            "filterName": "DM"
        },
        {
            "filterName": "QR"
        },
        {
            "filterName": "PM"
        },
        {
            "filterName": "B7"
        },
        {
            "filterName": "WM"
        },
        {
            "filterName": "5W"
        },
        {
            "filterName": "YP"
        },
        {
            "filterName": "JA"
        },
        {
            "filterName": "EY"
        },
        {
            "filterName": "IF"
        },
        {
            "filterName": "5U"
        },
        {
            "filterName": "BE"
        },
        {
            "filterName": "LS"
        },
        {
            "filterName": "AA"
        },
        {
            "filterName": "UX"
        },
        {
            "filterName": "AM"
        },
        {
            "filterName": "TX"
        },
        {
            "filterName": "I2"
        },
        {
            "filterName": "TC"
        },
        {
            "filterName": "BW"
        },
        {
            "filterName": "QZ"
        },
        {
            "filterName": "3K"
        },
        {
            "filterName": "SV"
        },
        {
            "filterName": "LJ"
        },
        {
            "filterName": "3M"
        },
        {
            "filterName": "GR"
        },
        {
            "filterName": "BF"
        },
        {
            "filterName": "4Z"
        },
        {
            "filterName": "H4"
        },
        {
            "filterName": "JY"
        },
        {
            "filterName": "DY"
        },
        {
            "filterName": "HM"
        },
        {
            "filterName": "VA"
        },
        {
            "filterName": "UEPFLY"
        },
        {
            "filterName": "TB"
        },
        {
            "filterName": "8U"
        },
        {
            "filterName": "5J"
        },
        {
            "filterName": "2L"
        },
        {
            "filterName": "K6"
        },
        {
            "filterName": "RS"
        },
        {
            "filterName": "DO"
        },
        {
            "filterName": "AC"
        },
        {
            "filterName": "RC"
        },
        {
            "filterName": "MU"
        },
        {
            "filterName": "SM"
        },
        {
            "filterName": "X3"
        },
        {
            "filterName": "UP"
        },
        {
            "filterName": "DL"
        },
        {
            "filterName": "KL"
        },
        {
            "filterName": "3O"
        },
        {
            "filterName": "WT"
        },
        {
            "filterName": "N9"
        },
        {
            "filterName": "IV"
        },
        {
            "filterName": "FJ"
        },
        {
            "filterName": "P0"
        },
        {
            "filterName": "NH"
        },
        {
            "filterName": "A9"
        },
        {
            "filterName": "RM"
        },
        {
            "filterName": "A3"
        },
        {
            "filterName": "J2"
        },
        {
            "filterName": "LO"
        },
        {
            "filterName": "QG"
        },
        {
            "filterName": "3S"
        },
        {
            "filterName": "U2"
        },
        {
            "filterName": "TN"
        },
        {
            "filterName": "OK"
        },
        {
            "filterName": "LG"
        },
        {
            "filterName": "PB"
        },
        {
            "filterName": "X1"
        },
        {
            "filterName": "8D"
        },
        {
            "filterName": "BA"
        },
        {
            "filterName": "VS"
        },
        {
            "filterName": "WJ"
        },
        {
            "filterName": "S6"
        },
        {
            "filterName": "BJ"
        },
        {
            "filterName": "OB"
        },
        {
            "filterName": "P5"
        },
        {
            "filterName": "6H"
        },
        {
            "filterName": "JT"
        },
        {
            "filterName": "TP"
        },
        {
            "filterName": "UA"
        },
        {
            "filterName": "9U"
        },
        {
            "filterName": "8M"
        },
        {
            "filterName": "ME"
        },
        {
            "filterName": "ZT"
        },
        {
            "filterName": "1L"
        },
        {
            "filterName": "LF"
        },
        {
            "filterName": "ZH"
        },
        {
            "filterName": "AZ"
        },
        {
            "filterName": "KF"
        },
        {
            "filterName": "T7"
        },
        {
            "filterName": "IW"
        },
        {
            "filterName": "CA"
        },
        {
            "filterName": "PG"
        },
        {
            "filterName": "UJ"
        },
        {
            "filterName": "E5"
        },
        {
            "filterName": "9M"
        },
        {
            "filterName": "XQ"
        },
        {
            "filterName": "CX"
        },
        {
            "filterName": "CI"
        },
        {
            "filterName": "VN"
        },
        {
            "filterName": "TM"
        },
        {
            "filterName": "Z2"
        },
        {
            "filterName": "KG"
        },
        {
            "filterName": "FH"
        },
        {
            "filterName": "BUTAAIR"
        },
        {
            "filterName": "AP"
        },
        {
            "filterName": "3F"
        },
        {
            "filterName": "FS"
        },
        {
            "filterName": "ZG"
        },
        {
            "filterName": "KP"
        },
        {
            "filterName": "2I"
        },
        {
            "filterName": "EI"
        },
        {
            "filterName": "W9"
        },
        {
            "filterName": "IB"
        },
        {
            "filterName": "AT"
        },
        {
            "filterName": "SY"
        },
        {
            "filterName": "SQ"
        },
        {
            "filterName": "TR"
        },
        {
            "filterName": "MNE"
        },
        {
            "filterName": "IQ"
        },
        {
            "filterName": "UD"
        },
        {
            "filterName": "J9"
        },
        {
            "filterName": "LM"
        },
        {
            "filterName": "RJ"
        },
        {
            "filterName": "BY"
        },
        {
            "filterName": "UK"
        },
        {
            "filterName": "IJ"
        },
        {
            "filterName": "NT"
        },
        {
            "filterName": "VU"
        },
        {
            "filterName": "KX"
        },
        {
            "filterName": "XK"
        },
        {
            "filterName": "8P"
        },
        {
            "filterName": "RW"
        },
        {
            "filterName": "S4"
        },
        {
            "filterName": "FY"
        },
        {
            "filterName": "HV"
        },
        {
            "filterName": "MK"
        },
        {
            "filterName": "HX"
        },
        {
            "filterName": "JQ"
        },
        {
            "filterName": "Y9"
        },
        {
            "filterName": "AD"
        },
        {
            "filterName": "3Z"
        },
        {
            "filterName": "Q4"
        }
    ],
    "airportsList": [],
    "all_airlines": [
        "EK",
        "TF",
        "TG",
        "HC",
        "GQ",
        "NX",
        "MX",
        "6J",
        "9C",
        "TS",
        "EC",
        "CM",
        "9R",
        "BT",
        "2B",
        "H8",
        "ER",
        "U8",
        "FB",
        "DQ",
        "JZ",
        "KTB",
        "QS",
        "AK",
        "SS",
        "CY",
        "PR",
        "B0",
        "OD",
        "IZ",
        "AF",
        "AI",
        "IX",
        "SK",
        "H2",
        "C3",
        "FN",
        "G9",
        "4N",
        "AY",
        "H6",
        "Y4",
        "E9",
        "DU",
        "AH",
        "HY",
        "5F",
        "UO",
        "UR",
        "SL",
        "ZP",
        "DE",
        "FO",
        "OS",
        "NF",
        "FD",
        "DT",
        "QP",
        "ARYSTAN",
        "AN",
        "OZ",
        "SB",
        "PS",
        "F3",
        "SU",
        "AR",
        "VW",
        "D8",
        "UB",
        "CE",
        "O2",
        "UL",
        "SG",
        "6Y",
        "W6",
        "Q6",
        "IU",
        "D7",
        "GF",
        "ZL",
        "2W",
        "WF",
        "VV",
        "EN",
        "BG",
        "F9",
        "VY",
        "FR",
        "9K",
        "RP",
        "GA",
        "TA",
        "BR",
        "G8",
        "PK",
        "DG",
        "PY",
        "GM",
        "WE",
        "V7",
        "PC",
        "3L",
        "OM",
        "WS",
        "VH",
        "W2",
        "VB",
        "5Z",
        "WY",
        "PW",
        "7G",
        "DV",
        "FHM",
        "3H",
        "ZB",
        "JL",
        "VZ",
        "L6",
        "SF",
        "QH",
        "LA",
        "RO",
        "E4",
        "NO",
        "HB",
        "HA",
        "N0",
        "Z8",
        "BS",
        "DX",
        "MS",
        "KQ",
        "LQ",
        "WG",
        "NP",
        "MM",
        "DD",
        "AV",
        "OU",
        "7C",
        "PD",
        "SP",
        "TO",
        "TW",
        "2D",
        "FC",
        "TK",
        "4Y",
        "BC",
        "WK",
        "SR",
        "MR",
        "BZ",
        "H1",
        "9X",
        "BP",
        "6A",
        "FZ",
        "JU",
        "RZ",
        "KC",
        "NZ",
        "KE",
        "LX",
        "CD",
        "XR",
        "OG",
        "5O",
        "HD",
        "KM",
        "SA",
        "TU",
        "PX",
        "QV",
        "MH",
        "NK",
        "4B",
        "G4",
        "AS",
        "NU",
        "LH",
        "R5",
        "RA",
        "PU",
        "WO",
        "N3",
        "OV",
        "ID",
        "FT",
        "FA",
        "GK",
        "I5",
        "M0",
        "VE",
        "RK",
        "CZ",
        "KR",
        "KU",
        "XJ",
        "A1",
        "G3",
        "H7",
        "XY",
        "VJ",
        "WV",
        "SN",
        "WB",
        "JX",
        "P6",
        "6E",
        "B6",
        "GE",
        "UG",
        "UU",
        "OA",
        "QF",
        "BI",
        "F8",
        "LY",
        "ET",
        "XC",
        "EW",
        "FI",
        "DM",
        "QR",
        "PM",
        "B7",
        "WM",
        "5W",
        "YP",
        "JA",
        "EY",
        "IF",
        "5U",
        "BE",
        "LS",
        "AA",
        "UX",
        "AM",
        "TX",
        "I2",
        "TC",
        "BW",
        "QZ",
        "3K",
        "SV",
        "LJ",
        "3M",
        "GR",
        "BF",
        "4Z",
        "H4",
        "JY",
        "DY",
        "HM",
        "VA",
        "UEPFLY",
        "TB",
        "8U",
        "5J",
        "2L",
        "K6",
        "RS",
        "DO",
        "AC",
        "RC",
        "MU",
        "SM",
        "X3",
        "UP",
        "DL",
        "KL",
        "3O",
        "WT",
        "N9",
        "IV",
        "FJ",
        "P0",
        "NH",
        "A9",
        "RM",
        "A3",
        "J2",
        "LO",
        "QG",
        "3S",
        "U2",
        "TN",
        "OK",
        "LG",
        "PB",
        "X1",
        "8D",
        "BA",
        "VS",
        "WJ",
        "S6",
        "BJ",
        "OB",
        "P5",
        "6H",
        "JT",
        "TP",
        "UA",
        "9U",
        "8M",
        "ME",
        "ZT",
        "1L",
        "LF",
        "ZH",
        "AZ",
        "KF",
        "T7",
        "IW",
        "CA",
        "PG",
        "UJ",
        "E5",
        "9M",
        "XQ",
        "CX",
        "CI",
        "VN",
        "TM",
        "Z2",
        "KG",
        "FH",
        "BUTAAIR",
        "AP",
        "3F",
        "FS",
        "ZG",
        "KP",
        "2I",
        "EI",
        "W9",
        "IB",
        "AT",
        "SY",
        "SQ",
        "TR",
        "MNE",
        "IQ",
        "UD",
        "J9",
        "LM",
        "RJ",
        "BY",
        "UK",
        "IJ",
        "NT",
        "VU",
        "KX",
        "XK",
        "8P",
        "RW",
        "S4",
        "FY",
        "HV",
        "MK",
        "HX",
        "JQ",
        "Y9",
        "AD",
        "3Z",
        "Q4"
    ],
    "all_stopover_airports": [],
    "all_stopover_countries": [],
    "all_prices": {
        "200-211": 1,
        "211-224": 2,
        "251-266": 1,
        "282-299": 2,
        "299-316": 5,
        "316-335": 6,
        "335-355": 2,
        "355-376": 2,
        "376-398": 2,
        "398-422": 2
    },
    "sort_version": 0
}
"""
}

