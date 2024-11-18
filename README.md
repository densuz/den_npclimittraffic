Very SIMPLE Free Opensource RESOURCES NPC LIMIT TRAFFIC WALK & Vehicles 

<h1>Deskripsi</h1>
Script ini digunakan untuk mengurangi atau meningkatkan lalu lintas kendaraan dan jumlah NPC di GTA 5 FIVEM ROLEPLAY.

1.Optimasi Performansi: Menurunkan kepadatan untuk mengurangi beban pada server atau klien.
2.Menciptakan Atmosfer: Mengatur suasana dunia agar lebih ramai atau lebih sepi, tergantung pada tema yang diinginkan.
3.Pengalaman Gameplay: Meningkatkan atau mengurangi gangguan dari NPC dan kendaraan selama bermain.
4. Mengurangi loop yang tidak perlu, lebih efisien.
5. Optimasi untuk Kendaraan yang Diparkir
6. kepadatan NPC berdasarkan cuaca atau waktu untuk meningkatkan realisme.

<H1>NOTES</H1>
- Jika nilai pedFrequency atau trafficFrequency diatur ke 0.0, maka pejalan kaki atau kendaraan tidak akan muncul di kota.
- Pastikan nilai pedFrequency dan trafficFrequency tidak melebihi batas (0.0 hingga 1.0) untuk menghindari hasil yang tidak diinginkan:

Gunakan perintah **/setdensity** untuk mengubah kepadatan NPC tanpa harus restart script.

baris skrip untuk debugging :
``` local function logDensityChanges()
    print(("[DEBUG] Pedestrian Density: %s | Traffic Density: %s"):format(config.pedFrequency, config.trafficFrequency))
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000) -- Log setiap menit
        logDensityChanges()
    end
end) ```

**Optimasi untuk Kendaraan yang Diparkir:**
SetParkedVehicleDensityMultiplierThisFrame(0.1)