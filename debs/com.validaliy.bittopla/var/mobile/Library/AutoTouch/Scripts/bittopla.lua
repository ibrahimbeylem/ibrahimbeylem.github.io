----------------------------------------------  -------------- Check Fonksiyonu -------------- ----------------------------------------------

function check()
while true do
appActivate("com.vodafone.datahunters");

-- bit toplama ekranı
local bittoplaa = getColor(163, 107);
if bittoplaa == 16765440 then
tap(260, 780);
usleep(1000);
bittopla();
end


-- mağazaya git ekranı
local magaza = getColor(100, 1200);
if magaza == 14369535 then
tap(673, 164); -- çarpı
end


-- seviye atladınız ekranı
local seviye = getColor(345, 350);
if seviye == 0 then
usleep(1000);
tap(100, 1038);-- devam et
usleep(1000);
end


--oyun başla butonu
local oyunbasla = getColor(100, 1200);
if oyunbasla == 15073280 then
tap(100, 1200);
usleep(10000);
end




usleep(4000000);
local bityok = getColor(100, 1200);
if bityok == 6690107 then
usleep(10000);
appActivate("cn.tinyapps.XGPSFree");
usleep(100000);
fakegpsbekle();
ortala2();
sagbas();
end -- if bit yok





usleep(1000000);
end -- while
end 
----------------------------------------------  -------------- Check Fonksiyonu -------------- ----------------------------------------------





----------------------------------------------
----------- bit topla -----------
----------------------------------------------
function bittopla()
while true do --bitleri toplama

local bitler = findColor(11862016, 1, {1, 90, 740, 1230}); --bitleri arama

for i, v in pairs(bitler) do
tap(v[1], v[2]);
usleep(1.00);
end


local bitis = getColor(16, 15); -- 15539492
if bitis == 15539492 then
break
end -- mağaza butonunu görünce döngüyü surdur

end --while döngü bitişi
end -- bit topla fonksiyon
----------------------------------------------
----------- bit topla biti -----------
----------------------------------------------






----------------------------------------------
----------- fake location -----------
----------------------------------------------
function ortala()
usleep(10000);
tap(50, 1290); -- lokasyon tuşu
usleep(10000);
end

function ortala2()
usleep(1000);
tap(700, 1280);
usleep(1000);
end


function basla()
local durmus = getColor(375, 1290);
if durmus == 31487 then
tap(375, 1290);
end
end


function durdur()
local acik = getColor(375, 1290);
if acik == 16316404 then
tap(375, 1290);
end
end


function sagbas()
touchDown(0, 627, 795);
usleep(1000000);
touchUp(0, 627, 795);
usleep(1000);
end


function solbas()
touchDown(0, 127, 795);
usleep(1000000);
touchUp(0, 127, 795);
usleep(1000);
end


function yukaribas()
usleep(1000);
touchDown(0, 127, 543);
usleep(1000000);
touchUp(0, 127, 543);
usleep(1000);
end


function asagibas()
touchDown(0, 375, 1047);
usleep(1000000);
touchUp(0, 375, 1047);
usleep(1000);
end


function fakegpsbekle()
while true do
local fakegpsbekle = getColor(700, 1275);
if fakegpsbekle == 31487 then
break
end -- if
usleep(100000);
end -- while


while true do -- while 2 başlatma
local acik = getColor(375, 1290);
if acik == 16316404 then --if1
break -- zaten açık
else
usleep(3000000);
basla();
usleep(100000);
local ok = getColor(366, 753); 
if ok == 31487 then --if2
tap(369, 763); --ok
usleep(100000);
else
break
end --if2
end-- if1
end --while 2



end -- function


----------------------------------------------
----------- fake location bitis. -----------
----------------------------------------------




check();