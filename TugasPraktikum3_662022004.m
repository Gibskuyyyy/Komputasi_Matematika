clc
clear

%buat conntoh nested if,dan contoh while
%nested if tentang kasir
disp ('NESTED IF');
disp ('RUMAH MAKAN PADANG GIBRAN');
disp ('=========================');

P1 = input('Apakah kamu ingin memesan? (y/n): ', 's');
if lower(P1) == 'y'
    P2 = input('Apakah ingin pesan makanan? (y/n): ', 's');
    if lower(P2) == 'y'
        Makan = input('Ingin pesan makan apa? ', 's');
        P3 = input('Apakah ingin pesan minuman? (y/n): ', 's');
        if lower(P3) == 'y'
            Minum = input('Ingin pesan minum apa? ', 's');
            disp('Saya ulangi lagi ya pesanannya..');
            disp(['Makannya  : ', Makan]);
            disp(['Minumnya  : ', Minum]);
        else
            disp('Saya ulangi lagi ya pesanannya..');
            disp(['Makannya  : ', Makan]);
        end
    else
        P3 = input('Apakah ingin pesan minuman? (y/n): ', 's');
        if lower(P3) == 'y'
            Minum = input('Ingin pesan minum apa? ', 's');
            disp('Saya ulangi lagi ya pesanannya..');
            disp(['Minumnya  : ', Minum]);
        else
            disp('Tidak ada pesanan.');
        end
    end
else
    disp('Baiklah, senang atas kunjungan Anda.');
end

%while tentang kasir
ulang = true;

while ulang
    disp ('while loop');
    disp ('RUMAH MAKAN PADANG GIBRAN');
    disp ('=========================');

    P1 = input('Apakah kamu ingin memesan? (y/n): ', 's');
    if lower(P1) == 'y'
        P2 = input('Apakah ingin pesan makanan? (y/n): ', 's');
        if lower(P2) == 'y'
            Makan = input('Ingin pesan makan apa? ', 's');
            P3 = input('Apakah ingin pesan minuman? (y/n): ', 's');
            if lower(P3) == 'y'
                Minum = input('Ingin pesan minum apa? ', 's');
                disp('Saya ulangi lagi ya pesanannya..');
                disp(['Makannya  : ', Makan]);
                disp(['Minumnya  : ', Minum]);
            else
                disp('Saya ulangi lagi ya pesanannya..');
                disp(['Makannya  : ', Makan]);
            end
        else
            P3 = input('Apakah ingin pesan minuman? (y/n): ', 's');
            if lower(P3) == 'y'
                Minum = input('Ingin pesan minum apa? ', 's');
                disp('Saya ulangi lagi ya pesanannya..');
                disp(['Minumnya  : ', Minum]);
            else
                disp('Tidak ada pesanan.');
            end
        end
    else
        disp('Baiklah, senang atas kunjungan Anda.');
    end

    % Tanya apakah ingin mengulang
    lagi = input('Apakah ingin memesan lagi? (y/n): ', 's');
    if lower(lagi) ~= 'y'
        ulang = false;
        disp('Terima kasih telah berkunjung!');
    end

    disp(' '); % untuk spasi antar loop
end
