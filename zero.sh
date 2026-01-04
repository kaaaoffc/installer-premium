#!/bin/bash

ADMIN_WHATSAPP_NUMBER="08298505716"

WHATSAPP_FILE="/var/whatsapp_number.txt"
LICENSE_FILE="/var/license.txt"
ERROR_FILE="/var/error_count.txt"

# Inisialisasi file kesalahan jika tidak ada
if [[ ! -f "$ERROR_FILE" ]]; then
    echo "0" > "$ERROR_FILE"
fi

# Definisi warna untuk tampilan teks
ORANGE='\033[33m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
WHITE='\033[37m'
RESET='\033[0m'  # Reset warna teks ke default

save_config() {
    echo "DISABLE_ANIMATIONS=${DISABLE_ANIMATIONS}" > /var/www/pterodactyl/config/installer_config
}

load_config() {
    if [ -f /var/www/pterodactyl/config/installer_config ]; then
        source /var/www/pterodactyl/config/installer_config
    else
        DISABLE_ANIMATIONS=0
    fi
}

animate_text() {
    local text="$1"
    if [ "$DISABLE_ANIMATIONS" -eq 1 ]; then
        echo "$text"
    else
        for ((i=0; i<${#text}; i++)); do
            echo -en "${text:$i:1}"
        done
        echo ""
    fi
}

load_config

clear
echo -e "${CYAN}${BOLD}"
echo "╔═══════════════════════════════════════════════════════════════════╗"
echo "║                                                                   ║"
echo "║                      __====-_  _-====__                           ║"
echo "║                _--^^^#####//      \#####^^^--_                    ║"
echo "║             _-^##########// (    ) \##########^-_                 ║"
echo "║            -############//  |\^^/|  \############-                ║"
echo "║          _/############//   (@::@)   \############\_              ║"
echo "║         /#############((     \\//     ))#############\             ║"
echo "║        -###############\\    (oo)    //###############-            ║"
echo "║       -#################\\  / VV \  //#################-           ║"
echo "║      -###################\\/      \//###################-          ║"
echo "║     _#/|##########/\######(   /\   )######/\##########|\#_         ║"
echo "║     |/ |#/\#/\#/\/  \#/\##\  |  |  /##/\#/  \/\#/\#/\#| \|         ║"
echo "║     '  |/  V  V  '   V  \#\| |  | |/#/  V   '  V  V  \|  '         ║"
echo "║        '   '  '      '   / | |  | | \   '      '  '   '            ║"
echo "║                         (  | |  | |  )                             ║"
echo "║                          \ | |  | | /                              ║"
echo "║                           \| |  | |/                               ║"
echo "║                            ' |  | '                                ║"
echo "║                              \__/                                  ║"
echo "║                                                                   ║"
echo "╚═══════════════════════════════════════════════════════════════════╝"
echo -e "${RESET}"

# Info Kontak
echo -e "${RED}${BOLD}"
echo "╔══════════════════════════════════════════════════════╗"
echo "║                    Developer Info                    ║"
echo "╚══════════════════════════════════════════════════════╝"
echo -e "${WHITE}OWNER  : ${ORANGE}KAAA-DEVELOPER"
echo -e "${WHITE}WHATSAPP: ${ORANGE}088298505716"
echo -e "${WHITE}TELEGRAM: ${ORANGE}t.me/kaaahost1"
echo -e "${RED}© 2025 Zero Developer${RESET}"

# Tambahkan bagian lain dari skrip Anda di sini jika diperlukan
# Fungsi untuk menampilkan animasi loading
loading_animation() {
    local spinstr='|/-\'
    local loading_text="LOADING..."
    local i=0
    while [ $i -lt ${#loading_text} ]; do
        local temp=${spinstr#?}
        printf " [%c] %s" "$spinstr" "${loading_text:0:i+1}"
        local spinstr=$temp${spinstr%"$temp"}
        printf "\r"
        i=$((i + 1))
    done
    printf "\r\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
}

# Fungsi untuk menampilkan teks animasi
animate_text() {
    local text=$1
    for ((i=0; i<${#text}; i++)); do
        printf "%s" "${text:$i:1}"
    done
    echo ""
}

# Menampilkan teks dengan animasi
echo -e "${BLUE}(𝗔𝗨𝗧𝗢𝗠𝗔𝗧𝗜𝗖) 𝖫ICENSE ANDA BENAR, TERIMAKASIH TELAH MEMBELI LICENSE INI YA${RESET}"
animate_text "OPSI ADA DIBAWAH INI"
# Fungsi untuk menampilkan animasi loading
loading_animation() {
    local spinstr='|/-\'
    local loading_text="LOADING"
    local i=0
    while [ $i -lt ${#loading_text} ]; do
        local temp=${spinstr#?}
        printf " [%c] %s" "$spinstr" "${loading_text:0:i+1}"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\r"
        i=$((i + 1))
    done
    printf "\r\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
}

# Animasi loading dan menghapus
loading_animation
echo -ne "\033[K"  # Menghapus teks loading dari baris

clear
echo -e "${CYAN}${BOLD}"
echo "──────────────────────────────────────────────"
echo "         ⚙️  PTERODACTYL THEME INSTALLER"
echo "──────────────────────────────────────────────${RESET}"
echo
echo -e "${WHITE}${BOLD}THEME (FILES)${RESET}"
echo -e "${GREEN}1.${RESET} INSTALL THEME ELYSIUM PTERODACTYL"
echo -e "${GREEN}2. INSTALL THEME STELLAR"
echo -e "${GREEN}3. INSTALL THEME BILLING"
echo
echo -e "${WHITE}${BOLD}THEME (PLUGINS)${RESET}"
echo -e "${GREEN}4.${RESET} INSTALL NEBULA THEME PTERODACTYL"
echo -e "${GREEN}5.${RESET} ADMIN PANEL THEME PTERODACTYL"
echo
echo -e "${WHITE}${BOLD}ADDON (FILES)${RESET}"
echo -e "${GREEN}6.${RESET} INSTALL ADDON AUTO SUSPEND PTERODACTYL"
echo -e "${GREEN}7.${RESET} INSTALL GOOGLE ANALYTIC PTERODACTYL"
echo
echo -e "${WHITE}${BOLD}THEME (REMAKE)${RESET}"
echo -e "${GREEN}8.${RESET} ENIGMA PREMIUM PTERODACTYL REMAKE BY RAINSTOREID"
echo
echo -e "${WHITE}${BOLD}PTERODACTYL (EDIT)${RESET}"
echo -e "${GREEN}9.${RESET} UBAH BACKGROUND PTERODACTYL"
echo -e "${GREEN}10.${RESET} HAPUS BACKGROUND PTERODACTYL (RESET KE DEFAULT)"
echo -e "${GREEN}11.${RESET} HAPUS THEME / ADDON"
echo
echo -e "${WHITE}${BOLD}ADDON (PLUGINS)${RESET}"
echo -e "${GREEN}12.${RESET} COOKIES PTERODACTYL"
echo
echo -e "${WHITE}${BOLD}INSTALL DEPEND (PLUGINS)${RESET}"
echo -e "${GREEN}13.${RESET} INSTALL DEPEND ADDON / THEME PLUGINS"
echo
echo -e "${WHITE}${BOLD}INSTALLER${RESET}"
echo -e "${GREEN}14.${RESET} MATIKAN SEMUA ANIMASI INSTALLER"
echo -e "${GREEN}15.${RESET} KELUAR DARI INSTALLER"
echo
echo -e "${WHITE}${BOLD}DELETE THEME / ADDON (PLUGINS)${RESET}"
echo -e "${GREEN}16.${RESET} DELETE THEME NEBULA"
echo -e "${GREEN}17.${RESET} DELETE THEME SLATE"
echo -e "${GREEN}18.${RESET} DELETE THEME COOKIES"
echo
echo -e "${WHITE}${BOLD}PROTECT PTERODACTYL${RESET}"
echo -e "${GREEN}19.${RESET} PASANG PROTECT & BUILD PANEL"
echo -e "${GREEN}20.${RESET} RESTORE DARI BACKUP DAN BUILD"
echo -e "${GREEN}21.${RESET} INSTALL PROTECT"
echo -e "${GREEN}22.${RESET} RESTORE"
echo -e "${YELLOW}${BOLD}──────────────────────────────────────────────${RESET}"
read -p "$(echo -e "${CYAN}${BOLD}PILIH OPSI (1-20): ${RESET}")" OPTION
case "$OPTION" in
     1)
        GITHUB_TOKEN="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"
        REPO_URL="https://github.com/KiwamiXq1031/installer-premium.git"
        TEMP_DIR="installer-premium"

        git clone "https://${GITHUB_TOKEN}@github.com/KiwamiXq1031/installer-premium.git" "$TEMP_DIR"

        sudo mv "$TEMP_DIR/ElysiumTheme.zip" /var/www/
        unzip -o /var/www/ElysiumTheme.zip -d /var/www/
        rm -rf "$TEMP_DIR"
        rm -f /var/www/ElysiumTheme.zip

        sudo mkdir -p /etc/apt/keyrings
        curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg || true
        echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list > /dev/null

        sudo apt update -y
        sudo apt install -y nodejs npm
        sudo npm install -g yarn

        cd /var/www/pterodactyl || exit
        yarn
        yarn build:production
        php artisan migrate --force
        php artisan view:clear
        animate_text "Tema Elysium berhasil diinstal."
        ;;
     2)
        clear
        echo -e "${BLUE}[+] =============================================== [+]${NC}"
        echo -e "${BLUE}[+]        INSTALL THEME PTERODACTYL - STELLAR      [+]${NC}"
        echo -e "${BLUE}[+] =============================================== [+]${NC}"

        THEME_NAME="stellar"
        THEME_URL="https://github.com/KiwamiXq1031/installer-premium/raw/main/${THEME_NAME}.zip"

        echo -e "${YELLOW}🔽 Mengunduh theme Stellar...${NC}"
        wget -q -O "/root/${THEME_NAME}.zip" "$THEME_URL" || { echo -e "${RED}❌ Gagal mengunduh theme.${NC}"; exit 1; }

        echo -e "${YELLOW}📦 Mengekstrak file...${NC}"
        unzip -oq "/root/${THEME_NAME}.zip" -d /root/pterodactyl

        echo -e "${YELLOW}📁 Menyalin file ke direktori Pterodactyl...${NC}"
        sudo cp -rfT /root/pterodactyl /var/www/pterodactyl

        echo -e "${YELLOW}⚙️ Menginstal Node.js v20 & Yarn...${NC}"
        curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
        sudo apt install -y nodejs
        sudo npm install -g yarn

        cd /var/www/pterodactyl || { echo -e "${RED}❌ Direktori tidak ditemukan!${NC}"; exit 1; }

        echo -e "${YELLOW}🔧 Menjalankan migrasi dan build...${NC}"
        yarn add react-feather
        php artisan migrate --force
        yarn build:production
        php artisan view:clear

        echo -e "${YELLOW}🧹 Membersihkan file sementara...${NC}"
        rm -f "/root/${THEME_NAME}.zip"
        rm -rf /root/pterodactyl

        echo -e "${GREEN}✅ Theme Stellar berhasil diinstall menggunakan Node.js v20!${NC}"
        ;;
     3)
        clear
        echo -e "${BLUE}[+] =============================================== [+]${NC}"
        echo -e "${BLUE}[+]            INSTALL THEME PTERODACTYL - BILLING  [+]${NC}"
        echo -e "${BLUE}[+] =============================================== [+]${NC}"

        THEME_NAME="billing"
        THEME_URL="https://github.com/KiwamiXq1031/installer-premium/raw/main/${THEME_NAME}.zip"

        echo -e "${YELLOW}🔽 Mengunduh theme Billing...${NC}"
        wget -q -O "/root/${THEME_NAME}.zip" "$THEME_URL" || { echo -e "${RED}❌ Gagal mengunduh theme.${NC}"; exit 1; }

        echo -e "${YELLOW}📦 Mengekstrak file...${NC}"
        unzip -oq "/root/${THEME_NAME}.zip" -d /root/pterodactyl

        echo -e "${YELLOW}📁 Menyalin file ke direktori Pterodactyl...${NC}"
        sudo cp -rfT /root/pterodactyl /var/www/pterodactyl

        echo -e "${YELLOW}⚙️ Menginstal Node.js v20 & Yarn...${NC}"
        curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
        sudo apt install -y nodejs
        sudo npm install -g yarn

        cd /var/www/pterodactyl || { echo -e "${RED}❌ Direktori tidak ditemukan!${NC}"; exit 1; }

        echo -e "${YELLOW}🔧 Menjalankan migrasi dan build...${NC}"
        yarn add react-feather
        php artisan migrate --force
        yarn build:production
        php artisan view:clear

        echo -e "${YELLOW}🧹 Membersihkan file sementara...${NC}"
        rm -f "/root/${THEME_NAME}.zip"
        rm -rf /root/pterodactyl

        echo -e "${GREEN}✅ Theme Billing berhasil diinstall menggunakan Node.js v20!${NC}"
        ;;
     4)
        cd /var/www
        BLUEPRINT_FILE="/var/www/pterodactyl/blueprint.sh"
        if [ ! -f "$BLUEPRINT_FILE" ]; then
            echo "𝗗𝗘𝗣𝗘𝗡𝗗 𝗣𝗟𝗨𝗚𝗜𝗡𝗦 𝗕𝗘𝗟𝗨𝗠 𝗗𝗜𝗜𝗡𝗦𝗧𝗔𝗟 𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗜𝗡𝗦𝗧𝗔𝗟𝗟 𝗧𝗘𝗥𝗟𝗘𝗕𝗜𝗛 𝗗𝗔𝗛𝗨𝗟𝗨 𝗗𝗘𝗡𝗚𝗔𝗡 𝗠𝗘𝗠𝗜𝗟𝗜𝗛 𝗢𝗣𝗦𝗜 𝗡𝗢 𝟭𝟭"
            exit 1
        fi

        GITHUB_TOKEN="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"
        REPO_URL="https://github.com/KiwamiXq1031/installer-premium.git"
        TEMP_DIR="installer-premium"

        git clone "https://${GITHUB_TOKEN}@github.com/KiwamiXq1031/installer-premium.git" "$TEMP_DIR"

        sudo mv "$TEMP_DIR/nebulaptero.zip" /var/www/
        unzip -o /var/www/nebulaptero.zip -d /var/www/
        cd /var/www/pterodactyl || exit
        bash blueprint.sh -install nebula

        cd /var/www
        rm -rf "$TEMP_DIR"
        rm -f nebulaptero.zip
        cd /var/www/pterodactyl
        rm -f nebula.blueprint

        animate_text "NEBULA THEME BERHASIL DIINSTALL"
        ;;
     5)
        cd /var/www
        BLUEPRINT_FILE="/var/www/pterodactyl/blueprint.sh"
        if [ ! -f "$BLUEPRINT_FILE" ]; then
            echo "𝗗𝗘𝗣𝗘𝗡𝗗 𝗣𝗟𝗨𝗚𝗜𝗡𝗦 𝗕𝗘𝗟𝗨𝗠 𝗗𝗜𝗜𝗡𝗦𝗧𝗔𝗟 𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗜𝗡𝗦𝗧𝗔𝗟𝗟 𝗧𝗘𝗥𝗟𝗘𝗕𝗜𝗛 𝗗𝗔𝗛𝗨𝗟𝗨 𝗗𝗘𝗡𝗚𝗔𝗡 𝗠𝗘𝗠𝗜𝗟𝗜𝗛 𝗢𝗣𝗦𝗜 𝗡𝗢 𝟭𝟭"
            exit 1
        fi

        GITHUB_TOKEN="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"
        REPO_URL="https://github.com/KiwamiXq1031/installer-premium.git"
        TEMP_DIR="installer-premium"

        git clone "https://${GITHUB_TOKEN}@github.com/KiwamiXq1031/installer-premium.git" "$TEMP_DIR"

        sudo mv "$TEMP_DIR/Slate-v1.0.zip" /var/www/
        unzip -o /var/www/Slate-v1.0.zip -d /var/www/
        cd /var/www/pterodactyl || exit
        bash blueprint.sh -install slate

        cd /var/www
        rm -rf "$TEMP_DIR"
        rm -f Slate-v1.0.zip

        FILE_URL="https://github.com/KiwamiXq1031/installer-premium/raw/main/Slate-v1.0.zip"
        DESTINATION="/var/www/pterodactyl/Slate-v1.0.zip"

        curl -H "Authorization: Bearer ${GITHUB_TOKEN}" -L -o "${DESTINATION}" "${FILE_URL}" > /dev/null 2>&1

        if [ $? -eq 0 ]; then
            animate_text "File berhasil diunduh ke ${DESTINATION}"
        else
            animate_text "Gagal mengunduh file"
        fi

        animate_text "ADMIN PANEL THEME BERHASIL DIINSTALL"
        ;;
        
             6)
        GITHUB_TOKEN="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"
        REPO_URL="https://github.com/KiwamiXq1031/installer-premium.git"
        TEMP_DIR="installer-premium"

        git clone "https://${GITHUB_TOKEN}@github.com/KiwamiXq1031/installer-premium.git" "$TEMP_DIR"

        sudo mv "$TEMP_DIR/autosuspens.zip" /var/www/
        unzip -o /var/www/autosuspens.zip -d /var/www/
        rm -rf "$TEMP_DIR"
        rm -f /var/www/autosuspens.zip
        
        cd /var/www/pterodactyl || exit
        bash installer.bash
        animate_text "AUTO SUSPEND BERHASIL DIINSTALL"

        FILE_URL="https://github.com/KiwamiXq1031/installer-premium/raw/main/autosuspens.zip"
        DESTINATION="/var/www/pterodactyl/autosuspens.zip"

        curl -H "Authorization: Bearer ${GITHUB_TOKEN}" -L -o "${DESTINATION}" "${FILE_URL}"

        if [ $? -eq 0 ]; then
            animate_text "File berhasil diunduh ke ${DESTINATION}"
        else
            animate_text "Gagal mengunduh file"
        fi
        ;;
     7)
    # Token GitHub pribadi (pastikan token valid dan punya akses repo)
    GITHUB_TOKEN="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"

    # URL repo dan folder sementara
    REPO_URL="https://github.com/KiwamiXq1031/installer-premium.git"
    TEMP_DIR="installer-premium"

    echo -e "${BLUE}🔄 Mengunduh addon Google Analytics dari GitHub...${RESET}"
    git clone "$REPO_URL" "$TEMP_DIR" || {
        echo -e "${RED}❌ Gagal mengkloning repository.${RESET}"
        exit 1
    }

    # Pindahkan dan ekstrak file
    sudo mv "$TEMP_DIR/googleanalitic.zip" /var/www/
    unzip -o /var/www/googleanalitic.zip -d /var/www/ >/dev/null 2>&1
    rm -rf "$TEMP_DIR" /var/www/googleanalitic.zip

    # Setup Node.js dan Yarn
    echo -e "${BLUE}⚙️ Menginstal Node.js 20.x dan Yarn...${RESET}"
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | \
        sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | \
        sudo tee /etc/apt/sources.list.d/nodesource.list

    sudo apt update -y
    sudo apt install -y nodejs npm
    npm install -g yarn

    # Build ulang panel
    cd /var/www/pterodactyl || exit
    yarn install
    yarn build:production

    echo -e "${BLUE}⚙️ Menjalankan Artisan Command...${RESET}"
    php artisan migrate --force
    php artisan view:clear

    echo -e "${GREEN}✅ Addon Google Analytics berhasil diinstal!${RESET}"

    # Unduh file tambahan dari GitHub pakai header Authorization Bearer
    FILE_URL="https://raw.githubusercontent.com/KiwamiXq1031/installer-premium/main/addons/googleanalytic/config.json"
    DESTINATION="/var/www/pterodactyl/config/googleanalytic.json"

    echo -e "${BLUE}📦 Mengunduh file konfigurasi tambahan...${RESET}"
    curl -H "Authorization: Bearer ${GITHUB_TOKEN}" \
         -H "Accept: application/vnd.github.v3.raw" \
         -L -o "${DESTINATION}" "${FILE_URL}"

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ File berhasil diunduh ke ${DESTINATION}${RESET}"
    else
        echo -e "${RED}❌ Gagal mengunduh file konfigurasi.${RESET}"
    fi
    ;;

     8)

# Fungsi untuk menampilkan animasi loading
show_loading() {
    echo -n "[-] LOADING"
    for i in {1..3}; do
        echo -n "."
        sleep 0.5
    done
    echo ""
}

# Menampilkan animasi loading saat skrip dimulai
show_loading

# Nomor lama yang akan digunakan secara otomatis
nomor_lama="081997715124"
echo -e "${BLUE}JIKA ADA PILIHAN SILAHKAN KETIK y${RESET}"

# Persiapan environment
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | \
    sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | \
    sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt-get update -y
sudo apt-get install -y nodejs npm zip unzip git curl wget
npm i -g yarn

# Build ulang Pterodactyl panel
cd /var/www/pterodactyl || exit
yarn
cd /var/www/ || exit

# Masukkan token GitHub (gunakan ghp_)
GITHUB_TOKEN="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"

# Clone repositori menggunakan token
REPO_URL="https://github.com/KiwamiXq1031/installer-premium.git"
TEMP_DIR="installer-premium"

echo "[-] Mengkloning repositori dari GitHub..."
git clone "https://${GITHUB_TOKEN}@github.com/KiwamiXq1031/installer-premium.git" "$TEMP_DIR"

# Pindahkan dan ekstrak file zip
cd "$TEMP_DIR" || exit
sudo mv enigmarimake.zip /var/www/
cd /var/www/ || exit

unzip -o enigmarimake.zip -d /var/www/
rm -rf "$TEMP_DIR" enigmarimake.zip

# Build ulang panel
cd /var/www/pterodactyl || exit
npx update-browserslist-db@latest
yarn build:production

echo ""
echo -e "${GREEN}PROSES SELESAI ✅${RESET}"
;;
     9)
# Default URL gambar
DEFAULT_URL="https://i.postimg.cc/s2wGzpHs/zerodev.jpg"

# Input URL manual
read -p "Masukkan URL gambar (tekan Enter untuk menggunakan URL default): " USER_URL

# Gunakan default kalau kosong
if [ -z "$USER_URL" ]; then
    URL="$DEFAULT_URL"
else
    URL="$USER_URL"
fi

# Pindah ke direktori template Pterodactyl
cd /var/www/pterodactyl/resources/views/templates || exit

# Backup dulu sebelum ubah
cp wrapper.blade.php wrapper_backup_$(date +"%Y%m%d%H%M%S").blade.php

# Buat file baru dengan HTML + CSS full
{
  echo '<!DOCTYPE html>'
  echo '<html lang="en">'
  echo '<head>'
  echo '    <meta charset="UTF-8">'
  echo '    <meta name="viewport" content="width=device-width, initial-scale=1.0">'
  echo '    <title>Pterodactyl Background</title>'
  echo '    <style>'
  echo '        * { margin: 0; padding: 0; box-sizing: border-box; }'
  echo "        body {"
  echo "            background-image: url('$URL');"
  echo '            background-size: cover;'
  echo '            background-repeat: no-repeat;'
  echo '            background-attachment: fixed;'
  echo '            height: 100vh;'
  echo '            width: 100vw;'
  echo '        }'
  echo '    </style>'
  echo '</head>'
  echo '<body>'
  echo '    <!-- Template original dimulai di bawah -->'
  cat wrapper.blade.php
  echo '</body>'
  echo '</html>'
} > /tmp/new_wrapper.blade.php

# Timpa file lama
mv /tmp/new_wrapper.blade.php wrapper.blade.php

echo "BACKGROUND BERHASIL DIGANTI ✅"
;;
10)
# Path ke file wrapper Pterodactyl
file_path="/var/www/pterodactyl/resources/view
