#!/bin/bash
ntweb=( vg.no finn.no nrk.no dagbladet.no tv2.no nettavisen.no yr.no aftenposten.no dnb.no difi.no vglive.no e24.no nav.no norsk-tipping.no startsiden.no elkjop.no dinside.no abcnyheter.no komplett.no sol.no bt.no tek.no sparebank1.no telenor.no 1881.no prisjakt.no gulesider.no dn.no adressa.no zalando.no feide.no )
i=0
for name in ${ntweb[@]}; do
((i++));
echo "Scanning item $name ($i of ${#ntweb[@]})"
sudo docker run --rm wappalyzer/cli https://$name | jq > "json/$name.json"
done
