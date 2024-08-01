#!/usr/bin/env bash
username="$1"

# Clone the repo
echo "Cloning the EOS Community Sway repo..."
git clone https://github.com/EndeavourOS-Community-Editions/sway.git

# Install the custom package list
echo "Installing needed packages..."
pacman -S --noconfirm --noprogressbar --needed --disable-download-timeout $(< ./sway/packages-repository.txt)

# Deploy user configs
echo "Deploying user configs..."
rsync -a sway/.config "/home/${username}/"
rsync -a sway/home_config/ "/home/${username}/"
# Restore user ownership
chown -R "${username}:${username}" "/home/${username}"

# Deploy system configs
echo "Deploying system configs..."
rsync -a --chown=root:root sway/etc/ /etc/

# Check if the script is running in a virtual machine
if systemd-detect-virt | grep -vq "none"; then
  echo "Virtual machine detected; enabling WLR_RENDERER_ALLOW_SOFTWARE variable in ReGreet config..."
  # Uncomment WLR_RENDERER_ALLOW_SOFTWARE variable in ReGreet config
  sed -i '/^#export WLR_RENDERER_ALLOW_SOFTWARE/s/^#//' /etc/greetd/regreet.toml
fi

# Remove the repo
echo "Removing the EOS Community Sway repo..."
rm -rf sway

# Enable the Greetd service
echo "Enabling the Greetd service..."
systemctl enable greetd.service
