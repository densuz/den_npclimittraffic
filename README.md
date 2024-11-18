Very SIMPLE Free Opensource RESOURCES NPC LIMIT TRAFFIC WALK & Vehicles 

<h1>Deskripsi</h1>
Script ini digunakan untuk mengurangi atau meningkatkan lalu lintas kendaraan dan jumlah NPC di GTA 5 FIVEM ROLEPLAY.


#### Fitur dan Manfaat:
1. **Optimasi Performansi**  
   - Menurunkan kepadatan untuk mengurangi beban pada server atau klien.

2. **Menciptakan Atmosfer**  
   - Mengatur suasana dunia agar lebih ramai atau lebih sepi, sesuai tema yang diinginkan.

3. **Pengalaman Gameplay**  
   - Mengurangi gangguan dari NPC dan kendaraan selama bermain, menciptakan pengalaman yang lebih terfokus.

4. **Efisiensi**  
   - Mengurangi loop yang tidak perlu untuk meningkatkan efisiensi.

5. **Optimasi Kendaraan yang Diparkir**  
   - Mengontrol jumlah kendaraan yang diparkir agar tetap realistis.

6. **Realisme Berdasarkan Kondisi Dunia**  
   - Menyesuaikan kepadatan NPC berdasarkan cuaca atau waktu untuk menciptakan pengalaman yang lebih imersif.

<H1>NOTES</H1>
- Jika nilai pedFrequency atau trafficFrequency diatur ke 0.0, maka pejalan kaki atau kendaraan tidak akan muncul di kota. <br>
- Pastikan nilai pedFrequency dan trafficFrequency tidak melebihi batas (0.0 hingga 1.0) untuk menghindari hasil yang tidak diinginkan. <br>
- Gunakan perintah **/setdensity** untuk mengubah kepadatan NPC tanpa harus restart script.

**Optimasi untuk Kendaraan yang Diparkir:** <br>
SetParkedVehicleDensityMultiplierThisFrame(0.1)

**debugging:**
local function logDensityChanges()
    print(("[DEBUG] Pedestrian Density: %s | Traffic Density: %s"):format(config.pedFrequency, config.trafficFrequency))
end
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000) -- Log setiap menit
        logDensityChanges()
    end
end) 


## Support

If you want to support this project, you can make a donation via PayPal:

[![PayPal Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://paypal.me/densuz?country.x=ID&locale.x=id_ID)



