model_path=A
new_model_path=B

# Create the target directory B
mkdir -p "${new_model_path}"

# Copy config.json as a regular file (not symlink)
cp "${model_path}/config.json" "${new_model_path}/"

# Create symlinks for all other files in A (excluding config.json)
find "${model_path}" -mindepth 1 -maxdepth 1 ! -name "config.json" -exec sh -c 'ln -s "$1" "'"$new_model_path"'/$(basename "$1")"' _ {} \;
